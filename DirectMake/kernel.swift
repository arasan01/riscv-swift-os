import LL

func zeroClear() {
  memset(get_bss_start(), 0x00, get_bss_end_ptr_value() - get_bss_ptr_value())
  memset(get_free_ram(), 0x00, get_free_ram_end_ptr_value() - get_free_ram_ptr_value())
}

func printXYZ() {
  sputchar(CChar(88))
  sputchar(CChar(89))
  sputchar(CChar(90))
}

@_cdecl("kernel_main_swift")
func kernel_main_swift() {
  zeroClear()
  printXYZ()
  while true {
    wfi()
  }
}
