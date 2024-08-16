import LL

let lf: Int = 0x0a

func zeroClear() {
  swiftMemset(get_bss_start(), 0x00, get_bss_end_ptr_value() - get_bss_ptr_value())
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
