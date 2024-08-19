
func toHexString(_ v: UInt32) -> String {
  var s = ""
  for i in (0..<8).reversed() {
    let nibble = (v >> (i * 4)) & 0xf
    let c = "0123456789abcdef".utf8CString[Int(nibble)]
    s.append(Character(UnicodeScalar(UInt8(c))))
  }
  return s
}

extension UInt32 {
  var hexString: String {
    return toHexString(self)
  }
}

extension UInt {
  var hexString: String {
    return toHexString(UInt32(self))
  }
}
