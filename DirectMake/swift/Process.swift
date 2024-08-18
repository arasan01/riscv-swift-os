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
    procs.initialize(repeating: Process(pid: 0, state: .UNUSED, sp: 0))
  }

  private var procs: UnsafeMutableBufferPointer<Process>

  func newProcess(pc: UInt32) -> VolatileMappedRegister<Process> {
    let idx = procs.firstIndex { $0.state == .UNUSED }
    guard
      let idx ,
      idx < PROCS_MAX,
      let baseAddr = procs.baseAddress
    else {
      PANIC("no free process slots")
      return .panic("no free process slots")
    }
    let rawPointer = baseAddr.advanced(by: idx)
    let sp = rawPointer.pointee.stack.baseAddress!.advanced(by: MemoryLayout<UInt8>.size)
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
    let respPtrValue = Int(bitPattern: resp)
    rawPointer.pointee.sp = UInt32(bitPattern: Int32(exactly: respPtrValue)!)
    let vaddr = VolatileMappedRegister<Process>(rawPointer: rawPointer)
    return vaddr
  }
}

/*
struct process *create_process(uint32_t pc) {
    // 空いているプロセス管理構造体を探す
    struct process *proc = NULL;
    int i;
    for (i = 0; i < PROCS_MAX; i++) {
        if (procs[i].state == PROC_UNUSED) {
            proc = &procs[i];
            break;
        }
    }

    if (!proc)
        PANIC("no free process slots");

    // switch_context() で復帰できるように、スタックに呼び出し先保存レジスタを積む
    uint32_t *sp = (uint32_t *) &proc->stack[sizeof(proc->stack)];
    *--sp = 0;                      // s11
    *--sp = 0;                      // s10
    *--sp = 0;                      // s9
    *--sp = 0;                      // s8
    *--sp = 0;                      // s7
    *--sp = 0;                      // s6
    *--sp = 0;                      // s5
    *--sp = 0;                      // s4
    *--sp = 0;                      // s3
    *--sp = 0;                      // s2
    *--sp = 0;                      // s1
    *--sp = 0;                      // s0
    *--sp = (uint32_t) pc;          // ra

    // 各フィールドを初期化
    proc->pid = i + 1;
    proc->state = PROC_RUNNABLE;
    proc->sp = (uint32_t) sp;
    return proc;
}
*/
func createProcess(pc: UInt32) -> VolatileMappedRegister<Process> {
  return ProcessManager.shared.newProcess(pc: pc)
}
