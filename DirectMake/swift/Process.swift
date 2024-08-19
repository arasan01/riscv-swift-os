import LL
import _Volatile

enum ProcessState: Int {
  case UNUSED = 0
  case RUNNABLE = 1
}

struct Process {
  var pid: Int
  var state: ProcessState
  var sp: UInt32
  var stack: UnsafeMutableBufferPointer<UInt8>

  init(pid: Int, state: ProcessState, sp: UInt32) {
    self.pid = pid
    self.state = state
    self.sp = sp
    self.stack = UnsafeMutableBufferPointer<UInt8>.allocate(capacity: 8192)
    self.stack.initialize(repeating: 0)
  }
}

let PROCS_MAX = 64
class ProcessManager: @unchecked Sendable {
  static let shared = ProcessManager()
  private init() {
    procs = UnsafeMutableBufferPointer<Process>.allocate(capacity: PROCS_MAX)
    for i in 0..<PROCS_MAX {
      procs[i] = Process(pid: 0, state: .UNUSED, sp: 0)
    }
    currentProc = nil
    idleProc = self.newProcess(pc: 0)
    idleProc!.pointee.pid = -1
    currentProc = idleProc
  }

  private var procs: UnsafeMutableBufferPointer<Process>
  private var currentProc: UnsafeMutablePointer<Process>?
  private var idleProc: UnsafeMutablePointer<Process>?

  func newProcess(pc: UInt32) -> UnsafeMutablePointer<Process> {
    guard
      let idx = procs.firstIndex(where: { $0.state == .UNUSED }),
      let baseAddr = procs.baseAddress
    else {
      PANIC("no free process slots")
      return .panic("no free process slots")
    }
    let rawPointer = baseAddr.advanced(by: idx)
    let sp = rawPointer.pointee.stack.baseAddress!.advanced(by: rawPointer.pointee.stack.count)
    let typeEraseSP = UnsafeMutableRawPointer(sp)
    var resp = typeEraseSP.bindMemory(to: UInt32.self, capacity: 13)
    resp = resp.advanced(by: -1) // s11
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s10
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s9
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s8
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s7
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s6
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s5
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s4
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s3
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s2
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s1
    resp.pointee = 0
    resp = resp.advanced(by: -1) // s0
    resp.pointee = 0
    resp = resp.advanced(by: -1) // ra
    resp.pointee = pc
    rawPointer.pointee.pid = idx + 1
    rawPointer.pointee.state = .RUNNABLE
    let respPtrValue = UInt(bitPattern: resp)
    rawPointer.pointee.sp = UInt32(respPtrValue)
    let retPtr = UnsafeMutablePointer<Process>(rawPointer)
    return retPtr
  }

  func yield() {
    var next = idleProc
    for i in 0..<PROCS_MAX {
      let idx = (currentProc!.pointee.pid + PROCS_MAX + i) % PROCS_MAX
      let proc = procs[idx]
      if proc.state == .RUNNABLE && proc.pid > 0 {
        next = procs.baseAddress!.advanced(by: idx)
        break
      }
    }
    // 他の実行中プロセスなしはそのまま戻り
    if next == currentProc {
      return
    }
    // コンテキストスイッチ
    let prev = currentProc
    currentProc = next
    switch_context(&prev!.pointee.sp, &next!.pointee.sp)
  }
}

func processYield() {
  ProcessManager.shared.yield()
}

func createProcess(pc: UInt32) -> UnsafeMutablePointer<Process> {
  return ProcessManager.shared.newProcess(pc: pc)
}

nonisolated(unsafe) var procA: UnsafeMutablePointer<Process>? = nil
nonisolated(unsafe) var procB: UnsafeMutablePointer<Process>? = nil

@_cdecl("procAEntry")
func procAEntry() {
  while true {
    swiftPutchar(65)
    processYield()
    for _ in 0..<1000000 {
      nop()
    }
  }
}

@_cdecl("procBEntry")
func procBEntry() {
  while true {
    swiftPutchar(66)
    processYield()
    for _ in 0..<1000000 {
      nop()
    }
  }
}

func procTest() {
  print("procTest")
  procA = createProcess(pc: UInt32(get_procA()))
  procB = createProcess(pc: UInt32(get_procB()))
  print("created processes")
  processYield()
  PANIC("switched to idle process");
}
