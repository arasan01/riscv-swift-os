import _Volatile

extension VolatileMappedRegister {
  init(rawPointer: UnsafeRawPointer) {
    self.init(unsafeBitPattern: UInt(bitPattern: rawPointer))
  }
}
