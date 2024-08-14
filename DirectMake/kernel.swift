import LL

func zeroClear() {
  memset(get_bss_start(), 0x00, get_bss_end_ptr_value() - get_bss_ptr_value())
  memset(get_free_ram(), 0x00, get_free_ram_end_ptr_value() - get_free_ram_ptr_value())
}

@_cdecl("kernel_main_swift")
func kernel_main_swift() {
  zeroClear()
  for i in 65...90 {
    sputchar(CChar(i))
  }
  let s = "\n\nHello, World!\n"
  for c in s.utf8CString {
    sputchar(c)
  }
  while true {
    wfi()
  }
}
