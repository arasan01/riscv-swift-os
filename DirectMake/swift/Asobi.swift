import LL

@_extern(c, "arc4random_buf")
func arc4random_buf(_ ptr: UnsafeMutableRawPointer, _ len: Int)

let lf: Int = 0x0a

func zeroClear() {
  swiftMemset(get_bss_start(), 0x00, CInt(get_bss_end_ptr_value() - get_bss_ptr_value()))
}

func printAtoZ() {
  for i in 0...0xff {
    swiftPutchar(i)
  }
  swiftPutchar(lf)
}

func printUnicode() {
  for i in 0x3041...0x3093 {
    swiftPutchar(i)
  }
  swiftPutchar(lf)

  let s = "バナナのナナチ、バナナナチ!"
  for c in s.utf8 {
    swiftPutchar(Int(c))
  }
  swiftPutchar(lf)
  print(s)

  let emoji = """
  😀⏰
  """
  print(emoji)

  let interpolation = "🍌🍌🍌 \(s)"
  print(interpolation)
  print(interpolation + "🍌🍌🍌")
  print("🍌🍌🍌 \(123 * 23)")

  print(emoji.count)
  print(emoji.description)

  if emoji != "😀⏰" {
    print("emoji is \(emoji)")
  } else {
    print("emoji is not \(emoji)")
  }
}

func checkRandom() {
  func process(initValue: Int, afterValue: Int, seed: UInt32) {
      var arr: [Int] = .init(repeating: initValue, count: 10)
    if arr.last != initValue {
      print("invalid array initialization")
    }
    init_seed(seed)
    arr.withUnsafeMutableBytes { ptr in
      arc4random_buf(ptr.baseAddress!, ptr.count)
    }
    if arr.last == initValue {
      PANIC("arc4random_buf failed")
    } else if arr.last != afterValue {
      print("unexpected value")
      print(arr.last!)
    } else {
      print("arc4random_buf success")
    }
  }
  process(initValue: 0x10, afterValue: -2080860223, seed: 0x0beefbeef)
  process(initValue: 0x10, afterValue: 2085001153, seed: 0x0abcdbeef)
  init_seed(0)
}
