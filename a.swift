@_cdecl("fs")
public func fs(v: Int) -> Int {
  if v == 0 {
    return 0
  }
  return v + fs(v: v-1)
}

@_cdecl("dooooom")
public func dommm(v: Bool) -> Int {
  if v {
    return 0
  }
  var s = "hello"
  internalStringMutate(s: &s)
  print(s)
  if s == "hello!!" {
    return 0
  }
  return 1
}

func internalStringMutate(s: inout String) {
  if Bool.random() {
    s += "!"
  }
  s += "!"
}
