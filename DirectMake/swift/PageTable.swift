import LL

enum Page {
  static let SATP_SV32 = UInt32(1 << 31)
  static let PAGE_V = UInt32(1 << 0) //有効化ビット
  static let PAGE_R = UInt32(1 << 1) //読み込みビット
  static let PAGE_W = UInt32(1 << 2) //書き込みビット
  static let PAGE_X = UInt32(1 << 3) //実行ビット
  static let PAGE_U = UInt32(1 << 4) //ユーザーモードでアクセス可能
}

func mapPage(_ table1: UnsafeMutablePointer<UInt32>, vaddr: UInt32, paddr: UInt32, flags: UInt32) {
  if vaddr % PAGE_SIZE != 0 {
    PANIC("unaligned vaddr \(vaddr)")
  }
  if paddr % PAGE_SIZE != 0 {
    PANIC("unaligned paddr \(paddr)")
  }
  let vpn1 = (vaddr >> 22) & 0x3ff
  if (table1[Int(vpn1)] & Page.PAGE_V) == 0 {
    let ptPaddr = alloc_pages(1)
    table1[Int(vpn1)] = ((UInt32(ptPaddr) / PAGE_SIZE) << 10) | Page.PAGE_V
  }
  let vpn0 = (vaddr >> 12) & 0x3ff
  let table0 = UnsafeMutablePointer<UInt32>(
    bitPattern: UInt((table1[Int(vpn1)] >> 10) * PAGE_SIZE)
  )
  let value = UInt32((paddr / PAGE_SIZE) << 10) | flags | Page.PAGE_V
  table0![Int(vpn0)] = value
}
