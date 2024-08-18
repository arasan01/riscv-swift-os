import LL
import _Volatile

@_cdecl("handle_trap")
func handle_trap(_ f: UnsafeMutablePointer<trap_frame>) {
  let scause = get_scause()
  let stval = get_stval()
  let user_pc = get_sepc()
  print(f.pointee.sp.hexString)
  PANIC("unexpected trap scause=\(scause), stval=\(stval), sepc=\(user_pc.hexString)")
}

func PANIC(_ text: String, file: String = #file, line: Int = #line) {
  print("[PANIC:\(file):\(line)] \(text)")
  while true { wfi() }
}

@_cdecl("kernel_main_swift")
func kernel_main_swift() {
  zeroClear()
  register_kernel_entry()
  printUnicode()
  checkRandom()
  PANIC("SYSTEM HALTED")
}
