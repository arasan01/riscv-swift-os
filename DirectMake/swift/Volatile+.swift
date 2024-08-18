import _Volatile

extension VolatileMappedRegister {
  init(rawPointer: UnsafeMutableRawPointer) {
    self.init(unsafeBitPattern: UInt(bitPattern: rawPointer))
  }
}
