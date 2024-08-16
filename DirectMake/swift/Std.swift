import LL

@_cdecl("memset")
@discardableResult
func swiftMemset(
  _ buf: UnsafeMutableRawPointer?,
  _ c: Int32,
  _ n: Int
) -> UnsafeMutableRawPointer! {
  guard var buf else { return buf }
  for _ in 0..<n {
    buf.storeBytes(of: UInt8(c), as: UInt8.self)
    buf = buf.advanced(by: 1)
  }
  return buf
}

@_cdecl("memcpy")
@discardableResult
func swiftMemcpy(
  _ dest: UnsafeMutableRawPointer?,
  _ src: UnsafeRawPointer?,
  _ count: Int
) -> UnsafeMutableRawPointer? {
  guard var dest, var src else { return dest }
  for _ in 0..<count {
    dest.storeBytes(of: src.load(as: UInt8.self), as: UInt8.self)
    dest = dest.advanced(by: 1)
    src = src.advanced(by: 1)
  }
  return dest
}

@_cdecl("memmove")
@discardableResult
func swiftMemmove(
  _ dest: UnsafeMutableRawPointer?,
  _ src: UnsafeRawPointer?,
  _ count: Int
) -> UnsafeMutableRawPointer? {
  guard var dest, var src else { return dest }
  if src < dest && src + count > dest {
    src = src.advanced(by: count)
    dest = dest.advanced(by: count)
    for _ in 0..<count {
      dest = dest.advanced(by: -1)
      src = src.advanced(by: -1)
      dest.storeBytes(of: src.load(as: UInt8.self), as: UInt8.self)
    }
  } else {
    swiftMemcpy(dest, src, count)
  }
  return dest
}

@_cdecl("memcmp")
func swiftMemcmp(
  _ buffer1: UnsafeRawPointer?,
  _ buffer2: UnsafeRawPointer?,
  _ count: Int
) -> Int32 {
  guard var buffer1, var buffer2 else { return 0 }
  for _ in 0..<count {
    let b1 = buffer1.load(as: UInt8.self)
    let b2 = buffer2.load(as: UInt8.self)
    if b1 != b2 {
      return Int32(b1) - Int32(b2)
    }
    buffer1 = buffer1.advanced(by: 1)
    buffer2 = buffer2.advanced(by: 1)
  }
  return 0
}

@_cdecl("swift_impl_putchar")
@discardableResult
func swiftCABIPutchar(_ ch: Int32) -> Int32 {
  sbi_call(Int(ch), 0, 0, 0, 0, 0, 0, 1 /* Console Putchar */)
  return ch
}

func swiftPutchar(_ ch: Int) {
  swiftCABIPutchar(Int32(ch))
}

@_cdecl("strlen")
func swiftStrlen(_ str: UnsafePointer<UInt8>?) -> Int {
  guard let str else { return 0 }
  var s = str
  while s.pointee != 0 {
    s = s.advanced(by: 1)
  }
  return Int(s - str)
}
