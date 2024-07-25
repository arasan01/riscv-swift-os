import LL

@_cdecl("memset")
@discardableResult
func memset(buf: UnsafeMutableRawPointer, value: UInt8, size: Int) -> UnsafeMutableRawPointer {
  for i in 0..<size {
    buf.storeBytes(of: value, toByteOffset: i, as: UInt8.self)
  }
  return buf
}

// @_cdecl("posix_memalign")
// func posix_memalign(ptr: UnsafeMutablePointer<UnsafeMutableRawPointer?>, align: Int, size: Int) -> Int32 {
//   fatalError("posix_memalign is not implemented")
// }

// @_cdecl("free")
// func free() {
//   fatalError("free is not implemented")
// }

@_cdecl("kernel_main")
func kernel_main() {
  memset(buf: __bss, value: 0, size: Int(bitPattern: __bss_end) - Int(bitPattern: __bss))
  while true {}
}
