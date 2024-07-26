import LL

@_cdecl("kernel_main")
func kernel_main() {
  let s: [Int8] = [65, 70, 68]
  for c in s {
    putchar2(c)
  }
  while true {
    wfi()
  }
}
