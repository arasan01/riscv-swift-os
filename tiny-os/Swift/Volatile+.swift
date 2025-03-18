import _Volatile

extension VolatileMappedRegister {
  init(rawPointer: UnsafeRawPointer) {
    self.init(unsafeBitPattern: UInt(bitPattern: rawPointer))
  }

  static func panic(_ text: String) -> VolatileMappedRegister {
    PANIC(text)
    return VolatileMappedRegister(unsafeBitPattern: 0)
  }
}

extension UnsafeMutablePointer {
  static func panic(_ text: String) -> UnsafeMutablePointer<Pointee> {
    PANIC(text)
    return UnsafeMutablePointer<Pointee>(OpaquePointer(bitPattern: 0)!)
  }
}
