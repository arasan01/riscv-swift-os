import LL

let lf: Int32 = 0x0a

func zeroClear() {
  memset(get_bss_start(), 0x00, get_bss_end_ptr_value() - get_bss_ptr_value())
  memset(get_free_ram(), 0x00, get_free_ram_end_ptr_value() - get_free_ram_ptr_value())
}

func printAtoZ() {
  for i in 0...0xff {
    putchar(Int32(i))
  }
  putchar(lf)
}

func printUnicode() {
  for i in 0x3041...0x3093 {
    putchar(Int32(i))
  }
  putchar(lf)

  let s = "バナナのナナチ、バナナナチ!"
  for c in s.utf8 {
    putchar(Int32(c))
  }
  putchar(lf)
  print(s)

  let emoji = """
  😀⏰
  """
  print(emoji)

  let interpolation = "🍌🍌🍌 \(s)"
  print(interpolation)
  print(interpolation + "🍌🍌🍌")
  print("🍌🍌🍌 \(123.3 * 23)")
}

@_cdecl("kernel_main_swift")
func kernel_main_swift() {
  zeroClear()
  printAtoZ()
  printUnicode()
  print("PRECHECK SYSTEM: ALL GREEN")
  while true {
    print("wait for interrupt")
    wfi()
  }
}
