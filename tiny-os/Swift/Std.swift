import LowLevel
import _Volatile

@_cdecl("memset")
func swiftMemset(
  _ ptr: UnsafeMutableRawPointer?,
  _ c: Int32,
  _ n: CInt
) {
  guard var ptr else { return }
  for _ in 0..<n {
    let vaddr = VolatileMappedRegister<UInt8>(rawPointer: ptr)
    vaddr.store(UInt8(c))
    ptr = ptr.advanced(by: 1)
  }
}

@_cdecl("memcpy")
func swiftMemcpy(
  _ dest: UnsafeMutableRawPointer?,
  _ src: UnsafeRawPointer?,
  _ count: CInt
) {
  guard var dest, var src else { return }
  for _ in 0..<count {
    let vdest = VolatileMappedRegister<UInt8>(rawPointer: dest)
    let vsrc = VolatileMappedRegister<UInt8>(rawPointer: src)
    vdest.store(vsrc.load())
    dest = dest.advanced(by: 1)
    src = src.advanced(by: 1)
  }
}

@_cdecl("memmove")
func swiftMemmove(
  _ dest: UnsafeMutableRawPointer?,
  _ src: UnsafeRawPointer?,
  _ ccount: CInt
) {
  guard var dest, var src else { return }
  let count = Int(ccount)
  if src < dest && src + count > dest {
    src = src.advanced(by: count)
    dest = dest.advanced(by: count)
    for _ in 0..<count {
      dest = dest.advanced(by: -1)
      src = src.advanced(by: -1)
      let vdest = VolatileMappedRegister<UInt8>(rawPointer: dest)
      let vsrc = VolatileMappedRegister<UInt8>(rawPointer: src)
      vdest.store(vsrc.load())
    }
  } else {
    swiftMemcpy(dest, src, ccount)
  }
}

@_cdecl("memcmp")
func swiftMemcmp(
  _ buffer1: UnsafeRawPointer?,
  _ buffer2: UnsafeRawPointer?,
  _ count: CInt
) -> CInt {
  guard var buffer1, var buffer2 else { return 0 }
  for _ in 0..<count {
    let vb1 = VolatileMappedRegister<UInt8>(rawPointer: buffer1)
    let vb2 = VolatileMappedRegister<UInt8>(rawPointer: buffer2)
    let b1 = vb1.load()
    let b2 = vb2.load()
    if b1 != b2 {
      return CInt(b1) - CInt(b2)
    }
    buffer1 = buffer1.advanced(by: 1)
    buffer2 = buffer2.advanced(by: 1)
  }
  return 0
}

@_extern(c, "putchar")
private func putchar(_ ch: CInt) -> CInt

func swiftPutchar(_ ch: Int) {
  _ = putchar(CInt(ch))
}

@_cdecl("strlen")
func swiftStrlen(_ str: UnsafePointer<UInt8>?) -> CInt {
  guard let str else { return 0 }
  var s = str
  while s.pointee != 0 {
    s = s.advanced(by: 1)
  }
  return CInt(s - str)
}
