import LL
import _Volatile

let PROCS_MAX = 8
// let procs: UnsafeMutableBufferPointer<Process> = .allocate(capacity: PROCS_MAX)

// enum ProcessState: Int {
//   case UNUSED = 0
//   case RUNNABLE = 1
// }

// struct Process: ~Copyable {
//   var pid: Int
//   var state: ProcessState
//   var sp: UInt32
//   var stack: Array<UInt8> = Array(repeating: 0, count: 8192)
// }

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
// func createProcess(pc: UInt32) -> Process {
//   var proc = Process(pid: 0, state: .UNUSED, sp: 0)
//   for i in 0..<PROCS_MAX {
//     if procs[i].state == .UNUSED {
//       proc = procs[i]
//       break
//     }
//   }
//   if proc.state == .UNUSED {
//     PANIC("no free process slots")
//   }
//   var sp = proc.stack.endAddress
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: 0, as: UInt32.self); sp -= 1
//   sp.storeBytes(of: pc, as: UInt32.self); sp -= 1
//   proc.pid = i + 1
//   proc.state = .RUNNABLE
//   proc.sp = UInt32(bitPattern: sp)
//   return proc
// }
