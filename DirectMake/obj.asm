
.build/kernel.elf:	file format elf32-littleriscv

Disassembly of section .text:

80200000 <.text>:
80200000: 37 f5 22 80  	lui	a0, 0x8022f
80200004: 13 05 c5 e1  	addi	a0, a0, -0x1e4
80200008: 2a 81        	mv	sp, a0
8020000a: 6f 60 c0 00  	j	0x80206016 <.text+0x6016>
8020000e: 05 46        	li	a2, 0x1
80200010: 97 65 00 00  	auipc	a1, 0x6
80200014: 93 82 05 46  	addi	t0, a1, 0x460
80200018: 93 08 e0 27  	li	a7, 0x27e
8020001c: 15 48        	li	a6, 0x5
8020001e: 21 a0        	j	0x80200026 <.text+0x26>
80200020: 06 06        	slli	a2, a2, 0x1
80200022: 63 5c 16 03  	bge	a2, a7, 0x8020005a <.text+0x5a>
80200026: 93 15 26 00  	slli	a1, a2, 0x2
8020002a: 96 95        	add	a1, a1, t0
8020002c: 8c 41        	lw	a1, 0x0(a1)
8020002e: 13 97 b5 00  	slli	a4, a1, 0xb
80200032: 2d 83        	srli	a4, a4, 0xb
80200034: e3 66 e5 fe  	bltu	a0, a4, 0x80200020 <.text+0x20>
80200038: 93 d7 d5 01  	srli	a5, a1, 0x1d
8020003c: 93 06 f0 1f  	li	a3, 0x1ff
80200040: 63 84 07 01  	beq	a5, a6, 0x80200048 <.text+0x48>
80200044: 93 06 f0 0f  	li	a3, 0xff
80200048: d5 81        	srli	a1, a1, 0x15
8020004a: f5 8d        	and	a1, a1, a3
8020004c: ba 95        	add	a1, a1, a4
8020004e: 63 f8 a5 00  	bgeu	a1, a0, 0x8020005e <.text+0x5e>
80200052: 06 06        	slli	a2, a2, 0x1
80200054: 05 06        	addi	a2, a2, 0x1
80200056: e3 48 16 fd  	blt	a2, a7, 0x80200026 <.text+0x26>
8020005a: 93 07 f0 0f  	li	a5, 0xff
8020005e: 3e 85        	mv	a0, a5
80200060: 82 80        	ret
80200062: 41 11        	addi	sp, sp, -0x10
80200064: 06 c6        	sw	ra, 0xc(sp)
80200066: 97 75 00 00  	auipc	a1, 0x7
8020006a: 93 85 25 e0  	addi	a1, a1, -0x1fe
8020006e: 17 76 00 00  	auipc	a2, 0x7
80200072: 13 06 a6 32  	addi	a2, a2, 0x32a
80200076: 9d 24        	jal	0x802002dc <.text+0x2dc>
80200078: b7 05 00 80  	lui	a1, 0x80000
8020007c: fd 15        	addi	a1, a1, -0x1
8020007e: 2d 8d        	xor	a0, a0, a1
80200080: 33 35 a0 00  	snez	a0, a0
80200084: b2 40        	lw	ra, 0xc(sp)
80200086: 41 01        	addi	sp, sp, 0x10
80200088: 82 80        	ret
8020008a: 63 82 05 10  	beqz	a1, 0x8020018e <.text+0x18e>
8020008e: 01 11        	addi	sp, sp, -0x20
80200090: 22 ce        	sw	s0, 0x1c(sp)
80200092: 26 cc        	sw	s1, 0x18(sp)
80200094: 4a ca        	sw	s2, 0x14(sp)
80200096: 4e c8        	sw	s3, 0x10(sp)
80200098: 52 c6        	sw	s4, 0xc(sp)
8020009a: 56 c4        	sw	s5, 0x8(sp)
8020009c: 5a c2        	sw	s6, 0x4(sp)
8020009e: 81 47        	li	a5, 0x0
802000a0: 05 48        	li	a6, 0x1
802000a2: b7 74 54 e6  	lui	s1, 0xe6547
802000a6: 13 8e 44 b6  	addi	t3, s1, -0x49c
802000aa: b7 34 9e cc  	lui	s1, 0xcc9e3
802000ae: 93 8e 14 d5  	addi	t4, s1, -0x2af
802000b2: b7 34 87 1b  	lui	s1, 0x1b873
802000b6: 13 8f 34 59  	addi	t5, s1, 0x593
802000ba: b3 04 d5 03  	mul	s1, a0, t4
802000be: b7 8f a8 16  	lui	t6, 0x16a88
802000c2: 33 05 f5 03  	mul	a0, a0, t6
802000c6: c5 80        	srli	s1, s1, 0x11
802000c8: 45 8d        	or	a0, a0, s1
802000ca: 33 09 e5 03  	mul	s2, a0, t5
802000ce: 37 d5 eb 85  	lui	a0, 0x85ebd
802000d2: 93 09 b5 a6  	addi	s3, a0, -0x595
802000d6: 37 b5 b2 c2  	lui	a0, 0xc2b2b
802000da: 13 0a 55 e3  	addi	s4, a0, -0x1cb
802000de: 03 23 06 00  	lw	t1, 0x0(a2)
802000e2: 03 55 07 00  	lhu	a0, 0x0(a4)
802000e6: b3 c4 27 01  	xor	s1, a5, s2
802000ea: 13 d4 34 01  	srli	s0, s1, 0x13
802000ee: b6 04        	slli	s1, s1, 0xd
802000f0: 45 8c        	or	s0, s0, s1
802000f2: 93 14 24 00  	slli	s1, s0, 0x2
802000f6: 72 94        	add	s0, s0, t3
802000f8: b3 88 84 00  	add	a7, s1, s0
802000fc: b3 04 d5 03  	mul	s1, a0, t4
80200100: 33 04 f5 03  	mul	s0, a0, t6
80200104: c5 80        	srli	s1, s1, 0x11
80200106: 45 8c        	or	s0, s0, s1
80200108: b3 04 e4 03  	mul	s1, s0, t5
8020010c: b3 c4 14 01  	xor	s1, s1, a7
80200110: 13 d4 34 01  	srli	s0, s1, 0x13
80200114: b6 04        	slli	s1, s1, 0xd
80200116: 45 8c        	or	s0, s0, s1
80200118: 93 14 24 00  	slli	s1, s0, 0x2
8020011c: 72 94        	add	s0, s0, t3
8020011e: a2 94        	add	s1, s1, s0
80200120: 13 d4 04 01  	srli	s0, s1, 0x10
80200124: 25 8c        	xor	s0, s0, s1
80200126: 93 44 84 00  	xori	s1, s0, 0x8
8020012a: 33 84 34 03  	mul	s0, s1, s3
8020012e: 93 54 d4 00  	srli	s1, s0, 0xd
80200132: 25 8c        	xor	s0, s0, s1
80200134: 33 04 44 03  	mul	s0, s0, s4
80200138: 93 54 04 01  	srli	s1, s0, 0x10
8020013c: 25 8c        	xor	s0, s0, s1
8020013e: b3 74 a4 02  	remu	s1, s0, a0
80200142: 93 d3 64 00  	srli	t2, s1, 0x6
80200146: 13 95 33 00  	slli	a0, t2, 0x3
8020014a: 1a 95        	add	a0, a0, t1
8020014c: 83 22 45 00  	lw	t0, 0x4(a0)
80200150: 83 28 05 00  	lw	a7, 0x0(a0)
80200154: 93 fa f4 03  	andi	s5, s1, 0x3f
80200158: 33 1b 58 01  	sll	s6, a6, s5
8020015c: 13 85 0a fe  	addi	a0, s5, -0x20
80200160: 13 24 05 00  	slti	s0, a0, 0x0
80200164: 7d 14        	addi	s0, s0, -0x1
80200166: 33 7b 64 01  	and	s6, s0, s6
8020016a: 33 14 98 00  	sll	s0, a6, s1
8020016e: 7d 85        	srai	a0, a0, 0x1f
80200170: 61 8d        	and	a0, a0, s0
80200172: 33 75 15 01  	and	a0, a0, a7
80200176: 33 74 5b 00  	and	s0, s6, t0
8020017a: 41 8d        	or	a0, a0, s0
8020017c: 19 e9        	bnez	a0, 0x80200192 <.text+0x192>
8020017e: 85 07        	addi	a5, a5, 0x1
80200180: 91 06        	addi	a3, a3, 0x4
80200182: 09 07        	addi	a4, a4, 0x2
80200184: 11 06        	addi	a2, a2, 0x4
80200186: e3 9c f5 f4  	bne	a1, a5, 0x802000de <.text+0xde>
8020018a: 01 45        	li	a0, 0x0
8020018c: 3d aa        	j	0x802002ca <.text+0x2ca>
8020018e: 01 45        	li	a0, 0x0
80200190: 82 80        	ret
80200192: 88 42        	lw	a0, 0x0(a3)
80200194: 93 d5 84 00  	srli	a1, s1, 0x8
80200198: 93 f5 e5 0f  	andi	a1, a1, 0xfe
8020019c: 2e 95        	add	a0, a0, a1
8020019e: 83 55 05 00  	lhu	a1, 0x0(a0)
802001a2: 13 f5 04 1c  	andi	a0, s1, 0x1c0
802001a6: 49 c1        	beqz	a0, 0x80200228 <.text+0x228>
802001a8: 13 f6 83 3f  	andi	a2, t2, 0x3f8
802001ac: 37 55 55 55  	lui	a0, 0x55555
802001b0: 13 0e 55 55  	addi	t3, a0, 0x555
802001b4: 37 35 33 33  	lui	a0, 0x33333
802001b8: 93 07 35 33  	addi	a5, a0, 0x333
802001bc: 37 15 0f 0f  	lui	a0, 0xf0f1
802001c0: 93 0e f5 f0  	addi	t4, a0, -0xf1
802001c4: 37 05 01 01  	lui	a0, 0x1010
802001c8: 93 04 15 10  	addi	s1, a0, 0x101
802001cc: 13 15 36 00  	slli	a0, a2, 0x3
802001d0: 1a 95        	add	a0, a0, t1
802001d2: 54 41        	lw	a3, 0x4(a0)
802001d4: 08 41        	lw	a0, 0x0(a0)
802001d6: 13 d4 16 00  	srli	s0, a3, 0x1
802001da: 33 74 c4 01  	and	s0, s0, t3
802001de: 81 8e        	sub	a3, a3, s0
802001e0: 33 f7 f6 00  	and	a4, a3, a5
802001e4: 89 82        	srli	a3, a3, 0x2
802001e6: fd 8e        	and	a3, a3, a5
802001e8: ba 96        	add	a3, a3, a4
802001ea: 13 d7 46 00  	srli	a4, a3, 0x4
802001ee: ba 96        	add	a3, a3, a4
802001f0: b3 f6 d6 01  	and	a3, a3, t4
802001f4: b3 86 96 02  	mul	a3, a3, s1
802001f8: e1 82        	srli	a3, a3, 0x18
802001fa: 13 57 15 00  	srli	a4, a0, 0x1
802001fe: 33 77 c7 01  	and	a4, a4, t3
80200202: 19 8d        	sub	a0, a0, a4
80200204: 33 77 f5 00  	and	a4, a0, a5
80200208: 09 81        	srli	a0, a0, 0x2
8020020a: 7d 8d        	and	a0, a0, a5
8020020c: 3a 95        	add	a0, a0, a4
8020020e: 13 57 45 00  	srli	a4, a0, 0x4
80200212: 3a 95        	add	a0, a0, a4
80200214: 33 75 d5 01  	and	a0, a0, t4
80200218: 33 05 95 02  	mul	a0, a0, s1
8020021c: 61 81        	srli	a0, a0, 0x18
8020021e: 36 95        	add	a0, a0, a3
80200220: 05 06        	addi	a2, a2, 0x1
80200222: aa 95        	add	a1, a1, a0
80200224: e3 94 c3 fa  	bne	t2, a2, 0x802001cc <.text+0x1cc>
80200228: 63 8e 0a 08  	beqz	s5, 0x802002c4 <.text+0x2c4>
8020022c: 33 05 58 41  	sub	a0, a6, s5
80200230: 13 06 f5 01  	addi	a2, a0, 0x1f
80200234: 93 06 f5 03  	addi	a3, a0, 0x3f
80200238: 63 45 06 00  	bltz	a2, 0x80200242 <.text+0x242>
8020023c: 33 94 c8 00  	sll	s0, a7, a2
80200240: 19 a8        	j	0x80200256 <.text+0x256>
80200242: 33 05 a0 40  	neg	a0, a0
80200246: 13 d7 18 00  	srli	a4, a7, 0x1
8020024a: 33 55 a7 00  	srl	a0, a4, a0
8020024e: 33 97 d2 00  	sll	a4, t0, a3
80200252: 33 64 a7 00  	or	s0, a4, a0
80200256: b3 96 d8 00  	sll	a3, a7, a3
8020025a: 7d 86        	srai	a2, a2, 0x1f
8020025c: 75 8e        	and	a2, a2, a3
8020025e: 93 56 16 00  	srli	a3, a2, 0x1
80200262: 37 57 55 55  	lui	a4, 0x55555
80200266: 13 07 57 55  	addi	a4, a4, 0x555
8020026a: f9 8e        	and	a3, a3, a4
8020026c: 15 8e        	sub	a2, a2, a3
8020026e: b7 36 33 33  	lui	a3, 0x33333
80200272: 93 86 36 33  	addi	a3, a3, 0x333
80200276: b3 77 d6 00  	and	a5, a2, a3
8020027a: 09 82        	srli	a2, a2, 0x2
8020027c: 75 8e        	and	a2, a2, a3
8020027e: 3e 96        	add	a2, a2, a5
80200280: 93 57 46 00  	srli	a5, a2, 0x4
80200284: 3e 96        	add	a2, a2, a5
80200286: b7 17 0f 0f  	lui	a5, 0xf0f1
8020028a: 93 87 f7 f0  	addi	a5, a5, -0xf1
8020028e: 7d 8e        	and	a2, a2, a5
80200290: b7 04 01 01  	lui	s1, 0x1010
80200294: 93 84 14 10  	addi	s1, s1, 0x101
80200298: 33 06 96 02  	mul	a2, a2, s1
8020029c: 61 82        	srli	a2, a2, 0x18
8020029e: 13 55 14 00  	srli	a0, s0, 0x1
802002a2: 79 8d        	and	a0, a0, a4
802002a4: 09 8c        	sub	s0, s0, a0
802002a6: 33 75 d4 00  	and	a0, s0, a3
802002aa: 09 80        	srli	s0, s0, 0x2
802002ac: e1 8e        	and	a3, a3, s0
802002ae: 36 95        	add	a0, a0, a3
802002b0: 93 56 45 00  	srli	a3, a0, 0x4
802002b4: 36 95        	add	a0, a0, a3
802002b6: 7d 8d        	and	a0, a0, a5
802002b8: 33 05 95 02  	mul	a0, a0, s1
802002bc: 61 81        	srli	a0, a0, 0x18
802002be: 2e 95        	add	a0, a0, a1
802002c0: b3 05 c5 00  	add	a1, a0, a2
802002c4: 13 95 05 01  	slli	a0, a1, 0x10
802002c8: 41 81        	srli	a0, a0, 0x10
802002ca: 72 44        	lw	s0, 0x1c(sp)
802002cc: e2 44        	lw	s1, 0x18(sp)
802002ce: 52 49        	lw	s2, 0x14(sp)
802002d0: c2 49        	lw	s3, 0x10(sp)
802002d2: 32 4a        	lw	s4, 0xc(sp)
802002d4: a2 4a        	lw	s5, 0x8(sp)
802002d6: 12 4b        	lw	s6, 0x4(sp)
802002d8: 05 61        	addi	sp, sp, 0x20
802002da: 82 80        	ret
802002dc: b7 f6 f0 f0  	lui	a3, 0xf0f0f
802002e0: 93 86 16 0f  	addi	a3, a3, 0xf1
802002e4: 03 af 05 00  	lw	t5, 0x0(a1)
802002e8: d8 41        	lw	a4, 0x4(a1)
802002ea: b3 37 d5 02  	mulhu	a5, a0, a3
802002ee: 13 d8 e7 00  	srli	a6, a5, 0xe
802002f2: 93 36 1f 00  	seqz	a3, t5
802002f6: 15 8f        	sub	a4, a4, a3
802002f8: 93 06 ff ff  	addi	a3, t5, -0x1
802002fc: b3 b6 06 01  	sltu	a3, a3, a6
80200300: 13 37 17 00  	seqz	a4, a4
80200304: f9 8e        	and	a3, a3, a4
80200306: 63 93 06 18  	bnez	a3, 0x8020048c <.text+0x48c>
8020030a: 93 d8 87 00  	srli	a7, a5, 0x8
8020030e: 93 16 38 00  	slli	a3, a6, 0x3
80200312: ae 96        	add	a3, a3, a1
80200314: 83 a3 c6 00  	lw	t2, 0xc(a3)
80200318: 03 a3 86 00  	lw	t1, 0x8(a3)
8020031c: 93 f7 f8 03  	andi	a5, a7, 0x3f
80200320: 93 86 07 fe  	addi	a3, a5, -0x20
80200324: 63 c7 06 00  	bltz	a3, 0x80200332 <.text+0x332>
80200328: 33 d7 f3 00  	srl	a4, t2, a5
8020032c: 05 8b        	andi	a4, a4, 0x1
8020032e: 19 ef        	bnez	a4, 0x8020034c <.text+0x34c>
80200330: b1 aa        	j	0x8020048c <.text+0x48c>
80200332: b3 52 f3 00  	srl	t0, t1, a5
80200336: 13 97 13 00  	slli	a4, t2, 0x1
8020033a: 93 c6 f7 ff  	not	a3, a5
8020033e: b3 16 d7 00  	sll	a3, a4, a3
80200342: 33 e7 d2 00  	or	a4, t0, a3
80200346: 05 8b        	andi	a4, a4, 0x1
80200348: 63 02 07 14  	beqz	a4, 0x8020048c <.text+0x48c>
8020034c: 06 08        	slli	a6, a6, 0x1
8020034e: 32 98        	add	a6, a6, a2
80200350: 83 52 08 00  	lhu	t0, 0x0(a6)
80200354: 05 48        	li	a6, 0x1
80200356: dd c7        	beqz	a5, 0x80200404 <.text+0x404>
80200358: 33 07 f0 40  	neg	a4, a5
8020035c: 93 06 00 02  	li	a3, 0x20
80200360: b3 8e f6 40  	sub	t4, a3, a5
80200364: 33 1e e3 00  	sll	t3, t1, a4
80200368: 63 c4 0e 00  	bltz	t4, 0x80200370 <.text+0x370>
8020036c: 72 83        	mv	t1, t3
8020036e: 31 a8        	j	0x8020038a <.text+0x38a>
80200370: 93 06 00 04  	li	a3, 0x40
80200374: 9d 8e        	sub	a3, a3, a5
80200376: 33 97 e3 00  	sll	a4, t2, a4
8020037a: 93 c6 f6 ff  	not	a3, a3
8020037e: 93 57 13 00  	srli	a5, t1, 0x1
80200382: b3 d7 d7 00  	srl	a5, a5, a3
80200386: 33 63 f7 00  	or	t1, a4, a5
8020038a: 93 d6 fe 41  	srai	a3, t4, 0x1f
8020038e: b3 f6 c6 01  	and	a3, a3, t3
80200392: 13 d7 16 00  	srli	a4, a3, 0x1
80200396: b7 57 55 55  	lui	a5, 0x55555
8020039a: 93 83 57 55  	addi	t2, a5, 0x555
8020039e: 33 77 77 00  	and	a4, a4, t2
802003a2: 99 8e        	sub	a3, a3, a4
802003a4: 37 37 33 33  	lui	a4, 0x33333
802003a8: 13 07 37 33  	addi	a4, a4, 0x333
802003ac: b3 f7 e6 00  	and	a5, a3, a4
802003b0: 89 82        	srli	a3, a3, 0x2
802003b2: f9 8e        	and	a3, a3, a4
802003b4: be 96        	add	a3, a3, a5
802003b6: 93 d7 46 00  	srli	a5, a3, 0x4
802003ba: be 96        	add	a3, a3, a5
802003bc: b7 17 0f 0f  	lui	a5, 0xf0f1
802003c0: 93 8e f7 f0  	addi	t4, a5, -0xf1
802003c4: 33 fe d6 01  	and	t3, a3, t4
802003c8: b7 06 01 01  	lui	a3, 0x1010
802003cc: 93 86 16 10  	addi	a3, a3, 0x101
802003d0: b3 07 de 02  	mul	a5, t3, a3
802003d4: 13 de 87 01  	srli	t3, a5, 0x18
802003d8: 93 57 13 00  	srli	a5, t1, 0x1
802003dc: b3 f7 77 00  	and	a5, a5, t2
802003e0: b3 07 f3 40  	sub	a5, t1, a5
802003e4: 33 f3 e7 00  	and	t1, a5, a4
802003e8: 89 83        	srli	a5, a5, 0x2
802003ea: 7d 8f        	and	a4, a4, a5
802003ec: 1a 97        	add	a4, a4, t1
802003ee: 93 57 47 00  	srli	a5, a4, 0x4
802003f2: 3e 97        	add	a4, a4, a5
802003f4: 33 77 d7 01  	and	a4, a4, t4
802003f8: b3 06 d7 02  	mul	a3, a4, a3
802003fc: e1 82        	srli	a3, a3, 0x18
802003fe: 96 96        	add	a3, a3, t0
80200400: b3 82 c6 01  	add	t0, a3, t3
80200404: 93 16 3f 00  	slli	a3, t5, 0x3
80200408: ae 96        	add	a3, a3, a1
8020040a: c2 02        	slli	t0, t0, 0x10
8020040c: 93 d5 02 01  	srli	a1, t0, 0x10
80200410: 13 97 25 00  	slli	a4, a1, 0x2
80200414: b3 03 b7 00  	add	t2, a4, a1
80200418: 13 97 33 00  	slli	a4, t2, 0x3
8020041c: ba 96        	add	a3, a3, a4
8020041e: 93 82 86 00  	addi	t0, a3, 0x8
80200422: 93 06 00 ef  	li	a3, -0x110
80200426: b3 86 d8 02  	mul	a3, a7, a3
8020042a: aa 96        	add	a3, a3, a0
8020042c: 93 f5 f6 03  	andi	a1, a3, 0x3f
80200430: 13 d5 66 00  	srli	a0, a3, 0x6
80200434: 93 17 35 00  	slli	a5, a0, 0x3
80200438: 96 97        	add	a5, a5, t0
8020043a: 03 a3 07 00  	lw	t1, 0x0(a5)
8020043e: 83 a8 47 00  	lw	a7, 0x4(a5)
80200442: b3 16 d8 00  	sll	a3, a6, a3
80200446: 13 87 05 fe  	addi	a4, a1, -0x20
8020044a: 93 57 f7 41  	srai	a5, a4, 0x1f
8020044e: fd 8e        	and	a3, a3, a5
80200450: b3 17 b8 00  	sll	a5, a6, a1
80200454: 13 27 07 00  	slti	a4, a4, 0x0
80200458: 7d 17        	addi	a4, a4, -0x1
8020045a: 7d 8f        	and	a4, a4, a5
8020045c: 33 f7 e8 00  	and	a4, a7, a4
80200460: b3 76 d3 00  	and	a3, t1, a3
80200464: d9 8e        	or	a3, a3, a4
80200466: 9d c2        	beqz	a3, 0x8020048c <.text+0x48c>
80200468: 7a 95        	add	a0, a0, t5
8020046a: 1e 95        	add	a0, a0, t2
8020046c: 06 05        	slli	a0, a0, 0x1
8020046e: 32 95        	add	a0, a0, a2
80200470: 83 56 05 00  	lhu	a3, 0x0(a0)
80200474: c5 c5        	beqz	a1, 0x8020051c <.text+0x51c>
80200476: 33 06 b0 40  	neg	a2, a1
8020047a: 13 05 00 02  	li	a0, 0x20
8020047e: 0d 8d        	sub	a0, a0, a1
80200480: 33 17 c3 00  	sll	a4, t1, a2
80200484: 63 48 05 00  	bltz	a0, 0x80200494 <.text+0x494>
80200488: 3a 88        	mv	a6, a4
8020048a: 15 a0        	j	0x802004ae <.text+0x4ae>
8020048c: 37 05 00 80  	lui	a0, 0x80000
80200490: 7d 15        	addi	a0, a0, -0x1
80200492: 82 80        	ret
80200494: 93 07 00 04  	li	a5, 0x40
80200498: 8d 8f        	sub	a5, a5, a1
8020049a: b3 95 c8 00  	sll	a1, a7, a2
8020049e: 13 c6 f7 ff  	not	a2, a5
802004a2: 93 57 13 00  	srli	a5, t1, 0x1
802004a6: 33 d6 c7 00  	srl	a2, a5, a2
802004aa: 33 e8 c5 00  	or	a6, a1, a2
802004ae: 7d 85        	srai	a0, a0, 0x1f
802004b0: 79 8d        	and	a0, a0, a4
802004b2: 93 55 15 00  	srli	a1, a0, 0x1
802004b6: 37 57 55 55  	lui	a4, 0x55555
802004ba: 13 07 57 55  	addi	a4, a4, 0x555
802004be: f9 8d        	and	a1, a1, a4
802004c0: 0d 8d        	sub	a0, a0, a1
802004c2: b7 35 33 33  	lui	a1, 0x33333
802004c6: 93 85 35 33  	addi	a1, a1, 0x333
802004ca: b3 77 b5 00  	and	a5, a0, a1
802004ce: 09 81        	srli	a0, a0, 0x2
802004d0: 6d 8d        	and	a0, a0, a1
802004d2: 3e 95        	add	a0, a0, a5
802004d4: 93 57 45 00  	srli	a5, a0, 0x4
802004d8: 3e 95        	add	a0, a0, a5
802004da: b7 17 0f 0f  	lui	a5, 0xf0f1
802004de: 93 87 f7 f0  	addi	a5, a5, -0xf1
802004e2: 7d 8d        	and	a0, a0, a5
802004e4: 37 06 01 01  	lui	a2, 0x1010
802004e8: 13 06 16 10  	addi	a2, a2, 0x101
802004ec: 33 05 c5 02  	mul	a0, a0, a2
802004f0: 93 58 85 01  	srli	a7, a0, 0x18
802004f4: 13 55 18 00  	srli	a0, a6, 0x1
802004f8: 79 8d        	and	a0, a0, a4
802004fa: 33 05 a8 40  	sub	a0, a6, a0
802004fe: 33 77 b5 00  	and	a4, a0, a1
80200502: 09 81        	srli	a0, a0, 0x2
80200504: 6d 8d        	and	a0, a0, a1
80200506: 3a 95        	add	a0, a0, a4
80200508: 93 55 45 00  	srli	a1, a0, 0x4
8020050c: 2e 95        	add	a0, a0, a1
8020050e: 7d 8d        	and	a0, a0, a5
80200510: 33 05 c5 02  	mul	a0, a0, a2
80200514: 61 81        	srli	a0, a0, 0x18
80200516: 36 95        	add	a0, a0, a3
80200518: b3 06 15 01  	add	a3, a0, a7
8020051c: 03 a5 42 02  	lw	a0, 0x24(t0)
80200520: 83 d5 22 02  	lhu	a1, 0x22(t0)
80200524: 42 05        	slli	a0, a0, 0x10
80200526: 4d 8d        	or	a0, a0, a1
80200528: c2 06        	slli	a3, a3, 0x10
8020052a: c1 82        	srli	a3, a3, 0x10
8020052c: 36 95        	add	a0, a0, a3
8020052e: 82 80        	ret
80200530: 93 05 00 0c  	li	a1, 0xc0
80200534: 63 74 b5 00  	bgeu	a0, a1, 0x8020053c <.text+0x53c>
80200538: 01 45        	li	a0, 0x0
8020053a: 82 80        	ret
8020053c: 41 11        	addi	sp, sp, -0x10
8020053e: 06 c6        	sw	ra, 0xc(sp)
80200540: 97 75 00 00  	auipc	a1, 0x7
80200544: 93 85 85 fa  	addi	a1, a1, -0x58
80200548: 17 86 00 00  	auipc	a2, 0x8
8020054c: 13 06 86 c8  	addi	a2, a2, -0x378
80200550: 71 33        	jal	0x802002dc <.text+0x2dc>
80200552: b7 05 00 80  	lui	a1, 0x80000
80200556: fd 15        	addi	a1, a1, -0x1
80200558: 63 14 b5 00  	bne	a0, a1, 0x80200560 <.text+0x560>
8020055c: 01 45        	li	a0, 0x0
8020055e: 05 a0        	j	0x8020057e <.text+0x57e>
80200560: 97 85 00 00  	auipc	a1, 0x8
80200564: 93 85 85 fa  	addi	a1, a1, -0x58
80200568: 2e 95        	add	a0, a0, a1
8020056a: 03 45 05 00  	lbu	a0, 0x0(a0)
8020056e: 06 05        	slli	a0, a0, 0x1
80200570: 97 95 00 00  	auipc	a1, 0x9
80200574: 93 85 45 b8  	addi	a1, a1, -0x47c
80200578: 2e 95        	add	a0, a0, a1
8020057a: 03 55 05 00  	lhu	a0, 0x0(a0)
8020057e: b2 40        	lw	ra, 0xc(sp)
80200580: 41 01        	addi	sp, sp, 0x10
80200582: 82 80        	ret
80200584: 41 11        	addi	sp, sp, -0x10
80200586: 06 c6        	sw	ra, 0xc(sp)
80200588: 97 e5 00 00  	auipc	a1, 0xe
8020058c: 13 86 c5 66  	addi	a2, a1, 0x66c
80200590: 97 e5 00 00  	auipc	a1, 0xe
80200594: 93 86 05 69  	addi	a3, a1, 0x690
80200598: 97 b5 00 00  	auipc	a1, 0xb
8020059c: 13 87 c5 0b  	addi	a4, a1, 0xbc
802005a0: ad 45        	li	a1, 0xb
802005a2: e5 34        	jal	0x8020008a <.text+0x8a>
802005a4: 0a 05        	slli	a0, a0, 0x2
802005a6: 97 b5 00 00  	auipc	a1, 0xb
802005aa: 93 85 65 0c  	addi	a1, a1, 0xc6
802005ae: 2e 95        	add	a0, a0, a1
802005b0: 08 41        	lw	a0, 0x0(a0)
802005b2: b2 40        	lw	ra, 0xc(sp)
802005b4: 41 01        	addi	sp, sp, 0x10
802005b6: 82 80        	ret
802005b8: 41 11        	addi	sp, sp, -0x10
802005ba: 06 c6        	sw	ra, 0xc(sp)
802005bc: 22 c4        	sw	s0, 0x8(sp)
802005be: 26 c2        	sw	s1, 0x4(sp)
802005c0: ae 84        	mv	s1, a1
802005c2: 2a 84        	mv	s0, a0
802005c4: 17 e5 00 00  	auipc	a0, 0xe
802005c8: 13 06 85 68  	addi	a2, a0, 0x688
802005cc: 17 e5 00 00  	auipc	a0, 0xe
802005d0: 93 06 c5 68  	addi	a3, a0, 0x68c
802005d4: 17 d5 00 00  	auipc	a0, 0xd
802005d8: 13 07 c5 0c  	addi	a4, a0, 0xcc
802005dc: 8d 45        	li	a1, 0x3
802005de: 26 85        	mv	a0, s1
802005e0: 6d 34        	jal	0x8020008a <.text+0x8a>
802005e2: 0a 05        	slli	a0, a0, 0x2
802005e4: 97 e5 00 00  	auipc	a1, 0xe
802005e8: 93 85 05 68  	addi	a1, a1, 0x680
802005ec: 2e 95        	add	a0, a0, a1
802005ee: 0c 41        	lw	a1, 0x0(a0)
802005f0: 90 41        	lw	a2, 0x0(a1)
802005f2: 13 15 b6 00  	slli	a0, a2, 0xb
802005f6: 93 56 b5 00  	srli	a3, a0, 0xb
802005fa: 7d 55        	li	a0, -0x1
802005fc: 63 9e 96 04  	bne	a3, s1, 0x80200658 <.text+0x658>
80200600: 55 82        	srli	a2, a2, 0x15
80200602: 7d 16        	addi	a2, a2, -0x1
80200604: 31 ca        	beqz	a2, 0x80200658 <.text+0x658>
80200606: 85 46        	li	a3, 0x1
80200608: 21 a0        	j	0x80200610 <.text+0x610>
8020060a: 26 86        	mv	a2, s1
8020060c: 63 e6 d4 04  	bltu	s1, a3, 0x80200658 <.text+0x658>
80200610: 33 07 d6 40  	sub	a4, a2, a3
80200614: 05 83        	srli	a4, a4, 0x1
80200616: 36 97        	add	a4, a4, a3
80200618: 93 17 27 00  	slli	a5, a4, 0x2
8020061c: ae 97        	add	a5, a5, a1
8020061e: 84 43        	lw	s1, 0x0(a5)
80200620: 93 97 f4 00  	slli	a5, s1, 0xf
80200624: bd 83        	srli	a5, a5, 0xf
80200626: 63 81 87 02  	beq	a5, s0, 0x80200648 <.text+0x648>
8020062a: 63 66 f4 00  	bltu	s0, a5, 0x80200636 <.text+0x636>
8020062e: b2 84        	mv	s1, a2
80200630: e3 fd 87 fc  	bgeu	a5, s0, 0x8020060a <.text+0x60a>
80200634: 29 a0        	j	0x8020063e <.text+0x63e>
80200636: 93 04 f7 ff  	addi	s1, a4, -0x1
8020063a: e3 f8 87 fc  	bgeu	a5, s0, 0x8020060a <.text+0x60a>
8020063e: 93 06 17 00  	addi	a3, a4, 0x1
80200642: e3 77 d6 fc  	bgeu	a2, a3, 0x80200610 <.text+0x610>
80200646: 09 a8        	j	0x80200658 <.text+0x658>
80200648: 13 95 14 00  	slli	a0, s1, 0x1
8020064c: 49 81        	srli	a0, a0, 0x12
8020064e: 63 d4 04 00  	bgez	s1, 0x80200656 <.text+0x656>
80200652: 33 05 a0 40  	neg	a0, a0
80200656: 22 95        	add	a0, a0, s0
80200658: b2 40        	lw	ra, 0xc(sp)
8020065a: 22 44        	lw	s0, 0x8(sp)
8020065c: 92 44        	lw	s1, 0x4(sp)
8020065e: 41 01        	addi	sp, sp, 0x10
80200660: 82 80        	ret
80200662: 00 00        	unimp
80200664: 73 00 00 00  	ecall
80200668: 82 80        	ret
8020066a: 73 00 50 10  	wfi
8020066e: 82 80        	ret
80200670: 00 00        	unimp
80200672: 82 80        	ret
80200674: 73 10 01 14  	csrw	sscratch, sp
80200678: 13 01 41 f8  	addi	sp, sp, -0x7c
8020067c: 06 c0        	sw	ra, 0x0(sp)
8020067e: 0e c2        	sw	gp, 0x4(sp)
80200680: 12 c4        	sw	tp, 0x8(sp)
80200682: 16 c6        	sw	t0, 0xc(sp)
80200684: 1a c8        	sw	t1, 0x10(sp)
80200686: 1e ca        	sw	t2, 0x14(sp)
80200688: 72 cc        	sw	t3, 0x18(sp)
8020068a: 76 ce        	sw	t4, 0x1c(sp)
8020068c: 7a d0        	sw	t5, 0x20(sp)
8020068e: 7e d2        	sw	t6, 0x24(sp)
80200690: 2a d4        	sw	a0, 0x28(sp)
80200692: 2e d6        	sw	a1, 0x2c(sp)
80200694: 32 d8        	sw	a2, 0x30(sp)
80200696: 36 da        	sw	a3, 0x34(sp)
80200698: 3a dc        	sw	a4, 0x38(sp)
8020069a: 3e de        	sw	a5, 0x3c(sp)
8020069c: c2 c0        	sw	a6, 0x40(sp)
8020069e: c6 c2        	sw	a7, 0x44(sp)
802006a0: a2 c4        	sw	s0, 0x48(sp)
802006a2: a6 c6        	sw	s1, 0x4c(sp)
802006a4: ca c8        	sw	s2, 0x50(sp)
802006a6: ce ca        	sw	s3, 0x54(sp)
802006a8: d2 cc        	sw	s4, 0x58(sp)
802006aa: d6 ce        	sw	s5, 0x5c(sp)
802006ac: da d0        	sw	s6, 0x60(sp)
802006ae: de d2        	sw	s7, 0x64(sp)
802006b0: e2 d4        	sw	s8, 0x68(sp)
802006b2: e6 d6        	sw	s9, 0x6c(sp)
802006b4: ea d8        	sw	s10, 0x70(sp)
802006b6: ee da        	sw	s11, 0x74(sp)
802006b8: 73 25 00 14  	csrr	a0, sscratch
802006bc: aa dc        	sw	a0, 0x78(sp)
802006be: 0a 85        	mv	a0, sp
802006c0: ef 50 40 35  	jal	0x80205a14 <.text+0x5a14>
802006c4: 82 40        	lw	ra, 0x0(sp)
802006c6: 92 41        	lw	gp, 0x4(sp)
802006c8: 22 42        	lw	tp, 0x8(sp)
802006ca: b2 42        	lw	t0, 0xc(sp)
802006cc: 42 43        	lw	t1, 0x10(sp)
802006ce: d2 43        	lw	t2, 0x14(sp)
802006d0: 62 4e        	lw	t3, 0x18(sp)
802006d2: f2 4e        	lw	t4, 0x1c(sp)
802006d4: 02 5f        	lw	t5, 0x20(sp)
802006d6: 92 5f        	lw	t6, 0x24(sp)
802006d8: 22 55        	lw	a0, 0x28(sp)
802006da: b2 55        	lw	a1, 0x2c(sp)
802006dc: 42 56        	lw	a2, 0x30(sp)
802006de: d2 56        	lw	a3, 0x34(sp)
802006e0: 62 57        	lw	a4, 0x38(sp)
802006e2: f2 57        	lw	a5, 0x3c(sp)
802006e4: 06 48        	lw	a6, 0x40(sp)
802006e6: 96 48        	lw	a7, 0x44(sp)
802006e8: 26 44        	lw	s0, 0x48(sp)
802006ea: b6 44        	lw	s1, 0x4c(sp)
802006ec: 46 49        	lw	s2, 0x50(sp)
802006ee: d6 49        	lw	s3, 0x54(sp)
802006f0: 66 4a        	lw	s4, 0x58(sp)
802006f2: f6 4a        	lw	s5, 0x5c(sp)
802006f4: 06 5b        	lw	s6, 0x60(sp)
802006f6: 96 5b        	lw	s7, 0x64(sp)
802006f8: 26 5c        	lw	s8, 0x68(sp)
802006fa: b6 5c        	lw	s9, 0x6c(sp)
802006fc: 46 5d        	lw	s10, 0x70(sp)
802006fe: d6 5d        	lw	s11, 0x74(sp)
80200700: 66 51        	lw	sp, 0x78(sp)
80200702: 73 00 20 10  	sret
80200706: 37 05 20 80  	lui	a0, 0x80200674
8020070a: 13 05 45 67  	addi	a0, a0, 0x674
8020070e: 73 10 55 10  	csrw	stvec, a0
80200712: 82 80        	ret
80200714: 73 25 20 14  	csrr	a0, scause
80200718: 82 80        	ret
8020071a: 73 10 25 14  	csrw	scause, a0
8020071e: 82 80        	ret
80200720: 73 25 30 14  	csrr	a0, stval
80200724: 82 80        	ret
80200726: 73 10 35 14  	csrw	stval, a0
8020072a: 82 80        	ret
8020072c: 73 25 10 14  	csrr	a0, sepc
80200730: 82 80        	ret
80200732: 73 10 15 14  	csrw	sepc, a0
80200736: 82 80        	ret
80200738: 0f 00 20 02  	fence	r, r
8020073c: 08 41        	lw	a0, 0x0(a0)
8020073e: 0f 00 20 02  	fence	r, r
80200742: 82 80        	ret
80200744: 0f 00 30 03  	fence	rw, rw
80200748: 2f 26 05 10  	lr.w	a2, (a0)
8020074c: b3 06 b6 00  	add	a3, a2, a1
80200750: af 22 d5 18  	sc.w	t0, a3, (a0)
80200754: e3 9a 02 fe  	bnez	t0, 0x80200748 <.text+0x748>
80200758: 0f 00 30 03  	fence	rw, rw
8020075c: 32 85        	mv	a0, a2
8020075e: 82 80        	ret
80200760: 37 f5 20 80  	lui	a0, 0x8020f
80200764: 13 05 45 e1  	addi	a0, a0, -0x1ec
80200768: 82 80        	ret
8020076a: 37 f5 20 80  	lui	a0, 0x8020f
8020076e: 13 05 c5 e1  	addi	a0, a0, -0x1e4
80200772: 82 80        	ret
80200774: 37 f5 22 80  	lui	a0, 0x8022f
80200778: 13 05 c5 e1  	addi	a0, a0, -0x1e4
8020077c: 82 80        	ret
8020077e: 37 f5 22 80  	lui	a0, 0x8022f
80200782: 13 05 05 00  	mv	a0, a0
80200786: 82 80        	ret
80200788: 37 f5 22 84  	lui	a0, 0x8422f
8020078c: 13 05 05 00  	mv	a0, a0
80200790: 82 80        	ret
80200792: 37 f5 20 80  	lui	a0, 0x8020f
80200796: 13 05 45 e1  	addi	a0, a0, -0x1ec
8020079a: 82 80        	ret
8020079c: 37 f5 20 80  	lui	a0, 0x8020f
802007a0: 13 05 c5 e1  	addi	a0, a0, -0x1e4
802007a4: 82 80        	ret
802007a6: 37 f5 22 80  	lui	a0, 0x8022f
802007aa: 13 05 c5 e1  	addi	a0, a0, -0x1e4
802007ae: 82 80        	ret
802007b0: 37 f5 22 80  	lui	a0, 0x8022f
802007b4: 13 05 05 00  	mv	a0, a0
802007b8: 82 80        	ret
802007ba: 37 f5 22 84  	lui	a0, 0x8422f
802007be: 13 05 05 00  	mv	a0, a0
802007c2: 82 80        	ret
802007c4: 6f 50 10 13  	j	0x802060f4 <.text+0x60f4>
802007c8: 1d 71        	addi	sp, sp, -0x60
802007ca: 06 de        	sw	ra, 0x3c(sp)
802007cc: 22 dc        	sw	s0, 0x38(sp)
802007ce: 26 da        	sw	s1, 0x34(sp)
802007d0: 4a d8        	sw	s2, 0x30(sp)
802007d2: 4e d6        	sw	s3, 0x2c(sp)
802007d4: 52 d4        	sw	s4, 0x28(sp)
802007d6: 56 d2        	sw	s5, 0x24(sp)
802007d8: 5a d0        	sw	s6, 0x20(sp)
802007da: 5e ce        	sw	s7, 0x1c(sp)
802007dc: 62 cc        	sw	s8, 0x18(sp)
802007de: 66 ca        	sw	s9, 0x14(sp)
802007e0: 6a c8        	sw	s10, 0x10(sp)
802007e2: 6e c6        	sw	s11, 0xc(sp)
802007e4: 2a 84        	mv	s0, a0
802007e6: c6 ce        	sw	a7, 0x5c(sp)
802007e8: c2 cc        	sw	a6, 0x58(sp)
802007ea: be ca        	sw	a5, 0x54(sp)
802007ec: ba c8        	sw	a4, 0x50(sp)
802007ee: b6 c6        	sw	a3, 0x4c(sp)
802007f0: b2 c4        	sw	a2, 0x48(sp)
802007f2: ae c2        	sw	a1, 0x44(sp)
802007f4: c8 00        	addi	a0, sp, 0x44
802007f6: 2a c4        	sw	a0, 0x8(sp)
802007f8: 13 0a 50 02  	li	s4, 0x25
802007fc: 13 09 20 07  	li	s2, 0x72
80200800: 29 4b        	li	s6, 0xa
80200802: a5 4a        	li	s5, 0x9
80200804: 37 d5 cc cc  	lui	a0, 0xccccd
80200808: 13 0d d5 cc  	addi	s10, a0, -0x333
8020080c: 93 0b 30 07  	li	s7, 0x73
80200810: 13 0c 80 07  	li	s8, 0x78
80200814: 37 f5 20 80  	lui	a0, 0x8020f
80200818: 93 0c c5 98  	addi	s9, a0, -0x674
8020081c: 21 a0        	j	0x80200824 <.text+0x824>
8020081e: 63 04 05 12  	beqz	a0, 0x80200946 <.text+0x946>
80200822: 05 04        	addi	s0, s0, 0x1
80200824: 03 45 04 00  	lbu	a0, 0x0(s0)
80200828: 63 07 45 01  	beq	a0, s4, 0x80200836 <.text+0x836>
8020082c: 63 00 05 12  	beqz	a0, 0x8020094c <.text+0x94c>
80200830: 51 3f        	jal	0x802007c4 <.text+0x7c4>
80200832: 05 04        	addi	s0, s0, 0x1
80200834: c5 bf        	j	0x80200824 <.text+0x824>
80200836: 03 45 14 00  	lbu	a0, 0x1(s0)
8020083a: 05 04        	addi	s0, s0, 0x1
8020083c: 63 44 a9 02  	blt	s2, a0, 0x80200864 <.text+0x864>
80200840: e3 08 45 ff  	beq	a0, s4, 0x80200830 <.text+0x830>
80200844: 93 05 40 06  	li	a1, 0x64
80200848: e3 1b b5 fc  	bne	a0, a1, 0x8020081e <.text+0x81e>
8020084c: 22 45        	lw	a0, 0x8(sp)
8020084e: 93 05 45 00  	addi	a1, a0, 0x4
80200852: 2e c4        	sw	a1, 0x8(sp)
80200854: 83 2d 05 00  	lw	s11, 0x0(a0)
80200858: 63 c8 0d 0a  	bltz	s11, 0x80200908 <.text+0x908>
8020085c: 05 45        	li	a0, 0x1
8020085e: 63 e4 6d 0d  	bltu	s11, s6, 0x80200926 <.text+0x926>
80200862: 5d a8        	j	0x80200918 <.text+0x918>
80200864: 63 00 75 09  	beq	a0, s7, 0x802008e4 <.text+0x8e4>
80200868: e3 1d 85 fb  	bne	a0, s8, 0x80200822 <.text+0x822>
8020086c: 22 45        	lw	a0, 0x8(sp)
8020086e: 93 05 45 00  	addi	a1, a0, 0x4
80200872: 2e c4        	sw	a1, 0x8(sp)
80200874: 04 41        	lw	s1, 0x0(a0)
80200876: 13 d5 c4 01  	srli	a0, s1, 0x1c
8020087a: 66 95        	add	a0, a0, s9
8020087c: 03 45 05 00  	lbu	a0, 0x0(a0)
80200880: 91 37        	jal	0x802007c4 <.text+0x7c4>
80200882: 13 95 44 00  	slli	a0, s1, 0x4
80200886: 71 81        	srli	a0, a0, 0x1c
80200888: 66 95        	add	a0, a0, s9
8020088a: 03 45 05 00  	lbu	a0, 0x0(a0)
8020088e: 1d 3f        	jal	0x802007c4 <.text+0x7c4>
80200890: 13 95 84 00  	slli	a0, s1, 0x8
80200894: 71 81        	srli	a0, a0, 0x1c
80200896: 66 95        	add	a0, a0, s9
80200898: 03 45 05 00  	lbu	a0, 0x0(a0)
8020089c: 25 37        	jal	0x802007c4 <.text+0x7c4>
8020089e: 13 95 c4 00  	slli	a0, s1, 0xc
802008a2: 71 81        	srli	a0, a0, 0x1c
802008a4: 66 95        	add	a0, a0, s9
802008a6: 03 45 05 00  	lbu	a0, 0x0(a0)
802008aa: 29 3f        	jal	0x802007c4 <.text+0x7c4>
802008ac: 13 95 04 01  	slli	a0, s1, 0x10
802008b0: 71 81        	srli	a0, a0, 0x1c
802008b2: 66 95        	add	a0, a0, s9
802008b4: 03 45 05 00  	lbu	a0, 0x0(a0)
802008b8: 31 37        	jal	0x802007c4 <.text+0x7c4>
802008ba: 13 95 44 01  	slli	a0, s1, 0x14
802008be: 71 81        	srli	a0, a0, 0x1c
802008c0: 66 95        	add	a0, a0, s9
802008c2: 03 45 05 00  	lbu	a0, 0x0(a0)
802008c6: fd 3d        	jal	0x802007c4 <.text+0x7c4>
802008c8: 13 95 84 01  	slli	a0, s1, 0x18
802008cc: 71 81        	srli	a0, a0, 0x1c
802008ce: 66 95        	add	a0, a0, s9
802008d0: 03 45 05 00  	lbu	a0, 0x0(a0)
802008d4: c5 3d        	jal	0x802007c4 <.text+0x7c4>
802008d6: bd 88        	andi	s1, s1, 0xf
802008d8: e6 94        	add	s1, s1, s9
802008da: 03 c5 04 00  	lbu	a0, 0x0(s1)
802008de: dd 35        	jal	0x802007c4 <.text+0x7c4>
802008e0: 05 04        	addi	s0, s0, 0x1
802008e2: 89 b7        	j	0x80200824 <.text+0x824>
802008e4: 22 45        	lw	a0, 0x8(sp)
802008e6: 93 05 45 00  	addi	a1, a0, 0x4
802008ea: 2e c4        	sw	a1, 0x8(sp)
802008ec: 04 41        	lw	s1, 0x0(a0)
802008ee: 03 c5 04 00  	lbu	a0, 0x0(s1)
802008f2: e3 08 05 f2  	beqz	a0, 0x80200822 <.text+0x822>
802008f6: 85 04        	addi	s1, s1, 0x1
802008f8: 13 75 f5 0f  	andi	a0, a0, 0xff
802008fc: e1 35        	jal	0x802007c4 <.text+0x7c4>
802008fe: 03 c5 04 00  	lbu	a0, 0x0(s1)
80200902: 85 04        	addi	s1, s1, 0x1
80200904: 75 f9        	bnez	a0, 0x802008f8 <.text+0x8f8>
80200906: 31 bf        	j	0x80200822 <.text+0x822>
80200908: 13 05 d0 02  	li	a0, 0x2d
8020090c: 65 3d        	jal	0x802007c4 <.text+0x7c4>
8020090e: b3 0d b0 41  	neg	s11, s11
80200912: 05 45        	li	a0, 0x1
80200914: 63 e9 6d 01  	bltu	s11, s6, 0x80200926 <.text+0x926>
80200918: 05 45        	li	a0, 0x1
8020091a: 33 05 65 03  	mul	a0, a0, s6
8020091e: b3 c5 ad 02  	div	a1, s11, a0
80200922: e3 cc ba fe  	blt	s5, a1, 0x8020091a <.text+0x91a>
80200926: aa 84        	mv	s1, a0
80200928: b3 c9 ad 02  	div	s3, s11, a0
8020092c: 13 85 09 03  	addi	a0, s3, 0x30
80200930: 51 3d        	jal	0x802007c4 <.text+0x7c4>
80200932: 33 85 99 02  	mul	a0, s3, s1
80200936: b3 8d ad 40  	sub	s11, s11, a0
8020093a: 33 b5 a4 03  	mulhu	a0, s1, s10
8020093e: 0d 81        	srli	a0, a0, 0x3
80200940: e3 f3 64 ff  	bgeu	s1, s6, 0x80200926 <.text+0x926>
80200944: f9 bd        	j	0x80200822 <.text+0x822>
80200946: 13 05 50 02  	li	a0, 0x25
8020094a: ad 3d        	jal	0x802007c4 <.text+0x7c4>
8020094c: f2 50        	lw	ra, 0x3c(sp)
8020094e: 62 54        	lw	s0, 0x38(sp)
80200950: d2 54        	lw	s1, 0x34(sp)
80200952: 42 59        	lw	s2, 0x30(sp)
80200954: b2 59        	lw	s3, 0x2c(sp)
80200956: 22 5a        	lw	s4, 0x28(sp)
80200958: 92 5a        	lw	s5, 0x24(sp)
8020095a: 02 5b        	lw	s6, 0x20(sp)
8020095c: f2 4b        	lw	s7, 0x1c(sp)
8020095e: 62 4c        	lw	s8, 0x18(sp)
80200960: d2 4c        	lw	s9, 0x14(sp)
80200962: 42 4d        	lw	s10, 0x10(sp)
80200964: b2 4d        	lw	s11, 0xc(sp)
80200966: 25 61        	addi	sp, sp, 0x60
80200968: 82 80        	ret
8020096a: 41 11        	addi	sp, sp, -0x10
8020096c: 06 c6        	sw	ra, 0xc(sp)
8020096e: 22 c4        	sw	s0, 0x8(sp)
80200970: 26 c2        	sw	s1, 0x4(sp)
80200972: b7 f4 20 80  	lui	s1, 0x8020f
80200976: 83 a5 44 e1  	lw	a1, -0x1ec(s1)
8020097a: 2a 84        	mv	s0, a0
8020097c: 91 c5        	beqz	a1, 0x80200988 <.text+0x988>
8020097e: 37 f5 20 80  	lui	a0, 0x8020f
80200982: 03 25 85 e1  	lw	a0, -0x1e8(a0)
80200986: 21 a0        	j	0x8020098e <.text+0x98e>
80200988: dd 3b        	jal	0x8020077e <.text+0x77e>
8020098a: 23 aa a4 e0  	sw	a0, -0x1ec(s1)
8020098e: 2a 94        	add	s0, s0, a0
80200990: b7 f5 20 80  	lui	a1, 0x8020f
80200994: 23 ac 85 e0  	sw	s0, -0x1e8(a1)
80200998: b2 40        	lw	ra, 0xc(sp)
8020099a: 22 44        	lw	s0, 0x8(sp)
8020099c: 92 44        	lw	s1, 0x4(sp)
8020099e: 41 01        	addi	sp, sp, 0x10
802009a0: 82 80        	ret
802009a2: 01 11        	addi	sp, sp, -0x20
802009a4: 06 ce        	sw	ra, 0x1c(sp)
802009a6: 22 cc        	sw	s0, 0x18(sp)
802009a8: 26 ca        	sw	s1, 0x14(sp)
802009aa: 4a c8        	sw	s2, 0x10(sp)
802009ac: 4e c6        	sw	s3, 0xc(sp)
802009ae: 52 c4        	sw	s4, 0x8(sp)
802009b0: ae 84        	mv	s1, a1
802009b2: 2a 89        	mv	s2, a0
802009b4: 13 85 f5 ff  	addi	a0, a1, -0x1
802009b8: 6d 8d        	and	a0, a0, a1
802009ba: 33 35 a0 00  	snez	a0, a0
802009be: 93 b5 45 00  	sltiu	a1, a1, 0x4
802009c2: 4d 8d        	or	a0, a0, a1
802009c4: d9 45        	li	a1, 0x16
802009c6: 21 e9        	bnez	a0, 0x80200a16 <.text+0xa16>
802009c8: 37 fa 20 80  	lui	s4, 0x8020f
802009cc: 03 25 4a e1  	lw	a0, -0x1ec(s4)
802009d0: 13 84 34 00  	addi	s0, s1, 0x3
802009d4: b3 09 c4 00  	add	s3, s0, a2
802009d8: 0d c5        	beqz	a0, 0x80200a02 <.text+0xa02>
802009da: 37 f5 20 80  	lui	a0, 0x8020f
802009de: 03 25 85 e1  	lw	a0, -0x1e8(a0)
802009e2: aa 99        	add	s3, s3, a0
802009e4: b7 f5 20 80  	lui	a1, 0x8020f
802009e8: 23 ac 35 e1  	sw	s3, -0x1e8(a1)
802009ec: 05 c5        	beqz	a0, 0x80200a14 <.text+0xa14>
802009ee: 81 45        	li	a1, 0x0
802009f0: 2a 94        	add	s0, s0, a0
802009f2: 33 06 90 40  	neg	a2, s1
802009f6: 61 8e        	and	a2, a2, s0
802009f8: 23 2e a6 fe  	sw	a0, -0x4(a2)
802009fc: 23 20 c9 00  	sw	a2, 0x0(s2)
80200a00: 19 a8        	j	0x80200a16 <.text+0xa16>
80200a02: b5 3b        	jal	0x8020077e <.text+0x77e>
80200a04: 23 2a aa e0  	sw	a0, -0x1ec(s4)
80200a08: aa 99        	add	s3, s3, a0
80200a0a: b7 f5 20 80  	lui	a1, 0x8020f
80200a0e: 23 ac 35 e1  	sw	s3, -0x1e8(a1)
80200a12: 71 fd        	bnez	a0, 0x802009ee <.text+0x9ee>
80200a14: b1 45        	li	a1, 0xc
80200a16: 2e 85        	mv	a0, a1
80200a18: f2 40        	lw	ra, 0x1c(sp)
80200a1a: 62 44        	lw	s0, 0x18(sp)
80200a1c: d2 44        	lw	s1, 0x14(sp)
80200a1e: 42 49        	lw	s2, 0x10(sp)
80200a20: b2 49        	lw	s3, 0xc(sp)
80200a22: 22 4a        	lw	s4, 0x8(sp)
80200a24: 05 61        	addi	sp, sp, 0x20
80200a26: 82 80        	ret
80200a28: 82 80        	ret
80200a2a: 00 00        	unimp
80200a2c: 41 11        	addi	sp, sp, -0x10
80200a2e: 06 c6        	sw	ra, 0xc(sp)
80200a30: 22 c4        	sw	s0, 0x8(sp)
80200a32: 26 c2        	sw	s1, 0x4(sp)
80200a34: 97 00 00 00  	auipc	ra, 0x0
80200a38: e7 80 c0 d2  	jalr	-0x2d4(ra) <.text+0x760>
80200a3c: 2a 84        	mv	s0, a0
80200a3e: 97 00 00 00  	auipc	ra, 0x0
80200a42: e7 80 e0 d5  	jalr	-0x2a2(ra) <.text+0x79c>
80200a46: aa 84        	mv	s1, a0
80200a48: 97 00 00 00  	auipc	ra, 0x0
80200a4c: e7 80 a0 d4  	jalr	-0x2b6(ra) <.text+0x792>
80200a50: b3 25 a0 00  	sgtz	a1, a0
80200a54: 33 86 a4 40  	sub	a2, s1, a0
80200a58: 33 25 96 00  	slt	a0, a2, s1
80200a5c: 63 98 a5 04  	bne	a1, a0, 0x80200aac <.text+0xaac>
80200a60: 22 85        	mv	a0, s0
80200a62: 81 45        	li	a1, 0x0
80200a64: 97 00 00 00  	auipc	ra, 0x0
80200a68: e7 80 c0 04  	jalr	0x4c(ra) <.text+0xab0>
80200a6c: 97 00 00 00  	auipc	ra, 0x0
80200a70: e7 80 20 d1  	jalr	-0x2ee(ra) <.text+0x77e>
80200a74: 2a 84        	mv	s0, a0
80200a76: 97 00 00 00  	auipc	ra, 0x0
80200a7a: e7 80 40 d4  	jalr	-0x2bc(ra) <.text+0x7ba>
80200a7e: aa 84        	mv	s1, a0
80200a80: 97 00 00 00  	auipc	ra, 0x0
80200a84: e7 80 00 d3  	jalr	-0x2d0(ra) <.text+0x7b0>
80200a88: b3 25 a0 00  	sgtz	a1, a0
80200a8c: 33 86 a4 40  	sub	a2, s1, a0
80200a90: 33 25 96 00  	slt	a0, a2, s1
80200a94: 63 9d a5 00  	bne	a1, a0, 0x80200aae <.text+0xaae>
80200a98: 22 85        	mv	a0, s0
80200a9a: 81 45        	li	a1, 0x0
80200a9c: b2 40        	lw	ra, 0xc(sp)
80200a9e: 22 44        	lw	s0, 0x8(sp)
80200aa0: 92 44        	lw	s1, 0x4(sp)
80200aa2: 41 01        	addi	sp, sp, 0x10
80200aa4: 17 03 00 00  	auipc	t1, 0x0
80200aa8: 67 00 c3 00  	jr	0xc(t1) <.text+0xab0>
80200aac: 00 00        	unimp
80200aae: 00 00        	unimp
80200ab0: 19 cd        	beqz	a0, 0x80200ace <.text+0xace>
80200ab2: 63 4f 06 00  	bltz	a2, 0x80200ad0 <.text+0xad0>
80200ab6: 01 ce        	beqz	a2, 0x80200ace <.text+0xace>
80200ab8: 63 cd 05 00  	bltz	a1, 0x80200ad2 <.text+0xad2>
80200abc: 93 06 f0 0f  	li	a3, 0xff
80200ac0: 63 ea b6 00  	bltu	a3, a1, 0x80200ad4 <.text+0xad4>
80200ac4: 23 00 b5 00  	sb	a1, 0x0(a0)
80200ac8: 7d 16        	addi	a2, a2, -0x1
80200aca: 05 05        	addi	a0, a0, 0x1
80200acc: 65 fe        	bnez	a2, 0x80200ac4 <.text+0xac4>
80200ace: 82 80        	ret
80200ad0: 00 00        	unimp
80200ad2: 00 00        	unimp
80200ad4: 00 00        	unimp
80200ad6: 19 71        	addi	sp, sp, -0x80
80200ad8: 86 de        	sw	ra, 0x7c(sp)
80200ada: a2 dc        	sw	s0, 0x78(sp)
80200adc: a6 da        	sw	s1, 0x74(sp)
80200ade: ca d8        	sw	s2, 0x70(sp)
80200ae0: ce d6        	sw	s3, 0x6c(sp)
80200ae2: d2 d4        	sw	s4, 0x68(sp)
80200ae4: d6 d2        	sw	s5, 0x64(sp)
80200ae6: da d0        	sw	s6, 0x60(sp)
80200ae8: de ce        	sw	s7, 0x5c(sp)
80200aea: e2 cc        	sw	s8, 0x58(sp)
80200aec: 93 04 30 05  	li	s1, 0x53
80200af0: 0d 65        	lui	a0, 0x3
80200af2: 13 04 15 04  	addi	s0, a0, 0x41
80200af6: 85 48        	li	a7, 0x1
80200af8: 22 85        	mv	a0, s0
80200afa: 97 62 00 00  	auipc	t0, 0x6
80200afe: e7 82 a2 8f  	jalr	t0, -0x706(t0) <.text+0x63f4>
80200b02: 97 00 00 00  	auipc	ra, 0x0
80200b06: e7 80 20 b6  	jalr	-0x49e(ra) <.text+0x664>
80200b0a: fd 14        	addi	s1, s1, -0x1
80200b0c: 05 04        	addi	s0, s0, 0x1
80200b0e: e5 f4        	bnez	s1, 0x80200af6 <.text+0xaf6>
80200b10: 29 45        	li	a0, 0xa
80200b12: 85 48        	li	a7, 0x1
80200b14: 97 62 00 00  	auipc	t0, 0x6
80200b18: e7 82 02 8e  	jalr	t0, -0x720(t0) <.text+0x63f4>
80200b1c: 97 00 00 00  	auipc	ra, 0x0
80200b20: e7 80 80 b4  	jalr	-0x4b8(ra) <.text+0x664>
80200b24: 01 4a        	li	s4, 0x0
80200b26: bd 4a        	li	s5, 0xf
80200b28: 37 f5 20 80  	lui	a0, 0x8020f
80200b2c: 93 09 05 9e  	addi	s3, a0, -0x620
80200b30: 79 59        	li	s2, -0x2
80200b32: 13 d4 0a 01  	srli	s0, s5, 0x10
80200b36: 13 15 0a 01  	slli	a0, s4, 0x10
80200b3a: 41 8d        	or	a0, a0, s0
80200b3c: 93 05 15 00  	addi	a1, a0, 0x1
80200b40: 63 c4 05 00  	bltz	a1, 0x80200b48 <.text+0xb48>
80200b44: 2e 86        	mv	a2, a1
80200b46: 19 a0        	j	0x80200b4c <.text+0xb4c>
80200b48: 33 06 a9 40  	sub	a2, s2, a0
80200b4c: 4e 95        	add	a0, a0, s3
80200b4e: 03 45 05 00  	lbu	a0, 0x0(a0)
80200b52: 13 d4 f5 41  	srai	s0, a1, 0x1f
80200b56: b3 44 86 00  	xor	s1, a2, s0
80200b5a: 93 d5 04 01  	srli	a1, s1, 0x10
80200b5e: 13 16 04 01  	slli	a2, s0, 0x10
80200b62: 33 6a b6 00  	or	s4, a2, a1
80200b66: 93 9a 04 01  	slli	s5, s1, 0x10
80200b6a: 91 0a        	addi	s5, s5, 0x4
80200b6c: 85 48        	li	a7, 0x1
80200b6e: 97 62 00 00  	auipc	t0, 0x6
80200b72: e7 82 62 88  	jalr	t0, -0x77a(t0) <.text+0x63f4>
80200b76: 97 00 00 00  	auipc	ra, 0x0
80200b7a: e7 80 e0 ae  	jalr	-0x512(ra) <.text+0x664>
80200b7e: 13 c5 84 02  	xori	a0, s1, 0x28
80200b82: 41 8d        	or	a0, a0, s0
80200b84: 5d f5        	bnez	a0, 0x80200b32 <.text+0xb32>
80200b86: 29 45        	li	a0, 0xa
80200b88: 85 48        	li	a7, 0x1
80200b8a: 85 4b        	li	s7, 0x1
80200b8c: 97 62 00 00  	auipc	t0, 0x6
80200b90: e7 82 82 86  	jalr	t0, -0x798(t0) <.text+0x63f4>
80200b94: 97 00 00 00  	auipc	ra, 0x0
80200b98: e7 80 00 ad  	jalr	-0x530(ra) <.text+0x664>
80200b9c: 37 f5 20 80  	lui	a0, 0x8020f
80200ba0: 93 05 c5 9c  	addi	a1, a0, -0x634
80200ba4: 13 05 80 02  	li	a0, 0x28
80200ba8: 37 86 00 10  	lui	a2, 0x10008
80200bac: 37 84 00 10  	lui	s0, 0x10008
80200bb0: 97 00 00 00  	auipc	ra, 0x0
80200bb4: e7 80 80 27  	jalr	0x278(ra) <.text+0xe28>
80200bb8: 37 a9 98 80  	lui	s2, 0x8098a
80200bbc: 41 19        	addi	s2, s2, -0x10
80200bbe: 37 9a b0 00  	lui	s4, 0xb09
80200bc2: 09 1a        	addi	s4, s4, -0x1e
80200bc4: 29 65        	lui	a0, 0xa
80200bc6: 13 06 05 70  	addi	a2, a0, 0x700
80200bca: 4a 85        	mv	a0, s2
80200bcc: d2 85        	mv	a1, s4
80200bce: 97 00 00 00  	auipc	ra, 0x0
80200bd2: e7 80 a0 25  	jalr	0x25a(ra) <.text+0xe28>
80200bd6: 37 f5 20 80  	lui	a0, 0x8020f
80200bda: 93 05 c5 a6  	addi	a1, a0, -0x594
80200bde: 13 05 50 03  	li	a0, 0x35
80200be2: 37 86 00 10  	lui	a2, 0x10008
80200be6: 97 00 00 00  	auipc	ra, 0x0
80200bea: e7 80 20 24  	jalr	0x242(ra) <.text+0xe28>
80200bee: 37 f5 20 80  	lui	a0, 0x8020f
80200bf2: 93 05 c5 aa  	addi	a1, a0, -0x554
80200bf6: 13 05 10 04  	li	a0, 0x41
80200bfa: 37 86 00 10  	lui	a2, 0x10008
80200bfe: 97 00 00 00  	auipc	ra, 0x0
80200c02: e7 80 a0 22  	jalr	0x22a(ra) <.text+0xe28>
80200c06: 02 cc        	sw	zero, 0x18(sp)
80200c08: 02 ce        	sw	zero, 0x1c(sp)
80200c0a: 39 65        	lui	a0, 0xe
80200c0c: 2a d0        	sw	a0, 0x20(sp)
80200c0e: 3d 45        	li	a0, 0xf
80200c10: 2c 08        	addi	a1, sp, 0x18
80200c12: 93 0a 81 01  	addi	s5, sp, 0x18
80200c16: 97 00 00 00  	auipc	ra, 0x0
80200c1a: e7 80 e0 39  	jalr	0x39e(ra) <.text+0xfb4>
80200c1e: 72 45        	lw	a0, 0x1c(sp)
80200c20: 83 45 01 02  	lbu	a1, 0x20(sp)
80200c24: 97 00 00 00  	auipc	ra, 0x0
80200c28: e7 80 e0 62  	jalr	0x62e(ra) <.text+0x1252>
80200c2c: 35 45        	li	a0, 0xd
80200c2e: 2a c6        	sw	a0, 0xc(sp)
80200c30: 37 f5 20 80  	lui	a0, 0x8020f
80200c34: 13 05 a5 96  	addi	a0, a0, -0x696
80200c38: 2a c8        	sw	a0, 0x10(sp)
80200c3a: 22 ca        	sw	s0, 0x14(sp)
80200c3c: 28 08        	addi	a0, sp, 0x18
80200c3e: 13 06 00 02  	li	a2, 0x20
80200c42: 81 45        	li	a1, 0x0
80200c44: 97 50 00 00  	auipc	ra, 0x5
80200c48: e7 80 60 41  	jalr	0x416(ra) <.text+0x605a>
80200c4c: 05 6b        	lui	s6, 0x1
80200c4e: 13 07 db b0  	addi	a4, s6, -0x4f3
80200c52: 28 08        	addi	a0, sp, 0x18
80200c54: 93 05 00 02  	li	a1, 0x20
80200c58: 29 46        	li	a2, 0xa
80200c5a: 81 47        	li	a5, 0x0
80200c5c: 97 00 00 00  	auipc	ra, 0x0
80200c60: e7 80 c0 60  	jalr	0x60c(ra) <.text+0x1268>
80200c64: 2a 86        	mv	a2, a0
80200c66: 0a 85        	mv	a0, sp
80200c68: 2c 08        	addi	a1, sp, 0x18
80200c6a: 97 00 00 00  	auipc	ra, 0x0
80200c6e: e7 80 80 72  	jalr	0x728(ra) <.text+0x1392>
80200c72: a2 49        	lw	s3, 0x8(sp)
80200c74: 12 44        	lw	s0, 0x4(sp)
80200c76: 02 45        	lw	a0, 0x0(sp)
80200c78: 74 00        	addi	a3, sp, 0xc
80200c7a: a2 85        	mv	a1, s0
80200c7c: 4e 86        	mv	a2, s3
80200c7e: 97 10 00 00  	auipc	ra, 0x1
80200c82: e7 80 40 85  	jalr	-0x7ac(ra) <.text+0x14d2>
80200c86: 22 85        	mv	a0, s0
80200c88: ce 85        	mv	a1, s3
80200c8a: 97 00 00 00  	auipc	ra, 0x0
80200c8e: e7 80 80 5c  	jalr	0x5c8(ra) <.text+0x1252>
80200c92: 32 45        	lw	a0, 0xc(sp)
80200c94: 83 45 51 01  	lbu	a1, 0x15(sp)
80200c98: 83 49 41 01  	lbu	s3, 0x14(sp)
80200c9c: 03 16 61 01  	lh	a2, 0x16(sp)
80200ca0: 42 44        	lw	s0, 0x10(sp)
80200ca2: a2 05        	slli	a1, a1, 0x8
80200ca4: b3 e5 35 01  	or	a1, a1, s3
80200ca8: 42 06        	slli	a2, a2, 0x10
80200caa: 4d 8e        	or	a2, a2, a1
80200cac: a2 85        	mv	a1, s0
80200cae: 97 00 00 00  	auipc	ra, 0x0
80200cb2: e7 80 a0 17  	jalr	0x17a(ra) <.text+0xe28>
80200cb6: 22 85        	mv	a0, s0
80200cb8: ce 85        	mv	a1, s3
80200cba: 97 00 00 00  	auipc	ra, 0x0
80200cbe: e7 80 80 59  	jalr	0x598(ra) <.text+0x1252>
80200cc2: 01 44        	li	s0, 0x0
80200cc4: 9d 49        	li	s3, 0x7
80200cc6: 21 65        	lui	a0, 0x8
80200cc8: 13 0c 05 08  	addi	s8, a0, 0x80
80200ccc: 93 04 db a0  	addi	s1, s6, -0x5f3
80200cd0: 52 ce        	sw	s4, 0x1c(sp)
80200cd2: 4a cc        	sw	s2, 0x18(sp)
80200cd4: 02 d2        	sw	zero, 0x24(sp)
80200cd6: 13 05 14 00  	addi	a0, s0, 0x1
80200cda: 02 d0        	sw	zero, 0x20(sp)
80200cdc: 63 0e 35 03  	beq	a0, s3, 0x80200d18 <.text+0xd18>
80200ce0: b3 85 8a 00  	add	a1, s5, s0
80200ce4: 03 c6 15 00  	lbu	a2, 0x1(a1)
80200ce8: 83 c5 05 00  	lbu	a1, 0x0(a1)
80200cec: 22 06        	slli	a2, a2, 0x8
80200cee: d1 8d        	or	a1, a1, a2
80200cf0: 33 f6 85 01  	and	a2, a1, s8
80200cf4: 33 36 c0 00  	snez	a2, a2
80200cf8: a5 8d        	xor	a1, a1, s1
80200cfa: 93 b5 15 00  	seqz	a1, a1
80200cfe: d1 8d        	or	a1, a1, a2
80200d00: 81 e5        	bnez	a1, 0x80200d08 <.text+0xd08>
80200d02: 85 0b        	addi	s7, s7, 0x1
80200d04: 2a 84        	mv	s0, a0
80200d06: e9 b7        	j	0x80200cd0 <.text+0xcd0>
80200d08: 22 85        	mv	a0, s0
80200d0a: 97 10 00 00  	auipc	ra, 0x1
80200d0e: e7 80 a0 10  	jalr	0x10a(ra) <.text+0x1e14>
80200d12: 22 95        	add	a0, a0, s0
80200d14: e3 47 35 ff  	blt	a0, s3, 0x80200d02 <.text+0xd02>
80200d18: 63 84 0b 04  	beqz	s7, 0x80200d60 <.text+0xd60>
80200d1c: 13 d5 fb 41  	srai	a0, s7, 0x1f
80200d20: 33 c6 ab 00  	xor	a2, s7, a0
80200d24: 09 8e        	sub	a2, a2, a0
80200d26: 93 04 f0 03  	li	s1, 0x3f
80200d2a: a9 45        	li	a1, 0xa
80200d2c: 13 08 60 0f  	li	a6, 0xf6
80200d30: 34 08        	addi	a3, sp, 0x18
80200d32: b2 87        	mv	a5, a2
80200d34: 26 85        	mv	a0, s1
80200d36: 33 56 b6 02  	divu	a2, a2, a1
80200d3a: b3 04 06 03  	mul	s1, a2, a6
80200d3e: be 94        	add	s1, s1, a5
80200d40: 13 e4 04 03  	ori	s0, s1, 0x30
80200d44: 33 87 a6 00  	add	a4, a3, a0
80200d48: 93 04 f5 ff  	addi	s1, a0, -0x1
80200d4c: 23 00 87 00  	sb	s0, 0x0(a4)
80200d50: 63 d7 a4 0c  	bge	s1, a0, 0x80200e1e <.text+0xe1e>
80200d54: e3 ff b7 fc  	bgeu	a5, a1, 0x80200d32 <.text+0xd32>
80200d58: 63 cb 0b 00  	bltz	s7, 0x80200d6e <.text+0xd6e>
80200d5c: 26 86        	mv	a2, s1
80200d5e: 15 a0        	j	0x80200d82 <.text+0xd82>
80200d60: 13 05 00 03  	li	a0, 0x30
80200d64: 23 0c a1 00  	sb	a0, 0x18(sp)
80200d68: 13 04 91 01  	addi	s0, sp, 0x19
80200d6c: b1 a0        	j	0x80200db8 <.text+0xdb8>
80200d6e: 2c 08        	addi	a1, sp, 0x18
80200d70: a6 95        	add	a1, a1, s1
80200d72: 93 06 d0 02  	li	a3, 0x2d
80200d76: 13 86 f4 ff  	addi	a2, s1, -0x1
80200d7a: 23 80 d5 00  	sb	a3, 0x0(a1)
80200d7e: 63 54 96 0a  	bge	a2, s1, 0x80200e26 <.text+0xe26>
80200d82: 93 05 16 00  	addi	a1, a2, 0x1
80200d86: 63 cd c5 08  	blt	a1, a2, 0x80200e20 <.text+0xe20>
80200d8a: 33 26 b0 00  	sgtz	a2, a1
80200d8e: 13 05 f0 03  	li	a0, 0x3f
80200d92: 0d 8d        	sub	a0, a0, a1
80200d94: 93 26 f5 03  	slti	a3, a0, 0x3f
80200d98: 63 15 d6 08  	bne	a2, a3, 0x80200e22 <.text+0xe22>
80200d9c: 13 04 15 00  	addi	s0, a0, 0x1
80200da0: 63 42 a4 08  	blt	s0, a0, 0x80200e24 <.text+0xe24>
80200da4: 24 08        	addi	s1, sp, 0x18
80200da6: a6 95        	add	a1, a1, s1
80200da8: 28 08        	addi	a0, sp, 0x18
80200daa: 22 86        	mv	a2, s0
80200dac: 97 50 00 00  	auipc	ra, 0x5
80200db0: e7 80 c0 2d  	jalr	0x2dc(ra) <.text+0x6088>
80200db4: 01 cc        	beqz	s0, 0x80200dcc <.text+0xdcc>
80200db6: 26 94        	add	s0, s0, s1
80200db8: 24 08        	addi	s1, sp, 0x18
80200dba: 03 c5 04 00  	lbu	a0, 0x0(s1)
80200dbe: 85 04        	addi	s1, s1, 0x1
80200dc0: 97 00 00 00  	auipc	ra, 0x0
80200dc4: e7 80 40 a0  	jalr	-0x5fc(ra) <.text+0x7c4>
80200dc8: e3 99 84 fe  	bne	s1, s0, 0x80200dba <.text+0xdba>
80200dcc: 29 45        	li	a0, 0xa
80200dce: 97 00 00 00  	auipc	ra, 0x0
80200dd2: e7 80 60 9f  	jalr	-0x60a(ra) <.text+0x7c4>
80200dd6: 37 a5 98 80  	lui	a0, 0x8098a
80200dda: 41 15        	addi	a0, a0, -0x10
80200ddc: b7 95 b0 00  	lui	a1, 0xb09
80200de0: 89 15        	addi	a1, a1, -0x1e
80200de2: 29 66        	lui	a2, 0xa
80200de4: 13 06 06 70  	addi	a2, a2, 0x700
80200de8: 97 00 00 00  	auipc	ra, 0x0
80200dec: e7 80 00 04  	jalr	0x40(ra) <.text+0xe28>
80200df0: 37 f5 20 80  	lui	a0, 0x8020f
80200df4: 93 05 c5 a2  	addi	a1, a0, -0x5d4
80200df8: 51 45        	li	a0, 0x14
80200dfa: 37 86 00 10  	lui	a2, 0x10008
80200dfe: 97 00 00 00  	auipc	ra, 0x0
80200e02: e7 80 a0 02  	jalr	0x2a(ra) <.text+0xe28>
80200e06: f6 50        	lw	ra, 0x7c(sp)
80200e08: 66 54        	lw	s0, 0x78(sp)
80200e0a: d6 54        	lw	s1, 0x74(sp)
80200e0c: 46 59        	lw	s2, 0x70(sp)
80200e0e: b6 59        	lw	s3, 0x6c(sp)
80200e10: 26 5a        	lw	s4, 0x68(sp)
80200e12: 96 5a        	lw	s5, 0x64(sp)
80200e14: 06 5b        	lw	s6, 0x60(sp)
80200e16: f6 4b        	lw	s7, 0x5c(sp)
80200e18: 66 4c        	lw	s8, 0x58(sp)
80200e1a: 09 61        	addi	sp, sp, 0x80
80200e1c: 82 80        	ret
		...
80200e26: 00 00        	unimp
80200e28: 39 71        	addi	sp, sp, -0x40
80200e2a: 06 de        	sw	ra, 0x3c(sp)
80200e2c: 22 dc        	sw	s0, 0x38(sp)
80200e2e: 26 da        	sw	s1, 0x34(sp)
80200e30: 4a d8        	sw	s2, 0x30(sp)
80200e32: 4e d6        	sw	s3, 0x2c(sp)
80200e34: 52 d4        	sw	s4, 0x28(sp)
80200e36: 56 d2        	sw	s5, 0x24(sp)
80200e38: b2 89        	mv	s3, a2
80200e3a: 2e 89        	mv	s2, a1
80200e3c: aa 84        	mv	s1, a0
80200e3e: 93 5a 86 00  	srli	s5, a2, 0x8
80200e42: 2e 85        	mv	a0, a1
80200e44: b2 85        	mv	a1, a2
80200e46: 97 10 00 00  	auipc	ra, 0x1
80200e4a: e7 80 60 7e  	jalr	0x7e6(ra) <.text+0x262c>
80200e4e: 13 f5 0a 01  	andi	a0, s5, 0x10
80200e52: 79 ed        	bnez	a0, 0x80200f30 <.text+0xf30>
80200e54: 13 f4 f9 0f  	andi	s0, s3, 0xff
80200e58: 15 c0        	beqz	s0, 0x80200e7c <.text+0xe7c>
80200e5a: 4a 85        	mv	a0, s2
80200e5c: ce 85        	mv	a1, s3
80200e5e: 97 10 00 00  	auipc	ra, 0x1
80200e62: e7 80 e0 7c  	jalr	0x7ce(ra) <.text+0x262c>
80200e66: 4a 85        	mv	a0, s2
80200e68: ce 85        	mv	a1, s3
80200e6a: 97 10 00 00  	auipc	ra, 0x1
80200e6e: e7 80 20 7c  	jalr	0x7c2(ra) <.text+0x262c>
80200e72: 4a 85        	mv	a0, s2
80200e74: 97 10 00 00  	auipc	ra, 0x1
80200e78: e7 80 c0 f7  	jalr	-0x84(ra) <.text+0x1df0>
80200e7c: 13 f5 0a 02  	andi	a0, s5, 0x20
80200e80: 13 da 09 01  	srli	s4, s3, 0x10
80200e84: 15 ed        	bnez	a0, 0x80200ec0 <.text+0xec0>
80200e86: 4a 85        	mv	a0, s2
80200e88: ce 85        	mv	a1, s3
80200e8a: 97 00 00 00  	auipc	ra, 0x0
80200e8e: e7 80 80 3c  	jalr	0x3c8(ra) <.text+0x1252>
80200e92: 4a 85        	mv	a0, s2
80200e94: ce 85        	mv	a1, s3
80200e96: 97 00 00 00  	auipc	ra, 0x0
80200e9a: e7 80 c0 3b  	jalr	0x3bc(ra) <.text+0x1252>
80200e9e: 13 f5 84 ff  	andi	a0, s1, -0x8
80200ea2: 4e 0a        	slli	s4, s4, 0x13
80200ea4: 33 65 aa 00  	or	a0, s4, a0
80200ea8: 63 5a 05 0a  	bgez	a0, 0x80200f5c <.text+0xf5c>
80200eac: 19 c4        	beqz	s0, 0x80200eba <.text+0xeba>
80200eae: 4a 85        	mv	a0, s2
80200eb0: ce 85        	mv	a1, s3
80200eb2: 97 00 00 00  	auipc	ra, 0x0
80200eb6: e7 80 00 3a  	jalr	0x3a0(ra) <.text+0x1252>
80200eba: 13 04 49 01  	addi	s0, s2, 0x14
80200ebe: f9 a0        	j	0x80200f8c <.text+0xf8c>
80200ec0: 09 45        	li	a0, 0x2
80200ec2: 63 03 a4 02  	beq	s0, a0, 0x80200ee8 <.text+0xee8>
80200ec6: 05 45        	li	a0, 0x1
80200ec8: 63 12 a4 04  	bne	s0, a0, 0x80200f0c <.text+0xf0c>
80200ecc: 85 45        	li	a1, 0x1
80200ece: 4a 85        	mv	a0, s2
80200ed0: 97 00 00 00  	auipc	ra, 0x0
80200ed4: e7 80 20 38  	jalr	0x382(ra) <.text+0x1252>
80200ed8: 85 45        	li	a1, 0x1
80200eda: 4a 85        	mv	a0, s2
80200edc: 97 00 00 00  	auipc	ra, 0x0
80200ee0: e7 80 60 37  	jalr	0x376(ra) <.text+0x1252>
80200ee4: 85 45        	li	a1, 0x1
80200ee6: 31 a8        	j	0x80200f02 <.text+0xf02>
80200ee8: 89 45        	li	a1, 0x2
80200eea: 4a 85        	mv	a0, s2
80200eec: 97 00 00 00  	auipc	ra, 0x0
80200ef0: e7 80 60 36  	jalr	0x366(ra) <.text+0x1252>
80200ef4: 89 45        	li	a1, 0x2
80200ef6: 4a 85        	mv	a0, s2
80200ef8: 97 00 00 00  	auipc	ra, 0x0
80200efc: e7 80 a0 35  	jalr	0x35a(ra) <.text+0x1252>
80200f00: 89 45        	li	a1, 0x2
80200f02: 4a 85        	mv	a0, s2
80200f04: 97 00 00 00  	auipc	ra, 0x0
80200f08: e7 80 e0 34  	jalr	0x34e(ra) <.text+0x1252>
80200f0c: 13 f4 fa 00  	andi	s0, s5, 0xf
80200f10: 26 c8        	sw	s1, 0x10(sp)
80200f12: 4a ca        	sw	s2, 0x14(sp)
80200f14: 02 ce        	sw	zero, 0x1c(sp)
80200f16: 52 cc        	sw	s4, 0x18(sp)
80200f18: 3d c8        	beqz	s0, 0x80200f8e <.text+0xf8e>
80200f1a: 04 08        	addi	s1, sp, 0x10
80200f1c: 03 c5 04 00  	lbu	a0, 0x0(s1)
80200f20: 85 04        	addi	s1, s1, 0x1
80200f22: 97 00 00 00  	auipc	ra, 0x0
80200f26: e7 80 20 8a  	jalr	-0x75e(ra) <.text+0x7c4>
80200f2a: 7d 14        	addi	s0, s0, -0x1
80200f2c: 65 f8        	bnez	s0, 0x80200f1c <.text+0xf1c>
80200f2e: 85 a0        	j	0x80200f8e <.text+0xf8e>
80200f30: 0a 85        	mv	a0, sp
80200f32: a6 85        	mv	a1, s1
80200f34: 4a 86        	mv	a2, s2
80200f36: ce 86        	mv	a3, s3
80200f38: 97 50 00 00  	auipc	ra, 0x5
80200f3c: e7 80 c0 98  	jalr	-0x674(ra) <.text+0x58c4>
80200f40: 82 44        	lw	s1, 0x0(sp)
80200f42: 22 44        	lw	s0, 0x8(sp)
80200f44: 12 4a        	lw	s4, 0x4(sp)
80200f46: 93 5a 84 00  	srli	s5, s0, 0x8
80200f4a: 4a 85        	mv	a0, s2
80200f4c: ce 85        	mv	a1, s3
80200f4e: 97 00 00 00  	auipc	ra, 0x0
80200f52: e7 80 40 30  	jalr	0x304(ra) <.text+0x1252>
80200f56: a2 89        	mv	s3, s0
80200f58: 52 89        	mv	s2, s4
80200f5a: ed bd        	j	0x80200e54 <.text+0xe54>
80200f5c: 4a 85        	mv	a0, s2
80200f5e: ce 85        	mv	a1, s3
80200f60: 97 00 00 00  	auipc	ra, 0x0
80200f64: e7 80 20 2f  	jalr	0x2f2(ra) <.text+0x1252>
80200f68: 26 85        	mv	a0, s1
80200f6a: ca 85        	mv	a1, s2
80200f6c: 97 10 00 00  	auipc	ra, 0x1
80200f70: e7 80 c0 e8  	jalr	-0x174(ra) <.text+0x1df8>
80200f74: 09 cd        	beqz	a0, 0x80200f8e <.text+0xf8e>
80200f76: 2a 84        	mv	s0, a0
80200f78: ae 84        	mv	s1, a1
80200f7a: 09 a8        	j	0x80200f8c <.text+0xf8c>
80200f7c: 03 45 04 00  	lbu	a0, 0x0(s0)
80200f80: 05 04        	addi	s0, s0, 0x1
80200f82: 97 00 00 00  	auipc	ra, 0x0
80200f86: e7 80 20 84  	jalr	-0x7be(ra) <.text+0x7c4>
80200f8a: fd 14        	addi	s1, s1, -0x1
80200f8c: e5 f8        	bnez	s1, 0x80200f7c <.text+0xf7c>
80200f8e: 4a 85        	mv	a0, s2
80200f90: ce 85        	mv	a1, s3
80200f92: 97 00 00 00  	auipc	ra, 0x0
80200f96: e7 80 00 2c  	jalr	0x2c0(ra) <.text+0x1252>
80200f9a: 29 45        	li	a0, 0xa
80200f9c: f2 50        	lw	ra, 0x3c(sp)
80200f9e: 62 54        	lw	s0, 0x38(sp)
80200fa0: d2 54        	lw	s1, 0x34(sp)
80200fa2: 42 59        	lw	s2, 0x30(sp)
80200fa4: b2 59        	lw	s3, 0x2c(sp)
80200fa6: 22 5a        	lw	s4, 0x28(sp)
80200fa8: 92 5a        	lw	s5, 0x24(sp)
80200faa: 21 61        	addi	sp, sp, 0x40
80200fac: 17 03 00 00  	auipc	t1, 0x0
80200fb0: 67 00 83 81  	jr	-0x7e8(t1) <.text+0x7c4>
80200fb4: 39 71        	addi	sp, sp, -0x40
80200fb6: 06 de        	sw	ra, 0x3c(sp)
80200fb8: 22 dc        	sw	s0, 0x38(sp)
80200fba: 26 da        	sw	s1, 0x34(sp)
80200fbc: 4a d8        	sw	s2, 0x30(sp)
80200fbe: 4e d6        	sw	s3, 0x2c(sp)
80200fc0: 52 d4        	sw	s4, 0x28(sp)
80200fc2: 56 d2        	sw	s5, 0x24(sp)
80200fc4: 5a d0        	sw	s6, 0x20(sp)
80200fc6: 5e ce        	sw	s7, 0x1c(sp)
80200fc8: 62 cc        	sw	s8, 0x18(sp)
80200fca: 66 ca        	sw	s9, 0x14(sp)
80200fcc: 2e 8b        	mv	s6, a1
80200fce: aa 89        	mv	s3, a0
80200fd0: 2e 85        	mv	a0, a1
80200fd2: 97 50 00 00  	auipc	ra, 0x5
80200fd6: e7 80 60 88  	jalr	-0x77a(ra) <.text+0x5858>
80200fda: 85 89        	andi	a1, a1, 0x1
80200fdc: 99 e9        	bnez	a1, 0x80200ff2 <.text+0xff2>
80200fde: b7 05 00 40  	lui	a1, 0x40000
80200fe2: aa 95        	add	a1, a1, a0
80200fe4: 63 cd 05 20  	bltz	a1, 0x802011fe <.text+0x11fe>
80200fe8: 13 19 15 00  	slli	s2, a0, 0x1
80200fec: 63 d1 29 09  	bge	s3, s2, 0x8020106e <.text+0x106e>
80200ff0: 41 a0        	j	0x80201070 <.text+0x1070>
80200ff2: 03 29 0b 00  	lw	s2, 0x0(s6)
80200ff6: 03 2a 4b 00  	lw	s4, 0x4(s6)
80200ffa: 83 44 8b 00  	lbu	s1, 0x8(s6)
80200ffe: 03 44 9b 00  	lbu	s0, 0x9(s6)
80201002: 83 5a ab 00  	lhu	s5, 0xa(s6)
80201006: a1 c0        	beqz	s1, 0x80201046 <.text+0x1046>
80201008: 52 85        	mv	a0, s4
8020100a: a6 85        	mv	a1, s1
8020100c: 97 10 00 00  	auipc	ra, 0x1
80201010: e7 80 00 62  	jalr	0x620(ra) <.text+0x262c>
80201014: 52 85        	mv	a0, s4
80201016: 97 10 00 00  	auipc	ra, 0x1
8020101a: e7 80 a0 dd  	jalr	-0x226(ra) <.text+0x1df0>
8020101e: 13 75 04 01  	andi	a0, s0, 0x10
80201022: 63 1f 05 1c  	bnez	a0, 0x80201200 <.text+0x1200>
80201026: 52 85        	mv	a0, s4
80201028: a6 85        	mv	a1, s1
8020102a: 97 00 00 00  	auipc	ra, 0x0
8020102e: e7 80 80 22  	jalr	0x228(ra) <.text+0x1252>
80201032: 13 75 04 02  	andi	a0, s0, 0x20
80201036: 19 cd        	beqz	a0, 0x80201054 <.text+0x1054>
80201038: 52 85        	mv	a0, s4
8020103a: a6 85        	mv	a1, s1
8020103c: 97 00 00 00  	auipc	ra, 0x0
80201040: e7 80 60 21  	jalr	0x216(ra) <.text+0x1252>
80201044: 0d a0        	j	0x80201066 <.text+0x1066>
80201046: 13 75 04 01  	andi	a0, s0, 0x10
8020104a: 63 1b 05 1a  	bnez	a0, 0x80201200 <.text+0x1200>
8020104e: 13 75 04 02  	andi	a0, s0, 0x20
80201052: 11 e9        	bnez	a0, 0x80201066 <.text+0x1066>
80201054: 52 85        	mv	a0, s4
80201056: a6 85        	mv	a1, s1
80201058: 97 00 00 00  	auipc	ra, 0x0
8020105c: e7 80 a0 1f  	jalr	0x1fa(ra) <.text+0x1252>
80201060: 63 d7 29 01  	bge	s3, s2, 0x8020106e <.text+0x106e>
80201064: 31 a0        	j	0x80201070 <.text+0x1070>
80201066: 13 79 f4 00  	andi	s2, s0, 0xf
8020106a: 63 c3 29 01  	blt	s3, s2, 0x80201070 <.text+0x1070>
8020106e: 4e 89        	mv	s2, s3
80201070: 03 4c 9b 00  	lbu	s8, 0x9(s6)
80201074: 13 75 0c 01  	andi	a0, s8, 0x10
80201078: 63 1e 05 16  	bnez	a0, 0x802011f4 <.text+0x11f4>
8020107c: 83 29 4b 00  	lw	s3, 0x4(s6)
80201080: 83 4c 8b 00  	lbu	s9, 0x8(s6)
80201084: 03 2a 0b 00  	lw	s4, 0x0(s6)
80201088: 83 5b ab 00  	lhu	s7, 0xa(s6)
8020108c: 63 81 0c 02  	beqz	s9, 0x802010ae <.text+0x10ae>
80201090: 4e 85        	mv	a0, s3
80201092: 97 10 00 00  	auipc	ra, 0x1
80201096: e7 80 e0 d5  	jalr	-0x2a2(ra) <.text+0x1df0>
8020109a: 13 75 0c 02  	andi	a0, s8, 0x20
8020109e: 19 c9        	beqz	a0, 0x802010b4 <.text+0x10b4>
802010a0: 4e 85        	mv	a0, s3
802010a2: e6 85        	mv	a1, s9
802010a4: 97 00 00 00  	auipc	ra, 0x0
802010a8: e7 80 e0 1a  	jalr	0x1ae(ra) <.text+0x1252>
802010ac: 25 a0        	j	0x802010d4 <.text+0x10d4>
802010ae: 13 75 0c 02  	andi	a0, s8, 0x20
802010b2: 0d e1        	bnez	a0, 0x802010d4 <.text+0x10d4>
802010b4: 4e 85        	mv	a0, s3
802010b6: e6 85        	mv	a1, s9
802010b8: 97 00 00 00  	auipc	ra, 0x0
802010bc: e7 80 a0 19  	jalr	0x19a(ra) <.text+0x1252>
802010c0: 13 95 0b 01  	slli	a0, s7, 0x10
802010c4: 33 65 45 01  	or	a0, a0, s4
802010c8: 93 5a f5 01  	srli	s5, a0, 0x1f
802010cc: 05 44        	li	s0, 0x1
802010ce: 63 9a 0c 00  	bnez	s9, 0x802010e2 <.text+0x10e2>
802010d2: 0d a8        	j	0x80201104 <.text+0x1104>
802010d4: 01 44        	li	s0, 0x0
802010d6: 13 15 9c 01  	slli	a0, s8, 0x19
802010da: 93 5a f5 01  	srli	s5, a0, 0x1f
802010de: 63 83 0c 02  	beqz	s9, 0x80201104 <.text+0x1104>
802010e2: 4e 85        	mv	a0, s3
802010e4: e6 85        	mv	a1, s9
802010e6: 97 10 00 00  	auipc	ra, 0x1
802010ea: e7 80 60 54  	jalr	0x546(ra) <.text+0x262c>
802010ee: 4e 85        	mv	a0, s3
802010f0: e6 85        	mv	a1, s9
802010f2: 97 10 00 00  	auipc	ra, 0x1
802010f6: e7 80 a0 53  	jalr	0x53a(ra) <.text+0x262c>
802010fa: 4e 85        	mv	a0, s3
802010fc: 97 10 00 00  	auipc	ra, 0x1
80201100: e7 80 40 cf  	jalr	-0x30c(ra) <.text+0x1df0>
80201104: 21 c0        	beqz	s0, 0x80201144 <.text+0x1144>
80201106: 4e 85        	mv	a0, s3
80201108: e6 85        	mv	a1, s9
8020110a: 97 00 00 00  	auipc	ra, 0x0
8020110e: e7 80 80 14  	jalr	0x148(ra) <.text+0x1252>
80201112: 4e 85        	mv	a0, s3
80201114: e6 85        	mv	a1, s9
80201116: 97 00 00 00  	auipc	ra, 0x0
8020111a: e7 80 c0 13  	jalr	0x13c(ra) <.text+0x1252>
8020111e: 13 75 8a ff  	andi	a0, s4, -0x8
80201122: ce 0b        	slli	s7, s7, 0x13
80201124: 33 e5 ab 00  	or	a0, s7, a0
80201128: 63 57 05 10  	bgez	a0, 0x80201236 <.text+0x1236>
8020112c: 63 88 0c 00  	beqz	s9, 0x8020113c <.text+0x113c>
80201130: 4e 85        	mv	a0, s3
80201132: e6 85        	mv	a1, s9
80201134: 97 00 00 00  	auipc	ra, 0x0
80201138: e7 80 e0 11  	jalr	0x11e(ra) <.text+0x1252>
8020113c: 13 85 49 01  	addi	a0, s3, 0x14
80201140: d2 85        	mv	a1, s4
80201142: b1 a8        	j	0x8020119e <.text+0x119e>
80201144: 09 45        	li	a0, 0x2
80201146: 63 83 ac 02  	beq	s9, a0, 0x8020116c <.text+0x116c>
8020114a: 05 45        	li	a0, 0x1
8020114c: 63 92 ac 04  	bne	s9, a0, 0x80201190 <.text+0x1190>
80201150: 85 45        	li	a1, 0x1
80201152: 4e 85        	mv	a0, s3
80201154: 97 00 00 00  	auipc	ra, 0x0
80201158: e7 80 e0 0f  	jalr	0xfe(ra) <.text+0x1252>
8020115c: 85 45        	li	a1, 0x1
8020115e: 4e 85        	mv	a0, s3
80201160: 97 00 00 00  	auipc	ra, 0x0
80201164: e7 80 20 0f  	jalr	0xf2(ra) <.text+0x1252>
80201168: 85 45        	li	a1, 0x1
8020116a: 31 a8        	j	0x80201186 <.text+0x1186>
8020116c: 89 45        	li	a1, 0x2
8020116e: 4e 85        	mv	a0, s3
80201170: 97 00 00 00  	auipc	ra, 0x0
80201174: e7 80 20 0e  	jalr	0xe2(ra) <.text+0x1252>
80201178: 89 45        	li	a1, 0x2
8020117a: 4e 85        	mv	a0, s3
8020117c: 97 00 00 00  	auipc	ra, 0x0
80201180: e7 80 60 0d  	jalr	0xd6(ra) <.text+0x1252>
80201184: 89 45        	li	a1, 0x2
80201186: 4e 85        	mv	a0, s3
80201188: 97 00 00 00  	auipc	ra, 0x0
8020118c: e7 80 a0 0c  	jalr	0xca(ra) <.text+0x1252>
80201190: 93 75 fc 00  	andi	a1, s8, 0xf
80201194: 52 c0        	sw	s4, 0x0(sp)
80201196: 4e c2        	sw	s3, 0x4(sp)
80201198: 02 c6        	sw	zero, 0xc(sp)
8020119a: 5e c4        	sw	s7, 0x8(sp)
8020119c: 0a 85        	mv	a0, sp
8020119e: 4a 86        	mv	a2, s2
802011a0: d6 86        	mv	a3, s5
802011a2: 97 40 00 00  	auipc	ra, 0x4
802011a6: e7 80 a0 1b  	jalr	0x1ba(ra) <.text+0x535c>
802011aa: 2a 84        	mv	s0, a0
802011ac: 44 45        	lw	s1, 0xc(a0)
802011ae: 03 19 05 01  	lh	s2, 0x10(a0)
802011b2: 13 da f4 41  	srai	s4, s1, 0x1f
802011b6: 4e 85        	mv	a0, s3
802011b8: e6 85        	mv	a1, s9
802011ba: 97 00 00 00  	auipc	ra, 0x0
802011be: e7 80 80 09  	jalr	0x98(ra) <.text+0x1252>
802011c2: 42 09        	slli	s2, s2, 0x10
802011c4: 33 65 49 01  	or	a0, s2, s4
802011c8: 41 81        	srli	a0, a0, 0x10
802011ca: da 85        	mv	a1, s6
802011cc: 84 c1        	sw	s1, 0x0(a1)
802011ce: c0 c1        	sw	s0, 0x4(a1)
802011d0: 85 45        	li	a1, 0x1
802011d2: 23 14 bb 00  	sh	a1, 0x8(s6)
802011d6: 23 15 ab 00  	sh	a0, 0xa(s6)
802011da: f2 50        	lw	ra, 0x3c(sp)
802011dc: 62 54        	lw	s0, 0x38(sp)
802011de: d2 54        	lw	s1, 0x34(sp)
802011e0: 42 59        	lw	s2, 0x30(sp)
802011e2: b2 59        	lw	s3, 0x2c(sp)
802011e4: 22 5a        	lw	s4, 0x28(sp)
802011e6: 92 5a        	lw	s5, 0x24(sp)
802011e8: 02 5b        	lw	s6, 0x20(sp)
802011ea: f2 4b        	lw	s7, 0x1c(sp)
802011ec: 62 4c        	lw	s8, 0x18(sp)
802011ee: d2 4c        	lw	s9, 0x14(sp)
802011f0: 21 61        	addi	sp, sp, 0x40
802011f2: 82 80        	ret
802011f4: 4a 85        	mv	a0, s2
802011f6: 97 40 00 00  	auipc	ra, 0x4
802011fa: e7 80 e0 69  	jalr	0x69e(ra) <.text+0x5894>
802011fe: 00 00        	unimp
80201200: 52 85        	mv	a0, s4
80201202: a6 85        	mv	a1, s1
80201204: 97 00 00 00  	auipc	ra, 0x0
80201208: e7 80 e0 04  	jalr	0x4e(ra) <.text+0x1252>
8020120c: 52 85        	mv	a0, s4
8020120e: a6 85        	mv	a1, s1
80201210: 97 00 00 00  	auipc	ra, 0x0
80201214: e7 80 20 04  	jalr	0x42(ra) <.text+0x1252>
80201218: 22 04        	slli	s0, s0, 0x8
8020121a: 45 8c        	or	s0, s0, s1
8020121c: 13 96 0a 01  	slli	a2, s5, 0x10
80201220: 41 8e        	or	a2, a2, s0
80201222: 4a 85        	mv	a0, s2
80201224: d2 85        	mv	a1, s4
80201226: 97 30 00 00  	auipc	ra, 0x3
8020122a: e7 80 40 fc  	jalr	-0x3c(ra) <.text+0x41ea>
8020122e: 2a 89        	mv	s2, a0
80201230: e3 df a9 e2  	bge	s3, a0, 0x8020106e <.text+0x106e>
80201234: 35 bd        	j	0x80201070 <.text+0x1070>
80201236: 4e 85        	mv	a0, s3
80201238: e6 85        	mv	a1, s9
8020123a: 97 00 00 00  	auipc	ra, 0x0
8020123e: e7 80 80 01  	jalr	0x18(ra) <.text+0x1252>
80201242: 52 85        	mv	a0, s4
80201244: ce 85        	mv	a1, s3
80201246: 97 10 00 00  	auipc	ra, 0x1
8020124a: e7 80 20 bb  	jalr	-0x44e(ra) <.text+0x1df8>
8020124e: 2e 8a        	mv	s4, a1
80201250: c5 bd        	j	0x80201140 <.text+0x1140>
80201252: fd 15        	addi	a1, a1, -0x1
80201254: 93 f5 f5 0f  	andi	a1, a1, 0xff
80201258: 05 46        	li	a2, 0x1
8020125a: 63 66 b6 00  	bltu	a2, a1, 0x80201266 <.text+0x1266>
8020125e: 17 23 00 00  	auipc	t1, 0x2
80201262: 67 00 e3 63  	jr	0x63e(t1) <.text+0x389c>
80201266: 82 80        	ret
80201268: 97 52 00 00  	auipc	t0, 0x5
8020126c: e7 82 82 0d  	jalr	t0, 0xd8(t0) <.text+0x6340>
80201270: b3 66 f7 00  	or	a3, a4, a5
80201274: 2a 8a        	mv	s4, a0
80201276: 89 ca        	beqz	a3, 0x80201288 <.text+0x1288>
80201278: be 89        	mv	s3, a5
8020127a: b2 8a        	mv	s5, a2
8020127c: 2e 89        	mv	s2, a1
8020127e: 63 cb 07 00  	bltz	a5, 0x80201294 <.text+0x1294>
80201282: 3a 84        	mv	s0, a4
80201284: 4e 8c        	mv	s8, s3
80201286: 39 a8        	j	0x802012a4 <.text+0x12a4>
80201288: 13 05 00 03  	li	a0, 0x30
8020128c: 23 00 aa 00  	sb	a0, 0x0(s4)
80201290: 05 44        	li	s0, 0x1
80201292: d9 a8        	j	0x80201368 <.text+0x1368>
80201294: 33 04 e0 40  	neg	s0, a4
80201298: 33 35 e0 00  	snez	a0, a4
8020129c: b3 05 30 41  	neg	a1, s3
802012a0: 33 8c a5 40  	sub	s8, a1, a0
802012a4: 13 0b f9 ff  	addi	s6, s2, -0x1
802012a8: 63 6c 69 0d  	bltu	s2, s6, 0x80201380 <.text+0x1380>
802012ac: 63 46 0b 0c  	bltz	s6, 0x80201378 <.text+0x1378>
802012b0: 63 c4 0a 0c  	bltz	s5, 0x80201378 <.text+0x1378>
802012b4: 63 82 0a 0c  	beqz	s5, 0x80201378 <.text+0x1378>
802012b8: a9 4b        	li	s7, 0xa
802012ba: da 84        	mv	s1, s6
802012bc: 22 85        	mv	a0, s0
802012be: e2 85        	mv	a1, s8
802012c0: 56 86        	mv	a2, s5
802012c2: 81 46        	li	a3, 0x0
802012c4: 97 50 00 00  	auipc	ra, 0x5
802012c8: e7 80 40 f5  	jalr	-0xac(ra) <.text+0x6218>
802012cc: 33 06 55 03  	mul	a2, a0, s5
802012d0: 33 06 c4 40  	sub	a2, s0, a2
802012d4: 93 76 f6 0f  	andi	a3, a2, 0xff
802012d8: 63 f5 76 01  	bgeu	a3, s7, 0x802012e2 <.text+0x12e2>
802012dc: 93 06 06 03  	addi	a3, a2, 0x30
802012e0: 11 a8        	j	0x802012f4 <.text+0x12f4>
802012e2: 59 16        	addi	a2, a2, -0xa
802012e4: 13 76 f6 0f  	andi	a2, a2, 0xff
802012e8: 93 06 16 06  	addi	a3, a2, 0x61
802012ec: 13 f6 f6 0f  	andi	a2, a3, 0xff
802012f0: 63 13 d6 08  	bne	a2, a3, 0x80201376 <.text+0x1376>
802012f4: 33 07 9a 00  	add	a4, s4, s1
802012f8: 13 86 f4 ff  	addi	a2, s1, -0x1
802012fc: 23 00 d7 00  	sb	a3, 0x0(a4)
80201300: 63 5a 96 06  	bge	a2, s1, 0x80201374 <.text+0x1374>
80201304: b3 36 54 01  	sltu	a3, s0, s5
80201308: 13 37 1c 00  	seqz	a4, s8
8020130c: f9 8e        	and	a3, a3, a4
8020130e: b2 84        	mv	s1, a2
80201310: 2a 84        	mv	s0, a0
80201312: 2e 8c        	mv	s8, a1
80201314: c5 d6        	beqz	a3, 0x802012bc <.text+0x12bc>
80201316: 63 c4 09 00  	bltz	s3, 0x8020131e <.text+0x131e>
8020131a: 32 85        	mv	a0, a2
8020131c: 19 a8        	j	0x80201332 <.text+0x1332>
8020131e: b3 05 ca 00  	add	a1, s4, a2
80201322: 93 06 d0 02  	li	a3, 0x2d
80201326: 13 05 f6 ff  	addi	a0, a2, -0x1
8020132a: 23 80 d5 00  	sb	a3, 0x0(a1)
8020132e: 63 51 c5 06  	bge	a0, a2, 0x80201390 <.text+0x1390>
80201332: 93 05 15 00  	addi	a1, a0, 0x1
80201336: 63 c6 a5 04  	blt	a1, a0, 0x80201382 <.text+0x1382>
8020133a: 33 26 b0 00  	sgtz	a2, a1
8020133e: 33 05 bb 40  	sub	a0, s6, a1
80201342: b3 26 65 01  	slt	a3, a0, s6
80201346: 63 1f d6 02  	bne	a2, a3, 0x80201384 <.text+0x1384>
8020134a: 13 04 15 00  	addi	s0, a0, 0x1
8020134e: 63 4c a4 02  	blt	s0, a0, 0x80201386 <.text+0x1386>
80201352: 63 4b 04 02  	bltz	s0, 0x80201388 <.text+0x1388>
80201356: 63 41 09 02  	bltz	s2, 0x80201378 <.text+0x1378>
8020135a: d2 95        	add	a1, a1, s4
8020135c: 52 85        	mv	a0, s4
8020135e: 22 86        	mv	a2, s0
80201360: 97 50 00 00  	auipc	ra, 0x5
80201364: e7 80 80 d2  	jalr	-0x2d8(ra) <.text+0x6088>
80201368: 22 85        	mv	a0, s0
8020136a: 97 52 00 00  	auipc	t0, 0x5
8020136e: e7 82 e2 fe  	jalr	t0, -0x12(t0) <.text+0x6358>
80201372: 82 80        	ret
80201374: 00 00        	unimp
80201376: 00 00        	unimp
80201378: 97 40 00 00  	auipc	ra, 0x4
8020137c: e7 80 e0 4d  	jalr	0x4de(ra) <.text+0x5856>
		...
80201388: 97 40 00 00  	auipc	ra, 0x4
8020138c: e7 80 60 4c  	jalr	0x4c6(ra) <.text+0x584e>
80201390: 00 00        	unimp
80201392: 97 52 00 00  	auipc	t0, 0x5
80201396: e7 82 e2 fd  	jalr	t0, -0x22(t0) <.text+0x6370>
8020139a: 2a 89        	mv	s2, a0
8020139c: 1d ca        	beqz	a2, 0x802013d2 <.text+0x13d2>
8020139e: b2 8d        	mv	s11, a2
802013a0: ae 89        	mv	s3, a1
802013a2: 29 45        	li	a0, 0xa
802013a4: 63 59 c5 04  	bge	a0, a2, 0x802013f6 <.text+0x13f6>
802013a8: 85 46        	li	a3, 0x1
802013aa: 05 44        	li	s0, 0x1
802013ac: 4e 85        	mv	a0, s3
802013ae: ee 85        	mv	a1, s11
802013b0: 6e 86        	mv	a2, s11
802013b2: 97 40 00 00  	auipc	ra, 0x4
802013b6: e7 80 a0 fa  	jalr	-0x56(ra) <.text+0x535c>
802013ba: aa 8b        	mv	s7, a0
802013bc: 03 2a c5 00  	lw	s4, 0xc(a0)
802013c0: 03 15 05 01  	lh	a0, 0x10(a0)
802013c4: 93 55 fa 41  	srai	a1, s4, 0x1f
802013c8: 42 05        	slli	a0, a0, 0x10
802013ca: 4d 8d        	or	a0, a0, a1
802013cc: 93 5a 05 01  	srli	s5, a0, 0x10
802013d0: 29 a0        	j	0x802013da <.text+0x13da>
802013d2: 01 4a        	li	s4, 0x0
802013d4: 81 4b        	li	s7, 0x0
802013d6: 81 4a        	li	s5, 0x0
802013d8: 39 64        	lui	s0, 0xe
802013da: c2 0a        	slli	s5, s5, 0x10
802013dc: 33 65 54 01  	or	a0, s0, s5
802013e0: 23 22 79 01  	sw	s7, 0x4(s2)
802013e4: 23 20 49 01  	sw	s4, 0x0(s2)
802013e8: 23 24 a9 00  	sw	a0, 0x8(s2)
802013ec: 97 52 00 00  	auipc	t0, 0x5
802013f0: e7 82 22 fa  	jalr	t0, -0x5e(t0) <.text+0x638e>
802013f4: 82 80        	ret
802013f6: 21 45        	li	a0, 0x8
802013f8: 6e 8b        	mv	s6, s11
802013fa: 63 c3 ad 00  	blt	s11, a0, 0x80201400 <.text+0x1400>
802013fe: 21 4b        	li	s6, 0x8
80201400: 63 45 0b 0c  	bltz	s6, 0x802014ca <.text+0x14ca>
80201404: 03 ca 09 00  	lbu	s4, 0x0(s3)
80201408: 81 4b        	li	s7, 0x0
8020140a: 13 0c fb ff  	addi	s8, s6, -0x1
8020140e: 63 01 0c 04  	beqz	s8, 0x80201450 <.text+0x1450>
80201412: 13 05 fb ff  	addi	a0, s6, -0x1
80201416: 93 25 2b 00  	slti	a1, s6, 0x2
8020141a: fd 15        	addi	a1, a1, -0x1
8020141c: b3 fa a5 00  	and	s5, a1, a0
80201420: 79 1b        	addi	s6, s6, -0x2
80201422: 93 84 19 00  	addi	s1, s3, 0x1
80201426: 21 44        	li	s0, 0x8
80201428: 63 77 5b 07  	bgeu	s6, s5, 0x80201496 <.text+0x1496>
8020142c: 03 c5 04 00  	lbu	a0, 0x0(s1)
80201430: 13 76 84 03  	andi	a2, s0, 0x38
80201434: 81 45        	li	a1, 0x0
80201436: 97 50 00 00  	auipc	ra, 0x5
8020143a: e7 80 a0 ce  	jalr	-0x316(ra) <.text+0x6120>
8020143e: b3 eb 75 01  	or	s7, a1, s7
80201442: 33 6a 45 01  	or	s4, a0, s4
80201446: 7d 1c        	addi	s8, s8, -0x1
80201448: 85 04        	addi	s1, s1, 0x1
8020144a: 21 04        	addi	s0, s0, 0x8
8020144c: e3 1e 0c fc  	bnez	s8, 0x80201428 <.text+0x1428>
80201450: 25 45        	li	a0, 0x9
80201452: 63 c6 ad 04  	blt	s11, a0, 0x8020149e <.text+0x149e>
80201456: 83 ca 89 00  	lbu	s5, 0x8(s3)
8020145a: 63 83 ad 04  	beq	s11, a0, 0x802014a0 <.text+0x14a0>
8020145e: 01 4b        	li	s6, 0x0
80201460: 93 8c 7d ff  	addi	s9, s11, -0x9
80201464: 13 8c 6d ff  	addi	s8, s11, -0xa
80201468: a5 09        	addi	s3, s3, 0x9
8020146a: 21 4d        	li	s10, 0x8
8020146c: 66 84        	mv	s0, s9
8020146e: 63 74 9c 03  	bgeu	s8, s9, 0x80201496 <.text+0x1496>
80201472: 03 c5 09 00  	lbu	a0, 0x0(s3)
80201476: 13 76 8d 03  	andi	a2, s10, 0x38
8020147a: 81 45        	li	a1, 0x0
8020147c: 97 50 00 00  	auipc	ra, 0x5
80201480: e7 80 40 ca  	jalr	-0x35c(ra) <.text+0x6120>
80201484: 33 eb 65 01  	or	s6, a1, s6
80201488: b3 6a 55 01  	or	s5, a0, s5
8020148c: 7d 14        	addi	s0, s0, -0x1
8020148e: 85 09        	addi	s3, s3, 0x1
80201490: 21 0d        	addi	s10, s10, 0x8
80201492: 71 fc        	bnez	s0, 0x8020146e <.text+0x146e>
80201494: 39 a0        	j	0x802014a2 <.text+0x14a2>
80201496: 97 40 00 00  	auipc	ra, 0x4
8020149a: e7 80 80 3b  	jalr	0x3b8(ra) <.text+0x584e>
8020149e: 81 4a        	li	s5, 0x0
802014a0: 01 4b        	li	s6, 0x0
802014a2: 33 e5 4a 01  	or	a0, s5, s4
802014a6: b3 65 7b 01  	or	a1, s6, s7
802014aa: 97 52 00 00  	auipc	t0, 0x5
802014ae: e7 82 82 f3  	jalr	t0, -0xc8(t0) <.text+0x63e2>
802014b2: 99 c1        	beqz	a1, 0x802014b8 <.text+0x14b8>
802014b4: 37 05 00 a0  	lui	a0, 0xa0000
802014b8: e2 0d        	slli	s11, s11, 0x18
802014ba: 33 65 65 01  	or	a0, a0, s6
802014be: 33 e5 ad 00  	or	a0, s11, a0
802014c2: 61 81        	srli	a0, a0, 0x18
802014c4: 13 14 85 00  	slli	s0, a0, 0x8
802014c8: 09 bf        	j	0x802013da <.text+0x13da>
802014ca: 97 40 00 00  	auipc	ra, 0x4
802014ce: e7 80 c0 38  	jalr	0x38c(ra) <.text+0x5856>
802014d2: 0d 71        	addi	sp, sp, -0x160
802014d4: 18 02        	addi	a4, sp, 0x100
802014d6: 23 2e 17 04  	sw	ra, 0x5c(a4)
802014da: 20 cf        	sw	s0, 0x58(a4)
802014dc: 64 cb        	sw	s1, 0x54(a4)
802014de: 23 28 27 05  	sw	s2, 0x50(a4)
802014e2: 23 26 37 05  	sw	s3, 0x4c(a4)
802014e6: 23 24 47 05  	sw	s4, 0x48(a4)
802014ea: 23 22 57 05  	sw	s5, 0x44(a4)
802014ee: 23 20 67 05  	sw	s6, 0x40(a4)
802014f2: 23 2e 77 03  	sw	s7, 0x3c(a4)
802014f6: 23 2c 87 03  	sw	s8, 0x38(a4)
802014fa: 23 2a 97 03  	sw	s9, 0x34(a4)
802014fe: 23 28 a7 03  	sw	s10, 0x30(a4)
80201502: 23 26 b7 03  	sw	s11, 0x2c(a4)
80201506: b6 8c        	mv	s9, a3
80201508: 03 ab 06 00  	lw	s6, 0x0(a3)
8020150c: 83 a9 46 00  	lw	s3, 0x4(a3)
80201510: 83 cb 86 00  	lbu	s7, 0x8(a3)
80201514: 03 c4 96 00  	lbu	s0, 0x9(a3)
80201518: 03 d9 a6 00  	lhu	s2, 0xa(a3)
8020151c: b2 8a        	mv	s5, a2
8020151e: 2e 8a        	mv	s4, a1
80201520: aa 8d        	mv	s11, a0
80201522: 93 74 04 02  	andi	s1, s0, 0x20
80201526: 63 8f 0b 00  	beqz	s7, 0x80201544 <.text+0x1544>
8020152a: 4e 85        	mv	a0, s3
8020152c: 97 10 00 00  	auipc	ra, 0x1
80201530: e7 80 40 8c  	jalr	-0x73c(ra) <.text+0x1df0>
80201534: 89 c8        	beqz	s1, 0x80201546 <.text+0x1546>
80201536: 4e 85        	mv	a0, s3
80201538: de 85        	mv	a1, s7
8020153a: 97 00 00 00  	auipc	ra, 0x0
8020153e: e7 80 80 d1  	jalr	-0x2e8(ra) <.text+0x1252>
80201542: 11 a8        	j	0x80201556 <.text+0x1556>
80201544: 89 e8        	bnez	s1, 0x80201556 <.text+0x1556>
80201546: 4e 85        	mv	a0, s3
80201548: de 85        	mv	a1, s7
8020154a: 97 00 00 00  	auipc	ra, 0x0
8020154e: e7 80 80 d0  	jalr	-0x2f8(ra) <.text+0x1252>
80201552: 5a 85        	mv	a0, s6
80201554: 19 a0        	j	0x8020155a <.text+0x155a>
80201556: 13 75 f4 00  	andi	a0, s0, 0xf
8020155a: 13 dd 8a 00  	srli	s10, s5, 0x8
8020155e: 13 dc 0a 01  	srli	s8, s5, 0x10
80201562: 11 ed        	bnez	a0, 0x8020157e <.text+0x157e>
80201564: 22 04        	slli	s0, s0, 0x8
80201566: 33 65 74 01  	or	a0, s0, s7
8020156a: 93 15 09 01  	slli	a1, s2, 0x10
8020156e: c9 8d        	or	a1, a1, a0
80201570: 5a 85        	mv	a0, s6
80201572: 97 20 00 00  	auipc	ra, 0x2
80201576: e7 80 c0 2f  	jalr	0x2fc(ra) <.text+0x386e>
8020157a: 05 89        	andi	a0, a0, 0x1
8020157c: 69 c1        	beqz	a0, 0x8020163e <.text+0x163e>
8020157e: 03 c4 9c 00  	lbu	s0, 0x9(s9)
80201582: 13 75 04 02  	andi	a0, s0, 0x20
80201586: 93 f4 fa 0f  	andi	s1, s5, 0xff
8020158a: 93 79 0d 02  	andi	s3, s10, 0x20
8020158e: 62 d2        	sw	s8, 0x24(sp)
80201590: 26 d6        	sw	s1, 0x2c(sp)
80201592: 63 04 05 1a  	beqz	a0, 0x8020173a <.text+0x173a>
80201596: 83 ab 4c 00  	lw	s7, 0x4(s9)
8020159a: 03 cb 8c 00  	lbu	s6, 0x8(s9)
8020159e: 95 c0        	beqz	s1, 0x802015c2 <.text+0x15c2>
802015a0: 52 85        	mv	a0, s4
802015a2: d6 85        	mv	a1, s5
802015a4: 97 10 00 00  	auipc	ra, 0x1
802015a8: e7 80 80 08  	jalr	0x88(ra) <.text+0x262c>
802015ac: 52 85        	mv	a0, s4
802015ae: d6 85        	mv	a1, s5
802015b0: 97 10 00 00  	auipc	ra, 0x1
802015b4: e7 80 c0 07  	jalr	0x7c(ra) <.text+0x262c>
802015b8: 52 85        	mv	a0, s4
802015ba: 97 10 00 00  	auipc	ra, 0x1
802015be: e7 80 60 83  	jalr	-0x7ca(ra) <.text+0x1df0>
802015c2: 63 95 09 02  	bnez	s3, 0x802015ec <.text+0x15ec>
802015c6: 52 85        	mv	a0, s4
802015c8: d6 85        	mv	a1, s5
802015ca: 97 00 00 00  	auipc	ra, 0x0
802015ce: e7 80 80 c8  	jalr	-0x378(ra) <.text+0x1252>
802015d2: 52 85        	mv	a0, s4
802015d4: d6 85        	mv	a1, s5
802015d6: 97 00 00 00  	auipc	ra, 0x0
802015da: e7 80 c0 c7  	jalr	-0x384(ra) <.text+0x1252>
802015de: 52 85        	mv	a0, s4
802015e0: d6 85        	mv	a1, s5
802015e2: 97 00 00 00  	auipc	ra, 0x0
802015e6: e7 80 00 c7  	jalr	-0x390(ra) <.text+0x1252>
802015ea: 81 aa        	j	0x8020173a <.text+0x173a>
802015ec: 03 ac 0c 00  	lw	s8, 0x0(s9)
802015f0: 83 d4 ac 00  	lhu	s1, 0xa(s9)
802015f4: 09 45        	li	a0, 0x2
802015f6: 63 0b ab 06  	beq	s6, a0, 0x8020166c <.text+0x166c>
802015fa: 05 45        	li	a0, 0x1
802015fc: 63 1b ab 0a  	bne	s6, a0, 0x802016b2 <.text+0x16b2>
80201600: 85 45        	li	a1, 0x1
80201602: 5e 85        	mv	a0, s7
80201604: 97 10 00 00  	auipc	ra, 0x1
80201608: e7 80 80 02  	jalr	0x28(ra) <.text+0x262c>
8020160c: 85 45        	li	a1, 0x1
8020160e: 5e 85        	mv	a0, s7
80201610: 97 10 00 00  	auipc	ra, 0x1
80201614: e7 80 c0 01  	jalr	0x1c(ra) <.text+0x262c>
80201618: 5e 85        	mv	a0, s7
8020161a: 97 00 00 00  	auipc	ra, 0x0
8020161e: e7 80 60 7d  	jalr	0x7d6(ra) <.text+0x1df0>
80201622: 85 45        	li	a1, 0x1
80201624: 5e 85        	mv	a0, s7
80201626: 97 00 00 00  	auipc	ra, 0x0
8020162a: e7 80 c0 c2  	jalr	-0x3d4(ra) <.text+0x1252>
8020162e: 85 45        	li	a1, 0x1
80201630: 5e 85        	mv	a0, s7
80201632: 97 00 00 00  	auipc	ra, 0x0
80201636: e7 80 00 c2  	jalr	-0x3e0(ra) <.text+0x1252>
8020163a: 85 45        	li	a1, 0x1
8020163c: b5 a0        	j	0x802016a8 <.text+0x16a8>
8020163e: 52 85        	mv	a0, s4
80201640: d6 85        	mv	a1, s5
80201642: 97 10 00 00  	auipc	ra, 0x1
80201646: e7 80 a0 fe  	jalr	-0x16(ra) <.text+0x262c>
8020164a: 4e 85        	mv	a0, s3
8020164c: de 85        	mv	a1, s7
8020164e: 97 00 00 00  	auipc	ra, 0x0
80201652: e7 80 40 c0  	jalr	-0x3fc(ra) <.text+0x1252>
80201656: 23 a0 bc 01  	sw	s11, 0x0(s9)
8020165a: 23 a2 4c 01  	sw	s4, 0x4(s9)
8020165e: 23 84 5c 01  	sb	s5, 0x8(s9)
80201662: a3 84 ac 01  	sb	s10, 0x9(s9)
80201666: 23 95 8c 01  	sh	s8, 0xa(s9)
8020166a: 21 a5        	j	0x80201c72 <.text+0x1c72>
8020166c: 89 45        	li	a1, 0x2
8020166e: 5e 85        	mv	a0, s7
80201670: 97 10 00 00  	auipc	ra, 0x1
80201674: e7 80 c0 fb  	jalr	-0x44(ra) <.text+0x262c>
80201678: 89 45        	li	a1, 0x2
8020167a: 5e 85        	mv	a0, s7
8020167c: 97 10 00 00  	auipc	ra, 0x1
80201680: e7 80 00 fb  	jalr	-0x50(ra) <.text+0x262c>
80201684: 5e 85        	mv	a0, s7
80201686: 97 00 00 00  	auipc	ra, 0x0
8020168a: e7 80 a0 76  	jalr	0x76a(ra) <.text+0x1df0>
8020168e: 89 45        	li	a1, 0x2
80201690: 5e 85        	mv	a0, s7
80201692: 97 00 00 00  	auipc	ra, 0x0
80201696: e7 80 00 bc  	jalr	-0x440(ra) <.text+0x1252>
8020169a: 89 45        	li	a1, 0x2
8020169c: 5e 85        	mv	a0, s7
8020169e: 97 00 00 00  	auipc	ra, 0x0
802016a2: e7 80 40 bb  	jalr	-0x44c(ra) <.text+0x1252>
802016a6: 89 45        	li	a1, 0x2
802016a8: 5e 85        	mv	a0, s7
802016aa: 97 00 00 00  	auipc	ra, 0x0
802016ae: e7 80 80 ba  	jalr	-0x458(ra) <.text+0x1252>
802016b2: 62 04        	slli	s0, s0, 0x18
802016b4: 09 45        	li	a0, 0x2
802016b6: 6a 89        	mv	s2, s10
802016b8: 62 0d        	slli	s10, s10, 0x18
802016ba: b2 55        	lw	a1, 0x2c(sp)
802016bc: 63 83 a5 02  	beq	a1, a0, 0x802016e2 <.text+0x16e2>
802016c0: 05 45        	li	a0, 0x1
802016c2: 63 92 a5 04  	bne	a1, a0, 0x80201706 <.text+0x1706>
802016c6: 85 45        	li	a1, 0x1
802016c8: 52 85        	mv	a0, s4
802016ca: 97 00 00 00  	auipc	ra, 0x0
802016ce: e7 80 80 b8  	jalr	-0x478(ra) <.text+0x1252>
802016d2: 85 45        	li	a1, 0x1
802016d4: 52 85        	mv	a0, s4
802016d6: 97 00 00 00  	auipc	ra, 0x0
802016da: e7 80 c0 b7  	jalr	-0x484(ra) <.text+0x1252>
802016de: 85 45        	li	a1, 0x1
802016e0: 31 a8        	j	0x802016fc <.text+0x16fc>
802016e2: 89 45        	li	a1, 0x2
802016e4: 52 85        	mv	a0, s4
802016e6: 97 00 00 00  	auipc	ra, 0x0
802016ea: e7 80 c0 b6  	jalr	-0x494(ra) <.text+0x1252>
802016ee: 89 45        	li	a1, 0x2
802016f0: 52 85        	mv	a0, s4
802016f2: 97 00 00 00  	auipc	ra, 0x0
802016f6: e7 80 00 b6  	jalr	-0x4a0(ra) <.text+0x1252>
802016fa: 89 45        	li	a1, 0x2
802016fc: 52 85        	mv	a0, s4
802016fe: 97 00 00 00  	auipc	ra, 0x0
80201702: e7 80 40 b5  	jalr	-0x4ac(ra) <.text+0x1252>
80201706: 08 01        	addi	a0, sp, 0x80
80201708: e2 85        	mv	a1, s8
8020170a: 5e 86        	mv	a2, s7
8020170c: a6 86        	mv	a3, s1
8020170e: 22 87        	mv	a4, s0
80201710: ee 87        	mv	a5, s11
80201712: 52 88        	mv	a6, s4
80201714: 12 5c        	lw	s8, 0x24(sp)
80201716: e2 88        	mv	a7, s8
80201718: ea 83        	mv	t2, s10
8020171a: 97 20 00 00  	auipc	ra, 0x2
8020171e: e7 80 a0 4f  	jalr	0x4fa(ra) <.text+0x3c14>
80201722: 08 01        	addi	a0, sp, 0x80
80201724: 2c 09        	addi	a1, sp, 0x98
80201726: 97 20 00 00  	auipc	ra, 0x2
8020172a: e7 80 c0 60  	jalr	0x60c(ra) <.text+0x3d32>
8020172e: 03 45 81 0a  	lbu	a0, 0xa8(sp)
80201732: b2 54        	lw	s1, 0x2c(sp)
80201734: 4a 8d        	mv	s10, s2
80201736: 63 09 05 50  	beqz	a0, 0x80201c48 <.text+0x1c48>
8020173a: 13 94 2a 01  	slli	s0, s5, 0x12
8020173e: 99 cc        	beqz	s1, 0x8020175c <.text+0x175c>
80201740: 52 85        	mv	a0, s4
80201742: 97 00 00 00  	auipc	ra, 0x0
80201746: e7 80 e0 6a  	jalr	0x6ae(ra) <.text+0x1df0>
8020174a: 63 5b 04 00  	bgez	s0, 0x80201760 <.text+0x1760>
8020174e: 52 85        	mv	a0, s4
80201750: d6 85        	mv	a1, s5
80201752: 97 00 00 00  	auipc	ra, 0x0
80201756: e7 80 00 b0  	jalr	-0x500(ra) <.text+0x1252>
8020175a: 19 a8        	j	0x80201770 <.text+0x1770>
8020175c: 63 4a 04 00  	bltz	s0, 0x80201770 <.text+0x1770>
80201760: 52 85        	mv	a0, s4
80201762: d6 85        	mv	a1, s5
80201764: 97 00 00 00  	auipc	ra, 0x0
80201768: e7 80 e0 ae  	jalr	-0x512(ra) <.text+0x1252>
8020176c: 6e 85        	mv	a0, s11
8020176e: 19 a0        	j	0x80201774 <.text+0x1774>
80201770: 13 75 fd 00  	andi	a0, s10, 0xf
80201774: 6e d7        	sw	s11, 0xac(sp)
80201776: 52 d9        	sw	s4, 0xb0(sp)
80201778: 23 0a 51 0b  	sb	s5, 0xb4(sp)
8020177c: a3 0a a1 0b  	sb	s10, 0xb5(sp)
80201780: 23 1b 81 0b  	sh	s8, 0xb6(sp)
80201784: 02 dd        	sw	zero, 0xb8(sp)
80201786: 2a df        	sw	a0, 0xbc(sp)
80201788: 9d c0        	beqz	s1, 0x802017ae <.text+0x17ae>
8020178a: 68 11        	addi	a0, sp, 0xac
8020178c: 97 20 00 00  	auipc	ra, 0x2
80201790: e7 80 60 5b  	jalr	0x5b6(ra) <.text+0x3d42>
80201794: 68 11        	addi	a0, sp, 0xac
80201796: 97 20 00 00  	auipc	ra, 0x2
8020179a: e7 80 c0 5a  	jalr	0x5ac(ra) <.text+0x3d42>
8020179e: 52 85        	mv	a0, s4
802017a0: 97 00 00 00  	auipc	ra, 0x0
802017a4: e7 80 00 65  	jalr	0x650(ra) <.text+0x1df0>
802017a8: ea 55        	lw	a1, 0xb8(sp)
802017aa: 7a 55        	lw	a0, 0xbc(sp)
802017ac: 11 a0        	j	0x802017b0 <.text+0x17b0>
802017ae: 81 45        	li	a1, 0x0
802017b0: 93 74 0d 01  	andi	s1, s10, 0x10
802017b4: 63 9a 04 4e  	bnez	s1, 0x80201ca8 <.text+0x1ca8>
802017b8: 33 26 b0 00  	sgtz	a2, a1
802017bc: 33 0c b5 40  	sub	s8, a0, a1
802017c0: 33 25 ac 00  	slt	a0, s8, a0
802017c4: 63 19 a6 4e  	bne	a2, a0, 0x80201cb6 <.text+0x1cb6>
802017c8: 26 ce        	sw	s1, 0x1c(sp)
802017ca: 4e cc        	sw	s3, 0x18(sp)
802017cc: 6e d4        	sw	s11, 0x28(sp)
802017ce: 83 ab 0c 00  	lw	s7, 0x0(s9)
802017d2: 03 ab 4c 00  	lw	s6, 0x4(s9)
802017d6: 83 c9 9c 00  	lbu	s3, 0x9(s9)
802017da: 83 cd 8c 00  	lbu	s11, 0x8(s9)
802017de: 03 d9 ac 00  	lhu	s2, 0xa(s9)
802017e2: 93 f4 09 01  	andi	s1, s3, 0x10
802017e6: 13 f4 09 02  	andi	s0, s3, 0x20
802017ea: 6a d0        	sw	s10, 0x20(sp)
802017ec: 63 89 0d 04  	beqz	s11, 0x8020183e <.text+0x183e>
802017f0: 5a 85        	mv	a0, s6
802017f2: ee 85        	mv	a1, s11
802017f4: 97 10 00 00  	auipc	ra, 0x1
802017f8: e7 80 80 e3  	jalr	-0x1c8(ra) <.text+0x262c>
802017fc: 5a 85        	mv	a0, s6
802017fe: ee 85        	mv	a1, s11
80201800: 97 10 00 00  	auipc	ra, 0x1
80201804: e7 80 c0 e2  	jalr	-0x1d4(ra) <.text+0x262c>
80201808: 5a 85        	mv	a0, s6
8020180a: 97 00 00 00  	auipc	ra, 0x0
8020180e: e7 80 60 5e  	jalr	0x5e6(ra) <.text+0x1df0>
80201812: 63 93 04 4a  	bnez	s1, 0x80201cb8 <.text+0x1cb8>
80201816: 5a 85        	mv	a0, s6
80201818: ee 85        	mv	a1, s11
8020181a: 97 00 00 00  	auipc	ra, 0x0
8020181e: e7 80 80 a3  	jalr	-0x5c8(ra) <.text+0x1252>
80201822: 0d c0        	beqz	s0, 0x80201844 <.text+0x1844>
80201824: 5a 85        	mv	a0, s6
80201826: ee 85        	mv	a1, s11
80201828: 97 00 00 00  	auipc	ra, 0x0
8020182c: e7 80 a0 a2  	jalr	-0x5d6(ra) <.text+0x1252>
80201830: 5a 85        	mv	a0, s6
80201832: ee 85        	mv	a1, s11
80201834: 97 00 00 00  	auipc	ra, 0x0
80201838: e7 80 e0 a1  	jalr	-0x5e2(ra) <.text+0x1252>
8020183c: 15 a0        	j	0x80201860 <.text+0x1860>
8020183e: 63 9d 04 46  	bnez	s1, 0x80201cb8 <.text+0x1cb8>
80201842: 19 ec        	bnez	s0, 0x80201860 <.text+0x1860>
80201844: 5a 85        	mv	a0, s6
80201846: ee 85        	mv	a1, s11
80201848: 97 00 00 00  	auipc	ra, 0x0
8020184c: e7 80 a0 a0  	jalr	-0x5f6(ra) <.text+0x1252>
80201850: 5a 85        	mv	a0, s6
80201852: ee 85        	mv	a1, s11
80201854: 97 00 00 00  	auipc	ra, 0x0
80201858: e7 80 e0 9f  	jalr	-0x602(ra) <.text+0x1252>
8020185c: 5e 84        	mv	s0, s7
8020185e: 19 a0        	j	0x80201864 <.text+0x1864>
80201860: 13 f4 f9 00  	andi	s0, s3, 0xf
80201864: 33 0d 84 01  	add	s10, s0, s8
80201868: 33 25 8d 00  	slt	a0, s10, s0
8020186c: 93 25 0c 00  	slti	a1, s8, 0x0
80201870: 63 95 a5 48  	bne	a1, a0, 0x80201cfa <.text+0x1cfa>
80201874: 13 95 89 00  	slli	a0, s3, 0x8
80201878: 33 65 b5 01  	or	a0, a0, s11
8020187c: 13 14 09 01  	slli	s0, s2, 0x10
80201880: 49 8c        	or	s0, s0, a0
80201882: 5e 85        	mv	a0, s7
80201884: a2 85        	mv	a1, s0
80201886: 97 20 00 00  	auipc	ra, 0x2
8020188a: e7 80 80 fe  	jalr	-0x18(ra) <.text+0x386e>
8020188e: 05 89        	andi	a0, a0, 0x1
80201890: 59 c1        	beqz	a0, 0x80201916 <.text+0x1916>
80201892: 5a 85        	mv	a0, s6
80201894: 97 20 00 00  	auipc	ra, 0x2
80201898: e7 80 c0 13  	jalr	0x13c(ra) <.text+0x39d0>
8020189c: 2d cd        	beqz	a0, 0x80201916 <.text+0x1916>
8020189e: 5e 85        	mv	a0, s7
802018a0: da 85        	mv	a1, s6
802018a2: 22 86        	mv	a2, s0
802018a4: 97 30 00 00  	auipc	ra, 0x3
802018a8: e7 80 80 a1  	jalr	-0x5e8(ra) <.text+0x42bc>
802018ac: 85 89        	andi	a1, a1, 0x1
802018ae: 63 90 05 54  	bnez	a1, 0x80201dee <.text+0x1dee>
802018b2: a9 45        	li	a1, 0xa
802018b4: 63 c9 a5 01  	blt	a1, s10, 0x802018c6 <.text+0x18c6>
802018b8: ea 09        	slli	s3, s3, 0x1a
802018ba: 93 d5 f9 01  	srli	a1, s3, 0x1f
802018be: 33 25 85 01  	slt	a0, a0, s8
802018c2: 4d 8d        	or	a0, a0, a1
802018c4: 21 ed        	bnez	a0, 0x8020191c <.text+0x191c>
802018c6: 66 85        	mv	a0, s9
802018c8: 00 41        	lw	s0, 0x0(a0)
802018ca: 83 aa 4c 00  	lw	s5, 0x4(s9)
802018ce: 04 45        	lw	s1, 0x8(a0)
802018d0: 22 85        	mv	a0, s0
802018d2: d6 85        	mv	a1, s5
802018d4: 26 86        	mv	a2, s1
802018d6: 97 30 00 00  	auipc	ra, 0x3
802018da: e7 80 60 9e  	jalr	-0x61a(ra) <.text+0x42bc>
802018de: 85 89        	andi	a1, a1, 0x1
802018e0: 93 b5 15 00  	seqz	a1, a1
802018e4: 33 25 85 01  	slt	a0, a0, s8
802018e8: 13 45 15 00  	xori	a0, a0, 0x1
802018ec: 33 f9 a5 00  	and	s2, a1, a0
802018f0: 22 85        	mv	a0, s0
802018f2: a6 85        	mv	a1, s1
802018f4: 97 20 00 00  	auipc	ra, 0x2
802018f8: e7 80 a0 f7  	jalr	-0x86(ra) <.text+0x386e>
802018fc: 05 89        	andi	a0, a0, 0x1
802018fe: 41 c5        	beqz	a0, 0x80201986 <.text+0x1986>
80201900: 56 85        	mv	a0, s5
80201902: 97 20 00 00  	auipc	ra, 0x2
80201906: e7 80 e0 0c  	jalr	0xce(ra) <.text+0x39d0>
8020190a: 35 cd        	beqz	a0, 0x80201986 <.text+0x1986>
8020190c: a2 59        	lw	s3, 0x28(sp)
8020190e: 12 5b        	lw	s6, 0x24(sp)
80201910: 63 0f 09 06  	beqz	s2, 0x8020198e <.text+0x198e>
80201914: 7d a0        	j	0x802019c2 <.text+0x19c2>
80201916: 29 45        	li	a0, 0xa
80201918: e3 47 a5 fb  	blt	a0, s10, 0x802018c6 <.text+0x18c6>
8020191c: 68 11        	addi	a0, sp, 0xac
8020191e: 97 30 00 00  	auipc	ra, 0x3
80201922: e7 80 c0 8a  	jalr	-0x754(ra) <.text+0x41ca>
80201926: 68 11        	addi	a0, sp, 0xac
80201928: 97 30 00 00  	auipc	ra, 0x3
8020192c: e7 80 20 8a  	jalr	-0x75e(ra) <.text+0x41ca>
80201930: 68 11        	addi	a0, sp, 0xac
80201932: 97 30 00 00  	auipc	ra, 0x3
80201936: e7 80 80 89  	jalr	-0x768(ra) <.text+0x41ca>
8020193a: 5a 85        	mv	a0, s6
8020193c: ee 85        	mv	a1, s11
8020193e: 97 10 00 00  	auipc	ra, 0x1
80201942: e7 80 e0 ce  	jalr	-0x312(ra) <.text+0x262c>
80201946: 88 10        	addi	a0, sp, 0x60
80201948: de 85        	mv	a1, s7
8020194a: 5a 86        	mv	a2, s6
8020194c: a2 86        	mv	a3, s0
8020194e: 97 30 00 00  	auipc	ra, 0x3
80201952: e7 80 40 9a  	jalr	-0x65c(ra) <.text+0x42f2>
80201956: 16 55        	lw	a0, 0x64(sp)
80201958: 2a ce        	sw	a0, 0x1c(sp)
8020195a: 06 55        	lw	a0, 0x60(sp)
8020195c: 2a c8        	sw	a0, 0x10(sp)
8020195e: 36 55        	lw	a0, 0x6c(sp)
80201960: 2a ca        	sw	a0, 0x14(sp)
80201962: 26 55        	lw	a0, 0x68(sp)
80201964: 2a c6        	sw	a0, 0xc(sp)
80201966: 5a 85        	mv	a0, s6
80201968: ee 85        	mv	a1, s11
8020196a: 97 00 00 00  	auipc	ra, 0x0
8020196e: e7 80 80 8e  	jalr	-0x718(ra) <.text+0x1252>
80201972: ea 55        	lw	a1, 0xb8(sp)
80201974: 7a 55        	lw	a0, 0xbc(sp)
80201976: 63 cb 05 10  	bltz	a1, 0x80201a8c <.text+0x1a8c>
8020197a: 01 46        	li	a2, 0x0
8020197c: 32 5d        	lw	s10, 0x2c(sp)
8020197e: 63 4f 05 10  	bltz	a0, 0x80201a9c <.text+0x1a9c>
80201982: b2 86        	mv	a3, a2
80201984: 39 aa        	j	0x80201aa2 <.text+0x1aa2>
80201986: a2 59        	lw	s3, 0x28(sp)
80201988: 12 5b        	lw	s6, 0x24(sp)
8020198a: 63 16 09 02  	bnez	s2, 0x802019b6 <.text+0x19b6>
8020198e: 22 85        	mv	a0, s0
80201990: d6 85        	mv	a1, s5
80201992: 26 86        	mv	a2, s1
80201994: 97 30 00 00  	auipc	ra, 0x3
80201998: e7 80 00 22  	jalr	0x220(ra) <.text+0x4bb4>
8020199c: 85 89        	andi	a1, a1, 0x1
8020199e: fd 15        	addi	a1, a1, -0x1
802019a0: 6d 8d        	and	a0, a0, a1
802019a2: b7 05 00 40  	lui	a1, 0x40000
802019a6: aa 95        	add	a1, a1, a0
802019a8: 63 c3 05 42  	bltz	a1, 0x80201dce <.text+0x1dce>
802019ac: 06 05        	slli	a0, a0, 0x1
802019ae: 63 43 ad 00  	blt	s10, a0, 0x802019b4 <.text+0x19b4>
802019b2: 6a 85        	mv	a0, s10
802019b4: 2a 8d        	mv	s10, a0
802019b6: 6a 85        	mv	a0, s10
802019b8: e6 85        	mv	a1, s9
802019ba: 97 f0 ff ff  	auipc	ra, 0xfffff
802019be: e7 80 a0 5f  	jalr	0x5fa(ra)
802019c2: 32 54        	lw	s0, 0x2c(sp)
802019c4: 11 c4        	beqz	s0, 0x802019d0 <.text+0x19d0>
802019c6: 68 11        	addi	a0, sp, 0xac
802019c8: 97 30 00 00  	auipc	ra, 0x3
802019cc: e7 80 20 80  	jalr	-0x7fe(ra) <.text+0x41ca>
802019d0: 02 55        	lw	a0, 0x20(sp)
802019d2: f2 45        	lw	a1, 0x1c(sp)
802019d4: 63 94 05 32  	bnez	a1, 0x80201cfc <.text+0x1cfc>
802019d8: 93 74 f5 0f  	andi	s1, a0, 0xff
802019dc: 93 fb 04 02  	andi	s7, s1, 0x20
802019e0: 63 9f 0b 00  	bnez	s7, 0x802019fe <.text+0x19fe>
802019e4: 68 11        	addi	a0, sp, 0xac
802019e6: 97 20 00 00  	auipc	ra, 0x2
802019ea: e7 80 40 7e  	jalr	0x7e4(ra) <.text+0x41ca>
802019ee: 13 15 0b 01  	slli	a0, s6, 0x10
802019f2: 33 65 35 01  	or	a0, a0, s3
802019f6: 13 59 f5 01  	srli	s2, a0, 0x1f
802019fa: 01 ec        	bnez	s0, 0x80201a12 <.text+0x1a12>
802019fc: 05 a0        	j	0x80201a1c <.text+0x1a1c>
802019fe: 11 c4        	beqz	s0, 0x80201a0a <.text+0x1a0a>
80201a00: 68 11        	addi	a0, sp, 0xac
80201a02: 97 20 00 00  	auipc	ra, 0x2
80201a06: e7 80 80 7c  	jalr	0x7c8(ra) <.text+0x41ca>
80201a0a: e6 04        	slli	s1, s1, 0x19
80201a0c: 13 d9 f4 01  	srli	s2, s1, 0x1f
80201a10: 11 c4        	beqz	s0, 0x80201a1c <.text+0x1a1c>
80201a12: 52 85        	mv	a0, s4
80201a14: 97 00 00 00  	auipc	ra, 0x0
80201a18: e7 80 c0 3d  	jalr	0x3dc(ra) <.text+0x1df0>
80201a1c: ea 54        	lw	s1, 0xb8(sp)
80201a1e: fa 5a        	lw	s5, 0xbc(sp)
80201a20: 63 97 0b 02  	bnez	s7, 0x80201a4e <.text+0x1a4e>
80201a24: 68 11        	addi	a0, sp, 0xac
80201a26: 97 20 00 00  	auipc	ra, 0x2
80201a2a: e7 80 40 7a  	jalr	0x7a4(ra) <.text+0x41ca>
80201a2e: 13 f5 89 ff  	andi	a0, s3, -0x8
80201a32: 93 15 3b 01  	slli	a1, s6, 0x13
80201a36: 4d 8d        	or	a0, a0, a1
80201a38: 63 5c 05 38  	bgez	a0, 0x80201dd0 <.text+0x1dd0>
80201a3c: 11 c4        	beqz	s0, 0x80201a48 <.text+0x1a48>
80201a3e: 68 11        	addi	a0, sp, 0xac
80201a40: 97 20 00 00  	auipc	ra, 0x2
80201a44: e7 80 a0 78  	jalr	0x78a(ra) <.text+0x41ca>
80201a48: 13 05 4a 01  	addi	a0, s4, 0x14
80201a4c: 35 a0        	j	0x80201a78 <.text+0x1a78>
80201a4e: 09 45        	li	a0, 0x2
80201a50: 63 05 a4 00  	beq	s0, a0, 0x80201a5a <.text+0x1a5a>
80201a54: 05 45        	li	a0, 0x1
80201a56: 63 1c a4 00  	bne	s0, a0, 0x80201a6e <.text+0x1a6e>
80201a5a: 68 11        	addi	a0, sp, 0xac
80201a5c: 97 20 00 00  	auipc	ra, 0x2
80201a60: e7 80 e0 76  	jalr	0x76e(ra) <.text+0x41ca>
80201a64: 68 11        	addi	a0, sp, 0xac
80201a66: 97 20 00 00  	auipc	ra, 0x2
80201a6a: e7 80 40 76  	jalr	0x764(ra) <.text+0x41ca>
80201a6e: ce d9        	sw	s3, 0xf0(sp)
80201a70: d2 db        	sw	s4, 0xf4(sp)
80201a72: 82 df        	sw	zero, 0xfc(sp)
80201a74: da dd        	sw	s6, 0xf8(sp)
80201a76: 88 19        	addi	a0, sp, 0xf0
80201a78: 26 95        	add	a0, a0, s1
80201a7a: b3 85 9a 40  	sub	a1, s5, s1
80201a7e: 4a 86        	mv	a2, s2
80201a80: e6 86        	mv	a3, s9
80201a82: 97 30 00 00  	auipc	ra, 0x3
80201a86: e7 80 40 ce  	jalr	-0x31c(ra) <.text+0x4766>
80201a8a: e5 a2        	j	0x80201c72 <.text+0x1c72>
80201a8c: 93 c5 f5 ff  	not	a1, a1
80201a90: 7d 56        	li	a2, -0x1
80201a92: 32 5d        	lw	s10, 0x2c(sp)
80201a94: 63 44 05 00  	bltz	a0, 0x80201a9c <.text+0x1a9c>
80201a98: 81 46        	li	a3, 0x0
80201a9a: 21 a0        	j	0x80201aa2 <.text+0x1aa2>
80201a9c: 13 45 f5 ff  	not	a0, a0
80201aa0: fd 56        	li	a3, -0x1
80201aa2: 41 79        	lui	s2, 0xffff0
80201aa4: b1 8d        	xor	a1, a1, a2
80201aa6: 13 d7 05 01  	srli	a4, a1, 0x10
80201aaa: 42 06        	slli	a2, a2, 0x10
80201aac: b3 64 e6 00  	or	s1, a2, a4
80201ab0: c2 05        	slli	a1, a1, 0x10
80201ab2: 93 8b 15 00  	addi	s7, a1, 0x1
80201ab6: 35 8d        	xor	a0, a0, a3
80201ab8: 93 55 05 01  	srli	a1, a0, 0x10
80201abc: c2 06        	slli	a3, a3, 0x10
80201abe: 33 ec b6 00  	or	s8, a3, a1
80201ac2: 42 05        	slli	a0, a0, 0x10
80201ac4: 13 04 15 00  	addi	s0, a0, 0x1
80201ac8: 52 85        	mv	a0, s4
80201aca: d6 85        	mv	a1, s5
80201acc: 97 10 00 00  	auipc	ra, 0x1
80201ad0: e7 80 00 b6  	jalr	-0x4a0(ra) <.text+0x262c>
80201ad4: 88 08        	addi	a0, sp, 0x50
80201ad6: de 85        	mv	a1, s7
80201ad8: 26 86        	mv	a2, s1
80201ada: a2 86        	mv	a3, s0
80201adc: 62 87        	mv	a4, s8
80201ade: a2 54        	lw	s1, 0x28(sp)
80201ae0: a6 87        	mv	a5, s1
80201ae2: 52 88        	mv	a6, s4
80201ae4: d6 88        	mv	a7, s5
80201ae6: 97 20 00 00  	auipc	ra, 0x2
80201aea: e7 80 c0 27  	jalr	0x27c(ra) <.text+0x3d62>
80201aee: 46 45        	lw	a0, 0x50(sp)
80201af0: 56 44        	lw	s0, 0x54(sp)
80201af2: 66 4c        	lw	s8, 0x58(sp)
80201af4: f6 4b        	lw	s7, 0x5c(sp)
80201af6: b3 75 25 01  	and	a1, a0, s2
80201afa: 13 16 04 01  	slli	a2, s0, 0x10
80201afe: 41 82        	srli	a2, a2, 0x10
80201b00: d1 8d        	or	a1, a1, a2
80201b02: b3 35 b0 00  	snez	a1, a1
80201b06: fd 15        	addi	a1, a1, -0x1
80201b08: 8d 89        	andi	a1, a1, 0x3
80201b0a: b3 69 b5 00  	or	s3, a0, a1
80201b0e: a2 db        	sw	s0, 0xf4(sp)
80201b10: ce d9        	sw	s3, 0xf0(sp)
80201b12: de df        	sw	s7, 0xfc(sp)
80201b14: e2 dd        	sw	s8, 0xf8(sp)
80201b16: 23 20 91 10  	sw	s1, 0x100(sp)
80201b1a: 23 22 41 11  	sw	s4, 0x104(sp)
80201b1e: 23 04 51 11  	sb	s5, 0x108(sp)
80201b22: 02 55        	lw	a0, 0x20(sp)
80201b24: a3 04 a1 10  	sb	a0, 0x109(sp)
80201b28: 12 55        	lw	a0, 0x24(sp)
80201b2a: 23 15 a1 10  	sh	a0, 0x10a(sp)
80201b2e: 63 09 0d 02  	beqz	s10, 0x80201b60 <.text+0x1b60>
80201b32: 88 19        	addi	a0, sp, 0xf0
80201b34: 97 30 00 00  	auipc	ra, 0x3
80201b38: e7 80 80 02  	jalr	0x28(ra) <.text+0x4b5c>
80201b3c: 88 19        	addi	a0, sp, 0xf0
80201b3e: 97 30 00 00  	auipc	ra, 0x3
80201b42: e7 80 e0 01  	jalr	0x1e(ra) <.text+0x4b5c>
80201b46: 52 85        	mv	a0, s4
80201b48: 97 00 00 00  	auipc	ra, 0x0
80201b4c: e7 80 80 2a  	jalr	0x2a8(ra) <.text+0x1df0>
80201b50: 62 45        	lw	a0, 0x18(sp)
80201b52: 09 c9        	beqz	a0, 0x80201b64 <.text+0x1b64>
80201b54: 88 19        	addi	a0, sp, 0xf0
80201b56: 97 30 00 00  	auipc	ra, 0x3
80201b5a: e7 80 60 02  	jalr	0x26(ra) <.text+0x4b7c>
80201b5e: 11 a8        	j	0x80201b72 <.text+0x1b72>
80201b60: 62 45        	lw	a0, 0x18(sp)
80201b62: 01 e9        	bnez	a0, 0x80201b72 <.text+0x1b72>
80201b64: 88 19        	addi	a0, sp, 0xf0
80201b66: 97 30 00 00  	auipc	ra, 0x3
80201b6a: e7 80 60 01  	jalr	0x16(ra) <.text+0x4b7c>
80201b6e: 22 5d        	lw	s10, 0x28(sp)
80201b70: 21 a0        	j	0x80201b78 <.text+0x1b78>
80201b72: 02 55        	lw	a0, 0x20(sp)
80201b74: 13 7d f5 00  	andi	s10, a0, 0xf
80201b78: c1 64        	lui	s1, 0x10
80201b7a: fd 14        	addi	s1, s1, -0x1
80201b7c: 32 55        	lw	a0, 0x2c(sp)
80201b7e: 11 c5        	beqz	a0, 0x80201b8a <.text+0x1b8a>
80201b80: 88 19        	addi	a0, sp, 0xf0
80201b82: 97 30 00 00  	auipc	ra, 0x3
80201b86: e7 80 a0 ff  	jalr	-0x6(ra) <.text+0x4b7c>
80201b8a: 33 f5 29 01  	and	a0, s3, s2
80201b8e: 65 8c        	and	s0, s0, s1
80201b90: 93 55 0c 01  	srli	a1, s8, 0x10
80201b94: c2 0b        	slli	s7, s7, 0x10
80201b96: b3 e5 75 01  	or	a1, a1, s7
80201b9a: b3 45 bd 00  	xor	a1, s10, a1
80201b9e: c1 8d        	or	a1, a1, s0
80201ba0: 4d 8d        	or	a0, a0, a1
80201ba2: 05 c1        	beqz	a0, 0x80201bc2 <.text+0x1bc2>
80201ba4: 88 19        	addi	a0, sp, 0xf0
80201ba6: 97 30 00 00  	auipc	ra, 0x3
80201baa: e7 80 60 fd  	jalr	-0x2a(ra) <.text+0x4b7c>
80201bae: 88 00        	addi	a0, sp, 0x40
80201bb0: 8c 19        	addi	a1, sp, 0xf0
80201bb2: 97 30 00 00  	auipc	ra, 0x3
80201bb6: e7 80 20 03  	jalr	0x32(ra) <.text+0x4be4>
80201bba: 06 45        	lw	a0, 0x40(sp)
80201bbc: 2a d4        	sw	a0, 0x28(sp)
80201bbe: 16 4a        	lw	s4, 0x44(sp)
80201bc0: a6 4a        	lw	s5, 0x48(sp)
80201bc2: 68 11        	addi	a0, sp, 0xac
80201bc4: 97 20 00 00  	auipc	ra, 0x2
80201bc8: e7 80 60 60  	jalr	0x606(ra) <.text+0x41ca>
80201bcc: 08 18        	addi	a0, sp, 0x30
80201bce: a2 55        	lw	a1, 0x28(sp)
80201bd0: 52 86        	mv	a2, s4
80201bd2: d6 86        	mv	a3, s5
80201bd4: 97 20 00 00  	auipc	ra, 0x2
80201bd8: e7 80 e0 71  	jalr	0x71e(ra) <.text+0x42f2>
80201bdc: 72 59        	lw	s2, 0x3c(sp)
80201bde: e2 59        	lw	s3, 0x38(sp)
80201be0: 52 54        	lw	s0, 0x34(sp)
80201be2: c2 54        	lw	s1, 0x30(sp)
80201be4: 52 85        	mv	a0, s4
80201be6: d6 85        	mv	a1, s5
80201be8: 97 f0 ff ff  	auipc	ra, 0xfffff
80201bec: e7 80 a0 66  	jalr	0x66a(ra)
80201bf0: 88 01        	addi	a0, sp, 0xc0
80201bf2: c2 45        	lw	a1, 0x10(sp)
80201bf4: 72 46        	lw	a2, 0x1c(sp)
80201bf6: b2 46        	lw	a3, 0xc(sp)
80201bf8: 52 47        	lw	a4, 0x14(sp)
80201bfa: a6 87        	mv	a5, s1
80201bfc: 22 88        	mv	a6, s0
80201bfe: ce 88        	mv	a7, s3
80201c00: ca 83        	mv	t2, s2
80201c02: 97 20 00 00  	auipc	ra, 0x2
80201c06: e7 80 20 01  	jalr	0x12(ra) <.text+0x3c14>
80201c0a: 88 01        	addi	a0, sp, 0xc0
80201c0c: ac 09        	addi	a1, sp, 0xd8
80201c0e: 97 20 00 00  	auipc	ra, 0x2
80201c12: e7 80 40 12  	jalr	0x124(ra) <.text+0x3d32>
80201c16: 03 45 81 0e  	lbu	a0, 0xe8(sp)
80201c1a: 63 19 05 1c  	bnez	a0, 0x80201dec <.text+0x1dec>
80201c1e: 7e 44        	lw	s0, 0xdc(sp)
80201c20: ee 44        	lw	s1, 0xd8(sp)
80201c22: 0e 59        	lw	s2, 0xe0(sp)
80201c24: 83 49 71 0e  	lbu	s3, 0xe7(sp)
80201c28: 5a 85        	mv	a0, s6
80201c2a: ee 85        	mv	a1, s11
80201c2c: 97 f0 ff ff  	auipc	ra, 0xfffff
80201c30: e7 80 60 62  	jalr	0x626(ra)
80201c34: 66 85        	mv	a0, s9
80201c36: 04 c1        	sw	s1, 0x0(a0)
80201c38: 40 c1        	sw	s0, 0x4(a0)
80201c3a: 23 84 0c 00  	sb	zero, 0x8(s9)
80201c3e: a3 84 3c 01  	sb	s3, 0x9(s9)
80201c42: 23 95 2c 01  	sh	s2, 0xa(s9)
80201c46: 35 a0        	j	0x80201c72 <.text+0x1c72>
80201c48: 7a 49        	lw	s2, 0x9c(sp)
80201c4a: 6a 44        	lw	s0, 0x98(sp)
80201c4c: 8a 59        	lw	s3, 0xa0(sp)
80201c4e: 03 4a 71 0a  	lbu	s4, 0xa7(sp)
80201c52: 5e 85        	mv	a0, s7
80201c54: da 85        	mv	a1, s6
80201c56: 97 f0 ff ff  	auipc	ra, 0xfffff
80201c5a: e7 80 c0 5f  	jalr	0x5fc(ra)
80201c5e: 23 a0 8c 00  	sw	s0, 0x0(s9)
80201c62: 23 a2 2c 01  	sw	s2, 0x4(s9)
80201c66: 23 84 0c 00  	sb	zero, 0x8(s9)
80201c6a: a3 84 4c 01  	sb	s4, 0x9(s9)
80201c6e: 23 95 3c 01  	sh	s3, 0xa(s9)
80201c72: 08 02        	addi	a0, sp, 0x100
80201c74: 83 20 c5 05  	lw	ra, 0x5c(a0)
80201c78: 20 4d        	lw	s0, 0x58(a0)
80201c7a: 64 49        	lw	s1, 0x54(a0)
80201c7c: 03 29 05 05  	lw	s2, 0x50(a0)
80201c80: 83 29 c5 04  	lw	s3, 0x4c(a0)
80201c84: 03 2a 85 04  	lw	s4, 0x48(a0)
80201c88: 83 2a 45 04  	lw	s5, 0x44(a0)
80201c8c: 03 2b 05 04  	lw	s6, 0x40(a0)
80201c90: 83 2b c5 03  	lw	s7, 0x3c(a0)
80201c94: 03 2c 85 03  	lw	s8, 0x38(a0)
80201c98: 83 2c 45 03  	lw	s9, 0x34(a0)
80201c9c: 03 2d 05 03  	lw	s10, 0x30(a0)
80201ca0: 83 2d c5 02  	lw	s11, 0x2c(a0)
80201ca4: 35 61        	addi	sp, sp, 0x160
80201ca6: 82 80        	ret
80201ca8: 63 cb 05 06  	bltz	a1, 0x80201d1e <.text+0x1d1e>
80201cac: 01 46        	li	a2, 0x0
80201cae: 63 4f 05 06  	bltz	a0, 0x80201d2c <.text+0x1d2c>
80201cb2: b2 86        	mv	a3, a2
80201cb4: bd a8        	j	0x80201d32 <.text+0x1d32>
80201cb6: 00 00        	unimp
80201cb8: 5a 85        	mv	a0, s6
80201cba: ee 85        	mv	a1, s11
80201cbc: 97 f0 ff ff  	auipc	ra, 0xfffff
80201cc0: e7 80 60 59  	jalr	0x596(ra)
80201cc4: 5a 85        	mv	a0, s6
80201cc6: ee 85        	mv	a1, s11
80201cc8: 97 f0 ff ff  	auipc	ra, 0xfffff
80201ccc: e7 80 a0 58  	jalr	0x58a(ra)
80201cd0: 13 95 89 00  	slli	a0, s3, 0x8
80201cd4: 33 65 b5 01  	or	a0, a0, s11
80201cd8: 13 16 09 01  	slli	a2, s2, 0x10
80201cdc: 49 8e        	or	a2, a2, a0
80201cde: 5e 85        	mv	a0, s7
80201ce0: da 85        	mv	a1, s6
80201ce2: 97 20 00 00  	auipc	ra, 0x2
80201ce6: e7 80 80 50  	jalr	0x508(ra) <.text+0x41ea>
80201cea: 2a 84        	mv	s0, a0
80201cec: 5a 85        	mv	a0, s6
80201cee: ee 85        	mv	a1, s11
80201cf0: 97 f0 ff ff  	auipc	ra, 0xfffff
80201cf4: e7 80 20 56  	jalr	0x562(ra)
80201cf8: b5 b6        	j	0x80201864 <.text+0x1864>
80201cfa: 00 00        	unimp
80201cfc: 68 11        	addi	a0, sp, 0xac
80201cfe: 97 20 00 00  	auipc	ra, 0x2
80201d02: e7 80 c0 4c  	jalr	0x4cc(ra) <.text+0x41ca>
80201d06: 68 11        	addi	a0, sp, 0xac
80201d08: 97 20 00 00  	auipc	ra, 0x2
80201d0c: e7 80 20 4c  	jalr	0x4c2(ra) <.text+0x41ca>
80201d10: 68 11        	addi	a0, sp, 0xac
80201d12: e6 85        	mv	a1, s9
80201d14: 97 20 00 00  	auipc	ra, 0x2
80201d18: e7 80 80 7d  	jalr	0x7d8(ra) <.text+0x44ec>
80201d1c: 99 bf        	j	0x80201c72 <.text+0x1c72>
80201d1e: 93 c5 f5 ff  	not	a1, a1
80201d22: 7d 56        	li	a2, -0x1
80201d24: 63 44 05 00  	bltz	a0, 0x80201d2c <.text+0x1d2c>
80201d28: 81 46        	li	a3, 0x0
80201d2a: 21 a0        	j	0x80201d32 <.text+0x1d32>
80201d2c: 13 45 f5 ff  	not	a0, a0
80201d30: fd 56        	li	a3, -0x1
80201d32: b1 8d        	xor	a1, a1, a2
80201d34: 13 d7 05 01  	srli	a4, a1, 0x10
80201d38: 42 06        	slli	a2, a2, 0x10
80201d3a: 33 6b e6 00  	or	s6, a2, a4
80201d3e: c2 05        	slli	a1, a1, 0x10
80201d40: 93 8b 15 00  	addi	s7, a1, 0x1
80201d44: 35 8d        	xor	a0, a0, a3
80201d46: 93 55 05 01  	srli	a1, a0, 0x10
80201d4a: c2 06        	slli	a3, a3, 0x10
80201d4c: 33 e9 b6 00  	or	s2, a3, a1
80201d50: 42 05        	slli	a0, a0, 0x10
80201d52: 13 04 15 00  	addi	s0, a0, 0x1
80201d56: 52 85        	mv	a0, s4
80201d58: d6 85        	mv	a1, s5
80201d5a: 97 10 00 00  	auipc	ra, 0x1
80201d5e: e7 80 20 8d  	jalr	-0x72e(ra) <.text+0x262c>
80201d62: 88 18        	addi	a0, sp, 0x70
80201d64: de 85        	mv	a1, s7
80201d66: 5a 86        	mv	a2, s6
80201d68: a2 86        	mv	a3, s0
80201d6a: 4a 87        	mv	a4, s2
80201d6c: ee 87        	mv	a5, s11
80201d6e: 52 88        	mv	a6, s4
80201d70: d6 88        	mv	a7, s5
80201d72: 97 20 00 00  	auipc	ra, 0x2
80201d76: e7 80 00 ff  	jalr	-0x10(ra) <.text+0x3d62>
80201d7a: 66 56        	lw	a2, 0x78(sp)
80201d7c: 46 55        	lw	a0, 0x70(sp)
80201d7e: d6 55        	lw	a1, 0x74(sp)
80201d80: f6 56        	lw	a3, 0x7c(sp)
80201d82: 41 77        	lui	a4, 0xffff0
80201d84: 69 8f        	and	a4, a4, a0
80201d86: 93 97 05 01  	slli	a5, a1, 0x10
80201d8a: c1 83        	srli	a5, a5, 0x10
80201d8c: 5d 8f        	or	a4, a4, a5
80201d8e: 33 37 e0 00  	snez	a4, a4
80201d92: 7d 17        	addi	a4, a4, -0x1
80201d94: 0d 8b        	andi	a4, a4, 0x3
80201d96: 59 8d        	or	a0, a0, a4
80201d98: 18 02        	addi	a4, sp, 0x100
80201d9a: 4c cb        	sw	a1, 0x14(a4)
80201d9c: 08 cb        	sw	a0, 0x10(a4)
80201d9e: 54 cf        	sw	a3, 0x1c(a4)
80201da0: 10 cf        	sw	a2, 0x18(a4)
80201da2: 23 20 b7 03  	sw	s11, 0x20(a4)
80201da6: 23 22 47 03  	sw	s4, 0x24(a4)
80201daa: 23 04 51 13  	sb	s5, 0x128(sp)
80201dae: a3 04 a1 13  	sb	s10, 0x129(sp)
80201db2: 23 15 81 13  	sh	s8, 0x12a(sp)
80201db6: 18 0a        	addi	a4, sp, 0x110
80201db8: 97 20 00 00  	auipc	ra, 0x2
80201dbc: e7 80 00 24  	jalr	0x240(ra) <.text+0x3ff8>
80201dc0: 2a 8c        	mv	s8, a0
80201dc2: 68 11        	addi	a0, sp, 0xac
80201dc4: 97 20 00 00  	auipc	ra, 0x2
80201dc8: e7 80 60 40  	jalr	0x406(ra) <.text+0x41ca>
80201dcc: f5 ba        	j	0x802017c8 <.text+0x17c8>
80201dce: 00 00        	unimp
80201dd0: 68 11        	addi	a0, sp, 0xac
80201dd2: 97 20 00 00  	auipc	ra, 0x2
80201dd6: e7 80 80 3f  	jalr	0x3f8(ra) <.text+0x41ca>
80201dda: 4e 85        	mv	a0, s3
80201ddc: d2 85        	mv	a1, s4
80201dde: 97 00 00 00  	auipc	ra, 0x0
80201de2: e7 80 a0 01  	jalr	0x1a(ra) <.text+0x1df8>
80201de6: e3 19 05 c8  	bnez	a0, 0x80201a78 <.text+0x1a78>
80201dea: 41 b9        	j	0x80201a7a <.text+0x1a7a>
80201dec: 00 00        	unimp
80201dee: 00 00        	unimp
80201df0: 17 03 00 00  	auipc	t1, 0x0
80201df4: 67 00 83 60  	jr	0x608(t1) <.text+0x23f8>
80201df8: 41 11        	addi	sp, sp, -0x10
80201dfa: 06 c6        	sw	ra, 0xc(sp)
80201dfc: 22 c4        	sw	s0, 0x8(sp)
80201dfe: 2a 84        	mv	s0, a0
80201e00: 2e 85        	mv	a0, a1
80201e02: 97 00 00 00  	auipc	ra, 0x0
80201e06: e7 80 20 5f  	jalr	0x5f2(ra) <.text+0x23f4>
80201e0a: a2 85        	mv	a1, s0
80201e0c: b2 40        	lw	ra, 0xc(sp)
80201e0e: 22 44        	lw	s0, 0x8(sp)
80201e10: 41 01        	addi	sp, sp, 0x10
80201e12: 82 80        	ret
80201e14: 97 42 00 00  	auipc	t0, 0x4
80201e18: e7 82 82 59  	jalr	t0, 0x598(t0) <.text+0x63ac>
80201e1c: 6e d6        	sw	s11, 0x2c(sp)
80201e1e: 2a 84        	mv	s0, a0
80201e20: 37 95 b0 00  	lui	a0, 0xb09
80201e24: 09 15        	addi	a0, a0, -0x1e
80201e26: 2a ce        	sw	a0, 0x1c(sp)
80201e28: 37 a5 98 80  	lui	a0, 0x8098a
80201e2c: 41 15        	addi	a0, a0, -0x10
80201e2e: 2a cc        	sw	a0, 0x18(sp)
80201e30: 02 d2        	sw	zero, 0x24(sp)
80201e32: 99 44        	li	s1, 0x6
80201e34: 02 d0        	sw	zero, 0x20(sp)
80201e36: 63 c0 84 36  	blt	s1, s0, 0x80202196 <.text+0x2196>
80201e3a: 28 08        	addi	a0, sp, 0x18
80201e3c: a2 85        	mv	a1, s0
80201e3e: 97 00 00 00  	auipc	ra, 0x0
80201e42: e7 80 a0 35  	jalr	0x35a(ra) <.text+0x2198>
80201e46: 22 c6        	sw	s0, 0xc(sp)
80201e48: 2e 94        	add	s0, s0, a1
80201e4a: 63 cc 84 32  	blt	s1, s0, 0x80202182 <.text+0x2182>
80201e4e: aa 89        	mv	s3, a0
80201e50: 02 c8        	sw	zero, 0x10(sp)
80201e52: 01 4c        	li	s8, 0x0
80201e54: 81 4a        	li	s5, 0x0
80201e56: 02 c2        	sw	zero, 0x4(sp)
80201e58: 81 4b        	li	s7, 0x0
80201e5a: 81 4d        	li	s11, 0x0
80201e5c: 01 4a        	li	s4, 0x0
80201e5e: 37 f5 20 80  	lui	a0, 0x8020f
80201e62: 13 05 05 9a  	addi	a0, a0, -0x660
80201e66: 2a ca        	sw	a0, 0x14(sp)
80201e68: 05 65        	lui	a0, 0x1
80201e6a: 13 05 05 ce  	addi	a0, a0, -0x320
80201e6e: 2a c4        	sw	a0, 0x8(sp)
80201e70: ce 84        	mv	s1, s3
80201e72: 28 08        	addi	a0, sp, 0x18
80201e74: 22 95        	add	a0, a0, s0
80201e76: 83 49 05 00  	lbu	s3, 0x0(a0)
80201e7a: 93 95 89 01  	slli	a1, s3, 0x18
80201e7e: 63 c9 05 08  	bltz	a1, 0x80201f10 <.text+0x1f10>
80201e82: 05 4d        	li	s10, 0x1
80201e84: 13 c5 d4 00  	xori	a0, s1, 0xd
80201e88: 93 c5 a9 00  	xori	a1, s3, 0xa
80201e8c: 4d 8d        	or	a0, a0, a1
80201e8e: 19 e5        	bnez	a0, 0x80201e9c <.text+0x1e9c>
80201e90: 62 85        	mv	a0, s8
80201e92: d6 8c        	mv	s9, s5
80201e94: de 85        	mv	a1, s7
80201e96: 6e 86        	mv	a2, s11
80201e98: d2 86        	mv	a3, s4
80201e9a: d9 ac        	j	0x80202170 <.text+0x2170>
80201e9c: 26 85        	mv	a0, s1
80201e9e: 97 00 00 00  	auipc	ra, 0x0
80201ea2: e7 80 20 3c  	jalr	0x3c2(ra) <.text+0x2260>
80201ea6: 05 89        	andi	a0, a0, 0x1
80201ea8: 09 c9        	beqz	a0, 0x80201eba <.text+0x1eba>
80201eaa: 4e 85        	mv	a0, s3
80201eac: 97 00 00 00  	auipc	ra, 0x0
80201eb0: e7 80 40 3b  	jalr	0x3b4(ra) <.text+0x2260>
80201eb4: 05 89        	andi	a0, a0, 0x1
80201eb6: 63 16 05 2c  	bnez	a0, 0x80202182 <.text+0x2182>
80201eba: 26 85        	mv	a0, s1
80201ebc: 97 00 00 00  	auipc	ra, 0x0
80201ec0: e7 80 20 44  	jalr	0x442(ra) <.text+0x22fe>
80201ec4: 13 79 f5 0f  	andi	s2, a0, 0xff
80201ec8: 05 45        	li	a0, 0x1
80201eca: 63 0c a9 2a  	beq	s2, a0, 0x80202182 <.text+0x2182>
80201ece: 4e 85        	mv	a0, s3
80201ed0: 97 00 00 00  	auipc	ra, 0x0
80201ed4: e7 80 e0 42  	jalr	0x42e(ra) <.text+0x22fe>
80201ed8: 13 7b f5 0f  	andi	s6, a0, 0xff
80201edc: 31 45        	li	a0, 0xc
80201ede: 63 6a 65 13  	bltu	a0, s6, 0x80202012 <.text+0x2012>
80201ee2: 13 15 2b 00  	slli	a0, s6, 0x2
80201ee6: d2 45        	lw	a1, 0x14(sp)
80201ee8: 2e 95        	add	a0, a0, a1
80201eea: 18 41        	lw	a4, 0x0(a0)
80201eec: 01 45        	li	a0, 0x0
80201eee: 81 4c        	li	s9, 0x0
80201ef0: 81 45        	li	a1, 0x0
80201ef2: 01 46        	li	a2, 0x0
80201ef4: 81 46        	li	a3, 0x0
80201ef6: 02 87        	jr	a4
80201ef8: 01 45        	li	a0, 0x0
80201efa: 91 45        	li	a1, 0x4
80201efc: 63 05 b9 00  	beq	s2, a1, 0x80201f06 <.text+0x1f06>
80201f00: 9d 45        	li	a1, 0x7
80201f02: 63 1b b9 1c  	bne	s2, a1, 0x802020d8 <.text+0x20d8>
80201f06: aa 8c        	mv	s9, a0
80201f08: aa 85        	mv	a1, a0
80201f0a: 2a 86        	mv	a2, a0
80201f0c: aa 86        	mv	a3, a0
80201f0e: 8d a4        	j	0x80202170 <.text+0x2170>
80201f10: e1 85        	srai	a1, a1, 0x18
80201f12: 7d 56        	li	a2, -0x1
80201f14: 63 82 c5 04  	beq	a1, a2, 0x80201f58 <.text+0x1f58>
80201f18: 13 c6 f5 ff  	not	a2, a1
80201f1c: 93 16 86 01  	slli	a3, a2, 0x18
80201f20: e5 82        	srli	a3, a3, 0x19
80201f22: 55 8e        	or	a2, a2, a3
80201f24: 93 16 86 01  	slli	a3, a2, 0x18
80201f28: e9 82        	srli	a3, a3, 0x1a
80201f2a: 55 8e        	or	a2, a2, a3
80201f2c: 93 16 86 01  	slli	a3, a2, 0x18
80201f30: f1 82        	srli	a3, a3, 0x1c
80201f32: 55 8e        	or	a2, a2, a3
80201f34: 13 46 f6 ff  	not	a2, a2
80201f38: 93 56 16 00  	srli	a3, a2, 0x1
80201f3c: 93 f6 56 05  	andi	a3, a3, 0x55
80201f40: 15 8e        	sub	a2, a2, a3
80201f42: 93 76 36 03  	andi	a3, a2, 0x33
80201f46: 09 82        	srli	a2, a2, 0x2
80201f48: 13 76 36 03  	andi	a2, a2, 0x33
80201f4c: 36 96        	add	a2, a2, a3
80201f4e: 93 56 46 00  	srli	a3, a2, 0x4
80201f52: 36 96        	add	a2, a2, a3
80201f54: 3d 8a        	andi	a2, a2, 0xf
80201f56: 11 a0        	j	0x80201f5a <.text+0x1f5a>
80201f58: 21 46        	li	a2, 0x8
80201f5a: 85 46        	li	a3, 0x1
80201f5c: e3 03 d6 f2  	beq	a2, a3, 0x80201e82 <.text+0x1e82>
80201f60: 89 46        	li	a3, 0x2
80201f62: 63 03 d6 06  	beq	a2, a3, 0x80201fc8 <.text+0x1fc8>
80201f66: bd 89        	andi	a1, a1, 0xf
80201f68: 8d 46        	li	a3, 0x3
80201f6a: 63 19 d6 06  	bne	a2, a3, 0x80201fdc <.text+0x1fdc>
80201f6e: 03 46 15 00  	lbu	a2, 0x1(a0)
80201f72: 03 45 25 00  	lbu	a0, 0x2(a0)
80201f76: b2 05        	slli	a1, a1, 0xc
80201f78: 13 76 f6 03  	andi	a2, a2, 0x3f
80201f7c: 1a 06        	slli	a2, a2, 0x6
80201f7e: 13 75 f5 03  	andi	a0, a0, 0x3f
80201f82: 51 8d        	or	a0, a0, a2
80201f84: b3 69 b5 00  	or	s3, a0, a1
80201f88: 0d 4d        	li	s10, 0x3
80201f8a: ed bd        	j	0x80201e84 <.text+0x1e84>
80201f8c: 13 05 d9 ff  	addi	a0, s2, -0x3
80201f90: 13 35 15 00  	seqz	a0, a0
80201f94: 79 19        	addi	s2, s2, -0x2
80201f96: 93 35 19 00  	seqz	a1, s2
80201f9a: b3 f5 45 01  	and	a1, a1, s4
80201f9e: b3 6c b5 00  	or	s9, a0, a1
80201fa2: 13 8a 09 80  	addi	s4, s3, -0x800
80201fa6: 63 8f 0c 0a  	beqz	s9, 0x80202064 <.text+0x2064>
80201faa: 13 f5 1b 00  	andi	a0, s7, 0x1
80201fae: 71 c9        	beqz	a0, 0x80202082 <.text+0x2082>
80201fb0: 09 45        	li	a0, 0x2
80201fb2: 63 19 ab 0e  	bne	s6, a0, 0x802020a4 <.text+0x20a4>
80201fb6: 85 4c        	li	s9, 0x1
80201fb8: 13 05 00 30  	li	a0, 0x300
80201fbc: 63 fc a9 16  	bgeu	s3, a0, 0x80202134 <.text+0x2134>
80201fc0: 01 45        	li	a0, 0x0
80201fc2: 81 45        	li	a1, 0x0
80201fc4: 01 46        	li	a2, 0x0
80201fc6: 85 a2        	j	0x80202126 <.text+0x2126>
80201fc8: 03 45 15 00  	lbu	a0, 0x1(a0)
80201fcc: fd 89        	andi	a1, a1, 0x1f
80201fce: 9a 05        	slli	a1, a1, 0x6
80201fd0: 13 75 f5 03  	andi	a0, a0, 0x3f
80201fd4: b3 e9 a5 00  	or	s3, a1, a0
80201fd8: 09 4d        	li	s10, 0x2
80201fda: 6d b5        	j	0x80201e84 <.text+0x1e84>
80201fdc: 03 46 15 00  	lbu	a2, 0x1(a0)
80201fe0: 83 46 25 00  	lbu	a3, 0x2(a0)
80201fe4: 03 45 35 00  	lbu	a0, 0x3(a0)
80201fe8: ca 05        	slli	a1, a1, 0x12
80201fea: 13 76 f6 03  	andi	a2, a2, 0x3f
80201fee: 32 06        	slli	a2, a2, 0xc
80201ff0: 93 f6 f6 03  	andi	a3, a3, 0x3f
80201ff4: 9a 06        	slli	a3, a3, 0x6
80201ff6: 55 8e        	or	a2, a2, a3
80201ff8: 13 75 f5 03  	andi	a0, a0, 0x3f
80201ffc: 51 8d        	or	a0, a0, a2
80201ffe: b3 69 b5 00  	or	s3, a0, a1
80202002: 11 4d        	li	s10, 0x4
80202004: 41 b5        	j	0x80201e84 <.text+0x1e84>
80202006: 1d 45        	li	a0, 0x7
80202008: 63 04 a9 0e  	beq	s2, a0, 0x802020f0 <.text+0x20f0>
8020200c: 63 16 09 0c  	bnez	s2, 0x802020d8 <.text+0x20d8>
80202010: 8d aa        	j	0x80202182 <.text+0x2182>
80202012: 1d 45        	li	a0, 0x7
80202014: 63 0e a9 0c  	beq	s2, a0, 0x802020f0 <.text+0x20f0>
80202018: 31 45        	li	a0, 0xc
8020201a: 63 08 a9 0a  	beq	s2, a0, 0x802020ca <.text+0x20ca>
8020201e: 21 45        	li	a0, 0x8
80202020: 63 1c a9 0a  	bne	s2, a0, 0x802020d8 <.text+0x20d8>
80202024: 21 45        	li	a0, 0x8
80202026: 63 19 ab 0a  	bne	s6, a0, 0x802020d8 <.text+0x20d8>
8020202a: 12 47        	lw	a4, 0x4(sp)
8020202c: 13 75 17 00  	andi	a0, a4, 0x1
80202030: 63 19 05 14  	bnez	a0, 0x80202182 <.text+0x2182>
80202034: 81 4c        	li	s9, 0x0
80202036: 81 45        	li	a1, 0x0
80202038: 01 46        	li	a2, 0x0
8020203a: 81 46        	li	a3, 0x0
8020203c: 13 47 17 00  	xori	a4, a4, 0x1
80202040: 3a c2        	sw	a4, 0x4(sp)
80202042: 3d a2        	j	0x80202170 <.text+0x2170>
80202044: 2d 45        	li	a0, 0xb
80202046: 63 69 25 09  	bltu	a0, s2, 0x802020d8 <.text+0x20d8>
8020204a: 22 45        	lw	a0, 0x8(sp)
8020204c: 39 a0        	j	0x8020205a <.text+0x205a>
8020204e: 2d 45        	li	a0, 0xb
80202050: 63 64 25 09  	bltu	a0, s2, 0x802020d8 <.text+0x20d8>
80202054: 05 65        	lui	a0, 0x1
80202056: 13 05 05 8b  	addi	a0, a0, -0x750
8020205a: 33 55 25 01  	srl	a0, a0, s2
8020205e: 05 89        	andi	a0, a0, 0x1
80202060: 41 e9        	bnez	a0, 0x802020f0 <.text+0x20f0>
80202062: 9d a8        	j	0x802020d8 <.text+0x20d8>
80202064: 13 f5 1d 00  	andi	a0, s11, 0x1
80202068: 09 cd        	beqz	a0, 0x80202082 <.text+0x2082>
8020206a: 09 45        	li	a0, 0x2
8020206c: 63 18 ab 08  	bne	s6, a0, 0x802020fc <.text+0x20fc>
80202070: 81 4c        	li	s9, 0x0
80202072: 13 05 00 30  	li	a0, 0x300
80202076: 63 ff a9 0a  	bgeu	s3, a0, 0x80202134 <.text+0x2134>
8020207a: 66 85        	mv	a0, s9
8020207c: e6 85        	mv	a1, s9
8020207e: 66 86        	mv	a2, s9
80202080: fd a0        	j	0x8020216e <.text+0x216e>
80202082: 26 85        	mv	a0, s1
80202084: 97 e0 ff ff  	auipc	ra, 0xffffe
80202088: e7 80 e0 fd  	jalr	-0x22(ra)
8020208c: 09 c9        	beqz	a0, 0x8020209e <.text+0x209e>
8020208e: 09 45        	li	a0, 0x2
80202090: 63 1a ab 0a  	bne	s6, a0, 0x80202144 <.text+0x2144>
80202094: 13 05 00 30  	li	a0, 0x300
80202098: 63 fe a9 08  	bgeu	s3, a0, 0x80202134 <.text+0x2134>
8020209c: 01 45        	li	a0, 0x0
8020209e: 81 45        	li	a1, 0x0
802020a0: 01 46        	li	a2, 0x0
802020a2: f1 a0        	j	0x8020216e <.text+0x216e>
802020a4: 13 05 3a eb  	addi	a0, s4, -0x14d
802020a8: 93 55 75 00  	srli	a1, a0, 0x7
802020ac: 66 05        	slli	a0, a0, 0x19
802020ae: c9 8d        	or	a1, a1, a0
802020b0: 05 45        	li	a0, 0x1
802020b2: 25 46        	li	a2, 0x9
802020b4: 63 f6 c5 06  	bgeu	a1, a2, 0x80202120 <.text+0x2120>
802020b8: 13 05 b0 15  	li	a0, 0x15b
802020bc: 33 55 b5 00  	srl	a0, a0, a1
802020c0: 05 89        	andi	a0, a0, 0x1
802020c2: 85 4c        	li	s9, 0x1
802020c4: 45 e1        	bnez	a0, 0x80202164 <.text+0x2164>
802020c6: 05 45        	li	a0, 0x1
802020c8: a9 a8        	j	0x80202122 <.text+0x2122>
802020ca: 0d 45        	li	a0, 0x3
802020cc: 63 16 ab 00  	bne	s6, a0, 0x802020d8 <.text+0x20d8>
802020d0: 13 f5 1a 00  	andi	a0, s5, 0x1
802020d4: 11 ed        	bnez	a0, 0x802020f0 <.text+0x20f0>
802020d6: 75 a0        	j	0x80202182 <.text+0x2182>
802020d8: 42 45        	lw	a0, 0x10(sp)
802020da: 33 75 ac 00  	and	a0, s8, a0
802020de: 05 89        	andi	a0, a0, 0x1
802020e0: 4d c1        	beqz	a0, 0x80202182 <.text+0x2182>
802020e2: 4e 85        	mv	a0, s3
802020e4: 97 e0 ff ff  	auipc	ra, 0xffffe
802020e8: e7 80 e0 f7  	jalr	-0x82(ra)
802020ec: 59 c9        	beqz	a0, 0x80202182 <.text+0x2182>
802020ee: 02 c8        	sw	zero, 0x10(sp)
802020f0: 01 45        	li	a0, 0x0
802020f2: 81 4c        	li	s9, 0x0
802020f4: 81 45        	li	a1, 0x0
802020f6: 01 46        	li	a2, 0x0
802020f8: 81 46        	li	a3, 0x0
802020fa: 9d a8        	j	0x80202170 <.text+0x2170>
802020fc: 13 05 3a eb  	addi	a0, s4, -0x14d
80202100: 93 55 75 00  	srli	a1, a0, 0x7
80202104: 66 05        	slli	a0, a0, 0x19
80202106: c9 8d        	or	a1, a1, a0
80202108: 05 45        	li	a0, 0x1
8020210a: 25 46        	li	a2, 0x9
8020210c: 63 ff c5 00  	bgeu	a1, a2, 0x8020212a <.text+0x212a>
80202110: 13 06 b0 15  	li	a2, 0x15b
80202114: b3 55 b6 00  	srl	a1, a2, a1
80202118: 85 89        	andi	a1, a1, 0x1
8020211a: 81 4c        	li	s9, 0x0
8020211c: a1 e5        	bnez	a1, 0x80202164 <.text+0x2164>
8020211e: b1 a0        	j	0x8020216a <.text+0x216a>
80202120: 85 4c        	li	s9, 0x1
80202122: 85 45        	li	a1, 0x1
80202124: 05 46        	li	a2, 0x1
80202126: 85 46        	li	a3, 0x1
80202128: a1 a0        	j	0x80202170 <.text+0x2170>
8020212a: 81 4c        	li	s9, 0x0
8020212c: 81 46        	li	a3, 0x0
8020212e: 85 45        	li	a1, 0x1
80202130: 05 46        	li	a2, 0x1
80202132: 3d a8        	j	0x80202170 <.text+0x2170>
80202134: 4e 85        	mv	a0, s3
80202136: 97 e0 ff ff  	auipc	ra, 0xffffe
8020213a: e7 80 a0 3f  	jalr	0x3fa(ra)
8020213e: 56 05        	slli	a0, a0, 0x15
80202140: 61 81        	srli	a0, a0, 0x18
80202142: 31 dd        	beqz	a0, 0x8020209e <.text+0x209e>
80202144: 13 05 3a eb  	addi	a0, s4, -0x14d
80202148: 93 55 75 00  	srli	a1, a0, 0x7
8020214c: 66 05        	slli	a0, a0, 0x19
8020214e: c9 8d        	or	a1, a1, a0
80202150: 05 45        	li	a0, 0x1
80202152: 21 46        	li	a2, 0x8
80202154: 63 6b b6 00  	bltu	a2, a1, 0x8020216a <.text+0x216a>
80202158: 13 06 b0 15  	li	a2, 0x15b
8020215c: b3 55 b6 00  	srl	a1, a2, a1
80202160: 85 89        	andi	a1, a1, 0x1
80202162: 81 c5        	beqz	a1, 0x8020216a <.text+0x216a>
80202164: 05 45        	li	a0, 0x1
80202166: 2a c8        	sw	a0, 0x10(sp)
80202168: 05 45        	li	a0, 0x1
8020216a: 85 45        	li	a1, 0x1
8020216c: 05 46        	li	a2, 0x1
8020216e: e6 86        	mv	a3, s9
80202170: 6a 94        	add	s0, s0, s10
80202172: 2a 8c        	mv	s8, a0
80202174: e6 8a        	mv	s5, s9
80202176: ae 8b        	mv	s7, a1
80202178: b2 8d        	mv	s11, a2
8020217a: 36 8a        	mv	s4, a3
8020217c: 1d 45        	li	a0, 0x7
8020217e: e3 49 a4 ce  	blt	s0, a0, 0x80201e70 <.text+0x1e70>
80202182: 32 45        	lw	a0, 0xc(sp)
80202184: 33 05 a4 40  	sub	a0, s0, a0
80202188: 97 42 00 00  	auipc	t0, 0x4
8020218c: e7 82 02 24  	jalr	t0, 0x240(t0) <.text+0x63c8>
80202190: b2 5d        	lw	s11, 0x2c(sp)
80202192: 25 61        	addi	sp, sp, 0x60
80202194: 82 80        	ret
80202196: 00 00        	unimp
80202198: 33 06 b5 00  	add	a2, a0, a1
8020219c: 03 45 06 00  	lbu	a0, 0x0(a2)
802021a0: 93 16 85 01  	slli	a3, a0, 0x18
802021a4: 63 c4 06 00  	bltz	a3, 0x802021ac <.text+0x21ac>
802021a8: 85 45        	li	a1, 0x1
802021aa: 82 80        	ret
802021ac: e1 86        	srai	a3, a3, 0x18
802021ae: fd 55        	li	a1, -0x1
802021b0: 63 83 b6 04  	beq	a3, a1, 0x802021f6 <.text+0x21f6>
802021b4: 93 c5 f6 ff  	not	a1, a3
802021b8: 13 97 85 01  	slli	a4, a1, 0x18
802021bc: 65 83        	srli	a4, a4, 0x19
802021be: d9 8d        	or	a1, a1, a4
802021c0: 13 97 85 01  	slli	a4, a1, 0x18
802021c4: 69 83        	srli	a4, a4, 0x1a
802021c6: d9 8d        	or	a1, a1, a4
802021c8: 13 97 85 01  	slli	a4, a1, 0x18
802021cc: 71 83        	srli	a4, a4, 0x1c
802021ce: d9 8d        	or	a1, a1, a4
802021d0: 93 c5 f5 ff  	not	a1, a1
802021d4: 13 d7 15 00  	srli	a4, a1, 0x1
802021d8: 13 77 57 05  	andi	a4, a4, 0x55
802021dc: 99 8d        	sub	a1, a1, a4
802021de: 13 f7 35 03  	andi	a4, a1, 0x33
802021e2: 89 81        	srli	a1, a1, 0x2
802021e4: 93 f5 35 03  	andi	a1, a1, 0x33
802021e8: ba 95        	add	a1, a1, a4
802021ea: 13 d7 45 00  	srli	a4, a1, 0x4
802021ee: ba 95        	add	a1, a1, a4
802021f0: 13 f7 f5 00  	andi	a4, a1, 0xf
802021f4: 11 a0        	j	0x802021f8 <.text+0x21f8>
802021f6: 21 47        	li	a4, 0x8
802021f8: 85 45        	li	a1, 0x1
802021fa: e3 07 b7 fa  	beq	a4, a1, 0x802021a8 <.text+0x21a8>
802021fe: 89 45        	li	a1, 0x2
80202200: 63 03 b7 02  	beq	a4, a1, 0x80202226 <.text+0x2226>
80202204: 8d 45        	li	a1, 0x3
80202206: 63 18 b7 02  	bne	a4, a1, 0x80202236 <.text+0x2236>
8020220a: 03 45 16 00  	lbu	a0, 0x1(a2)
8020220e: 03 46 26 00  	lbu	a2, 0x2(a2)
80202212: bd 8a        	andi	a3, a3, 0xf
80202214: b2 06        	slli	a3, a3, 0xc
80202216: 13 75 f5 03  	andi	a0, a0, 0x3f
8020221a: 1a 05        	slli	a0, a0, 0x6
8020221c: 13 76 f6 03  	andi	a2, a2, 0x3f
80202220: 51 8d        	or	a0, a0, a2
80202222: 55 8d        	or	a0, a0, a3
80202224: 82 80        	ret
80202226: 03 45 16 00  	lbu	a0, 0x1(a2)
8020222a: fd 8a        	andi	a3, a3, 0x1f
8020222c: 9a 06        	slli	a3, a3, 0x6
8020222e: 13 75 f5 03  	andi	a0, a0, 0x3f
80202232: 55 8d        	or	a0, a0, a3
80202234: 82 80        	ret
80202236: 03 45 16 00  	lbu	a0, 0x1(a2)
8020223a: 83 45 26 00  	lbu	a1, 0x2(a2)
8020223e: 03 46 36 00  	lbu	a2, 0x3(a2)
80202242: bd 8a        	andi	a3, a3, 0xf
80202244: ca 06        	slli	a3, a3, 0x12
80202246: 13 75 f5 03  	andi	a0, a0, 0x3f
8020224a: 32 05        	slli	a0, a0, 0xc
8020224c: 93 f5 f5 03  	andi	a1, a1, 0x3f
80202250: 9a 05        	slli	a1, a1, 0x6
80202252: 4d 8d        	or	a0, a0, a1
80202254: 93 75 f6 03  	andi	a1, a2, 0x3f
80202258: 4d 8d        	or	a0, a0, a1
8020225a: 55 8d        	or	a0, a0, a3
8020225c: 91 45        	li	a1, 0x4
8020225e: 82 80        	ret
80202260: d9 75        	lui	a1, 0xffff6
80202262: 93 85 05 b3  	addi	a1, a1, -0x4d0
80202266: aa 95        	add	a1, a1, a0
80202268: 65 76        	lui	a2, 0xffff9
8020226a: 13 06 f6 f2  	addi	a2, a2, -0xd1
8020226e: b3 35 b6 00  	sltu	a1, a2, a1
80202272: 13 36 05 30  	sltiu	a2, a0, 0x300
80202276: d1 8d        	or	a1, a1, a2
80202278: 75 76        	lui	a2, 0xffffd
8020227a: 93 06 36 f0  	addi	a3, a2, -0xfd
8020227e: aa 96        	add	a3, a3, a0
80202280: 13 87 66 06  	addi	a4, a3, 0x66
80202284: 13 37 a7 fa  	sltiu	a4, a4, -0x56
80202288: 13 47 17 00  	xori	a4, a4, 0x1
8020228c: 93 b7 46 fa  	sltiu	a5, a3, -0x5c
80202290: 93 c7 17 00  	xori	a5, a5, 0x1
80202294: dd 8d        	or	a1, a1, a5
80202296: d9 8d        	or	a1, a1, a4
80202298: 13 07 d5 b7  	addi	a4, a0, -0x483
8020229c: 13 37 d7 f7  	sltiu	a4, a4, -0x83
802022a0: 13 47 17 00  	xori	a4, a4, 0x1
802022a4: 93 07 55 9b  	addi	a5, a0, -0x64b
802022a8: 93 b7 27 fd  	sltiu	a5, a5, -0x2e
802022ac: 93 c7 f7 ff  	not	a5, a5
802022b0: 5d 8f        	or	a4, a4, a5
802022b2: cd 77        	lui	a5, 0xffff3
802022b4: 93 87 07 85  	addi	a5, a5, -0x7b0
802022b8: aa 97        	add	a5, a5, a0
802022ba: 13 06 f6 44  	addi	a2, a2, 0x44f
802022be: 33 36 f6 00  	sltu	a2, a2, a5
802022c2: 59 8e        	or	a2, a2, a4
802022c4: 79 77        	lui	a4, 0xffffe
802022c6: 13 07 67 fd  	addi	a4, a4, -0x2a
802022ca: 2a 97        	add	a4, a4, a0
802022cc: 13 37 67 fe  	sltiu	a4, a4, -0x1a
802022d0: 13 47 f7 ff  	not	a4, a4
802022d4: 59 8e        	or	a2, a2, a4
802022d6: 93 86 36 0d  	addi	a3, a3, 0xd3
802022da: 93 b6 66 fd  	sltiu	a3, a3, -0x2a
802022de: 93 c6 f6 ff  	not	a3, a3
802022e2: 55 8e        	or	a2, a2, a3
802022e4: d1 8d        	or	a1, a1, a2
802022e6: 13 f6 15 00  	andi	a2, a1, 0x1
802022ea: 85 45        	li	a1, 0x1
802022ec: 19 e6        	bnez	a2, 0x802022fa <.text+0x22fa>
802022ee: c1 75        	lui	a1, 0xffff0
802022f0: 93 85 f5 0f  	addi	a1, a1, 0xff
802022f4: 2e 95        	add	a0, a0, a1
802022f6: 93 35 d5 09  	sltiu	a1, a0, 0x9d
802022fa: 2e 85        	mv	a0, a1
802022fc: 82 80        	ret
802022fe: 13 06 00 02  	li	a2, 0x20
80202302: 85 45        	li	a1, 0x1
80202304: 63 68 c5 0c  	bltu	a0, a2, 0x802023d4 <.text+0x23d4>
80202308: 93 05 f0 07  	li	a1, 0x7f
8020230c: 63 63 b5 0c  	bltu	a0, a1, 0x802023d2 <.text+0x23d2>
80202310: 89 65        	lui	a1, 0x2
80202312: 13 86 d5 00  	addi	a2, a1, 0xd
80202316: b1 45        	li	a1, 0xc
80202318: 63 0e c5 0a  	beq	a0, a2, 0x802023d4 <.text+0x23d4>
8020231c: dd 55        	li	a1, -0x9
8020231e: a6 05        	slli	a1, a1, 0x9
80202320: 33 06 b5 00  	add	a2, a0, a1
80202324: 93 05 06 0a  	addi	a1, a2, 0xa0
80202328: 93 b5 05 fa  	sltiu	a1, a1, -0x60
8020232c: d5 76        	lui	a3, 0xffff5
8020232e: 93 86 36 68  	addi	a3, a3, 0x683
80202332: aa 96        	add	a3, a3, a0
80202334: 93 b6 36 fe  	sltiu	a3, a3, -0x1d
80202338: ed 8e        	and	a3, a3, a1
8020233a: 91 45        	li	a1, 0x4
8020233c: c1 ce        	beqz	a3, 0x802023d4 <.text+0x23d4>
8020233e: cd 75        	lui	a1, 0xffff3
80202340: 93 86 45 80  	addi	a3, a1, -0x7fc
80202344: 93 05 86 05  	addi	a1, a2, 0x58
80202348: 93 b5 85 fb  	sltiu	a1, a1, -0x48
8020234c: aa 96        	add	a3, a3, a0
8020234e: 13 87 56 03  	addi	a4, a3, 0x35
80202352: 13 37 97 fe  	sltiu	a4, a4, -0x17
80202356: 6d 8f        	and	a4, a4, a1
80202358: ad 45        	li	a1, 0xb
8020235a: 2d cf        	beqz	a4, 0x802023d4 <.text+0x23d4>
8020235c: 93 35 86 fa  	sltiu	a1, a2, -0x58
80202360: 13 b6 f6 fc  	sltiu	a2, a3, -0x31
80202364: 6d 8e        	and	a2, a2, a1
80202366: a9 45        	li	a1, 0xa
80202368: 35 c6        	beqz	a2, 0x802023d4 <.text+0x23d4>
8020236a: 93 85 86 05  	addi	a1, a3, 0x58
8020236e: 75 76        	lui	a2, 0xffffd
80202370: 13 06 c6 45  	addi	a2, a2, 0x45c
80202374: 63 f2 c5 06  	bgeu	a1, a2, 0x802023d8 <.text+0x23d8>
80202378: 85 75        	lui	a1, 0xfffe1
8020237a: 93 85 05 e0  	addi	a1, a1, -0x200
8020237e: 33 06 b5 00  	add	a2, a0, a1
80202382: 95 56        	li	a3, -0x1b
80202384: a1 45        	li	a1, 0x8
80202386: 63 e7 c6 04  	bltu	a3, a2, 0x802023d4 <.text+0x23d4>
8020238a: 81 75        	lui	a1, 0xfffe0
8020238c: 89 05        	addi	a1, a1, 0x2
8020238e: 33 06 b5 00  	add	a2, a0, a1
80202392: 93 06 10 c0  	li	a3, -0x3ff
80202396: 8d 45        	li	a1, 0x3
80202398: 63 ee c6 02  	bltu	a3, a2, 0x802023d4 <.text+0x23d4>
8020239c: b7 f5 f1 ff  	lui	a1, 0xfff1f
802023a0: 33 06 b5 00  	add	a2, a0, a1
802023a4: fd 75        	lui	a1, 0xfffff
802023a6: 93 86 f5 1e  	addi	a3, a1, 0x1ef
802023aa: 85 45        	li	a1, 0x1
802023ac: 63 e4 c6 02  	bltu	a3, a2, 0x802023d4 <.text+0x23d4>
802023b0: 41 11        	addi	sp, sp, -0x10
802023b2: 06 c6        	sw	ra, 0xc(sp)
802023b4: 97 e0 ff ff  	auipc	ra, 0xffffe
802023b8: e7 80 a0 c5  	jalr	-0x3a6(ra)
802023bc: 95 45        	li	a1, 0x5
802023be: 63 e7 a5 02  	bltu	a1, a0, 0x802023ec <.text+0x23ec>
802023c2: b7 f5 20 80  	lui	a1, 0x8020f
802023c6: 93 85 15 b2  	addi	a1, a1, -0x4df
802023ca: 2e 95        	add	a0, a0, a1
802023cc: 83 45 05 00  	lbu	a1, 0x0(a0)
802023d0: 39 a8        	j	0x802023ee <.text+0x23ee>
802023d2: 81 45        	li	a1, 0x0
802023d4: 2e 85        	mv	a0, a1
802023d6: 82 80        	ret
802023d8: 42 05        	slli	a0, a0, 0x10
802023da: 41 81        	srli	a0, a0, 0x10
802023dc: f1 45        	li	a1, 0x1c
802023de: 33 75 b5 02  	remu	a0, a0, a1
802023e2: 41 15        	addi	a0, a0, -0x10
802023e4: b3 35 a0 00  	snez	a1, a0
802023e8: 95 05        	addi	a1, a1, 0x5
802023ea: ed b7        	j	0x802023d4 <.text+0x23d4>
802023ec: 81 45        	li	a1, 0x0
802023ee: b2 40        	lw	ra, 0xc(sp)
802023f0: 41 01        	addi	sp, sp, 0x10
802023f2: cd b7        	j	0x802023d4 <.text+0x23d4>
802023f4: 48 45        	lw	a0, 0xc(a0)
802023f6: 82 80        	ret
802023f8: 11 c9        	beqz	a0, 0x8020240c <.text+0x240c>
802023fa: 4c 41        	lw	a1, 0x4(a0)
802023fc: 7d 56        	li	a2, -0x1
802023fe: 63 87 c5 00  	beq	a1, a2, 0x8020240c <.text+0x240c>
80202402: 93 05 45 00  	addi	a1, a0, 0x4
80202406: 05 46        	li	a2, 0x1
80202408: af a5 c5 00  	amoadd.w	a1, a2, (a1)
8020240c: 82 80        	ret
8020240e: 39 71        	addi	sp, sp, -0x40
80202410: 06 de        	sw	ra, 0x3c(sp)
80202412: 22 dc        	sw	s0, 0x38(sp)
80202414: 26 da        	sw	s1, 0x34(sp)
80202416: 4a d8        	sw	s2, 0x30(sp)
80202418: 4e d6        	sw	s3, 0x2c(sp)
8020241a: 52 d4        	sw	s4, 0x28(sp)
8020241c: 56 d2        	sw	s5, 0x24(sp)
8020241e: 5a d0        	sw	s6, 0x20(sp)
80202420: 5e ce        	sw	s7, 0x1c(sp)
80202422: 62 cc        	sw	s8, 0x18(sp)
80202424: ae 84        	mv	s1, a1
80202426: 2a 84        	mv	s0, a0
80202428: 31 65        	lui	a0, 0xc
8020242a: b3 75 a4 00  	and	a1, s0, a0
8020242e: 13 95 04 01  	slli	a0, s1, 0x10
80202432: 93 57 04 01  	srli	a5, s0, 0x10
80202436: b3 ea a7 00  	or	s5, a5, a0
8020243a: 56 85        	mv	a0, s5
8020243c: 99 cd        	beqz	a1, 0x8020245a <.text+0x245a>
8020243e: 93 55 f5 41  	srai	a1, a0, 0x1f
80202442: 2d 8d        	xor	a0, a0, a1
80202444: 93 d5 fa 41  	srai	a1, s5, 0x1f
80202448: 2d 8d        	xor	a0, a0, a1
8020244a: 13 56 05 01  	srli	a2, a0, 0x10
8020244e: c2 05        	slli	a1, a1, 0x10
80202450: b3 e4 c5 00  	or	s1, a1, a2
80202454: 13 14 05 01  	slli	s0, a0, 0x10
80202458: 2d a2        	j	0x80202582 <.text+0x2582>
8020245a: 63 8b 0a 12  	beqz	s5, 0x80202590 <.text+0x2590>
8020245e: 3a 8a        	mv	s4, a4
80202460: b6 89        	mv	s3, a3
80202462: 32 89        	mv	s2, a2
80202464: 93 7b f7 0f  	andi	s7, a4, 0xff
80202468: 13 5b 87 00  	srli	s6, a4, 0x8
8020246c: 63 83 0b 02  	beqz	s7, 0x80202492 <.text+0x2492>
80202470: 4e 85        	mv	a0, s3
80202472: d2 85        	mv	a1, s4
80202474: 97 00 00 00  	auipc	ra, 0x0
80202478: e7 80 80 1b  	jalr	0x1b8(ra) <.text+0x262c>
8020247c: 4e 85        	mv	a0, s3
8020247e: d2 85        	mv	a1, s4
80202480: 97 00 00 00  	auipc	ra, 0x0
80202484: e7 80 c0 1a  	jalr	0x1ac(ra) <.text+0x262c>
80202488: 4e 85        	mv	a0, s3
8020248a: 97 00 00 00  	auipc	ra, 0x0
8020248e: e7 80 60 96  	jalr	-0x69a(ra) <.text+0x1df0>
80202492: 13 75 0b 01  	andi	a0, s6, 0x10
80202496: 13 7c fb 0f  	andi	s8, s6, 0xff
8020249a: 6d ed        	bnez	a0, 0x80202594 <.text+0x2594>
8020249c: 13 75 0c 02  	andi	a0, s8, 0x20
802024a0: 13 54 0a 01  	srli	s0, s4, 0x10
802024a4: 39 ed        	bnez	a0, 0x80202502 <.text+0x2502>
802024a6: 4e 85        	mv	a0, s3
802024a8: d2 85        	mv	a1, s4
802024aa: 97 f0 ff ff  	auipc	ra, 0xfffff
802024ae: e7 80 80 da  	jalr	-0x258(ra)
802024b2: 4e 85        	mv	a0, s3
802024b4: d2 85        	mv	a1, s4
802024b6: 97 f0 ff ff  	auipc	ra, 0xfffff
802024ba: e7 80 c0 d9  	jalr	-0x264(ra)
802024be: 13 75 89 ff  	andi	a0, s2, -0x8
802024c2: 4e 04        	slli	s0, s0, 0x13
802024c4: 41 8d        	or	a0, a0, s0
802024c6: 63 5f 05 0e  	bgez	a0, 0x802025c4 <.text+0x25c4>
802024ca: 63 88 0b 00  	beqz	s7, 0x802024da <.text+0x24da>
802024ce: 4e 85        	mv	a0, s3
802024d0: d2 85        	mv	a1, s4
802024d2: 97 f0 ff ff  	auipc	ra, 0xfffff
802024d6: e7 80 00 d8  	jalr	-0x280(ra)
802024da: 13 85 49 01  	addi	a0, s3, 0x14
802024de: 63 09 59 09  	beq	s2, s5, 0x80202570 <.text+0x2570>
802024e2: b3 05 55 01  	add	a1, a0, s5
802024e6: 83 c5 05 00  	lbu	a1, 0x0(a1)
802024ea: 93 f5 05 0c  	andi	a1, a1, 0xc0
802024ee: 93 85 05 f8  	addi	a1, a1, -0x80
802024f2: bd ed        	bnez	a1, 0x80202570 <.text+0x2570>
802024f4: 7d 15        	addi	a0, a0, -0x1
802024f6: 97 42 00 00  	auipc	t0, 0x4
802024fa: e7 82 c2 f0  	jalr	t0, -0xf4(t0) <.text+0x6402>
802024fe: b5 e9        	bnez	a1, 0x80202572 <.text+0x2572>
80202500: dd bf        	j	0x802024f6 <.text+0x24f6>
80202502: 09 45        	li	a0, 0x2
80202504: 63 83 ab 02  	beq	s7, a0, 0x8020252a <.text+0x252a>
80202508: 05 45        	li	a0, 0x1
8020250a: 63 92 ab 04  	bne	s7, a0, 0x8020254e <.text+0x254e>
8020250e: 85 45        	li	a1, 0x1
80202510: 4e 85        	mv	a0, s3
80202512: 97 f0 ff ff  	auipc	ra, 0xfffff
80202516: e7 80 00 d4  	jalr	-0x2c0(ra)
8020251a: 85 45        	li	a1, 0x1
8020251c: 4e 85        	mv	a0, s3
8020251e: 97 f0 ff ff  	auipc	ra, 0xfffff
80202522: e7 80 40 d3  	jalr	-0x2cc(ra)
80202526: 85 45        	li	a1, 0x1
80202528: 31 a8        	j	0x80202544 <.text+0x2544>
8020252a: 89 45        	li	a1, 0x2
8020252c: 4e 85        	mv	a0, s3
8020252e: 97 f0 ff ff  	auipc	ra, 0xfffff
80202532: e7 80 40 d2  	jalr	-0x2dc(ra)
80202536: 89 45        	li	a1, 0x2
80202538: 4e 85        	mv	a0, s3
8020253a: 97 f0 ff ff  	auipc	ra, 0xfffff
8020253e: e7 80 80 d1  	jalr	-0x2e8(ra)
80202542: 89 45        	li	a1, 0x2
80202544: 4e 85        	mv	a0, s3
80202546: 97 f0 ff ff  	auipc	ra, 0xfffff
8020254a: e7 80 c0 d0  	jalr	-0x2f4(ra)
8020254e: 13 75 fb 00  	andi	a0, s6, 0xf
80202552: 4a c4        	sw	s2, 0x8(sp)
80202554: 4e c6        	sw	s3, 0xc(sp)
80202556: 02 ca        	sw	zero, 0x14(sp)
80202558: 22 c8        	sw	s0, 0x10(sp)
8020255a: 63 0b 55 01  	beq	a0, s5, 0x80202570 <.text+0x2570>
8020255e: 28 00        	addi	a0, sp, 0x8
80202560: 56 95        	add	a0, a0, s5
80202562: 03 45 05 00  	lbu	a0, 0x0(a0)
80202566: 13 75 05 0c  	andi	a0, a0, 0xc0
8020256a: 13 05 05 f8  	addi	a0, a0, -0x80
8020256e: 3d c9        	beqz	a0, 0x802025e4 <.text+0x25e4>
80202570: 56 84        	mv	s0, s5
80202572: 13 55 f4 41  	srai	a0, s0, 0x1f
80202576: 93 55 04 01  	srli	a1, s0, 0x10
8020257a: 42 05        	slli	a0, a0, 0x10
8020257c: b3 64 b5 00  	or	s1, a0, a1
80202580: 42 04        	slli	s0, s0, 0x10
80202582: 22 85        	mv	a0, s0
80202584: a6 85        	mv	a1, s1
80202586: 97 42 00 00  	auipc	t0, 0x4
8020258a: e7 82 42 e9  	jalr	t0, -0x16c(t0) <.text+0x641a>
8020258e: 82 80        	ret
80202590: 01 45        	li	a0, 0x0
80202592: 75 b5        	j	0x8020243e <.text+0x243e>
80202594: 4e 85        	mv	a0, s3
80202596: d2 85        	mv	a1, s4
80202598: 97 f0 ff ff  	auipc	ra, 0xfffff
8020259c: e7 80 a0 cb  	jalr	-0x346(ra)
802025a0: 63 8a 0b 04  	beqz	s7, 0x802025f4 <.text+0x25f4>
802025a4: 4e 85        	mv	a0, s3
802025a6: d2 85        	mv	a1, s4
802025a8: 97 f0 ff ff  	auipc	ra, 0xfffff
802025ac: e7 80 a0 ca  	jalr	-0x356(ra)
802025b0: 13 75 0c 02  	andi	a0, s8, 0x20
802025b4: 39 c1        	beqz	a0, 0x802025fa <.text+0x25fa>
802025b6: 4e 85        	mv	a0, s3
802025b8: d2 85        	mv	a1, s4
802025ba: 97 f0 ff ff  	auipc	ra, 0xfffff
802025be: e7 80 80 c9  	jalr	-0x368(ra)
802025c2: a1 a0        	j	0x8020260a <.text+0x260a>
802025c4: 4e 85        	mv	a0, s3
802025c6: d2 85        	mv	a1, s4
802025c8: 97 f0 ff ff  	auipc	ra, 0xfffff
802025cc: e7 80 a0 c8  	jalr	-0x376(ra)
802025d0: 4a 85        	mv	a0, s2
802025d2: ce 85        	mv	a1, s3
802025d4: 97 00 00 00  	auipc	ra, 0x0
802025d8: e7 80 40 82  	jalr	-0x7dc(ra) <.text+0x1df8>
802025dc: 2e 89        	mv	s2, a1
802025de: e3 92 55 f1  	bne	a1, s5, 0x802024e2 <.text+0x24e2>
802025e2: 79 b7        	j	0x80202570 <.text+0x2570>
802025e4: 13 05 71 00  	addi	a0, sp, 0x7
802025e8: 97 42 00 00  	auipc	t0, 0x4
802025ec: e7 82 a2 e1  	jalr	t0, -0x1e6(t0) <.text+0x6402>
802025f0: c9 f1        	bnez	a1, 0x80202572 <.text+0x2572>
802025f2: dd bf        	j	0x802025e8 <.text+0x25e8>
802025f4: 13 75 0c 02  	andi	a0, s8, 0x20
802025f8: 09 e9        	bnez	a0, 0x8020260a <.text+0x260a>
802025fa: 4e 85        	mv	a0, s3
802025fc: d2 85        	mv	a1, s4
802025fe: 97 f0 ff ff  	auipc	ra, 0xfffff
80202602: e7 80 40 c5  	jalr	-0x3ac(ra)
80202606: 4a 85        	mv	a0, s2
80202608: 19 a0        	j	0x8020260e <.text+0x260e>
8020260a: 13 75 fb 00  	andi	a0, s6, 0xf
8020260e: e3 0a 55 f7  	beq	a0, s5, 0x80202582 <.text+0x2582>
80202612: 22 85        	mv	a0, s0
80202614: a6 85        	mv	a1, s1
80202616: 4a 86        	mv	a2, s2
80202618: ce 86        	mv	a3, s3
8020261a: 52 87        	mv	a4, s4
8020261c: 97 42 00 00  	auipc	t0, 0x4
80202620: e7 82 e2 df  	jalr	t0, -0x202(t0) <.text+0x641a>
80202624: 17 03 00 00  	auipc	t1, 0x0
80202628: 67 00 e3 01  	jr	0x1e(t1) <.text+0x2642>
8020262c: fd 15        	addi	a1, a1, -0x1
8020262e: 93 f5 f5 0f  	andi	a1, a1, 0xff
80202632: 05 46        	li	a2, 0x1
80202634: 63 66 b6 00  	bltu	a2, a1, 0x80202640 <.text+0x2640>
80202638: 17 f3 ff ff  	auipc	t1, 0xfffff
8020263c: 67 00 83 7b  	jr	0x7b8(t1)
80202640: 82 80        	ret
80202642: 97 42 00 00  	auipc	t0, 0x4
80202646: e7 82 62 e1  	jalr	t0, -0x1ea(t0) <.text+0x6458>
8020264a: 3a 84        	mv	s0, a4
8020264c: 13 77 f7 0f  	andi	a4, a4, 0xff
80202650: b6 84        	mv	s1, a3
80202652: 32 8a        	mv	s4, a2
80202654: 2e 89        	mv	s2, a1
80202656: aa 89        	mv	s3, a0
80202658: 0d c3        	beqz	a4, 0x8020267a <.text+0x267a>
8020265a: 26 85        	mv	a0, s1
8020265c: 97 f0 ff ff  	auipc	ra, 0xfffff
80202660: e7 80 40 79  	jalr	0x794(ra)
80202664: 13 15 24 01  	slli	a0, s0, 0x12
80202668: 63 5d 05 00  	bgez	a0, 0x80202682 <.text+0x2682>
8020266c: 26 85        	mv	a0, s1
8020266e: a2 85        	mv	a1, s0
80202670: 97 f0 ff ff  	auipc	ra, 0xfffff
80202674: e7 80 20 be  	jalr	-0x41e(ra)
80202678: 21 a8        	j	0x80202690 <.text+0x2690>
8020267a: 13 15 24 01  	slli	a0, s0, 0x12
8020267e: 63 49 05 00  	bltz	a0, 0x80202690 <.text+0x2690>
80202682: 26 85        	mv	a0, s1
80202684: a2 85        	mv	a1, s0
80202686: 97 f0 ff ff  	auipc	ra, 0xfffff
8020268a: e7 80 c0 bc  	jalr	-0x434(ra)
8020268e: 21 a0        	j	0x80202696 <.text+0x2696>
80202690: 21 80        	srli	s0, s0, 0x8
80202692: 13 7a f4 00  	andi	s4, s0, 0xf
80202696: 13 d5 09 01  	srli	a0, s3, 0x10
8020269a: 93 15 09 01  	slli	a1, s2, 0x10
8020269e: 4d 8d        	or	a0, a0, a1
802026a0: 63 1a aa 00  	bne	s4, a0, 0x802026b4 <.text+0x26b4>
802026a4: 13 e5 19 00  	ori	a0, s3, 0x1
802026a8: ca 85        	mv	a1, s2
802026aa: 97 42 00 00  	auipc	t0, 0x4
802026ae: e7 82 e2 d9  	jalr	t0, -0x262(t0) <.text+0x6448>
802026b2: 82 80        	ret
802026b4: 00 00        	unimp
802026b6: 75 71        	addi	sp, sp, -0x90
802026b8: 06 c7        	sw	ra, 0x8c(sp)
802026ba: 22 c5        	sw	s0, 0x88(sp)
802026bc: 26 c3        	sw	s1, 0x84(sp)
802026be: 4a c1        	sw	s2, 0x80(sp)
802026c0: ce de        	sw	s3, 0x7c(sp)
802026c2: d2 dc        	sw	s4, 0x78(sp)
802026c4: d6 da        	sw	s5, 0x74(sp)
802026c6: da d8        	sw	s6, 0x70(sp)
802026c8: de d6        	sw	s7, 0x6c(sp)
802026ca: e2 d4        	sw	s8, 0x68(sp)
802026cc: e6 d2        	sw	s9, 0x64(sp)
802026ce: ea d0        	sw	s10, 0x60(sp)
802026d0: ee ce        	sw	s11, 0x5c(sp)
802026d2: ba 8d        	mv	s11, a4
802026d4: 13 7b f7 0f  	andi	s6, a4, 0xff
802026d8: b6 8c        	mv	s9, a3
802026da: b2 8b        	mv	s7, a2
802026dc: 2e 84        	mv	s0, a1
802026de: 2a 89        	mv	s2, a0
802026e0: 63 07 0b 00  	beqz	s6, 0x802026ee <.text+0x26ee>
802026e4: 66 85        	mv	a0, s9
802026e6: 97 f0 ff ff  	auipc	ra, 0xfffff
802026ea: e7 80 a0 70  	jalr	0x70a(ra)
802026ee: 13 dc 0d 01  	srli	s8, s11, 0x10
802026f2: 13 95 3d 01  	slli	a0, s11, 0x13
802026f6: 93 59 09 01  	srli	s3, s2, 0x10
802026fa: 93 1a 04 01  	slli	s5, s0, 0x10
802026fe: 63 59 05 06  	bgez	a0, 0x80202770 <.text+0x2770>
80202702: 13 f5 0b ff  	andi	a0, s7, -0x10
80202706: 93 15 4c 01  	slli	a1, s8, 0x14
8020270a: 4d 8d        	or	a0, a0, a1
8020270c: 63 42 05 06  	bltz	a0, 0x80202770 <.text+0x2770>
80202710: 63 0d 0b 00  	beqz	s6, 0x8020272a <.text+0x272a>
80202714: 66 85        	mv	a0, s9
80202716: 97 f0 ff ff  	auipc	ra, 0xfffff
8020271a: e7 80 a0 6d  	jalr	0x6da(ra)
8020271e: 66 85        	mv	a0, s9
80202720: ee 85        	mv	a1, s11
80202722: 97 f0 ff ff  	auipc	ra, 0xfffff
80202726: e7 80 00 b3  	jalr	-0x4d0(ra)
8020272a: 33 e5 59 01  	or	a0, s3, s5
8020272e: de 85        	mv	a1, s7
80202730: 66 86        	mv	a2, s9
80202732: ee 86        	mv	a3, s11
80202734: 97 10 00 00  	auipc	ra, 0x1
80202738: e7 80 e0 b8  	jalr	-0x472(ra) <.text+0x32c2>
8020273c: 2a 84        	mv	s0, a0
8020273e: ae 84        	mv	s1, a1
80202740: 66 85        	mv	a0, s9
80202742: ee 85        	mv	a1, s11
80202744: 97 f0 ff ff  	auipc	ra, 0xfffff
80202748: e7 80 e0 b0  	jalr	-0x4f2(ra)
8020274c: 13 15 09 01  	slli	a0, s2, 0x10
80202750: 79 81        	srli	a0, a0, 0x1e
80202752: 63 07 05 12  	beqz	a0, 0x80202880 <.text+0x2880>
80202756: 41 80        	srli	s0, s0, 0x10
80202758: c2 04        	slli	s1, s1, 0x10
8020275a: 45 8c        	or	s0, s0, s1
8020275c: 22 95        	add	a0, a0, s0
8020275e: 93 55 f5 41  	srai	a1, a0, 0x1f
80202762: 13 56 05 01  	srli	a2, a0, 0x10
80202766: c2 05        	slli	a1, a1, 0x10
80202768: b3 e4 c5 00  	or	s1, a1, a2
8020276c: 42 05        	slli	a0, a0, 0x10
8020276e: 29 aa        	j	0x80202888 <.text+0x2888>
80202770: 66 85        	mv	a0, s9
80202772: ee 85        	mv	a1, s11
80202774: 97 f0 ff ff  	auipc	ra, 0xfffff
80202778: e7 80 e0 ad  	jalr	-0x522(ra)
8020277c: 13 d4 8d 00  	srli	s0, s11, 0x8
80202780: 63 03 0b 02  	beqz	s6, 0x802027a6 <.text+0x27a6>
80202784: 66 85        	mv	a0, s9
80202786: ee 85        	mv	a1, s11
80202788: 97 00 00 00  	auipc	ra, 0x0
8020278c: e7 80 40 ea  	jalr	-0x15c(ra) <.text+0x262c>
80202790: 66 85        	mv	a0, s9
80202792: ee 85        	mv	a1, s11
80202794: 97 00 00 00  	auipc	ra, 0x0
80202798: e7 80 80 e9  	jalr	-0x168(ra) <.text+0x262c>
8020279c: 66 85        	mv	a0, s9
8020279e: 97 f0 ff ff  	auipc	ra, 0xfffff
802027a2: e7 80 20 65  	jalr	0x652(ra)
802027a6: 93 74 04 01  	andi	s1, s0, 0x10
802027aa: 63 0e 0b 00  	beqz	s6, 0x802027c6 <.text+0x27c6>
802027ae: 66 85        	mv	a0, s9
802027b0: ee 85        	mv	a1, s11
802027b2: 97 f0 ff ff  	auipc	ra, 0xfffff
802027b6: e7 80 00 aa  	jalr	-0x560(ra)
802027ba: 66 85        	mv	a0, s9
802027bc: ee 85        	mv	a1, s11
802027be: 97 f0 ff ff  	auipc	ra, 0xfffff
802027c2: e7 80 40 a9  	jalr	-0x56c(ra)
802027c6: 33 e5 59 01  	or	a0, s3, s5
802027ca: 2a da        	sw	a0, 0x34(sp)
802027cc: e3 98 04 28  	bnez	s1, 0x8020325c <.text+0x325c>
802027d0: 13 75 f4 0f  	andi	a0, s0, 0xff
802027d4: 22 d6        	sw	s0, 0x2c(sp)
802027d6: 13 7d 04 02  	andi	s10, s0, 0x20
802027da: 13 7a 05 04  	andi	s4, a0, 0x40
802027de: 5e d8        	sw	s7, 0x30(sp)
802027e0: 93 d5 fb 41  	srai	a1, s7, 0x1f
802027e4: 93 19 0c 01  	slli	s3, s8, 0x10
802027e8: 63 17 0d 02  	bnez	s10, 0x80202816 <.text+0x2816>
802027ec: 66 85        	mv	a0, s9
802027ee: ae 84        	mv	s1, a1
802027f0: ee 85        	mv	a1, s11
802027f2: 97 f0 ff ff  	auipc	ra, 0xfffff
802027f6: e7 80 00 a6  	jalr	-0x5a0(ra)
802027fa: a6 85        	mv	a1, s1
802027fc: 33 e5 99 00  	or	a0, s3, s1
80202800: 52 54        	lw	s0, 0x34(sp)
80202802: 63 49 05 02  	bltz	a0, 0x80202834 <.text+0x2834>
80202806: 2e d4        	sw	a1, 0x28(sp)
80202808: 63 42 04 04  	bltz	s0, 0x8020284c <.text+0x284c>
8020280c: 13 05 00 02  	li	a0, 0x20
80202810: 63 74 a4 04  	bgeu	s0, a0, 0x80202858 <.text+0x2858>
80202814: 05 a4        	j	0x80202a34 <.text+0x2a34>
80202816: 52 54        	lw	s0, 0x34(sp)
80202818: 63 0c 0b 00  	beqz	s6, 0x80202830 <.text+0x2830>
8020281c: 66 85        	mv	a0, s9
8020281e: ca 84        	mv	s1, s2
80202820: 2e 89        	mv	s2, a1
80202822: ee 85        	mv	a1, s11
80202824: 97 f0 ff ff  	auipc	ra, 0xfffff
80202828: e7 80 e0 a2  	jalr	-0x5d2(ra)
8020282c: ca 85        	mv	a1, s2
8020282e: 26 89        	mv	s2, s1
80202830: e3 0b 0a fc  	beqz	s4, 0x80202806 <.text+0x2806>
80202834: 13 55 f4 41  	srai	a0, s0, 0x1f
80202838: 93 55 04 01  	srli	a1, s0, 0x10
8020283c: 42 05        	slli	a0, a0, 0x10
8020283e: b3 64 b5 00  	or	s1, a0, a1
80202842: 13 1a 04 01  	slli	s4, s0, 0x10
80202846: 93 0a da 00  	addi	s5, s4, 0xd
8020284a: 01 a4        	j	0x80202a4a <.text+0x2a4a>
8020284c: 13 05 f4 01  	addi	a0, s0, 0x1f
80202850: 93 05 00 02  	li	a1, 0x20
80202854: 63 60 b5 1e  	bltu	a0, a1, 0x80202a34 <.text+0x2a34>
80202858: 63 0b 0b 02  	beqz	s6, 0x8020288e <.text+0x288e>
8020285c: 66 85        	mv	a0, s9
8020285e: ee 85        	mv	a1, s11
80202860: 97 00 00 00  	auipc	ra, 0x0
80202864: e7 80 c0 dc  	jalr	-0x234(ra) <.text+0x262c>
80202868: 66 85        	mv	a0, s9
8020286a: ee 85        	mv	a1, s11
8020286c: 97 00 00 00  	auipc	ra, 0x0
80202870: e7 80 00 dc  	jalr	-0x240(ra) <.text+0x262c>
80202874: 66 85        	mv	a0, s9
80202876: 97 f0 ff ff  	auipc	ra, 0xfffff
8020287a: e7 80 a0 57  	jalr	0x57a(ra)
8020287e: 31 a8        	j	0x8020289a <.text+0x289a>
80202880: 71 98        	andi	s0, s0, -0x4
80202882: 13 75 39 00  	andi	a0, s2, 0x3
80202886: 41 8d        	or	a0, a0, s0
80202888: 13 65 85 00  	ori	a0, a0, 0x8
8020288c: c5 aa        	j	0x80202a7c <.text+0x2a7c>
8020288e: 33 35 a0 01  	snez	a0, s10
80202892: 93 35 1b 00  	seqz	a1, s6
80202896: 6d 8d        	and	a0, a0, a1
80202898: 19 e5        	bnez	a0, 0x802028a6 <.text+0x28a6>
8020289a: 66 85        	mv	a0, s9
8020289c: ee 85        	mv	a1, s11
8020289e: 97 f0 ff ff  	auipc	ra, 0xfffff
802028a2: e7 80 40 9b  	jalr	-0x64c(ra)
802028a6: 66 85        	mv	a0, s9
802028a8: ee 85        	mv	a1, s11
802028aa: 97 f0 ff ff  	auipc	ra, 0xfffff
802028ae: e7 80 80 9a  	jalr	-0x658(ra)
802028b2: 66 85        	mv	a0, s9
802028b4: ee 85        	mv	a1, s11
802028b6: 97 f0 ff ff  	auipc	ra, 0xfffff
802028ba: e7 80 c0 99  	jalr	-0x664(ra)
802028be: e3 42 04 1c  	bltz	s0, 0x80203282 <.text+0x3282>
802028c2: 63 02 0b 04  	beqz	s6, 0x80202906 <.text+0x2906>
802028c6: 66 85        	mv	a0, s9
802028c8: ee 85        	mv	a1, s11
802028ca: 97 00 00 00  	auipc	ra, 0x0
802028ce: e7 80 20 d6  	jalr	-0x29e(ra) <.text+0x262c>
802028d2: 66 85        	mv	a0, s9
802028d4: ee 85        	mv	a1, s11
802028d6: 97 00 00 00  	auipc	ra, 0x0
802028da: e7 80 60 d5  	jalr	-0x2aa(ra) <.text+0x262c>
802028de: 66 85        	mv	a0, s9
802028e0: ee 85        	mv	a1, s11
802028e2: 97 00 00 00  	auipc	ra, 0x0
802028e6: e7 80 a0 d4  	jalr	-0x2b6(ra) <.text+0x262c>
802028ea: 66 85        	mv	a0, s9
802028ec: 97 f0 ff ff  	auipc	ra, 0xfffff
802028f0: e7 80 40 50  	jalr	0x504(ra)
802028f4: 63 0b 0d 00  	beqz	s10, 0x8020290a <.text+0x290a>
802028f8: 66 85        	mv	a0, s9
802028fa: ee 85        	mv	a1, s11
802028fc: 97 f0 ff ff  	auipc	ra, 0xfffff
80202900: e7 80 60 95  	jalr	-0x6aa(ra)
80202904: 89 a0        	j	0x80202946 <.text+0x2946>
80202906: 63 10 0d 04  	bnez	s10, 0x80202946 <.text+0x2946>
8020290a: 66 85        	mv	a0, s9
8020290c: ee 85        	mv	a1, s11
8020290e: 97 f0 ff ff  	auipc	ra, 0xfffff
80202912: e7 80 40 94  	jalr	-0x6bc(ra)
80202916: 22 55        	lw	a0, 0x28(sp)
80202918: 33 e5 a9 00  	or	a0, s3, a0
8020291c: 63 47 05 02  	bltz	a0, 0x8020294a <.text+0x294a>
80202920: 63 07 0b 00  	beqz	s6, 0x8020292e <.text+0x292e>
80202924: 66 85        	mv	a0, s9
80202926: 97 f0 ff ff  	auipc	ra, 0xfffff
8020292a: e7 80 a0 4c  	jalr	0x4ca(ra)
8020292e: 3d 65        	lui	a0, 0xf
80202930: 33 f5 ad 00  	and	a0, s11, a0
80202934: 52 ce        	sw	s4, 0x1c(sp)
80202936: 21 c5        	beqz	a0, 0x8020297e <.text+0x297e>
80202938: 66 85        	mv	a0, s9
8020293a: ee 85        	mv	a1, s11
8020293c: 97 f0 ff ff  	auipc	ra, 0xfffff
80202940: e7 80 60 91  	jalr	-0x6ea(ra)
80202944: 9d a0        	j	0x802029aa <.text+0x29aa>
80202946: e3 0d 0a fc  	beqz	s4, 0x80202920 <.text+0x2920>
8020294a: 66 85        	mv	a0, s9
8020294c: ee 85        	mv	a1, s11
8020294e: 97 f0 ff ff  	auipc	ra, 0xfffff
80202952: e7 80 40 90  	jalr	-0x6fc(ra)
80202956: 66 85        	mv	a0, s9
80202958: ee 85        	mv	a1, s11
8020295a: 97 f0 ff ff  	auipc	ra, 0xfffff
8020295e: e7 80 80 8f  	jalr	-0x708(ra)
80202962: 66 85        	mv	a0, s9
80202964: ee 85        	mv	a1, s11
80202966: 97 f0 ff ff  	auipc	ra, 0xfffff
8020296a: e7 80 c0 8e  	jalr	-0x714(ra)
8020296e: 41 75        	lui	a0, 0xffff0
80202970: 33 75 a9 00  	and	a0, s2, a0
80202974: 93 d4 0a 01  	srli	s1, s5, 0x10
80202978: 93 0a d5 00  	addi	s5, a0, 0xd
8020297c: f9 a0        	j	0x80202a4a <.text+0x2a4a>
8020297e: 32 55        	lw	a0, 0x2c(sp)
80202980: b3 04 a0 40  	neg	s1, a0
80202984: 13 f5 fd 0f  	andi	a0, s11, 0xff
80202988: e2 04        	slli	s1, s1, 0x18
8020298a: 19 c5        	beqz	a0, 0x80202998 <.text+0x2998>
8020298c: 66 85        	mv	a0, s9
8020298e: ee 85        	mv	a1, s11
80202990: 97 f0 ff ff  	auipc	ra, 0xfffff
80202994: e7 80 20 8c  	jalr	-0x73e(ra)
80202998: 42 55        	lw	a0, 0x30(sp)
8020299a: 09 81        	srli	a0, a0, 0x2
8020299c: fd 14        	addi	s1, s1, -0x1
8020299e: 33 e5 a9 00  	or	a0, s3, a0
802029a2: 65 8d        	and	a0, a0, s1
802029a4: 0a 05        	slli	a0, a0, 0x2
802029a6: 63 5b 05 0e  	bgez	a0, 0x80202a9c <.text+0x2a9c>
802029aa: 42 55        	lw	a0, 0x30(sp)
802029ac: ee 85        	mv	a1, s11
802029ae: 97 10 00 00  	auipc	ra, 0x1
802029b2: e7 80 00 ec  	jalr	-0x140(ra) <.text+0x386e>
802029b6: 05 89        	andi	a0, a0, 0x1
802029b8: 21 cd        	beqz	a0, 0x80202a10 <.text+0x2a10>
802029ba: 83 94 2c 01  	lh	s1, 0x12(s9)
802029be: 66 85        	mv	a0, s9
802029c0: ee 85        	mv	a1, s11
802029c2: 97 f0 ff ff  	auipc	ra, 0xfffff
802029c6: e7 80 00 89  	jalr	-0x770(ra)
802029ca: 13 a5 04 00  	slti	a0, s1, 0x0
802029ce: 13 45 15 00  	xori	a0, a0, 0x1
802029d2: 93 35 04 04  	sltiu	a1, s0, 0x40
802029d6: 4d 8d        	or	a0, a0, a1
802029d8: 31 e1        	bnez	a0, 0x80202a1c <.text+0x2a1c>
802029da: 66 85        	mv	a0, s9
802029dc: 97 f0 ff ff  	auipc	ra, 0xfffff
802029e0: e7 80 40 41  	jalr	0x414(ra)
802029e4: 66 85        	mv	a0, s9
802029e6: 97 10 00 00  	auipc	ra, 0x1
802029ea: e7 80 a0 e9  	jalr	-0x166(ra) <.text+0x3880>
802029ee: aa 8a        	mv	s5, a0
802029f0: 66 85        	mv	a0, s9
802029f2: ee 85        	mv	a1, s11
802029f4: 97 f0 ff ff  	auipc	ra, 0xfffff
802029f8: e7 80 e0 85  	jalr	-0x7a2(ra)
802029fc: 83 a4 0a 00  	lw	s1, 0x0(s5)
80202a00: 0f 00 30 02  	fence	r, rw
80202a04: 6a d2        	sw	s10, 0x24(sp)
80202a06: e1 c0        	beqz	s1, 0x80202ac6 <.text+0x2ac6>
80202a08: 62 8d        	mv	s10, s8
80202a0a: c2 59        	lw	s3, 0x30(sp)
80202a0c: b2 5b        	lw	s7, 0x2c(sp)
80202a0e: cd a5        	j	0x802030f0 <.text+0x30f0>
80202a10: 66 85        	mv	a0, s9
80202a12: ee 85        	mv	a1, s11
80202a14: 97 f0 ff ff  	auipc	ra, 0xfffff
80202a18: e7 80 e0 83  	jalr	-0x7c2(ra)
80202a1c: 66 85        	mv	a0, s9
80202a1e: ee 85        	mv	a1, s11
80202a20: 97 f0 ff ff  	auipc	ra, 0xfffff
80202a24: e7 80 20 83  	jalr	-0x7ce(ra)
80202a28: 66 85        	mv	a0, s9
80202a2a: ee 85        	mv	a1, s11
80202a2c: 97 f0 ff ff  	auipc	ra, 0xfffff
80202a30: e7 80 60 82  	jalr	-0x7da(ra)
80202a34: 22 85        	mv	a0, s0
80202a36: c2 55        	lw	a1, 0x30(sp)
80202a38: 66 86        	mv	a2, s9
80202a3a: ee 86        	mv	a3, s11
80202a3c: 97 10 00 00  	auipc	ra, 0x1
80202a40: e7 80 40 9e  	jalr	-0x61c(ra) <.text+0x3420>
80202a44: ae 84        	mv	s1, a1
80202a46: 93 6a 45 00  	ori	s5, a0, 0x4
80202a4a: 13 15 09 01  	slli	a0, s2, 0x10
80202a4e: 79 81        	srli	a0, a0, 0x1e
80202a50: 19 cd        	beqz	a0, 0x80202a6e <.text+0x2a6e>
80202a52: 93 d5 0a 01  	srli	a1, s5, 0x10
80202a56: c2 04        	slli	s1, s1, 0x10
80202a58: c5 8d        	or	a1, a1, s1
80202a5a: 2e 95        	add	a0, a0, a1
80202a5c: 93 55 f5 41  	srai	a1, a0, 0x1f
80202a60: 13 56 05 01  	srli	a2, a0, 0x10
80202a64: c2 05        	slli	a1, a1, 0x10
80202a66: b3 e4 c5 00  	or	s1, a1, a2
80202a6a: 42 05        	slli	a0, a0, 0x10
80202a6c: 31 a0        	j	0x80202a78 <.text+0x2a78>
80202a6e: 13 f5 ca ff  	andi	a0, s5, -0x4
80202a72: 93 75 39 00  	andi	a1, s2, 0x3
80202a76: 4d 8d        	or	a0, a0, a1
80202a78: 13 65 45 00  	ori	a0, a0, 0x4
80202a7c: a6 85        	mv	a1, s1
80202a7e: ba 40        	lw	ra, 0x8c(sp)
80202a80: 2a 44        	lw	s0, 0x88(sp)
80202a82: 9a 44        	lw	s1, 0x84(sp)
80202a84: 0a 49        	lw	s2, 0x80(sp)
80202a86: f6 59        	lw	s3, 0x7c(sp)
80202a88: 66 5a        	lw	s4, 0x78(sp)
80202a8a: d6 5a        	lw	s5, 0x74(sp)
80202a8c: 46 5b        	lw	s6, 0x70(sp)
80202a8e: b6 5b        	lw	s7, 0x6c(sp)
80202a90: 26 5c        	lw	s8, 0x68(sp)
80202a92: 96 5c        	lw	s9, 0x64(sp)
80202a94: 06 5d        	lw	s10, 0x60(sp)
80202a96: f6 4d        	lw	s11, 0x5c(sp)
80202a98: 49 61        	addi	sp, sp, 0x90
80202a9a: 82 80        	ret
80202a9c: 66 85        	mv	a0, s9
80202a9e: ee 85        	mv	a1, s11
80202aa0: 97 e0 ff ff  	auipc	ra, 0xffffe
80202aa4: e7 80 20 7b  	jalr	0x7b2(ra)
80202aa8: 13 05 00 04  	li	a0, 0x40
80202aac: e3 68 a4 f6  	bltu	s0, a0, 0x80202a1c <.text+0x2a1c>
80202ab0: 42 55        	lw	a0, 0x30(sp)
80202ab2: ee 85        	mv	a1, s11
80202ab4: 97 10 00 00  	auipc	ra, 0x1
80202ab8: e7 80 a0 db  	jalr	-0x246(ra) <.text+0x386e>
80202abc: 05 89        	andi	a0, a0, 0x1
80202abe: 11 fd        	bnez	a0, 0x802029da <.text+0x29da>
80202ac0: 93 8a 8c 01  	addi	s5, s9, 0x18
80202ac4: 25 bf        	j	0x802029fc <.text+0x29fc>
80202ac6: 37 f5 20 80  	lui	a0, 0x8020f
80202aca: 13 05 45 d9  	addi	a0, a0, -0x26c
80202ace: c1 45        	li	a1, 0x10
80202ad0: 0d 46        	li	a2, 0x3
80202ad2: 97 10 00 00  	auipc	ra, 0x1
80202ad6: e7 80 20 dc  	jalr	-0x23e(ra) <.text+0x3894>
80202ada: aa 84        	mv	s1, a0
80202adc: 66 85        	mv	a0, s9
80202ade: 97 f0 ff ff  	auipc	ra, 0xfffff
80202ae2: e7 80 20 31  	jalr	0x312(ra)
80202ae6: 37 f5 20 80  	lui	a0, 0x8020f
80202aea: 13 05 05 d6  	addi	a0, a0, -0x2a0
80202aee: c8 c4        	sw	a0, 0xc(s1)
80202af0: 63 06 0b 02  	beqz	s6, 0x80202b1c <.text+0x2b1c>
80202af4: 66 85        	mv	a0, s9
80202af6: ee 85        	mv	a1, s11
80202af8: 97 00 00 00  	auipc	ra, 0x0
80202afc: e7 80 40 b3  	jalr	-0x4cc(ra) <.text+0x262c>
80202b00: 66 85        	mv	a0, s9
80202b02: 97 f0 ff ff  	auipc	ra, 0xfffff
80202b06: e7 80 e0 2e  	jalr	0x2ee(ra)
80202b0a: 63 0b 0d 00  	beqz	s10, 0x80202b20 <.text+0x2b20>
80202b0e: 66 85        	mv	a0, s9
80202b10: ee 85        	mv	a1, s11
80202b12: 97 e0 ff ff  	auipc	ra, 0xffffe
80202b16: e7 80 00 74  	jalr	0x740(ra)
80202b1a: 19 a8        	j	0x80202b30 <.text+0x2b30>
80202b1c: 63 1a 0d 00  	bnez	s10, 0x80202b30 <.text+0x2b30>
80202b20: 66 85        	mv	a0, s9
80202b22: ee 85        	mv	a1, s11
80202b24: 97 e0 ff ff  	auipc	ra, 0xffffe
80202b28: e7 80 e0 72  	jalr	0x72e(ra)
80202b2c: 42 55        	lw	a0, 0x30(sp)
80202b2e: 19 a0        	j	0x80202b34 <.text+0x2b34>
80202b30: 32 55        	lw	a0, 0x2c(sp)
80202b32: 3d 89        	andi	a0, a0, 0xf
80202b34: 05 cd        	beqz	a0, 0x80202b6c <.text+0x2b6c>
80202b36: 63 07 0b 00  	beqz	s6, 0x80202b44 <.text+0x2b44>
80202b3a: 66 85        	mv	a0, s9
80202b3c: 97 f0 ff ff  	auipc	ra, 0xfffff
80202b40: e7 80 40 2b  	jalr	0x2b4(ra)
80202b44: 63 1d 0d 02  	bnez	s10, 0x80202b7e <.text+0x2b7e>
80202b48: 66 85        	mv	a0, s9
80202b4a: ee 85        	mv	a1, s11
80202b4c: 97 e0 ff ff  	auipc	ra, 0xffffe
80202b50: e7 80 60 70  	jalr	0x706(ra)
80202b54: 66 85        	mv	a0, s9
80202b56: ee 85        	mv	a1, s11
80202b58: 97 e0 ff ff  	auipc	ra, 0xffffe
80202b5c: e7 80 a0 6f  	jalr	0x6fa(ra)
80202b60: 13 05 00 0c  	li	a0, 0xc0
80202b64: c2 55        	lw	a1, 0x30(sp)
80202b66: 33 c4 a5 02  	div	s0, a1, a0
80202b6a: a9 a0        	j	0x80202bb4 <.text+0x2bb4>
80202b6c: 66 85        	mv	a0, s9
80202b6e: ee 85        	mv	a1, s11
80202b70: 97 e0 ff ff  	auipc	ra, 0xffffe
80202b74: e7 80 20 6e  	jalr	0x6e2(ra)
80202b78: 01 4a        	li	s4, 0x0
80202b7a: c2 59        	lw	s3, 0x30(sp)
80202b7c: 65 a1        	j	0x80203024 <.text+0x3024>
80202b7e: 5a 84        	mv	s0, s6
80202b80: 63 0a 0b 02  	beqz	s6, 0x80202bb4 <.text+0x2bb4>
80202b84: 05 45        	li	a0, 0x1
80202b86: 63 1a ab 00  	bne	s6, a0, 0x80202b9a <.text+0x2b9a>
80202b8a: 85 45        	li	a1, 0x1
80202b8c: 66 85        	mv	a0, s9
80202b8e: 97 e0 ff ff  	auipc	ra, 0xffffe
80202b92: e7 80 40 6c  	jalr	0x6c4(ra)
80202b96: 85 45        	li	a1, 0x1
80202b98: 01 a8        	j	0x80202ba8 <.text+0x2ba8>
80202b9a: 89 45        	li	a1, 0x2
80202b9c: 66 85        	mv	a0, s9
80202b9e: 97 e0 ff ff  	auipc	ra, 0xffffe
80202ba2: e7 80 40 6b  	jalr	0x6b4(ra)
80202ba6: 89 45        	li	a1, 0x2
80202ba8: 66 85        	mv	a0, s9
80202baa: 97 e0 ff ff  	auipc	ra, 0xffffe
80202bae: e7 80 80 6a  	jalr	0x6a8(ra)
80202bb2: 01 44        	li	s0, 0x0
80202bb4: 56 c2        	sw	s5, 0x4(sp)
80202bb6: 26 cc        	sw	s1, 0x18(sp)
80202bb8: 83 aa c4 00  	lw	s5, 0xc(s1)
80202bbc: 56 85        	mv	a0, s5
80202bbe: 97 10 00 00  	auipc	ra, 0x1
80202bc2: e7 80 20 e1  	jalr	-0x1ee(ra) <.text+0x39d0>
80202bc6: 62 c4        	sw	s8, 0x8(sp)
80202bc8: 11 c5        	beqz	a0, 0x80202bd4 <.text+0x2bd4>
80202bca: 83 a5 ca 00  	lw	a1, 0xc(s5)
80202bce: 85 81        	srli	a1, a1, 0x1
80202bd0: 63 de 85 00  	bge	a1, s0, 0x80202bec <.text+0x2bec>
80202bd4: 83 a5 8a 00  	lw	a1, 0x8(s5)
80202bd8: 63 43 b4 00  	blt	s0, a1, 0x80202bde <.text+0x2bde>
80202bdc: a2 85        	mv	a1, s0
80202bde: 01 46        	li	a2, 0x0
80202be0: d6 86        	mv	a3, s5
80202be2: 97 10 00 00  	auipc	ra, 0x1
80202be6: e7 80 e0 e0  	jalr	-0x1f2(ra) <.text+0x39f0>
80202bea: aa 8a        	mv	s5, a0
80202bec: 81 4b        	li	s7, 0x0
80202bee: 01 4a        	li	s4, 0x0
80202bf0: 32 55        	lw	a0, 0x2c(sp)
80202bf2: 3d 89        	andi	a0, a0, 0xf
80202bf4: 2a d0        	sw	a0, 0x20(sp)
80202bf6: 62 45        	lw	a0, 0x18(sp)
80202bf8: 23 26 55 01  	sw	s5, 0xc(a0)
80202bfc: 22 55        	lw	a0, 0x28(sp)
80202bfe: b3 e5 a9 00  	or	a1, s3, a0
80202c02: 2e c8        	sw	a1, 0x10(sp)
80202c04: c2 59        	lw	s3, 0x30(sp)
80202c06: 33 45 35 01  	xor	a0, a0, s3
80202c0a: 2a ca        	sw	a0, 0x14(sp)
80202c0c: 3d 4c        	li	s8, 0xf
80202c0e: 93 fa fd 0f  	andi	s5, s11, 0xff
80202c12: 11 65        	lui	a0, 0x4
80202c14: 11 05        	addi	a0, a0, 0x4
80202c16: 2a c6        	sw	a0, 0xc(sp)
80202c18: 63 85 0a 0a  	beqz	s5, 0x80202cc2 <.text+0x2cc2>
80202c1c: 66 85        	mv	a0, s9
80202c1e: ee 85        	mv	a1, s11
80202c20: 97 00 00 00  	auipc	ra, 0x0
80202c24: e7 80 c0 a0  	jalr	-0x5f4(ra) <.text+0x262c>
80202c28: 66 85        	mv	a0, s9
80202c2a: ee 85        	mv	a1, s11
80202c2c: 97 00 00 00  	auipc	ra, 0x0
80202c30: e7 80 00 a0  	jalr	-0x600(ra) <.text+0x262c>
80202c34: 66 85        	mv	a0, s9
80202c36: ee 85        	mv	a1, s11
80202c38: 97 00 00 00  	auipc	ra, 0x0
80202c3c: e7 80 40 9f  	jalr	-0x60c(ra) <.text+0x262c>
80202c40: 66 85        	mv	a0, s9
80202c42: ee 85        	mv	a1, s11
80202c44: 97 00 00 00  	auipc	ra, 0x0
80202c48: e7 80 80 9e  	jalr	-0x618(ra) <.text+0x262c>
80202c4c: 66 85        	mv	a0, s9
80202c4e: ee 85        	mv	a1, s11
80202c50: 97 00 00 00  	auipc	ra, 0x0
80202c54: e7 80 c0 9d  	jalr	-0x624(ra) <.text+0x262c>
80202c58: 66 85        	mv	a0, s9
80202c5a: ee 85        	mv	a1, s11
80202c5c: 97 00 00 00  	auipc	ra, 0x0
80202c60: e7 80 00 9d  	jalr	-0x630(ra) <.text+0x262c>
80202c64: 66 85        	mv	a0, s9
80202c66: ee 85        	mv	a1, s11
80202c68: 97 00 00 00  	auipc	ra, 0x0
80202c6c: e7 80 40 9c  	jalr	-0x63c(ra) <.text+0x262c>
80202c70: 66 85        	mv	a0, s9
80202c72: ee 85        	mv	a1, s11
80202c74: 97 00 00 00  	auipc	ra, 0x0
80202c78: e7 80 80 9b  	jalr	-0x648(ra) <.text+0x262c>
80202c7c: 66 85        	mv	a0, s9
80202c7e: ee 85        	mv	a1, s11
80202c80: 97 00 00 00  	auipc	ra, 0x0
80202c84: e7 80 c0 9a  	jalr	-0x654(ra) <.text+0x262c>
80202c88: 66 85        	mv	a0, s9
80202c8a: ee 85        	mv	a1, s11
80202c8c: 97 00 00 00  	auipc	ra, 0x0
80202c90: e7 80 00 9a  	jalr	-0x660(ra) <.text+0x262c>
80202c94: 66 85        	mv	a0, s9
80202c96: ee 85        	mv	a1, s11
80202c98: 97 00 00 00  	auipc	ra, 0x0
80202c9c: e7 80 40 99  	jalr	-0x66c(ra) <.text+0x262c>
80202ca0: 66 85        	mv	a0, s9
80202ca2: ee 85        	mv	a1, s11
80202ca4: 97 00 00 00  	auipc	ra, 0x0
80202ca8: e7 80 80 98  	jalr	-0x678(ra) <.text+0x262c>
80202cac: 66 85        	mv	a0, s9
80202cae: ee 85        	mv	a1, s11
80202cb0: 97 00 00 00  	auipc	ra, 0x0
80202cb4: e7 80 c0 97  	jalr	-0x684(ra) <.text+0x262c>
80202cb8: 66 85        	mv	a0, s9
80202cba: 97 f0 ff ff  	auipc	ra, 0xfffff
80202cbe: e7 80 60 13  	jalr	0x136(ra)
80202cc2: 63 11 0d 02  	bnez	s10, 0x80202ce4 <.text+0x2ce4>
80202cc6: 66 85        	mv	a0, s9
80202cc8: ee 85        	mv	a1, s11
80202cca: 97 e0 ff ff  	auipc	ra, 0xffffe
80202cce: e7 80 80 58  	jalr	0x588(ra)
80202cd2: 63 88 0a 02  	beqz	s5, 0x80202d02 <.text+0x2d02>
80202cd6: 22 54        	lw	s0, 0x28(sp)
80202cd8: 52 4d        	lw	s10, 0x14(sp)
80202cda: ee 84        	mv	s1, s11
80202cdc: 05 45        	li	a0, 0x1
80202cde: 63 81 aa 04  	beq	s5, a0, 0x80202d20 <.text+0x2d20>
80202ce2: 35 a8        	j	0x80202d1e <.text+0x2d1e>
80202ce4: 63 82 0a 02  	beqz	s5, 0x80202d08 <.text+0x2d08>
80202ce8: 05 45        	li	a0, 0x1
80202cea: 63 92 aa 02  	bne	s5, a0, 0x80202d0e <.text+0x2d0e>
80202cee: 85 45        	li	a1, 0x1
80202cf0: 85 44        	li	s1, 0x1
80202cf2: 66 85        	mv	a0, s9
80202cf4: 97 e0 ff ff  	auipc	ra, 0xffffe
80202cf8: e7 80 e0 55  	jalr	0x55e(ra)
80202cfc: 01 44        	li	s0, 0x0
80202cfe: 02 5d        	lw	s10, 0x20(sp)
80202d00: 05 a0        	j	0x80202d20 <.text+0x2d20>
80202d02: 22 54        	lw	s0, 0x28(sp)
80202d04: 52 4d        	lw	s10, 0x14(sp)
80202d06: 3d a8        	j	0x80202d44 <.text+0x2d44>
80202d08: 01 44        	li	s0, 0x0
80202d0a: 02 5d        	lw	s10, 0x20(sp)
80202d0c: 25 a8        	j	0x80202d44 <.text+0x2d44>
80202d0e: 89 45        	li	a1, 0x2
80202d10: 66 85        	mv	a0, s9
80202d12: 97 e0 ff ff  	auipc	ra, 0xffffe
80202d16: e7 80 00 54  	jalr	0x540(ra)
80202d1a: 01 44        	li	s0, 0x0
80202d1c: 02 5d        	lw	s10, 0x20(sp)
80202d1e: 89 44        	li	s1, 0x2
80202d20: 66 85        	mv	a0, s9
80202d22: a6 85        	mv	a1, s1
80202d24: 97 e0 ff ff  	auipc	ra, 0xffffe
80202d28: e7 80 e0 52  	jalr	0x52e(ra)
80202d2c: 66 85        	mv	a0, s9
80202d2e: a6 85        	mv	a1, s1
80202d30: 97 e0 ff ff  	auipc	ra, 0xffffe
80202d34: e7 80 20 52  	jalr	0x522(ra)
80202d38: 66 85        	mv	a0, s9
80202d3a: a6 85        	mv	a1, s1
80202d3c: 97 e0 ff ff  	auipc	ra, 0xffffe
80202d40: e7 80 60 51  	jalr	0x516(ra)
80202d44: 33 45 a4 01  	xor	a0, s0, s10
80202d48: 93 15 05 01  	slli	a1, a0, 0x10
80202d4c: 41 81        	srli	a0, a0, 0x10
80202d4e: 42 04        	slli	s0, s0, 0x10
80202d50: 41 8d        	or	a0, a0, s0
80202d52: 33 45 75 01  	xor	a0, a0, s7
80202d56: b3 c5 85 01  	xor	a1, a1, s8
80202d5a: b9 81        	srli	a1, a1, 0xe
80202d5c: 4d 8d        	or	a0, a0, a1
80202d5e: 13 74 fa 03  	andi	s0, s4, 0x3f
80202d62: 63 00 05 24  	beqz	a0, 0x80202fa2 <.text+0x2fa2>
80202d66: 29 e4        	bnez	s0, 0x80202db0 <.text+0x2db0>
80202d68: 62 44        	lw	s0, 0x18(sp)
80202d6a: 44 44        	lw	s1, 0xc(s0)
80202d6c: 26 85        	mv	a0, s1
80202d6e: 97 10 00 00  	auipc	ra, 0x1
80202d72: e7 80 20 c6  	jalr	-0x39e(ra) <.text+0x39d0>
80202d76: 19 e9        	bnez	a0, 0x80202d8c <.text+0x2d8c>
80202d78: 8c 44        	lw	a1, 0x8(s1)
80202d7a: 85 05        	addi	a1, a1, 0x1
80202d7c: 05 46        	li	a2, 0x1
80202d7e: a6 86        	mv	a3, s1
80202d80: 97 10 00 00  	auipc	ra, 0x1
80202d84: e7 80 00 c7  	jalr	-0x390(ra) <.text+0x39f0>
80202d88: aa 84        	mv	s1, a0
80202d8a: 48 c4        	sw	a0, 0xc(s0)
80202d8c: c8 44        	lw	a0, 0xc(s1)
80202d8e: 80 44        	lw	s0, 0x8(s1)
80202d90: 93 55 15 00  	srli	a1, a0, 0x1
80202d94: 13 0d 14 00  	addi	s10, s0, 0x1
80202d98: 63 7e b4 1a  	bgeu	s0, a1, 0x80202f54 <.text+0x2f54>
80202d9c: 23 a4 a4 01  	sw	s10, 0x8(s1)
80202da0: 0e 04        	slli	s0, s0, 0x3
80202da2: 26 94        	add	s0, s0, s1
80202da4: 23 2a 74 01  	sw	s7, 0x14(s0)
80202da8: 23 28 84 01  	sw	s8, 0x10(s0)
80202dac: 62 45        	lw	a0, 0x18(sp)
80202dae: 44 c5        	sw	s1, 0xc(a0)
80202db0: 63 8e 0a 00  	beqz	s5, 0x80202dcc <.text+0x2dcc>
80202db4: 66 85        	mv	a0, s9
80202db6: ee 85        	mv	a1, s11
80202db8: 97 e0 ff ff  	auipc	ra, 0xffffe
80202dbc: e7 80 a0 49  	jalr	0x49a(ra)
80202dc0: 66 85        	mv	a0, s9
80202dc2: ee 85        	mv	a1, s11
80202dc4: 97 e0 ff ff  	auipc	ra, 0xffffe
80202dc8: e7 80 e0 48  	jalr	0x48e(ra)
80202dcc: 13 75 cc 00  	andi	a0, s8, 0xc
80202dd0: 12 5d        	lw	s10, 0x24(sp)
80202dd2: a1 45        	li	a1, 0x8
80202dd4: 63 04 b5 16  	beq	a0, a1, 0x80202f3c <.text+0x2f3c>
80202dd8: 66 85        	mv	a0, s9
80202dda: ee 85        	mv	a1, s11
80202ddc: 97 e0 ff ff  	auipc	ra, 0xffffe
80202de0: e7 80 60 47  	jalr	0x476(ra)
80202de4: 63 88 0a 00  	beqz	s5, 0x80202df4 <.text+0x2df4>
80202de8: 66 85        	mv	a0, s9
80202dea: ee 85        	mv	a1, s11
80202dec: 97 e0 ff ff  	auipc	ra, 0xffffe
80202df0: e7 80 60 46  	jalr	0x466(ra)
80202df4: ee 85        	mv	a1, s11
80202df6: 4e 84        	mv	s0, s3
80202df8: 63 0c 0d 00  	beqz	s10, 0x80202e10 <.text+0x2e10>
80202dfc: 02 54        	lw	s0, 0x20(sp)
80202dfe: 63 8e 0a 00  	beqz	s5, 0x80202e1a <.text+0x2e1a>
80202e02: ee 85        	mv	a1, s11
80202e04: 02 54        	lw	s0, 0x20(sp)
80202e06: 05 45        	li	a0, 0x1
80202e08: 63 84 aa 00  	beq	s5, a0, 0x80202e10 <.text+0x2e10>
80202e0c: 89 45        	li	a1, 0x2
80202e0e: 02 54        	lw	s0, 0x20(sp)
80202e10: 66 85        	mv	a0, s9
80202e12: 97 e0 ff ff  	auipc	ra, 0xffffe
80202e16: e7 80 00 44  	jalr	0x440(ra)
80202e1a: 13 55 0c 01  	srli	a0, s8, 0x10
80202e1e: 93 94 0b 01  	slli	s1, s7, 0x10
80202e22: c9 8c        	or	s1, s1, a0
80202e24: 63 de 84 44  	bge	s1, s0, 0x80203280 <.text+0x3280>
80202e28: 05 0a        	addi	s4, s4, 0x1
80202e2a: 63 88 0a 02  	beqz	s5, 0x80202e5a <.text+0x2e5a>
80202e2e: 66 85        	mv	a0, s9
80202e30: ee 85        	mv	a1, s11
80202e32: 97 e0 ff ff  	auipc	ra, 0xffffe
80202e36: e7 80 00 42  	jalr	0x420(ra)
80202e3a: 66 85        	mv	a0, s9
80202e3c: ee 85        	mv	a1, s11
80202e3e: 97 e0 ff ff  	auipc	ra, 0xffffe
80202e42: e7 80 40 41  	jalr	0x414(ra)
80202e46: 72 44        	lw	s0, 0x1c(sp)
80202e48: 63 0c 0d 00  	beqz	s10, 0x80202e60 <.text+0x2e60>
80202e4c: 66 85        	mv	a0, s9
80202e4e: ee 85        	mv	a1, s11
80202e50: 97 e0 ff ff  	auipc	ra, 0xffffe
80202e54: e7 80 20 40  	jalr	0x402(ra)
80202e58: 8d a8        	j	0x80202eca <.text+0x2eca>
80202e5a: 72 44        	lw	s0, 0x1c(sp)
80202e5c: 63 17 0d 06  	bnez	s10, 0x80202eca <.text+0x2eca>
80202e60: 66 85        	mv	a0, s9
80202e62: ee 85        	mv	a1, s11
80202e64: 97 e0 ff ff  	auipc	ra, 0xffffe
80202e68: e7 80 e0 3e  	jalr	0x3ee(ra)
80202e6c: 42 45        	lw	a0, 0x10(sp)
80202e6e: 63 4f 05 04  	bltz	a0, 0x80202ecc <.text+0x2ecc>
80202e72: 31 65        	lui	a0, 0xc
80202e74: 33 75 ac 00  	and	a0, s8, a0
80202e78: 01 e5        	bnez	a0, 0x80202e80 <.text+0x2e80>
80202e7a: 13 75 1c 00  	andi	a0, s8, 0x1
80202e7e: 65 c9        	beqz	a0, 0x80202f6e <.text+0x2f6e>
80202e80: 66 85        	mv	a0, s9
80202e82: ee 85        	mv	a1, s11
80202e84: 97 e0 ff ff  	auipc	ra, 0xffffe
80202e88: e7 80 e0 3c  	jalr	0x3ce(ra)
80202e8c: 26 85        	mv	a0, s1
80202e8e: ce 85        	mv	a1, s3
80202e90: 66 86        	mv	a2, s9
80202e92: ee 86        	mv	a3, s11
80202e94: 97 10 00 00  	auipc	ra, 0x1
80202e98: e7 80 80 84  	jalr	-0x7b8(ra) <.text+0x36dc>
80202e9c: 2a 8d        	mv	s10, a0
80202e9e: 66 85        	mv	a0, s9
80202ea0: ee 85        	mv	a1, s11
80202ea2: 97 e0 ff ff  	auipc	ra, 0xffffe
80202ea6: e7 80 00 3b  	jalr	0x3b0(ra)
80202eaa: 13 45 4d 00  	xori	a0, s10, 0x4
80202eae: b1 65        	lui	a1, 0xc
80202eb0: b3 75 bc 00  	and	a1, s8, a1
80202eb4: 4d 8d        	or	a0, a0, a1
80202eb6: 93 d5 f4 41  	srai	a1, s1, 0x1f
80202eba: 05 ed        	bnez	a0, 0x80202ef2 <.text+0x2ef2>
80202ebc: 01 47        	li	a4, 0x0
80202ebe: 13 d6 f4 41  	srai	a2, s1, 0x1f
80202ec2: ad 8c        	xor	s1, s1, a1
80202ec4: b2 86        	mv	a3, a2
80202ec6: b2 45        	lw	a1, 0xc(sp)
80202ec8: 99 a0        	j	0x80202f0e <.text+0x2f0e>
80202eca: 45 d4        	beqz	s0, 0x80202e72 <.text+0x2e72>
80202ecc: 66 85        	mv	a0, s9
80202ece: ee 85        	mv	a1, s11
80202ed0: 97 e0 ff ff  	auipc	ra, 0xffffe
80202ed4: e7 80 20 38  	jalr	0x382(ra)
80202ed8: 66 85        	mv	a0, s9
80202eda: ee 85        	mv	a1, s11
80202edc: 97 e0 ff ff  	auipc	ra, 0xffffe
80202ee0: e7 80 60 37  	jalr	0x376(ra)
80202ee4: 93 85 14 00  	addi	a1, s1, 0x1
80202ee8: 7d 55        	li	a0, -0x1
80202eea: 63 c6 a4 02  	blt	s1, a0, 0x80202f16 <.text+0x2f16>
80202eee: 2e 86        	mv	a2, a1
80202ef0: 2d a0        	j	0x80202f1a <.text+0x2f1a>
80202ef2: 81 46        	li	a3, 0x0
80202ef4: 01 45        	li	a0, 0x0
80202ef6: 13 96 0b 01  	slli	a2, s7, 0x10
80202efa: 7d 86        	srai	a2, a2, 0x1f
80202efc: 25 8e        	xor	a2, a2, s1
80202efe: b1 8d        	xor	a1, a1, a2
80202f00: ea 95        	add	a1, a1, s10
80202f02: 93 d4 f5 41  	srai	s1, a1, 0x1f
80202f06: 33 c6 b4 00  	xor	a2, s1, a1
80202f0a: 95 45        	li	a1, 0x5
80202f0c: 26 87        	mv	a4, s1
80202f0e: 12 5d        	lw	s10, 0x24(sp)
80202f10: 25 8e        	xor	a2, a2, s1
80202f12: b9 8e        	xor	a3, a3, a4
80202f14: 01 a8        	j	0x80202f24 <.text+0x2f24>
80202f16: 79 56        	li	a2, -0x2
80202f18: 05 8e        	sub	a2, a2, s1
80202f1a: 01 45        	li	a0, 0x0
80202f1c: 93 d6 f5 41  	srai	a3, a1, 0x1f
80202f20: 35 8e        	xor	a2, a2, a3
80202f22: b5 45        	li	a1, 0xd
80202f24: 13 57 06 01  	srli	a4, a2, 0x10
80202f28: c2 06        	slli	a3, a3, 0x10
80202f2a: 42 06        	slli	a2, a2, 0x10
80202f2c: 33 6c b6 00  	or	s8, a2, a1
80202f30: 55 8d        	or	a0, a0, a3
80202f32: b3 6b e5 00  	or	s7, a0, a4
80202f36: e3 93 0a ce  	bnez	s5, 0x80202c1c <.text+0x2c1c>
80202f3a: 61 b3        	j	0x80202cc2 <.text+0x2cc2>
80202f3c: 62 85        	mv	a0, s8
80202f3e: de 85        	mv	a1, s7
80202f40: 4e 86        	mv	a2, s3
80202f42: e6 86        	mv	a3, s9
80202f44: 6e 87        	mv	a4, s11
80202f46: 97 f0 ff ff  	auipc	ra, 0xfffff
80202f4a: e7 80 00 77  	jalr	0x770(ra)
80202f4e: 2a 8c        	mv	s8, a0
80202f50: ae 8b        	mv	s7, a1
80202f52: 59 b5        	j	0x80202dd8 <.text+0x2dd8>
80202f54: 13 35 25 00  	sltiu	a0, a0, 0x2
80202f58: 13 45 15 00  	xori	a0, a0, 0x1
80202f5c: 05 46        	li	a2, 0x1
80202f5e: ea 85        	mv	a1, s10
80202f60: a6 86        	mv	a3, s1
80202f62: 97 10 00 00  	auipc	ra, 0x1
80202f66: e7 80 e0 a8  	jalr	-0x572(ra) <.text+0x39f0>
80202f6a: aa 84        	mv	s1, a0
80202f6c: 05 bd        	j	0x80202d9c <.text+0x2d9c>
80202f6e: 62 85        	mv	a0, s8
80202f70: de 85        	mv	a1, s7
80202f72: 4e 86        	mv	a2, s3
80202f74: e6 86        	mv	a3, s9
80202f76: 6e 87        	mv	a4, s11
80202f78: 97 f0 ff ff  	auipc	ra, 0xfffff
80202f7c: e7 80 60 49  	jalr	0x496(ra)
80202f80: aa 84        	mv	s1, a0
80202f82: 2e 84        	mv	s0, a1
80202f84: 66 85        	mv	a0, s9
80202f86: ee 85        	mv	a1, s11
80202f88: 97 e0 ff ff  	auipc	ra, 0xffffe
80202f8c: e7 80 a0 2c  	jalr	0x2ca(ra)
80202f90: 13 fc 24 ff  	andi	s8, s1, -0xe
80202f94: 05 0c        	addi	s8, s8, 0x1
80202f96: a2 8b        	mv	s7, s0
80202f98: 13 15 04 01  	slli	a0, s0, 0x10
80202f9c: c1 80        	srli	s1, s1, 0x10
80202f9e: c9 8c        	or	s1, s1, a0
80202fa0: f5 b5        	j	0x80202e8c <.text+0x2e8c>
80202fa2: 66 85        	mv	a0, s9
80202fa4: ee 85        	mv	a1, s11
80202fa6: 97 e0 ff ff  	auipc	ra, 0xffffe
80202faa: e7 80 c0 2a  	jalr	0x2ac(ra)
80202fae: 66 85        	mv	a0, s9
80202fb0: ee 85        	mv	a1, s11
80202fb2: 97 e0 ff ff  	auipc	ra, 0xffffe
80202fb6: e7 80 00 2a  	jalr	0x2a0(ra)
80202fba: 66 85        	mv	a0, s9
80202fbc: ee 85        	mv	a1, s11
80202fbe: 97 e0 ff ff  	auipc	ra, 0xffffe
80202fc2: e7 80 40 29  	jalr	0x294(ra)
80202fc6: 66 85        	mv	a0, s9
80202fc8: ee 85        	mv	a1, s11
80202fca: 97 e0 ff ff  	auipc	ra, 0xffffe
80202fce: e7 80 80 28  	jalr	0x288(ra)
80202fd2: 66 85        	mv	a0, s9
80202fd4: ee 85        	mv	a1, s11
80202fd6: 97 e0 ff ff  	auipc	ra, 0xffffe
80202fda: e7 80 c0 27  	jalr	0x27c(ra)
80202fde: 66 85        	mv	a0, s9
80202fe0: ee 85        	mv	a1, s11
80202fe2: 97 e0 ff ff  	auipc	ra, 0xffffe
80202fe6: e7 80 00 27  	jalr	0x270(ra)
80202fea: 66 85        	mv	a0, s9
80202fec: ee 85        	mv	a1, s11
80202fee: 97 e0 ff ff  	auipc	ra, 0xffffe
80202ff2: e7 80 40 26  	jalr	0x264(ra)
80202ff6: 66 85        	mv	a0, s9
80202ff8: ee 85        	mv	a1, s11
80202ffa: 97 e0 ff ff  	auipc	ra, 0xffffe
80202ffe: e7 80 80 25  	jalr	0x258(ra)
80203002: 92 55        	lw	a1, 0x24(sp)
80203004: 15 c0        	beqz	s0, 0x80203028 <.text+0x3028>
80203006: 66 85        	mv	a0, s9
80203008: ee 85        	mv	a1, s11
8020300a: 97 e0 ff ff  	auipc	ra, 0xffffe
8020300e: e7 80 80 24  	jalr	0x248(ra)
80203012: 66 85        	mv	a0, s9
80203014: ee 85        	mv	a1, s11
80203016: 97 e0 ff ff  	auipc	ra, 0xffffe
8020301a: e7 80 c0 23  	jalr	0x23c(ra)
8020301e: 22 4c        	lw	s8, 0x8(sp)
80203020: 92 4a        	lw	s5, 0x4(sp)
80203022: e2 44        	lw	s1, 0x18(sp)
80203024: b2 5b        	lw	s7, 0x2c(sp)
80203026: 69 a0        	j	0x802030b0 <.text+0x30b0>
80203028: 4e 85        	mv	a0, s3
8020302a: b2 5b        	lw	s7, 0x2c(sp)
8020302c: 91 c1        	beqz	a1, 0x80203030 <.text+0x3030>
8020302e: 02 55        	lw	a0, 0x20(sp)
80203030: 13 5d f5 41  	srai	s10, a0, 0x1f
80203034: 33 44 ad 00  	xor	s0, s10, a0
80203038: 63 8e 0a 00  	beqz	s5, 0x80203054 <.text+0x3054>
8020303c: 66 85        	mv	a0, s9
8020303e: ee 85        	mv	a1, s11
80203040: 97 e0 ff ff  	auipc	ra, 0xffffe
80203044: e7 80 20 21  	jalr	0x212(ra)
80203048: 66 85        	mv	a0, s9
8020304a: ee 85        	mv	a1, s11
8020304c: 97 e0 ff ff  	auipc	ra, 0xffffe
80203050: e7 80 60 20  	jalr	0x206(ra)
80203054: 33 4c a4 01  	xor	s8, s0, s10
80203058: 62 44        	lw	s0, 0x18(sp)
8020305a: 44 44        	lw	s1, 0xc(s0)
8020305c: 93 5a 0c 01  	srli	s5, s8, 0x10
80203060: 42 0d        	slli	s10, s10, 0x10
80203062: 42 0c        	slli	s8, s8, 0x10
80203064: 26 85        	mv	a0, s1
80203066: 97 10 00 00  	auipc	ra, 0x1
8020306a: e7 80 a0 96  	jalr	-0x696(ra) <.text+0x39d0>
8020306e: 19 e9        	bnez	a0, 0x80203084 <.text+0x3084>
80203070: 8c 44        	lw	a1, 0x8(s1)
80203072: 85 05        	addi	a1, a1, 0x1
80203074: 05 46        	li	a2, 0x1
80203076: a6 86        	mv	a3, s1
80203078: 97 10 00 00  	auipc	ra, 0x1
8020307c: e7 80 80 97  	jalr	-0x688(ra) <.text+0x39f0>
80203080: aa 84        	mv	s1, a0
80203082: 48 c4        	sw	a0, 0xc(s0)
80203084: c8 44        	lw	a0, 0xc(s1)
80203086: 80 44        	lw	s0, 0x8(s1)
80203088: 33 6d 5d 01  	or	s10, s10, s5
8020308c: 1d 0c        	addi	s8, s8, 0x7
8020308e: 93 55 15 00  	srli	a1, a0, 0x1
80203092: 93 0a 14 00  	addi	s5, s0, 0x1
80203096: 63 77 b4 20  	bgeu	s0, a1, 0x802032a4 <.text+0x32a4>
8020309a: 23 a4 54 01  	sw	s5, 0x8(s1)
8020309e: 0e 04        	slli	s0, s0, 0x3
802030a0: 26 94        	add	s0, s0, s1
802030a2: 23 2a a4 01  	sw	s10, 0x14(s0)
802030a6: 23 28 84 01  	sw	s8, 0x10(s0)
802030aa: 22 4c        	lw	s8, 0x8(sp)
802030ac: 92 4a        	lw	s5, 0x4(sp)
802030ae: e2 44        	lw	s1, 0x18(sp)
802030b0: 66 85        	mv	a0, s9
802030b2: ee 85        	mv	a1, s11
802030b4: 97 e0 ff ff  	auipc	ra, 0xffffe
802030b8: e7 80 e0 19  	jalr	0x19e(ra)
802030bc: 23 a4 44 01  	sw	s4, 0x8(s1)
802030c0: 26 85        	mv	a0, s1
802030c2: 97 f0 ff ff  	auipc	ra, 0xfffff
802030c6: e7 80 e0 d2  	jalr	-0x2d2(ra)
802030ca: 2f a4 0a 14  	lr.w.aq	s0, (s5)
802030ce: 01 e4        	bnez	s0, 0x802030d6 <.text+0x30d6>
802030d0: 2f a5 9a 1a  	sc.w.rl	a0, s1, (s5)
802030d4: 7d f9        	bnez	a0, 0x802030ca <.text+0x30ca>
802030d6: 26 85        	mv	a0, s1
802030d8: 97 00 00 00  	auipc	ra, 0x0
802030dc: e7 80 40 7c  	jalr	0x7c4(ra) <.text+0x389c>
802030e0: 62 8d        	mv	s10, s8
802030e2: 19 c4        	beqz	s0, 0x802030f0 <.text+0x30f0>
802030e4: 26 85        	mv	a0, s1
802030e6: 97 00 00 00  	auipc	ra, 0x0
802030ea: e7 80 60 7b  	jalr	0x7b6(ra) <.text+0x389c>
802030ee: a2 84        	mv	s1, s0
802030f0: 88 44        	lw	a0, 0x8(s1)
802030f2: 13 fc fb 00  	andi	s8, s7, 0xf
802030f6: 52 54        	lw	s0, 0x34(sp)
802030f8: 63 18 85 02  	bne	a0, s0, 0x80203128 <.text+0x3128>
802030fc: 09 45        	li	a0, 0x2
802030fe: 63 0d ab 0a  	beq	s6, a0, 0x802031b8 <.text+0x31b8>
80203102: 05 45        	li	a0, 0x1
80203104: 12 54        	lw	s0, 0x24(sp)
80203106: 63 1e ab 0c  	bne	s6, a0, 0x802031e2 <.text+0x31e2>
8020310a: 85 45        	li	a1, 0x1
8020310c: 66 85        	mv	a0, s9
8020310e: 97 e0 ff ff  	auipc	ra, 0xffffe
80203112: e7 80 40 14  	jalr	0x144(ra)
80203116: 19 c0        	beqz	s0, 0x8020311c <.text+0x311c>
80203118: 93 f9 fb 00  	andi	s3, s7, 0xf
8020311c: 13 d4 f9 41  	srai	s0, s3, 0x1f
80203120: b3 44 34 01  	xor	s1, s0, s3
80203124: 85 45        	li	a1, 0x1
80203126: 45 a8        	j	0x802031d6 <.text+0x31d6>
80203128: 66 85        	mv	a0, s9
8020312a: ee 85        	mv	a1, s11
8020312c: 97 e0 ff ff  	auipc	ra, 0xffffe
80203130: e7 80 60 12  	jalr	0x126(ra)
80203134: c8 44        	lw	a0, 0xc(s1)
80203136: 10 45        	lw	a2, 0x8(a0)
80203138: 93 55 64 00  	srli	a1, s0, 0x6
8020313c: 63 f4 c5 14  	bgeu	a1, a2, 0x80203284 <.text+0x3284>
80203140: 8e 05        	slli	a1, a1, 0x3
80203142: 2e 95        	add	a0, a0, a1
80203144: 44 49        	lw	s1, 0x14(a0)
80203146: 83 2a 05 01  	lw	s5, 0x10(a0)
8020314a: 13 7a f4 03  	andi	s4, s0, 0x3f
8020314e: 63 0e 0a 04  	beqz	s4, 0x802031aa <.text+0x31aa>
80203152: 63 07 0b 00  	beqz	s6, 0x80203160 <.text+0x3160>
80203156: 66 85        	mv	a0, s9
80203158: 97 f0 ff ff  	auipc	ra, 0xfffff
8020315c: e7 80 80 c9  	jalr	-0x368(ra)
80203160: 12 55        	lw	a0, 0x24(sp)
80203162: 4d e1        	bnez	a0, 0x80203204 <.text+0x3204>
80203164: 66 85        	mv	a0, s9
80203166: ee 85        	mv	a1, s11
80203168: 97 e0 ff ff  	auipc	ra, 0xffffe
8020316c: e7 80 a0 0e  	jalr	0xea(ra)
80203170: 13 f5 89 ff  	andi	a0, s3, -0x8
80203174: 93 15 3d 01  	slli	a1, s10, 0x13
80203178: 4d 8d        	or	a0, a0, a1
8020317a: 63 56 05 10  	bgez	a0, 0x80203286 <.text+0x3286>
8020317e: 63 08 0b 00  	beqz	s6, 0x8020318e <.text+0x318e>
80203182: 66 85        	mv	a0, s9
80203184: ee 85        	mv	a1, s11
80203186: 97 e0 ff ff  	auipc	ra, 0xffffe
8020318a: e7 80 c0 0c  	jalr	0xcc(ra)
8020318e: d1 0c        	addi	s9, s9, 0x14
80203190: 88 08        	addi	a0, sp, 0x50
80203192: e6 85        	mv	a1, s9
80203194: 4e 86        	mv	a2, s3
80203196: d6 86        	mv	a3, s5
80203198: 26 87        	mv	a4, s1
8020319a: d2 87        	mv	a5, s4
8020319c: 97 00 00 00  	auipc	ra, 0x0
802031a0: e7 80 80 70  	jalr	0x708(ra) <.text+0x38a4>
802031a4: d6 44        	lw	s1, 0x54(sp)
802031a6: c6 4a        	lw	s5, 0x50(sp)
802031a8: 4d b0        	j	0x80202a4a <.text+0x2a4a>
802031aa: 66 85        	mv	a0, s9
802031ac: ee 85        	mv	a1, s11
802031ae: 97 e0 ff ff  	auipc	ra, 0xffffe
802031b2: e7 80 40 0a  	jalr	0xa4(ra)
802031b6: 51 b8        	j	0x80202a4a <.text+0x2a4a>
802031b8: 89 45        	li	a1, 0x2
802031ba: 66 85        	mv	a0, s9
802031bc: 97 e0 ff ff  	auipc	ra, 0xffffe
802031c0: e7 80 60 09  	jalr	0x96(ra)
802031c4: 12 55        	lw	a0, 0x24(sp)
802031c6: 19 c1        	beqz	a0, 0x802031cc <.text+0x31cc>
802031c8: 93 f9 fb 00  	andi	s3, s7, 0xf
802031cc: 13 d4 f9 41  	srai	s0, s3, 0x1f
802031d0: b3 44 34 01  	xor	s1, s0, s3
802031d4: 89 45        	li	a1, 0x2
802031d6: 66 85        	mv	a0, s9
802031d8: 97 e0 ff ff  	auipc	ra, 0xffffe
802031dc: e7 80 a0 07  	jalr	0x7a(ra)
802031e0: 39 a0        	j	0x802031ee <.text+0x31ee>
802031e2: 11 c0        	beqz	s0, 0x802031e6 <.text+0x31e6>
802031e4: e2 89        	mv	s3, s8
802031e6: 13 d4 f9 41  	srai	s0, s3, 0x1f
802031ea: b3 44 34 01  	xor	s1, s0, s3
802031ee: 33 c5 84 00  	xor	a0, s1, s0
802031f2: 93 55 05 01  	srli	a1, a0, 0x10
802031f6: 42 04        	slli	s0, s0, 0x10
802031f8: b3 64 b4 00  	or	s1, s0, a1
802031fc: 42 05        	slli	a0, a0, 0x10
802031fe: 93 0a 75 00  	addi	s5, a0, 0x7
80203202: a1 b0        	j	0x80202a4a <.text+0x2a4a>
80203204: 09 45        	li	a0, 0x2
80203206: 63 0d ab 00  	beq	s6, a0, 0x80203220 <.text+0x3220>
8020320a: 05 45        	li	a0, 0x1
8020320c: 63 16 ab 02  	bne	s6, a0, 0x80203238 <.text+0x3238>
80203210: 85 45        	li	a1, 0x1
80203212: 66 85        	mv	a0, s9
80203214: 97 e0 ff ff  	auipc	ra, 0xffffe
80203218: e7 80 e0 03  	jalr	0x3e(ra)
8020321c: 85 45        	li	a1, 0x1
8020321e: 01 a8        	j	0x8020322e <.text+0x322e>
80203220: 89 45        	li	a1, 0x2
80203222: 66 85        	mv	a0, s9
80203224: 97 e0 ff ff  	auipc	ra, 0xffffe
80203228: e7 80 e0 02  	jalr	0x2e(ra)
8020322c: 89 45        	li	a1, 0x2
8020322e: 66 85        	mv	a0, s9
80203230: 97 e0 ff ff  	auipc	ra, 0xffffe
80203234: e7 80 20 02  	jalr	0x22(ra)
80203238: ce c0        	sw	s3, 0x40(sp)
8020323a: e6 c2        	sw	s9, 0x44(sp)
8020323c: 82 c6        	sw	zero, 0x4c(sp)
8020323e: ea c4        	sw	s10, 0x48(sp)
80203240: 28 18        	addi	a0, sp, 0x38
80203242: 8c 00        	addi	a1, sp, 0x40
80203244: 62 86        	mv	a2, s8
80203246: d6 86        	mv	a3, s5
80203248: 26 87        	mv	a4, s1
8020324a: d2 87        	mv	a5, s4
8020324c: 97 00 00 00  	auipc	ra, 0x0
80203250: e7 80 80 65  	jalr	0x658(ra) <.text+0x38a4>
80203254: f2 54        	lw	s1, 0x3c(sp)
80203256: e2 5a        	lw	s5, 0x38(sp)
80203258: 6f f0 2f ff  	j	0x80202a4a <.text+0x2a4a>
8020325c: 66 85        	mv	a0, s9
8020325e: ee 85        	mv	a1, s11
80203260: 97 e0 ff ff  	auipc	ra, 0xffffe
80203264: e7 80 20 ff  	jalr	-0xe(ra)
80203268: 52 55        	lw	a0, 0x34(sp)
8020326a: de 85        	mv	a1, s7
8020326c: 66 86        	mv	a2, s9
8020326e: ee 86        	mv	a3, s11
80203270: 97 00 00 00  	auipc	ra, 0x0
80203274: e7 80 20 3f  	jalr	0x3f2(ra) <.text+0x3662>
80203278: aa 8a        	mv	s5, a0
8020327a: ae 84        	mv	s1, a1
8020327c: 6f f0 ef fc  	j	0x80202a4a <.text+0x2a4a>
80203280: 00 00        	unimp
80203282: 00 00        	unimp
80203284: 00 00        	unimp
80203286: 66 85        	mv	a0, s9
80203288: ee 85        	mv	a1, s11
8020328a: 97 e0 ff ff  	auipc	ra, 0xffffe
8020328e: e7 80 80 fc  	jalr	-0x38(ra)
80203292: 4e 85        	mv	a0, s3
80203294: e6 85        	mv	a1, s9
80203296: 97 f0 ff ff  	auipc	ra, 0xfffff
8020329a: e7 80 20 b6  	jalr	-0x49e(ra)
8020329e: aa 8c        	mv	s9, a0
802032a0: ae 89        	mv	s3, a1
802032a2: fd b5        	j	0x80203190 <.text+0x3190>
802032a4: 13 35 25 00  	sltiu	a0, a0, 0x2
802032a8: 13 45 15 00  	xori	a0, a0, 0x1
802032ac: 05 46        	li	a2, 0x1
802032ae: d6 85        	mv	a1, s5
802032b0: a6 86        	mv	a3, s1
802032b2: 97 00 00 00  	auipc	ra, 0x0
802032b6: e7 80 e0 73  	jalr	0x73e(ra) <.text+0x39f0>
802032ba: aa 84        	mv	s1, a0
802032bc: 62 45        	lw	a0, 0x18(sp)
802032be: 44 c5        	sw	s1, 0xc(a0)
802032c0: e9 bb        	j	0x8020309a <.text+0x309a>
802032c2: 97 32 00 00  	auipc	t0, 0x3
802032c6: e7 82 e2 0a  	jalr	t0, 0xae(t0) <.text+0x6370>
802032ca: b6 89        	mv	s3, a3
802032cc: 32 8a        	mv	s4, a2
802032ce: 63 4a 05 12  	bltz	a0, 0x80203402 <.text+0x3402>
802032d2: 01 4b        	li	s6, 0x0
802032d4: aa 84        	mv	s1, a0
802032d6: 61 c9        	beqz	a0, 0x802033a6 <.text+0x33a6>
802032d8: 13 d6 89 00  	srli	a2, s3, 0x8
802032dc: 13 d5 09 01  	srli	a0, s3, 0x10
802032e0: 93 76 f6 0f  	andi	a3, a2, 0xff
802032e4: 36 c2        	sw	a3, 0x4(sp)
802032e6: 32 c0        	sw	a2, 0x0(sp)
802032e8: 93 7c 06 01  	andi	s9, a2, 0x10
802032ec: 2d 81        	srli	a0, a0, 0xb
802032ee: 2e c4        	sw	a1, 0x8(sp)
802032f0: fd 81        	srli	a1, a1, 0x1f
802032f2: 4d 8d        	or	a0, a0, a1
802032f4: 05 89        	andi	a0, a0, 0x1
802032f6: 91 45        	li	a1, 0x4
802032f8: 33 9d a5 00  	sll	s10, a1, a0
802032fc: 3d 49        	li	s2, 0xf
802032fe: 13 fc f9 0f  	andi	s8, s3, 0xff
80203302: b3 3d 90 01  	snez	s11, s9
80203306: f9 5b        	li	s7, -0x2
80203308: 63 0d 0c 00  	beqz	s8, 0x80203322 <.text+0x3322>
8020330c: 52 85        	mv	a0, s4
8020330e: ce 85        	mv	a1, s3
80203310: 97 f0 ff ff  	auipc	ra, 0xfffff
80203314: e7 80 c0 31  	jalr	0x31c(ra)
80203318: 52 85        	mv	a0, s4
8020331a: 97 f0 ff ff  	auipc	ra, 0xfffff
8020331e: e7 80 60 ad  	jalr	-0x52a(ra)
80203322: 13 75 c9 00  	andi	a0, s2, 0xc
80203326: 33 45 ad 00  	xor	a0, s10, a0
8020332a: 13 35 15 00  	seqz	a0, a0
8020332e: 33 f5 ad 00  	and	a0, s11, a0
80203332: 21 ed        	bnez	a0, 0x8020338a <.text+0x338a>
80203334: 63 08 0c 00  	beqz	s8, 0x80203344 <.text+0x3344>
80203338: 52 85        	mv	a0, s4
8020333a: ce 85        	mv	a1, s3
8020333c: 97 e0 ff ff  	auipc	ra, 0xffffe
80203340: e7 80 60 f1  	jalr	-0xea(ra)
80203344: 13 54 09 01  	srli	s0, s2, 0x10
80203348: 93 1a 0b 01  	slli	s5, s6, 0x10
8020334c: 63 95 0c 06  	bnez	s9, 0x802033b6 <.text+0x33b6>
80203350: 52 85        	mv	a0, s4
80203352: ce 85        	mv	a1, s3
80203354: 97 e0 ff ff  	auipc	ra, 0xffffe
80203358: e7 80 e0 ef  	jalr	-0x102(ra)
8020335c: b3 65 54 01  	or	a1, s0, s5
80203360: 13 85 15 00  	addi	a0, a1, 0x1
80203364: 63 44 05 00  	bltz	a0, 0x8020336c <.text+0x336c>
80203368: aa 85        	mv	a1, a0
8020336a: 19 a0        	j	0x80203370 <.text+0x3370>
8020336c: b3 85 bb 40  	sub	a1, s7, a1
80203370: 7d 85        	srai	a0, a0, 0x1f
80203372: a9 8d        	xor	a1, a1, a0
80203374: 13 d6 05 01  	srli	a2, a1, 0x10
80203378: 42 05        	slli	a0, a0, 0x10
8020337a: 33 6b c5 00  	or	s6, a0, a2
8020337e: c2 05        	slli	a1, a1, 0x10
80203380: fd 14        	addi	s1, s1, -0x1
80203382: 13 89 45 00  	addi	s2, a1, 0x4
80203386: c9 f0        	bnez	s1, 0x80203308 <.text+0x3308>
80203388: 05 a0        	j	0x802033a8 <.text+0x33a8>
8020338a: 4a 85        	mv	a0, s2
8020338c: da 85        	mv	a1, s6
8020338e: 22 46        	lw	a2, 0x8(sp)
80203390: d2 86        	mv	a3, s4
80203392: 4e 87        	mv	a4, s3
80203394: 97 f0 ff ff  	auipc	ra, 0xfffff
80203398: e7 80 20 32  	jalr	0x322(ra)
8020339c: 2a 89        	mv	s2, a0
8020339e: 2e 8b        	mv	s6, a1
802033a0: e3 1c 0c f8  	bnez	s8, 0x80203338 <.text+0x3338>
802033a4: 45 b7        	j	0x80203344 <.text+0x3344>
802033a6: 3d 49        	li	s2, 0xf
802033a8: 4a 85        	mv	a0, s2
802033aa: da 85        	mv	a1, s6
802033ac: 97 32 00 00  	auipc	t0, 0x3
802033b0: e7 82 22 fe  	jalr	t0, -0x1e(t0) <.text+0x638e>
802033b4: 82 80        	ret
802033b6: 12 45        	lw	a0, 0x4(sp)
802033b8: 13 75 05 02  	andi	a0, a0, 0x20
802033bc: 11 e9        	bnez	a0, 0x802033d0 <.text+0x33d0>
802033be: 52 85        	mv	a0, s4
802033c0: ce 85        	mv	a1, s3
802033c2: 97 e0 ff ff  	auipc	ra, 0xffffe
802033c6: e7 80 00 e9  	jalr	-0x170(ra)
802033ca: a2 44        	lw	s1, 0x8(sp)
802033cc: 26 85        	mv	a0, s1
802033ce: 21 a8        	j	0x802033e6 <.text+0x33e6>
802033d0: a2 44        	lw	s1, 0x8(sp)
802033d2: 63 08 0c 00  	beqz	s8, 0x802033e2 <.text+0x33e2>
802033d6: 52 85        	mv	a0, s4
802033d8: ce 85        	mv	a1, s3
802033da: 97 e0 ff ff  	auipc	ra, 0xffffe
802033de: e7 80 80 e7  	jalr	-0x188(ra)
802033e2: 02 45        	lw	a0, 0x0(sp)
802033e4: 3d 89        	andi	a0, a0, 0xf
802033e6: b3 65 54 01  	or	a1, s0, s5
802033ea: 63 db a5 00  	bge	a1, a0, 0x80203400 <.text+0x3400>
802033ee: 4a 85        	mv	a0, s2
802033f0: da 85        	mv	a1, s6
802033f2: 26 86        	mv	a2, s1
802033f4: d2 86        	mv	a3, s4
802033f6: 4e 87        	mv	a4, s3
802033f8: 97 00 00 00  	auipc	ra, 0x0
802033fc: e7 80 a0 7a  	jalr	0x7aa(ra) <.text+0x3ba2>
80203400: 00 00        	unimp
80203402: 13 f5 f9 0f  	andi	a0, s3, 0xff
80203406: 01 cd        	beqz	a0, 0x8020341e <.text+0x341e>
80203408: 52 85        	mv	a0, s4
8020340a: ce 85        	mv	a1, s3
8020340c: 97 f0 ff ff  	auipc	ra, 0xfffff
80203410: e7 80 00 22  	jalr	0x220(ra)
80203414: 52 85        	mv	a0, s4
80203416: 97 f0 ff ff  	auipc	ra, 0xfffff
8020341a: e7 80 a0 9d  	jalr	-0x626(ra)
8020341e: 00 00        	unimp
80203420: 97 32 00 00  	auipc	t0, 0x3
80203424: e7 82 22 f0  	jalr	t0, -0xfe(t0) <.text+0x6322>
80203428: b6 8a        	mv	s5, a3
8020342a: b2 89        	mv	s3, a2
8020342c: 63 46 05 20  	bltz	a0, 0x80203638 <.text+0x3638>
80203430: 2a 84        	mv	s0, a0
80203432: 05 c5        	beqz	a0, 0x8020345a <.text+0x345a>
80203434: 2e 89        	mv	s2, a1
80203436: 13 d5 8a 00  	srli	a0, s5, 0x8
8020343a: 93 d5 0a 01  	srli	a1, s5, 0x10
8020343e: 31 66        	lui	a2, 0xc
80203440: 05 06        	addi	a2, a2, 0x1
80203442: 32 ca        	sw	a2, 0x14(sp)
80203444: 93 76 05 01  	andi	a3, a0, 0x10
80203448: 13 56 f9 41  	srai	a2, s2, 0x1f
8020344c: c2 05        	slli	a1, a1, 0x10
8020344e: d1 8d        	or	a1, a1, a2
80203450: 36 cc        	sw	a3, 0x18(sp)
80203452: 2e c4        	sw	a1, 0x8(sp)
80203454: 81 ee        	bnez	a3, 0x8020346c <.text+0x346c>
80203456: 21 4d        	li	s10, 0x8
80203458: 39 a8        	j	0x80203476 <.text+0x3476>
8020345a: 01 4a        	li	s4, 0x0
8020345c: 3d 4b        	li	s6, 0xf
8020345e: 5a 85        	mv	a0, s6
80203460: d2 85        	mv	a1, s4
80203462: 97 32 00 00  	auipc	t0, 0x3
80203466: e7 82 22 ea  	jalr	t0, -0x15e(t0) <.text+0x6304>
8020346a: 82 80        	ret
8020346c: 92 05        	slli	a1, a1, 0x4
8020346e: fd 81        	srli	a1, a1, 0x1f
80203470: 11 46        	li	a2, 0x4
80203472: 33 1d b6 00  	sll	s10, a2, a1
80203476: 01 4a        	li	s4, 0x0
80203478: 93 7d 05 02  	andi	s11, a0, 0x20
8020347c: 13 7c f5 00  	andi	s8, a0, 0xf
80203480: 13 75 05 04  	andi	a0, a0, 0x40
80203484: 2a c2        	sw	a0, 0x4(sp)
80203486: 3d 4b        	li	s6, 0xf
80203488: 93 fb fa 0f  	andi	s7, s5, 0xff
8020348c: d2 45        	lw	a1, 0x14(sp)
8020348e: 33 35 b0 00  	snez	a0, a1
80203492: 7d 15        	addi	a0, a0, -0x1
80203494: 2a c8        	sw	a0, 0x10(sp)
80203496: fd 15        	addi	a1, a1, -0x1
80203498: 2e c6        	sw	a1, 0xc(sp)
8020349a: 11 65        	lui	a0, 0x4
8020349c: 11 05        	addi	a0, a0, 0x4
8020349e: 2a c0        	sw	a0, 0x0(sp)
802034a0: 63 83 0b 02  	beqz	s7, 0x802034c6 <.text+0x34c6>
802034a4: 4e 85        	mv	a0, s3
802034a6: d6 85        	mv	a1, s5
802034a8: 97 f0 ff ff  	auipc	ra, 0xfffff
802034ac: e7 80 40 18  	jalr	0x184(ra)
802034b0: 4e 85        	mv	a0, s3
802034b2: d6 85        	mv	a1, s5
802034b4: 97 f0 ff ff  	auipc	ra, 0xfffff
802034b8: e7 80 80 17  	jalr	0x178(ra)
802034bc: 4e 85        	mv	a0, s3
802034be: 97 f0 ff ff  	auipc	ra, 0xfffff
802034c2: e7 80 20 93  	jalr	-0x6ce(ra)
802034c6: 13 75 cb 00  	andi	a0, s6, 0xc
802034ca: 63 09 a5 11  	beq	a0, s10, 0x802035dc <.text+0x35dc>
802034ce: d6 85        	mv	a1, s5
802034d0: ca 8c        	mv	s9, s2
802034d2: 63 8c 0d 00  	beqz	s11, 0x802034ea <.text+0x34ea>
802034d6: e2 8c        	mv	s9, s8
802034d8: 63 8e 0b 00  	beqz	s7, 0x802034f4 <.text+0x34f4>
802034dc: d6 85        	mv	a1, s5
802034de: e2 8c        	mv	s9, s8
802034e0: 05 45        	li	a0, 0x1
802034e2: 63 84 ab 00  	beq	s7, a0, 0x802034ea <.text+0x34ea>
802034e6: 89 45        	li	a1, 0x2
802034e8: e2 8c        	mv	s9, s8
802034ea: 4e 85        	mv	a0, s3
802034ec: 97 e0 ff ff  	auipc	ra, 0xffffe
802034f0: e7 80 60 d6  	jalr	-0x29a(ra)
802034f4: 13 55 0b 01  	srli	a0, s6, 0x10
802034f8: 93 14 0a 01  	slli	s1, s4, 0x10
802034fc: c9 8c        	or	s1, s1, a0
802034fe: 63 dc 94 13  	bge	s1, s9, 0x80203636 <.text+0x3636>
80203502: 63 88 0b 00  	beqz	s7, 0x80203512 <.text+0x3512>
80203506: 4e 85        	mv	a0, s3
80203508: d6 85        	mv	a1, s5
8020350a: 97 e0 ff ff  	auipc	ra, 0xffffe
8020350e: e7 80 80 d4  	jalr	-0x2b8(ra)
80203512: 62 45        	lw	a0, 0x18(sp)
80203514: 65 e1        	bnez	a0, 0x802035f4 <.text+0x35f4>
80203516: 63 91 0d 06  	bnez	s11, 0x80203578 <.text+0x3578>
8020351a: 4e 85        	mv	a0, s3
8020351c: d6 85        	mv	a1, s5
8020351e: 97 e0 ff ff  	auipc	ra, 0xffffe
80203522: e7 80 40 d3  	jalr	-0x2cc(ra)
80203526: 22 45        	lw	a0, 0x8(sp)
80203528: 63 42 05 06  	bltz	a0, 0x8020358c <.text+0x358c>
8020352c: 52 45        	lw	a0, 0x14(sp)
8020352e: 33 75 ab 00  	and	a0, s6, a0
80203532: 65 c1        	beqz	a0, 0x80203612 <.text+0x3612>
80203534: 26 85        	mv	a0, s1
80203536: ca 85        	mv	a1, s2
80203538: 4e 86        	mv	a2, s3
8020353a: d6 86        	mv	a3, s5
8020353c: 97 00 00 00  	auipc	ra, 0x0
80203540: e7 80 00 1a  	jalr	0x1a0(ra) <.text+0x36dc>
80203544: 93 45 45 00  	xori	a1, a0, 0x4
80203548: 32 46        	lw	a2, 0xc(sp)
8020354a: 33 76 cb 00  	and	a2, s6, a2
8020354e: c2 46        	lw	a3, 0x10(sp)
80203550: b3 76 da 00  	and	a3, s4, a3
80203554: 55 8e        	or	a2, a2, a3
80203556: 4d 8e        	or	a2, a2, a1
80203558: 93 d5 f4 41  	srai	a1, s1, 0x1f
8020355c: 1d ee        	bnez	a2, 0x8020359a <.text+0x359a>
8020355e: a5 8d        	xor	a1, a1, s1
80203560: fd 84        	srai	s1, s1, 0x1f
80203562: a5 8d        	xor	a1, a1, s1
80203564: 13 d5 05 01  	srli	a0, a1, 0x10
80203568: c2 04        	slli	s1, s1, 0x10
8020356a: 33 ea a4 00  	or	s4, s1, a0
8020356e: c2 05        	slli	a1, a1, 0x10
80203570: 02 45        	lw	a0, 0x0(sp)
80203572: 33 eb a5 00  	or	s6, a1, a0
80203576: b9 a8        	j	0x802035d4 <.text+0x35d4>
80203578: 63 88 0b 00  	beqz	s7, 0x80203588 <.text+0x3588>
8020357c: 4e 85        	mv	a0, s3
8020357e: d6 85        	mv	a1, s5
80203580: 97 e0 ff ff  	auipc	ra, 0xffffe
80203584: e7 80 20 cd  	jalr	-0x32e(ra)
80203588: 12 45        	lw	a0, 0x4(sp)
8020358a: 4d d1        	beqz	a0, 0x8020352c <.text+0x352c>
8020358c: 13 85 14 00  	addi	a0, s1, 0x1
80203590: fd 55        	li	a1, -0x1
80203592: 63 c5 b4 02  	blt	s1, a1, 0x802035bc <.text+0x35bc>
80203596: aa 85        	mv	a1, a0
80203598: 25 a0        	j	0x802035c0 <.text+0x35c0>
8020359a: 42 0a        	slli	s4, s4, 0x10
8020359c: 13 56 fa 41  	srai	a2, s4, 0x1f
802035a0: 25 8e        	xor	a2, a2, s1
802035a2: b1 8d        	xor	a1, a1, a2
802035a4: 2e 95        	add	a0, a0, a1
802035a6: 93 55 f5 41  	srai	a1, a0, 0x1f
802035aa: 13 56 05 01  	srli	a2, a0, 0x10
802035ae: c2 05        	slli	a1, a1, 0x10
802035b0: 33 ea c5 00  	or	s4, a1, a2
802035b4: 42 05        	slli	a0, a0, 0x10
802035b6: 13 0b 55 00  	addi	s6, a0, 0x5
802035ba: 29 a8        	j	0x802035d4 <.text+0x35d4>
802035bc: f9 55        	li	a1, -0x2
802035be: 85 8d        	sub	a1, a1, s1
802035c0: 7d 85        	srai	a0, a0, 0x1f
802035c2: a9 8d        	xor	a1, a1, a0
802035c4: 13 d6 05 01  	srli	a2, a1, 0x10
802035c8: 42 05        	slli	a0, a0, 0x10
802035ca: 33 6a c5 00  	or	s4, a0, a2
802035ce: c2 05        	slli	a1, a1, 0x10
802035d0: 13 8b d5 00  	addi	s6, a1, 0xd
802035d4: 7d 14        	addi	s0, s0, -0x1
802035d6: e3 15 04 ec  	bnez	s0, 0x802034a0 <.text+0x34a0>
802035da: 51 b5        	j	0x8020345e <.text+0x345e>
802035dc: 5a 85        	mv	a0, s6
802035de: d2 85        	mv	a1, s4
802035e0: 4a 86        	mv	a2, s2
802035e2: ce 86        	mv	a3, s3
802035e4: 56 87        	mv	a4, s5
802035e6: 97 f0 ff ff  	auipc	ra, 0xfffff
802035ea: e7 80 00 0d  	jalr	0xd0(ra)
802035ee: 2a 8b        	mv	s6, a0
802035f0: 2e 8a        	mv	s4, a1
802035f2: f1 bd        	j	0x802034ce <.text+0x34ce>
802035f4: 4e 85        	mv	a0, s3
802035f6: d6 85        	mv	a1, s5
802035f8: 97 e0 ff ff  	auipc	ra, 0xffffe
802035fc: e7 80 a0 c5  	jalr	-0x3a6(ra)
80203600: 5a 85        	mv	a0, s6
80203602: d2 85        	mv	a1, s4
80203604: 97 00 00 00  	auipc	ra, 0x0
80203608: e7 80 c0 23  	jalr	0x23c(ra) <.text+0x3840>
8020360c: 2a 8b        	mv	s6, a0
8020360e: 2e 8a        	mv	s4, a1
80203610: d1 b7        	j	0x802035d4 <.text+0x35d4>
80203612: 5a 85        	mv	a0, s6
80203614: d2 85        	mv	a1, s4
80203616: 4a 86        	mv	a2, s2
80203618: ce 86        	mv	a3, s3
8020361a: 56 87        	mv	a4, s5
8020361c: 97 f0 ff ff  	auipc	ra, 0xfffff
80203620: e7 80 20 df  	jalr	-0x20e(ra)
80203624: 2e 8a        	mv	s4, a1
80203626: 13 7b 25 ff  	andi	s6, a0, -0xe
8020362a: 05 0b        	addi	s6, s6, 0x1
8020362c: c2 05        	slli	a1, a1, 0x10
8020362e: 41 81        	srli	a0, a0, 0x10
80203630: b3 64 b5 00  	or	s1, a0, a1
80203634: 01 b7        	j	0x80203534 <.text+0x3534>
80203636: 00 00        	unimp
80203638: 13 f5 fa 0f  	andi	a0, s5, 0xff
8020363c: 15 c1        	beqz	a0, 0x80203660 <.text+0x3660>
8020363e: 4e 85        	mv	a0, s3
80203640: d6 85        	mv	a1, s5
80203642: 97 f0 ff ff  	auipc	ra, 0xfffff
80203646: e7 80 a0 fe  	jalr	-0x16(ra)
8020364a: 4e 85        	mv	a0, s3
8020364c: d6 85        	mv	a1, s5
8020364e: 97 f0 ff ff  	auipc	ra, 0xfffff
80203652: e7 80 e0 fd  	jalr	-0x22(ra)
80203656: 4e 85        	mv	a0, s3
80203658: 97 e0 ff ff  	auipc	ra, 0xffffe
8020365c: e7 80 80 79  	jalr	0x798(ra)
80203660: 00 00        	unimp
80203662: 01 11        	addi	sp, sp, -0x20
80203664: 06 ce        	sw	ra, 0x1c(sp)
80203666: 22 cc        	sw	s0, 0x18(sp)
80203668: 26 ca        	sw	s1, 0x14(sp)
8020366a: 4a c8        	sw	s2, 0x10(sp)
8020366c: 4e c6        	sw	s3, 0xc(sp)
8020366e: 63 45 05 06  	bltz	a0, 0x802036d8 <.text+0x36d8>
80203672: b6 84        	mv	s1, a3
80203674: b2 89        	mv	s3, a2
80203676: 2e 89        	mv	s2, a1
80203678: 2a 84        	mv	s0, a0
8020367a: 13 f5 f6 0f  	andi	a0, a3, 0xff
8020367e: 0d c1        	beqz	a0, 0x802036a0 <.text+0x36a0>
80203680: 4e 85        	mv	a0, s3
80203682: 97 e0 ff ff  	auipc	ra, 0xffffe
80203686: e7 80 e0 76  	jalr	0x76e(ra)
8020368a: 13 95 24 01  	slli	a0, s1, 0x12
8020368e: 63 5d 05 00  	bgez	a0, 0x802036a8 <.text+0x36a8>
80203692: 4e 85        	mv	a0, s3
80203694: a6 85        	mv	a1, s1
80203696: 97 e0 ff ff  	auipc	ra, 0xffffe
8020369a: e7 80 c0 bb  	jalr	-0x444(ra)
8020369e: 21 a8        	j	0x802036b6 <.text+0x36b6>
802036a0: 13 95 24 01  	slli	a0, s1, 0x12
802036a4: 63 49 05 00  	bltz	a0, 0x802036b6 <.text+0x36b6>
802036a8: 4e 85        	mv	a0, s3
802036aa: a6 85        	mv	a1, s1
802036ac: 97 e0 ff ff  	auipc	ra, 0xffffe
802036b0: e7 80 60 ba  	jalr	-0x45a(ra)
802036b4: 21 a0        	j	0x802036bc <.text+0x36bc>
802036b6: a1 80        	srli	s1, s1, 0x8
802036b8: 13 f9 f4 00  	andi	s2, s1, 0xf
802036bc: 63 4f 89 00  	blt	s2, s0, 0x802036da <.text+0x36da>
802036c0: 93 55 04 01  	srli	a1, s0, 0x10
802036c4: 13 15 04 01  	slli	a0, s0, 0x10
802036c8: 21 05        	addi	a0, a0, 0x8
802036ca: f2 40        	lw	ra, 0x1c(sp)
802036cc: 62 44        	lw	s0, 0x18(sp)
802036ce: d2 44        	lw	s1, 0x14(sp)
802036d0: 42 49        	lw	s2, 0x10(sp)
802036d2: b2 49        	lw	s3, 0xc(sp)
802036d4: 05 61        	addi	sp, sp, 0x20
802036d6: 82 80        	ret
802036d8: 00 00        	unimp
802036da: 00 00        	unimp
802036dc: 79 71        	addi	sp, sp, -0x30
802036de: 06 d6        	sw	ra, 0x2c(sp)
802036e0: 22 d4        	sw	s0, 0x28(sp)
802036e2: 26 d2        	sw	s1, 0x24(sp)
802036e4: 4a d0        	sw	s2, 0x20(sp)
802036e6: 4e ce        	sw	s3, 0x1c(sp)
802036e8: 52 cc        	sw	s4, 0x18(sp)
802036ea: 56 ca        	sw	s5, 0x14(sp)
802036ec: 36 84        	mv	s0, a3
802036ee: 93 fa f6 0f  	andi	s5, a3, 0xff
802036f2: b2 84        	mv	s1, a2
802036f4: ae 89        	mv	s3, a1
802036f6: 2a 89        	mv	s2, a0
802036f8: 63 83 0a 02  	beqz	s5, 0x8020371e <.text+0x371e>
802036fc: 26 85        	mv	a0, s1
802036fe: a2 85        	mv	a1, s0
80203700: 97 f0 ff ff  	auipc	ra, 0xfffff
80203704: e7 80 c0 f2  	jalr	-0xd4(ra)
80203708: 26 85        	mv	a0, s1
8020370a: a2 85        	mv	a1, s0
8020370c: 97 f0 ff ff  	auipc	ra, 0xfffff
80203710: e7 80 00 f2  	jalr	-0xe0(ra)
80203714: 26 85        	mv	a0, s1
80203716: 97 e0 ff ff  	auipc	ra, 0xffffe
8020371a: e7 80 a0 6d  	jalr	0x6da(ra)
8020371e: 13 15 24 01  	slli	a0, s0, 0x12
80203722: 13 5a 04 01  	srli	s4, s0, 0x10
80203726: 63 40 05 04  	bltz	a0, 0x80203766 <.text+0x3766>
8020372a: 26 85        	mv	a0, s1
8020372c: a2 85        	mv	a1, s0
8020372e: 97 e0 ff ff  	auipc	ra, 0xffffe
80203732: e7 80 40 b2  	jalr	-0x4dc(ra)
80203736: 26 85        	mv	a0, s1
80203738: a2 85        	mv	a1, s0
8020373a: 97 e0 ff ff  	auipc	ra, 0xffffe
8020373e: e7 80 80 b1  	jalr	-0x4e8(ra)
80203742: 13 f5 89 ff  	andi	a0, s3, -0x8
80203746: 4e 0a        	slli	s4, s4, 0x13
80203748: 33 65 aa 00  	or	a0, s4, a0
8020374c: 63 5d 05 0c  	bgez	a0, 0x80203826 <.text+0x3826>
80203750: 63 88 0a 00  	beqz	s5, 0x80203760 <.text+0x3760>
80203754: 26 85        	mv	a0, s1
80203756: a2 85        	mv	a1, s0
80203758: 97 e0 ff ff  	auipc	ra, 0xffffe
8020375c: e7 80 a0 af  	jalr	-0x506(ra)
80203760: 13 85 44 01  	addi	a0, s1, 0x14
80203764: a1 a8        	j	0x802037bc <.text+0x37bc>
80203766: 09 45        	li	a0, 0x2
80203768: 63 83 aa 02  	beq	s5, a0, 0x8020378e <.text+0x378e>
8020376c: 05 45        	li	a0, 0x1
8020376e: 63 92 aa 04  	bne	s5, a0, 0x802037b2 <.text+0x37b2>
80203772: 85 45        	li	a1, 0x1
80203774: 26 85        	mv	a0, s1
80203776: 97 e0 ff ff  	auipc	ra, 0xffffe
8020377a: e7 80 c0 ad  	jalr	-0x524(ra)
8020377e: 85 45        	li	a1, 0x1
80203780: 26 85        	mv	a0, s1
80203782: 97 e0 ff ff  	auipc	ra, 0xffffe
80203786: e7 80 00 ad  	jalr	-0x530(ra)
8020378a: 85 45        	li	a1, 0x1
8020378c: 31 a8        	j	0x802037a8 <.text+0x37a8>
8020378e: 89 45        	li	a1, 0x2
80203790: 26 85        	mv	a0, s1
80203792: 97 e0 ff ff  	auipc	ra, 0xffffe
80203796: e7 80 00 ac  	jalr	-0x540(ra)
8020379a: 89 45        	li	a1, 0x2
8020379c: 26 85        	mv	a0, s1
8020379e: 97 e0 ff ff  	auipc	ra, 0xffffe
802037a2: e7 80 40 ab  	jalr	-0x54c(ra)
802037a6: 89 45        	li	a1, 0x2
802037a8: 26 85        	mv	a0, s1
802037aa: 97 e0 ff ff  	auipc	ra, 0xffffe
802037ae: e7 80 80 aa  	jalr	-0x558(ra)
802037b2: 4e c0        	sw	s3, 0x0(sp)
802037b4: 26 c2        	sw	s1, 0x4(sp)
802037b6: 02 c6        	sw	zero, 0xc(sp)
802037b8: 52 c4        	sw	s4, 0x8(sp)
802037ba: 0a 85        	mv	a0, sp
802037bc: 4a 95        	add	a0, a0, s2
802037be: 83 45 05 00  	lbu	a1, 0x0(a0)
802037c2: 13 96 85 01  	slli	a2, a1, 0x18
802037c6: 05 45        	li	a0, 0x1
802037c8: 63 56 06 04  	bgez	a2, 0x80203814 <.text+0x3814>
802037cc: 13 c5 f5 ff  	not	a0, a1
802037d0: 93 75 f5 0f  	andi	a1, a0, 0xff
802037d4: 9d cd        	beqz	a1, 0x80203812 <.text+0x3812>
802037d6: 93 15 85 01  	slli	a1, a0, 0x18
802037da: e5 81        	srli	a1, a1, 0x19
802037dc: 4d 8d        	or	a0, a0, a1
802037de: 93 15 85 01  	slli	a1, a0, 0x18
802037e2: e9 81        	srli	a1, a1, 0x1a
802037e4: 4d 8d        	or	a0, a0, a1
802037e6: 93 15 85 01  	slli	a1, a0, 0x18
802037ea: f1 81        	srli	a1, a1, 0x1c
802037ec: 4d 8d        	or	a0, a0, a1
802037ee: 13 45 f5 ff  	not	a0, a0
802037f2: 93 55 15 00  	srli	a1, a0, 0x1
802037f6: 93 f5 55 05  	andi	a1, a1, 0x55
802037fa: 0d 8d        	sub	a0, a0, a1
802037fc: 93 75 35 03  	andi	a1, a0, 0x33
80203800: 09 81        	srli	a0, a0, 0x2
80203802: 13 75 35 03  	andi	a0, a0, 0x33
80203806: 2e 95        	add	a0, a0, a1
80203808: 93 55 45 00  	srli	a1, a0, 0x4
8020380c: 2e 95        	add	a0, a0, a1
8020380e: 3d 89        	andi	a0, a0, 0xf
80203810: 11 a0        	j	0x80203814 <.text+0x3814>
80203812: 21 45        	li	a0, 0x8
80203814: b2 50        	lw	ra, 0x2c(sp)
80203816: 22 54        	lw	s0, 0x28(sp)
80203818: 92 54        	lw	s1, 0x24(sp)
8020381a: 02 59        	lw	s2, 0x20(sp)
8020381c: f2 49        	lw	s3, 0x1c(sp)
8020381e: 62 4a        	lw	s4, 0x18(sp)
80203820: d2 4a        	lw	s5, 0x14(sp)
80203822: 45 61        	addi	sp, sp, 0x30
80203824: 82 80        	ret
80203826: 26 85        	mv	a0, s1
80203828: a2 85        	mv	a1, s0
8020382a: 97 e0 ff ff  	auipc	ra, 0xffffe
8020382e: e7 80 80 a2  	jalr	-0x5d8(ra)
80203832: 4e 85        	mv	a0, s3
80203834: a6 85        	mv	a1, s1
80203836: 97 e0 ff ff  	auipc	ra, 0xffffe
8020383a: e7 80 20 5c  	jalr	0x5c2(ra)
8020383e: bd bf        	j	0x802037bc <.text+0x37bc>
80203840: c2 05        	slli	a1, a1, 0x10
80203842: 41 81        	srli	a0, a0, 0x10
80203844: c9 8d        	or	a1, a1, a0
80203846: 13 85 15 00  	addi	a0, a1, 0x1
8020384a: 63 44 05 00  	bltz	a0, 0x80203852 <.text+0x3852>
8020384e: aa 85        	mv	a1, a0
80203850: 21 a0        	j	0x80203858 <.text+0x3858>
80203852: 79 56        	li	a2, -0x2
80203854: b3 05 b6 40  	sub	a1, a2, a1
80203858: 7d 85        	srai	a0, a0, 0x1f
8020385a: 33 c6 a5 00  	xor	a2, a1, a0
8020385e: 93 55 06 01  	srli	a1, a2, 0x10
80203862: 42 05        	slli	a0, a0, 0x10
80203864: c9 8d        	or	a1, a1, a0
80203866: 13 15 06 01  	slli	a0, a2, 0x10
8020386a: 21 05        	addi	a0, a0, 0x8
8020386c: 82 80        	ret
8020386e: 09 81        	srli	a0, a0, 0x2
80203870: 13 c6 f5 ff  	not	a2, a1
80203874: 42 06        	slli	a2, a2, 0x10
80203876: 4d 8d        	or	a0, a0, a1
80203878: 71 8d        	and	a0, a0, a2
8020387a: 0a 05        	slli	a0, a0, 0x2
8020387c: 7d 81        	srli	a0, a0, 0x1f
8020387e: 82 80        	ret
80203880: 83 15 25 01  	lh	a1, 0x12(a0)
80203884: 63 d7 05 00  	bgez	a1, 0x80203892 <.text+0x3892>
80203888: 0c 45        	lw	a1, 0x8(a0)
8020388a: 2e 95        	add	a0, a0, a1
8020388c: 5d 05        	addi	a0, a0, 0x17
8020388e: 71 99        	andi	a0, a0, -0x4
80203890: 82 80        	ret
80203892: 00 00        	unimp
80203894: 17 03 00 00  	auipc	t1, 0x0
80203898: 67 00 a3 2a  	jr	0x2aa(t1) <.text+0x3b3e>
8020389c: 17 03 00 00  	auipc	t1, 0x0
802038a0: 67 00 63 10  	jr	0x106(t1) <.text+0x39a2>
802038a4: 13 18 07 01  	slli	a6, a4, 0x10
802038a8: 13 d7 06 01  	srli	a4, a3, 0x10
802038ac: 33 63 07 01  	or	t1, a4, a6
802038b0: 63 5b c3 08  	bge	t1, a2, 0x80203946 <.text+0x3946>
802038b4: 31 67        	lui	a4, 0xc
802038b6: f9 8e        	and	a3, a3, a4
802038b8: 93 b6 16 00  	seqz	a3, a3
802038bc: fd 16        	addi	a3, a3, -0x1
802038be: 7d 58        	li	a6, -0x1
802038c0: 91 48        	li	a7, 0x4
802038c2: 33 87 65 00  	add	a4, a1, t1
802038c6: 03 07 07 00  	lb	a4, 0x0(a4)
802038ca: 63 47 07 00  	bltz	a4, 0x802038d8 <.text+0x38d8>
802038ce: 85 06        	addi	a3, a3, 0x1
802038d0: 05 47        	li	a4, 0x1
802038d2: 63 c7 f6 06  	blt	a3, a5, 0x80203940 <.text+0x3940>
802038d6: 8d a8        	j	0x80203948 <.text+0x3948>
802038d8: 63 0d 07 05  	beq	a4, a6, 0x80203932 <.text+0x3932>
802038dc: 93 42 f7 ff  	not	t0, a4
802038e0: 13 97 82 01  	slli	a4, t0, 0x18
802038e4: 65 83        	srli	a4, a4, 0x19
802038e6: b3 e2 e2 00  	or	t0, t0, a4
802038ea: 13 97 82 01  	slli	a4, t0, 0x18
802038ee: 69 83        	srli	a4, a4, 0x1a
802038f0: b3 e2 e2 00  	or	t0, t0, a4
802038f4: 13 97 82 01  	slli	a4, t0, 0x18
802038f8: 71 83        	srli	a4, a4, 0x1c
802038fa: 33 e7 e2 00  	or	a4, t0, a4
802038fe: 93 42 f7 ff  	not	t0, a4
80203902: 13 d7 12 00  	srli	a4, t0, 0x1
80203906: 13 77 57 05  	andi	a4, a4, 0x55
8020390a: 33 87 e2 40  	sub	a4, t0, a4
8020390e: 93 72 37 03  	andi	t0, a4, 0x33
80203912: 09 83        	srli	a4, a4, 0x2
80203914: 13 77 37 03  	andi	a4, a4, 0x33
80203918: ba 92        	add	t0, t0, a4
8020391a: 13 d7 42 00  	srli	a4, t0, 0x4
8020391e: 16 97        	add	a4, a4, t0
80203920: 93 72 f7 00  	andi	t0, a4, 0xf
80203924: 63 9a 12 01  	bne	t0, a7, 0x80203938 <.text+0x3938>
80203928: 89 06        	addi	a3, a3, 0x2
8020392a: 11 47        	li	a4, 0x4
8020392c: 63 ca f6 00  	blt	a3, a5, 0x80203940 <.text+0x3940>
80203930: 05 a8        	j	0x80203960 <.text+0x3960>
80203932: a1 42        	li	t0, 0x8
80203934: e3 8a 12 ff  	beq	t0, a7, 0x80203928 <.text+0x3928>
80203938: 85 06        	addi	a3, a3, 0x1
8020393a: 16 87        	mv	a4, t0
8020393c: 63 d2 f6 02  	bge	a3, a5, 0x80203960 <.text+0x3960>
80203940: 3a 93        	add	t1, t1, a4
80203942: e3 40 c3 f8  	blt	t1, a2, 0x802038c2 <.text+0x38c2>
80203946: 00 00        	unimp
80203948: 63 c3 d7 04  	blt	a5, a3, 0x8020398e <.text+0x398e>
8020394c: f9 55        	li	a1, -0x2
8020394e: 93 02 13 00  	addi	t0, t1, 0x1
80203952: 63 cc 65 00  	blt	a1, t1, 0x8020396a <.text+0x396a>
80203956: 93 c2 f2 ff  	not	t0, t0
8020395a: 7d 57        	li	a4, -0x1
8020395c: 7d 56        	li	a2, -0x1
8020395e: 01 a8        	j	0x8020396e <.text+0x396e>
80203960: 63 c7 d7 02  	blt	a5, a3, 0x8020398e <.text+0x398e>
80203964: 9a 92        	add	t0, t0, t1
80203966: e3 c8 02 fe  	bltz	t0, 0x80203956 <.text+0x3956>
8020396a: 01 47        	li	a4, 0x0
8020396c: 01 46        	li	a2, 0x0
8020396e: 81 45        	li	a1, 0x0
80203970: 81 46        	li	a3, 0x0
80203972: 95 47        	li	a5, 0x5
80203974: b1 8d        	xor	a1, a1, a2
80203976: 33 46 57 00  	xor	a2, a4, t0
8020397a: 13 57 06 01  	srli	a4, a2, 0x10
8020397e: c2 05        	slli	a1, a1, 0x10
80203980: 42 06        	slli	a2, a2, 0x10
80203982: d5 8d        	or	a1, a1, a3
80203984: d9 8d        	or	a1, a1, a4
80203986: 5d 8e        	or	a2, a2, a5
80203988: 10 c1        	sw	a2, 0x0(a0)
8020398a: 4c c1        	sw	a1, 0x4(a0)
8020398c: 82 80        	ret
8020398e: 01 46        	li	a2, 0x0
80203990: 81 46        	li	a3, 0x0
80203992: 93 52 f3 41  	srai	t0, t1, 0x1f
80203996: 33 c7 62 00  	xor	a4, t0, t1
8020399a: 91 67        	lui	a5, 0x4
8020399c: 91 07        	addi	a5, a5, 0x4
8020399e: 96 85        	mv	a1, t0
802039a0: d1 bf        	j	0x80203974 <.text+0x3974>
802039a2: 15 c1        	beqz	a0, 0x802039c6 <.text+0x39c6>
802039a4: 4c 41        	lw	a1, 0x4(a0)
802039a6: 7d 56        	li	a2, -0x1
802039a8: 63 8f c5 00  	beq	a1, a2, 0x802039c6 <.text+0x39c6>
802039ac: 93 05 45 00  	addi	a1, a0, 0x4
802039b0: 05 46        	li	a2, 0x1
802039b2: 33 06 c0 40  	neg	a2, a2
802039b6: 2f a6 c5 06  	amoadd.w.aqrl	a2, a2, (a1)
802039ba: 93 05 f6 ff  	addi	a1, a2, -0x1
802039be: 63 d8 c5 00  	bge	a1, a2, 0x802039ce <.text+0x39ce>
802039c2: 86 05        	slli	a1, a1, 0x1
802039c4: 91 c1        	beqz	a1, 0x802039c8 <.text+0x39c8>
802039c6: 82 80        	ret
802039c8: 0c 41        	lw	a1, 0x0(a0)
802039ca: dc 41        	lw	a5, 0x4(a1)
802039cc: 82 87        	jr	a5
802039ce: 00 00        	unimp
802039d0: 13 01 01 ff  	addi	sp, sp, -0x10
802039d4: 23 26 11 00  	sw	ra, 0xc(sp)
802039d8: 97 00 00 00  	auipc	ra, 0x0
802039dc: e7 80 80 15  	jalr	0x158(ra) <.text+0x3b30>
802039e0: 13 75 15 00  	andi	a0, a0, 0x1
802039e4: 83 20 c1 00  	lw	ra, 0xc(sp)
802039e8: 13 01 01 01  	addi	sp, sp, 0x10
802039ec: 67 80 00 00  	ret
802039f0: 97 32 00 00  	auipc	t0, 0x3
802039f4: e7 82 82 a6  	jalr	t0, -0x598(t0) <.text+0x6458>
802039f8: 05 8a        	andi	a2, a2, 0x1
802039fa: b6 89        	mv	s3, a3
802039fc: ae 84        	mv	s1, a1
802039fe: 2a 89        	mv	s2, a0
80203a00: 1d c2        	beqz	a2, 0x80203a26 <.text+0x3a26>
80203a02: 03 a5 c9 00  	lw	a0, 0xc(s3)
80203a06: 93 55 15 00  	srli	a1, a0, 0x1
80203a0a: 63 dd 95 00  	bge	a1, s1, 0x80203a24 <.text+0x3a24>
80203a0e: 37 06 00 40  	lui	a2, 0x40000
80203a12: b2 95        	add	a1, a1, a2
80203a14: 63 c8 05 0c  	bltz	a1, 0x80203ae4 <.text+0x3ae4>
80203a18: 79 99        	andi	a0, a0, -0x2
80203a1a: 63 c3 a4 00  	blt	s1, a0, 0x80203a20 <.text+0x3a20>
80203a1e: 26 85        	mv	a0, s1
80203a20: aa 84        	mv	s1, a0
80203a22: 11 a0        	j	0x80203a26 <.text+0x3a26>
80203a24: ae 84        	mv	s1, a1
80203a26: 03 a4 89 00  	lw	s0, 0x8(s3)
80203a2a: 63 43 94 00  	blt	s0, s1, 0x80203a30 <.text+0x3a30>
80203a2e: a2 84        	mv	s1, s0
80203a30: 95 c0        	beqz	s1, 0x80203a54 <.text+0x3a54>
80203a32: 93 95 34 00  	slli	a1, s1, 0x3
80203a36: c1 05        	addi	a1, a1, 0x10
80203a38: 37 f5 20 80  	lui	a0, 0x8020f
80203a3c: 13 05 45 de  	addi	a0, a0, -0x21c
80203a40: 1d 46        	li	a2, 0x7
80203a42: 97 00 00 00  	auipc	ra, 0x0
80203a46: e7 80 20 e5  	jalr	-0x1ae(ra) <.text+0x3894>
80203a4a: 2a 8a        	mv	s4, a0
80203a4c: 86 04        	slli	s1, s1, 0x1
80203a4e: 00 c5        	sw	s0, 0x8(a0)
80203a50: 44 c5        	sw	s1, 0xc(a0)
80203a52: 29 a0        	j	0x80203a5c <.text+0x3a5c>
80203a54: 37 f5 20 80  	lui	a0, 0x8020f
80203a58: 13 0a 05 d6  	addi	s4, a0, -0x2a0
80203a5c: 13 05 0a 01  	addi	a0, s4, 0x10
80203a60: 13 76 19 00  	andi	a2, s2, 0x1
80203a64: 93 85 09 01  	addi	a1, s3, 0x10
80203a68: 1d ce        	beqz	a2, 0x80203aa6 <.text+0x3aa6>
80203a6a: 33 36 3a 01  	sltu	a2, s4, s3
80203a6e: 93 46 f6 ff  	not	a3, a2
80203a72: 13 16 34 00  	slli	a2, s0, 0x3
80203a76: 33 87 c5 00  	add	a4, a1, a2
80203a7a: 33 37 e5 00  	sltu	a4, a0, a4
80203a7e: f9 8e        	and	a3, a3, a4
80203a80: 85 ce        	beqz	a3, 0x80203ab8 <.text+0x3ab8>
80203a82: 63 04 3a 05  	beq	s4, s3, 0x80203aca <.text+0x3aca>
80203a86: 31 c0        	beqz	s0, 0x80203aca <.text+0x3aca>
80203a88: 33 05 ca 00  	add	a0, s4, a2
80203a8c: 21 05        	addi	a0, a0, 0x8
80203a8e: b3 85 c9 00  	add	a1, s3, a2
80203a92: a1 05        	addi	a1, a1, 0x8
80203a94: 90 41        	lw	a2, 0x0(a1)
80203a96: d4 41        	lw	a3, 0x4(a1)
80203a98: 10 c1        	sw	a2, 0x0(a0)
80203a9a: 54 c1        	sw	a3, 0x4(a0)
80203a9c: 7d 14        	addi	s0, s0, -0x1
80203a9e: 61 15        	addi	a0, a0, -0x8
80203aa0: e1 15        	addi	a1, a1, -0x8
80203aa2: 6d f8        	bnez	s0, 0x80203a94 <.text+0x3a94>
80203aa4: 1d a0        	j	0x80203aca <.text+0x3aca>
80203aa6: 05 c4        	beqz	s0, 0x80203ace <.text+0x3ace>
80203aa8: 90 41        	lw	a2, 0x0(a1)
80203aaa: d4 41        	lw	a3, 0x4(a1)
80203aac: 10 c1        	sw	a2, 0x0(a0)
80203aae: 54 c1        	sw	a3, 0x4(a0)
80203ab0: 7d 14        	addi	s0, s0, -0x1
80203ab2: 21 05        	addi	a0, a0, 0x8
80203ab4: a1 05        	addi	a1, a1, 0x8
80203ab6: c5 bf        	j	0x80203aa6 <.text+0x3aa6>
80203ab8: 09 c8        	beqz	s0, 0x80203aca <.text+0x3aca>
80203aba: 90 41        	lw	a2, 0x0(a1)
80203abc: d4 41        	lw	a3, 0x4(a1)
80203abe: 10 c1        	sw	a2, 0x0(a0)
80203ac0: 54 c1        	sw	a3, 0x4(a0)
80203ac2: 7d 14        	addi	s0, s0, -0x1
80203ac4: 21 05        	addi	a0, a0, 0x8
80203ac6: a1 05        	addi	a1, a1, 0x8
80203ac8: 6d f8        	bnez	s0, 0x80203aba <.text+0x3aba>
80203aca: 23 a4 09 00  	sw	zero, 0x8(s3)
80203ace: 4e 85        	mv	a0, s3
80203ad0: 97 00 00 00  	auipc	ra, 0x0
80203ad4: e7 80 c0 dc  	jalr	-0x234(ra) <.text+0x389c>
80203ad8: 52 85        	mv	a0, s4
80203ada: 97 32 00 00  	auipc	t0, 0x3
80203ade: e7 82 e2 96  	jalr	t0, -0x692(t0) <.text+0x6448>
80203ae2: 82 80        	ret
80203ae4: 00 00        	unimp
80203ae6: 17 03 00 00  	auipc	t1, 0x0
80203aea: 67 00 e3 00  	jr	0xe(t1) <.text+0x3af4>
80203aee: 00 00        	unimp
80203af0: 01 45        	li	a0, 0x0
80203af2: 82 80        	ret
80203af4: 17 03 00 00  	auipc	t1, 0x0
80203af8: 67 00 83 00  	jr	0x8(t1) <.text+0x3afc>
80203afc: 4c 41        	lw	a1, 0x4(a0)
80203afe: 63 c6 05 00  	bltz	a1, 0x80203b0a <.text+0x3b0a>
80203b02: 17 d3 ff ff  	auipc	t1, 0xffffd
80203b06: 67 00 63 f2  	jr	-0xda(t1)
80203b0a: 82 80        	ret
80203b0c: 17 03 00 00  	auipc	t1, 0x0
80203b10: 67 00 83 fe  	jr	-0x18(t1) <.text+0x3af4>
80203b14: 17 03 00 00  	auipc	t1, 0x0
80203b18: 67 00 03 fe  	jr	-0x20(t1) <.text+0x3af4>
80203b1c: 37 f5 20 80  	lui	a0, 0x8020f
80203b20: 13 05 45 da  	addi	a0, a0, -0x25c
80203b24: a1 45        	li	a1, 0x8
80203b26: 0d 46        	li	a2, 0x3
80203b28: 17 03 00 00  	auipc	t1, 0x0
80203b2c: 67 00 c3 d6  	jr	-0x294(t1) <.text+0x3894>
80203b30: 48 41        	lw	a0, 0x4(a0)
80203b32: 7d 15        	addi	a0, a0, -0x1
80203b34: 13 35 15 00  	seqz	a0, a0
80203b38: 0f 00 30 02  	fence	r, rw
80203b3c: 82 80        	ret
80203b3e: 41 11        	addi	sp, sp, -0x10
80203b40: 06 c6        	sw	ra, 0xc(sp)
80203b42: 22 c4        	sw	s0, 0x8(sp)
80203b44: 93 06 16 00  	addi	a3, a2, 0x1
80203b48: 11 47        	li	a4, 0x4
80203b4a: 2e 86        	mv	a2, a1
80203b4c: 2a 84        	mv	s0, a0
80203b4e: 63 43 d7 00  	blt	a4, a3, 0x80203b54 <.text+0x3b54>
80203b52: 91 46        	li	a3, 0x4
80203b54: 02 c2        	sw	zero, 0x4(sp)
80203b56: 48 00        	addi	a0, sp, 0x4
80203b58: b6 85        	mv	a1, a3
80203b5a: 97 d0 ff ff  	auipc	ra, 0xffffd
80203b5e: e7 80 80 e4  	jalr	-0x1b8(ra)
80203b62: 12 45        	lw	a0, 0x4(sp)
80203b64: 01 c9        	beqz	a0, 0x80203b74 <.text+0x3b74>
80203b66: 00 c1        	sw	s0, 0x0(a0)
80203b68: 85 45        	li	a1, 0x1
80203b6a: 4c c1        	sw	a1, 0x4(a0)
80203b6c: b2 40        	lw	ra, 0xc(sp)
80203b6e: 22 44        	lw	s0, 0x8(sp)
80203b70: 41 01        	addi	sp, sp, 0x10
80203b72: 82 80        	ret
80203b74: 00 00        	unimp
80203b76: 41 11        	addi	sp, sp, -0x10
80203b78: 06 c6        	sw	ra, 0xc(sp)
80203b7a: 22 c4        	sw	s0, 0x8(sp)
80203b7c: 2a 84        	mv	s0, a0
80203b7e: 48 45        	lw	a0, 0xc(a0)
80203b80: 97 00 00 00  	auipc	ra, 0x0
80203b84: e7 80 c0 d1  	jalr	-0x2e4(ra) <.text+0x389c>
80203b88: 22 85        	mv	a0, s0
80203b8a: b2 40        	lw	ra, 0xc(sp)
80203b8c: 22 44        	lw	s0, 0x8(sp)
80203b8e: 41 01        	addi	sp, sp, 0x10
80203b90: 17 03 00 00  	auipc	t1, 0x0
80203b94: 67 00 43 f6  	jr	-0x9c(t1) <.text+0x3af4>
80203b98: 97 00 00 00  	auipc	ra, 0x0
80203b9c: e7 80 80 00  	jalr	0x8(ra) <.text+0x3ba0>
80203ba0: 00 00        	unimp
80203ba2: b1 67        	lui	a5, 0xc
80203ba4: 85 07        	addi	a5, a5, 0x1
80203ba6: e9 8f        	and	a5, a5, a0
80203ba8: 81 eb        	bnez	a5, 0x80203bb8 <.text+0x3bb8>
80203baa: 41 11        	addi	sp, sp, -0x10
80203bac: 06 c6        	sw	ra, 0xc(sp)
80203bae: 97 f0 ff ff  	auipc	ra, 0xfffff
80203bb2: e7 80 00 86  	jalr	-0x7a0(ra)
80203bb6: 00 00        	unimp
80203bb8: 00 00        	unimp
80203bba: b1 67        	lui	a5, 0xc
80203bbc: 85 07        	addi	a5, a5, 0x1
80203bbe: e9 8f        	and	a5, a5, a0
80203bc0: 9d cb        	beqz	a5, 0x80203bf6 <.text+0x3bf6>
80203bc2: c2 05        	slli	a1, a1, 0x10
80203bc4: 13 56 05 01  	srli	a2, a0, 0x10
80203bc8: d1 8d        	or	a1, a1, a2
80203bca: 42 05        	slli	a0, a0, 0x10
80203bcc: 79 81        	srli	a0, a0, 0x1e
80203bce: 1d c1        	beqz	a0, 0x80203bf4 <.text+0x3bf4>
80203bd0: 13 d6 f5 41  	srai	a2, a1, 0x1f
80203bd4: 7d 15        	addi	a0, a0, -0x1
80203bd6: 93 d6 05 01  	srli	a3, a1, 0x10
80203bda: 42 06        	slli	a2, a2, 0x10
80203bdc: 55 8e        	or	a2, a2, a3
80203bde: 93 96 05 01  	slli	a3, a1, 0x10
80203be2: 13 17 e5 00  	slli	a4, a0, 0xe
80203be6: 49 81        	srli	a0, a0, 0x12
80203be8: b3 65 c5 00  	or	a1, a0, a2
80203bec: 33 65 d7 00  	or	a0, a4, a3
80203bf0: 21 05        	addi	a0, a0, 0x8
80203bf2: 82 80        	ret
80203bf4: 00 00        	unimp
80203bf6: 41 11        	addi	sp, sp, -0x10
80203bf8: 06 c6        	sw	ra, 0xc(sp)
80203bfa: 97 f0 ff ff  	auipc	ra, 0xfffff
80203bfe: e7 80 40 81  	jalr	-0x7ec(ra)
80203c02: 2a 86        	mv	a2, a0
80203c04: 49 99        	andi	a0, a0, -0xe
80203c06: 05 05        	addi	a0, a0, 0x1
80203c08: c2 05        	slli	a1, a1, 0x10
80203c0a: 41 82        	srli	a2, a2, 0x10
80203c0c: d1 8d        	or	a1, a1, a2
80203c0e: b2 40        	lw	ra, 0xc(sp)
80203c10: 41 01        	addi	sp, sp, 0x10
80203c12: 65 bf        	j	0x80203bca <.text+0x3bca>
80203c14: 97 22 00 00  	auipc	t0, 0x2
80203c18: e7 82 e2 70  	jalr	t0, 0x70e(t0) <.text+0x6322>
80203c1c: 3a 8c        	mv	s8, a4
80203c1e: 12 07        	slli	a4, a4, 0x4
80203c20: 93 5b c7 01  	srli	s7, a4, 0x1c
80203c24: 1e c6        	sw	t2, 0xc(sp)
80203c26: 13 97 43 00  	slli	a4, t2, 0x4
80203c2a: 13 59 c7 01  	srli	s2, a4, 0x1c
80203c2e: b3 04 79 01  	add	s1, s2, s7
80203c32: 29 47        	li	a4, 0xa
80203c34: 46 c4        	sw	a7, 0x8(sp)
80203c36: 63 77 97 00  	bgeu	a4, s1, 0x80203c44 <.text+0x3c44>
80203c3a: 81 47        	li	a5, 0x0
80203c3c: 01 47        	li	a4, 0x0
80203c3e: 81 46        	li	a3, 0x0
80203c40: 01 46        	li	a2, 0x0
80203c42: c9 a8        	j	0x80203d14 <.text+0x3d14>
80203c44: 2e c8        	sw	a1, 0x10(sp)
80203c46: 32 ca        	sw	a2, 0x14(sp)
80203c48: 36 cc        	sw	a3, 0x18(sp)
80203c4a: 26 c0        	sw	s1, 0x0(sp)
80203c4c: 2a c2        	sw	a0, 0x4(sp)
80203c4e: 63 08 09 08  	beqz	s2, 0x80203cde <.text+0x3cde>
80203c52: c2 8c        	mv	s9, a6
80203c54: 3e 8d        	mv	s10, a5
80203c56: 01 4b        	li	s6, 0x0
80203c58: a1 4a        	li	s5, 0x8
80203c5a: 6a 85        	mv	a0, s10
80203c5c: e6 85        	mv	a1, s9
80203c5e: 63 64 5b 01  	bltu	s6, s5, 0x80203c66 <.text+0x3c66>
80203c62: 22 45        	lw	a0, 0x8(sp)
80203c64: b2 45        	lw	a1, 0xc(sp)
80203c66: b3 8d 6b 01  	add	s11, s7, s6
80203c6a: 13 16 db 01  	slli	a2, s6, 0x1d
80203c6e: 69 82        	srli	a2, a2, 0x1a
80203c70: 97 20 00 00  	auipc	ra, 0x2
80203c74: e7 80 20 56  	jalr	0x562(ra) <.text+0x61d2>
80203c78: aa 84        	mv	s1, a0
80203c7a: 13 94 dd 01  	slli	s0, s11, 0x1d
80203c7e: 69 80        	srli	s0, s0, 0x1a
80203c80: 13 05 10 f0  	li	a0, -0xff
80203c84: fd 55        	li	a1, -0x1
80203c86: 22 86        	mv	a2, s0
80203c88: 97 20 00 00  	auipc	ra, 0x2
80203c8c: e7 80 80 49  	jalr	0x498(ra) <.text+0x6120>
80203c90: 13 36 15 00  	seqz	a2, a0
80203c94: 33 8a c5 40  	sub	s4, a1, a2
80203c98: 93 09 f5 ff  	addi	s3, a0, -0x1
80203c9c: 13 f5 f4 0f  	andi	a0, s1, 0xff
80203ca0: 81 45        	li	a1, 0x0
80203ca2: 22 86        	mv	a2, s0
80203ca4: 97 20 00 00  	auipc	ra, 0x2
80203ca8: e7 80 c0 47  	jalr	0x47c(ra) <.text+0x6120>
80203cac: 63 ec 5d 01  	bltu	s11, s5, 0x80203cc4 <.text+0x3cc4>
80203cb0: 33 76 8a 01  	and	a2, s4, s8
80203cb4: e2 46        	lw	a3, 0x18(sp)
80203cb6: b3 f6 d9 00  	and	a3, s3, a3
80203cba: 33 ec c5 00  	or	s8, a1, a2
80203cbe: 55 8d        	or	a0, a0, a3
80203cc0: 2a cc        	sw	a0, 0x18(sp)
80203cc2: 19 a8        	j	0x80203cd8 <.text+0x3cd8>
80203cc4: 52 46        	lw	a2, 0x14(sp)
80203cc6: 33 76 ca 00  	and	a2, s4, a2
80203cca: c2 46        	lw	a3, 0x10(sp)
80203ccc: b3 f6 d9 00  	and	a3, s3, a3
80203cd0: d1 8d        	or	a1, a1, a2
80203cd2: 2e ca        	sw	a1, 0x14(sp)
80203cd4: 55 8d        	or	a0, a0, a3
80203cd6: 2a c8        	sw	a0, 0x10(sp)
80203cd8: 05 0b        	addi	s6, s6, 0x1
80203cda: e3 10 69 f9  	bne	s2, s6, 0x80203c5a <.text+0x3c5a>
80203cde: 13 15 8c 00  	slli	a0, s8, 0x8
80203ce2: 21 81        	srli	a0, a0, 0x8
80203ce4: e2 46        	lw	a3, 0x18(sp)
80203ce6: c2 47        	lw	a5, 0x10(sp)
80203ce8: b3 e5 d7 00  	or	a1, a5, a3
80203cec: 52 47        	lw	a4, 0x14(sp)
80203cee: 33 66 a7 00  	or	a2, a4, a0
80203cf2: d1 8d        	or	a1, a1, a2
80203cf4: 37 86 80 80  	lui	a2, 0x80808
80203cf8: 13 06 06 08  	addi	a2, a2, 0x80
80203cfc: 6d 8e        	and	a2, a2, a1
80203cfe: b7 05 00 e0  	lui	a1, 0xe0000
80203d02: 19 c2        	beqz	a2, 0x80203d08 <.text+0x3d08>
80203d04: b7 05 00 a0  	lui	a1, 0xa0000
80203d08: 82 44        	lw	s1, 0x0(sp)
80203d0a: 13 96 84 01  	slli	a2, s1, 0x18
80203d0e: 4d 8d        	or	a0, a0, a1
80203d10: 49 8e        	or	a2, a2, a0
80203d12: 12 45        	lw	a0, 0x4(sp)
80203d14: 93 b5 b4 00  	sltiu	a1, s1, 0xb
80203d18: 93 c5 15 00  	xori	a1, a1, 0x1
80203d1c: 1c c1        	sw	a5, 0x0(a0)
80203d1e: 58 c1        	sw	a4, 0x4(a0)
80203d20: 14 c5        	sw	a3, 0x8(a0)
80203d22: 50 c5        	sw	a2, 0xc(a0)
80203d24: 23 08 b5 00  	sb	a1, 0x10(a0)
80203d28: 97 22 00 00  	auipc	t0, 0x2
80203d2c: e7 82 c2 5d  	jalr	t0, 0x5dc(t0) <.text+0x6304>
80203d30: 82 80        	ret
80203d32: 45 46        	li	a2, 0x11
80203d34: aa 86        	mv	a3, a0
80203d36: 2e 85        	mv	a0, a1
80203d38: b6 85        	mv	a1, a3
80203d3a: 17 23 00 00  	auipc	t1, 0x2
80203d3e: 67 00 83 32  	jr	0x328(t1) <.text+0x6062>
80203d42: 41 11        	addi	sp, sp, -0x10
80203d44: 06 c6        	sw	ra, 0xc(sp)
80203d46: 22 c4        	sw	s0, 0x8(sp)
80203d48: 2a 84        	mv	s0, a0
80203d4a: 48 41        	lw	a0, 0x4(a0)
80203d4c: 83 45 84 00  	lbu	a1, 0x8(s0)
80203d50: 97 f0 ff ff  	auipc	ra, 0xfffff
80203d54: e7 80 c0 8d  	jalr	-0x724(ra)
80203d58: 22 85        	mv	a0, s0
80203d5a: b2 40        	lw	ra, 0xc(sp)
80203d5c: 22 44        	lw	s0, 0x8(sp)
80203d5e: 41 01        	addi	sp, sp, 0x10
80203d60: 82 80        	ret
80203d62: 97 22 00 00  	auipc	t0, 0x2
80203d66: e7 82 02 5c  	jalr	t0, 0x5c0(t0) <.text+0x6322>
80203d6a: c6 89        	mv	s3, a7
80203d6c: c2 8c        	mv	s9, a6
80203d6e: 3e 84        	mv	s0, a5
80203d70: 3a ca        	sw	a4, 0x14(sp)
80203d72: 36 89        	mv	s2, a3
80203d74: 32 c8        	sw	a2, 0x10(sp)
80203d76: ae 84        	mv	s1, a1
80203d78: aa 8b        	mv	s7, a0
80203d7a: 13 fb f8 0f  	andi	s6, a7, 0xff
80203d7e: 13 dc 88 00  	srli	s8, a7, 0x8
80203d82: 93 da 08 01  	srli	s5, a7, 0x10
80203d86: 63 0d 0b 00  	beqz	s6, 0x80203da0 <.text+0x3da0>
80203d8a: 66 85        	mv	a0, s9
80203d8c: ce 85        	mv	a1, s3
80203d8e: 97 f0 ff ff  	auipc	ra, 0xfffff
80203d92: e7 80 e0 89  	jalr	-0x762(ra)
80203d96: 66 85        	mv	a0, s9
80203d98: 97 e0 ff ff  	auipc	ra, 0xffffe
80203d9c: e7 80 80 05  	jalr	0x58(ra)
80203da0: 13 7a 0c 01  	andi	s4, s8, 0x10
80203da4: 05 45        	li	a0, 0x1
80203da6: 93 dd ba 00  	srli	s11, s5, 0xb
80203daa: 22 c4        	sw	s0, 0x8(sp)
80203dac: 93 5a f4 01  	srli	s5, s0, 0x1f
80203db0: 63 05 0a 00  	beqz	s4, 0x80203dba <.text+0x3dba>
80203db4: 33 e5 ba 01  	or	a0, s5, s11
80203db8: 05 89        	andi	a0, a0, 0x1
80203dba: 93 75 fc 0f  	andi	a1, s8, 0xff
80203dbe: 2e c6        	sw	a1, 0xc(sp)
80203dc0: 11 44        	li	s0, 0x4
80203dc2: 13 fd c4 00  	andi	s10, s1, 0xc
80203dc6: 33 15 a4 00  	sll	a0, s0, a0
80203dca: 33 45 ad 00  	xor	a0, s10, a0
80203dce: 13 35 15 00  	seqz	a0, a0
80203dd2: 26 cc        	sw	s1, 0x18(sp)
80203dd4: 93 f5 14 00  	andi	a1, s1, 0x1
80203dd8: 93 b5 15 00  	seqz	a1, a1
80203ddc: 4d 8d        	or	a0, a0, a1
80203dde: ca 84        	mv	s1, s2
80203de0: 13 79 c9 00  	andi	s2, s2, 0xc
80203de4: 01 c9        	beqz	a0, 0x80203df4 <.text+0x3df4>
80203de6: 66 85        	mv	a0, s9
80203de8: ce 85        	mv	a1, s3
80203dea: 97 d0 ff ff  	auipc	ra, 0xffffd
80203dee: e7 80 80 46  	jalr	0x468(ra)
80203df2: 25 a8        	j	0x80203e2a <.text+0x3e2a>
80203df4: 63 08 0b 00  	beqz	s6, 0x80203e04 <.text+0x3e04>
80203df8: 66 85        	mv	a0, s9
80203dfa: ce 85        	mv	a1, s3
80203dfc: 97 d0 ff ff  	auipc	ra, 0xffffd
80203e00: e7 80 60 45  	jalr	0x456(ra)
80203e04: 05 45        	li	a0, 0x1
80203e06: 63 05 0a 00  	beqz	s4, 0x80203e10 <.text+0x3e10>
80203e0a: 33 e5 ba 01  	or	a0, s5, s11
80203e0e: 05 89        	andi	a0, a0, 0x1
80203e10: 33 15 a4 00  	sll	a0, s0, a0
80203e14: 33 45 a9 00  	xor	a0, s2, a0
80203e18: 13 35 15 00  	seqz	a0, a0
80203e1c: 93 f5 14 00  	andi	a1, s1, 0x1
80203e20: 93 b5 15 00  	seqz	a1, a1
80203e24: 4d 8d        	or	a0, a0, a1
80203e26: 63 0c 05 10  	beqz	a0, 0x80203f3e <.text+0x3f3e>
80203e2a: 66 85        	mv	a0, s9
80203e2c: ce 85        	mv	a1, s3
80203e2e: 97 d0 ff ff  	auipc	ra, 0xffffd
80203e32: e7 80 40 42  	jalr	0x424(ra)
80203e36: 63 0d 0b 00  	beqz	s6, 0x80203e50 <.text+0x3e50>
80203e3a: 66 85        	mv	a0, s9
80203e3c: ce 85        	mv	a1, s3
80203e3e: 97 e0 ff ff  	auipc	ra, 0xffffe
80203e42: e7 80 e0 7e  	jalr	0x7ee(ra)
80203e46: 66 85        	mv	a0, s9
80203e48: 97 e0 ff ff  	auipc	ra, 0xffffe
80203e4c: e7 80 80 fa  	jalr	-0x58(ra)
80203e50: 05 45        	li	a0, 0x1
80203e52: 63 05 0a 00  	beqz	s4, 0x80203e5c <.text+0x3e5c>
80203e56: 33 e5 ba 01  	or	a0, s5, s11
80203e5a: 05 89        	andi	a0, a0, 0x1
80203e5c: 33 15 a4 00  	sll	a0, s0, a0
80203e60: 63 0e a9 12  	beq	s2, a0, 0x80203f9c <.text+0x3f9c>
80203e64: 63 08 0b 00  	beqz	s6, 0x80203e74 <.text+0x3e74>
80203e68: 66 85        	mv	a0, s9
80203e6a: ce 85        	mv	a1, s3
80203e6c: 97 d0 ff ff  	auipc	ra, 0xffffd
80203e70: e7 80 60 3e  	jalr	0x3e6(ra)
80203e74: 05 45        	li	a0, 0x1
80203e76: 63 05 0a 00  	beqz	s4, 0x80203e80 <.text+0x3e80>
80203e7a: 33 e5 ba 01  	or	a0, s5, s11
80203e7e: 05 89        	andi	a0, a0, 0x1
80203e80: 26 8a        	mv	s4, s1
80203e82: 33 15 a4 00  	sll	a0, s0, a0
80203e86: 63 09 ad 12  	beq	s10, a0, 0x80203fb8 <.text+0x3fb8>
80203e8a: c2 4a        	lw	s5, 0x10(sp)
80203e8c: 22 4d        	lw	s10, 0x8(sp)
80203e8e: 32 45        	lw	a0, 0xc(sp)
80203e90: 13 75 05 02  	andi	a0, a0, 0x20
80203e94: ea 84        	mv	s1, s10
80203e96: 19 c1        	beqz	a0, 0x80203e9c <.text+0x3e9c>
80203e98: 93 74 fc 00  	andi	s1, s8, 0xf
80203e9c: 13 d4 f4 41  	srai	s0, s1, 0x1f
80203ea0: a1 8c        	xor	s1, s1, s0
80203ea2: 63 08 0b 00  	beqz	s6, 0x80203eb2 <.text+0x3eb2>
80203ea6: 66 85        	mv	a0, s9
80203ea8: ce 85        	mv	a1, s3
80203eaa: 97 d0 ff ff  	auipc	ra, 0xffffd
80203eae: e7 80 80 3a  	jalr	0x3a8(ra)
80203eb2: 33 c5 84 00  	xor	a0, s1, s0
80203eb6: 93 55 e5 01  	srli	a1, a0, 0x1e
80203eba: 0a 04        	slli	s0, s0, 0x2
80203ebc: c1 8d        	or	a1, a1, s0
80203ebe: ba 05        	slli	a1, a1, 0xe
80203ec0: 93 d6 e5 00  	srli	a3, a1, 0xe
80203ec4: d2 84        	mv	s1, s4
80203ec6: 93 55 ea 00  	srli	a1, s4, 0xe
80203eca: 52 44        	lw	s0, 0x14(sp)
80203ecc: 13 17 24 01  	slli	a4, s0, 0x12
80203ed0: 13 56 e4 00  	srli	a2, s0, 0xe
80203ed4: d9 8d        	or	a1, a1, a4
80203ed6: 63 85 c6 00  	beq	a3, a2, 0x80203ee0 <.text+0x3ee0>
80203eda: 33 b5 c6 00  	sltu	a0, a3, a2
80203ede: 21 a0        	j	0x80203ee6 <.text+0x3ee6>
80203ee0: 0a 05        	slli	a0, a0, 0x2
80203ee2: 33 35 b5 00  	sltu	a0, a0, a1
80203ee6: 13 45 15 00  	xori	a0, a0, 0x1
80203eea: 93 d6 ea 00  	srli	a3, s5, 0xe
80203eee: 62 49        	lw	s2, 0x18(sp)
80203ef0: 63 05 d6 00  	beq	a2, a3, 0x80203efa <.text+0x3efa>
80203ef4: b3 35 d6 00  	sltu	a1, a2, a3
80203ef8: 01 a8        	j	0x80203f08 <.text+0x3f08>
80203efa: 13 56 e9 00  	srli	a2, s2, 0xe
80203efe: 93 96 2a 01  	slli	a3, s5, 0x12
80203f02: 55 8e        	or	a2, a2, a3
80203f04: b3 b5 c5 00  	sltu	a1, a1, a2
80203f08: 93 c5 15 00  	xori	a1, a1, 0x1
80203f0c: 6d 8d        	and	a0, a0, a1
80203f0e: 71 c1        	beqz	a0, 0x80203fd2 <.text+0x3fd2>
80203f10: 13 75 19 00  	andi	a0, s2, 0x1
80203f14: 61 c1        	beqz	a0, 0x80203fd4 <.text+0x3fd4>
80203f16: 13 f5 14 00  	andi	a0, s1, 0x1
80203f1a: 2d e5        	bnez	a0, 0x80203f84 <.text+0x3f84>
80203f1c: 26 85        	mv	a0, s1
80203f1e: a2 85        	mv	a1, s0
80203f20: 6a 86        	mv	a2, s10
80203f22: e6 86        	mv	a3, s9
80203f24: 4e 87        	mv	a4, s3
80203f26: 97 e0 ff ff  	auipc	ra, 0xffffe
80203f2a: e7 80 80 4e  	jalr	0x4e8(ra)
80203f2e: 2e 84        	mv	s0, a1
80203f30: 49 99        	andi	a0, a0, -0xe
80203f32: 93 f5 c4 00  	andi	a1, s1, 0xc
80203f36: 4d 8d        	or	a0, a0, a1
80203f38: 93 04 15 00  	addi	s1, a0, 0x1
80203f3c: a1 a0        	j	0x80203f84 <.text+0x3f84>
80203f3e: 32 45        	lw	a0, 0xc(sp)
80203f40: 13 75 05 02  	andi	a0, a0, 0x20
80203f44: 01 ed        	bnez	a0, 0x80203f5c <.text+0x3f5c>
80203f46: 66 85        	mv	a0, s9
80203f48: ce 85        	mv	a1, s3
80203f4a: 97 d0 ff ff  	auipc	ra, 0xffffd
80203f4e: e7 80 80 30  	jalr	0x308(ra)
80203f52: 62 49        	lw	s2, 0x18(sp)
80203f54: 52 44        	lw	s0, 0x14(sp)
80203f56: c2 4a        	lw	s5, 0x10(sp)
80203f58: 22 46        	lw	a2, 0x8(sp)
80203f5a: 31 a8        	j	0x80203f76 <.text+0x3f76>
80203f5c: 62 49        	lw	s2, 0x18(sp)
80203f5e: 52 44        	lw	s0, 0x14(sp)
80203f60: c2 4a        	lw	s5, 0x10(sp)
80203f62: 63 08 0b 00  	beqz	s6, 0x80203f72 <.text+0x3f72>
80203f66: 66 85        	mv	a0, s9
80203f68: ce 85        	mv	a1, s3
80203f6a: 97 d0 ff ff  	auipc	ra, 0xffffd
80203f6e: e7 80 80 2e  	jalr	0x2e8(ra)
80203f72: 13 76 fc 00  	andi	a2, s8, 0xf
80203f76: 13 d5 04 01  	srli	a0, s1, 0x10
80203f7a: 93 15 04 01  	slli	a1, s0, 0x10
80203f7e: 4d 8d        	or	a0, a0, a1
80203f80: 63 4b a6 06  	blt	a2, a0, 0x80203ff6 <.text+0x3ff6>
80203f84: 5e 85        	mv	a0, s7
80203f86: 04 c5        	sw	s1, 0x8(a0)
80203f88: 23 a0 2b 01  	sw	s2, 0x0(s7)
80203f8c: 40 c5        	sw	s0, 0xc(a0)
80203f8e: 23 a2 5b 01  	sw	s5, 0x4(s7)
80203f92: 97 22 00 00  	auipc	t0, 0x2
80203f96: e7 82 22 37  	jalr	t0, 0x372(t0) <.text+0x6304>
80203f9a: 82 80        	ret
80203f9c: 26 85        	mv	a0, s1
80203f9e: d2 45        	lw	a1, 0x14(sp)
80203fa0: 22 46        	lw	a2, 0x8(sp)
80203fa2: e6 86        	mv	a3, s9
80203fa4: 4e 87        	mv	a4, s3
80203fa6: 97 e0 ff ff  	auipc	ra, 0xffffe
80203faa: e7 80 00 71  	jalr	0x710(ra)
80203fae: aa 84        	mv	s1, a0
80203fb0: 2e ca        	sw	a1, 0x14(sp)
80203fb2: e3 1b 0b ea  	bnez	s6, 0x80203e68 <.text+0x3e68>
80203fb6: 7d bd        	j	0x80203e74 <.text+0x3e74>
80203fb8: 62 45        	lw	a0, 0x18(sp)
80203fba: c2 45        	lw	a1, 0x10(sp)
80203fbc: 22 4d        	lw	s10, 0x8(sp)
80203fbe: 6a 86        	mv	a2, s10
80203fc0: e6 86        	mv	a3, s9
80203fc2: 4e 87        	mv	a4, s3
80203fc4: 97 e0 ff ff  	auipc	ra, 0xffffe
80203fc8: e7 80 20 6f  	jalr	0x6f2(ra)
80203fcc: 2a cc        	sw	a0, 0x18(sp)
80203fce: ae 8a        	mv	s5, a1
80203fd0: 7d bd        	j	0x80203e8e <.text+0x3e8e>
80203fd2: 00 00        	unimp
80203fd4: 4a 85        	mv	a0, s2
80203fd6: d6 85        	mv	a1, s5
80203fd8: 6a 86        	mv	a2, s10
80203fda: e6 86        	mv	a3, s9
80203fdc: 4e 87        	mv	a4, s3
80203fde: 97 e0 ff ff  	auipc	ra, 0xffffe
80203fe2: e7 80 00 43  	jalr	0x430(ra)
80203fe6: ae 8a        	mv	s5, a1
80203fe8: 49 99        	andi	a0, a0, -0xe
80203fea: 93 75 c9 00  	andi	a1, s2, 0xc
80203fee: 4d 8d        	or	a0, a0, a1
80203ff0: 13 09 15 00  	addi	s2, a0, 0x1
80203ff4: 0d b7        	j	0x80203f16 <.text+0x3f16>
80203ff6: 00 00        	unimp
80203ff8: 97 22 00 00  	auipc	t0, 0x2
80203ffc: e7 82 a2 32  	jalr	t0, 0x32a(t0) <.text+0x6322>
80204000: 3a 8b        	mv	s6, a4
80204002: 83 29 07 01  	lw	s3, 0x10(a4)
80204006: 03 29 47 01  	lw	s2, 0x14(a4)
8020400a: 03 4d 87 01  	lbu	s10, 0x18(a4)
8020400e: 83 44 97 01  	lbu	s1, 0x19(a4)
80204012: 03 54 a7 01  	lhu	s0, 0x1a(a4)
80204016: b6 8c        	mv	s9, a3
80204018: b2 8b        	mv	s7, a2
8020401a: 2e 8c        	mv	s8, a1
8020401c: 2a cc        	sw	a0, 0x18(sp)
8020401e: 63 06 0d 02  	beqz	s10, 0x8020404a <.text+0x404a>
80204022: 5a 85        	mv	a0, s6
80204024: 97 10 00 00  	auipc	ra, 0x1
80204028: e7 80 80 b3  	jalr	-0x4c8(ra) <.text+0x4b5c>
8020402c: 5a 85        	mv	a0, s6
8020402e: 97 10 00 00  	auipc	ra, 0x1
80204032: e7 80 e0 b2  	jalr	-0x4d2(ra) <.text+0x4b5c>
80204036: 5a 85        	mv	a0, s6
80204038: 97 10 00 00  	auipc	ra, 0x1
8020403c: e7 80 40 b2  	jalr	-0x4dc(ra) <.text+0x4b5c>
80204040: 4a 85        	mv	a0, s2
80204042: 97 e0 ff ff  	auipc	ra, 0xffffe
80204046: e7 80 e0 da  	jalr	-0x252(ra)
8020404a: 4a c8        	sw	s2, 0x10(sp)
8020404c: 26 ca        	sw	s1, 0x14(sp)
8020404e: 93 fa 04 01  	andi	s5, s1, 0x10
80204052: 05 45        	li	a0, 0x1
80204054: 22 c6        	sw	s0, 0xc(sp)
80204056: 93 5d b4 00  	srli	s11, s0, 0xb
8020405a: 4e 8a        	mv	s4, s3
8020405c: ce 84        	mv	s1, s3
8020405e: 13 d9 f9 01  	srli	s2, s3, 0x1f
80204062: 63 85 0a 00  	beqz	s5, 0x8020406c <.text+0x406c>
80204066: 33 65 b9 01  	or	a0, s2, s11
8020406a: 05 89        	andi	a0, a0, 0x1
8020406c: 91 49        	li	s3, 0x4
8020406e: e2 45        	lw	a1, 0x18(sp)
80204070: b1 89        	andi	a1, a1, 0xc
80204072: 33 95 a9 00  	sll	a0, s3, a0
80204076: 63 8c a5 06  	beq	a1, a0, 0x802040ee <.text+0x40ee>
8020407a: 63 07 0d 00  	beqz	s10, 0x80204088 <.text+0x4088>
8020407e: 5a 85        	mv	a0, s6
80204080: 97 10 00 00  	auipc	ra, 0x1
80204084: e7 80 c0 af  	jalr	-0x504(ra) <.text+0x4b7c>
80204088: 05 45        	li	a0, 0x1
8020408a: 63 85 0a 00  	beqz	s5, 0x80204094 <.text+0x4094>
8020408e: 33 65 b9 01  	or	a0, s2, s11
80204092: 05 89        	andi	a0, a0, 0x1
80204094: 93 f5 cb 00  	andi	a1, s7, 0xc
80204098: 33 95 a9 00  	sll	a0, s3, a0
8020409c: 63 8d a5 06  	beq	a1, a0, 0x80204116 <.text+0x4116>
802040a0: 52 89        	mv	s2, s4
802040a2: e6 84        	mv	s1, s9
802040a4: 62 8a        	mv	s4, s8
802040a6: 63 07 0d 00  	beqz	s10, 0x802040b4 <.text+0x40b4>
802040aa: 5a 85        	mv	a0, s6
802040ac: 97 10 00 00  	auipc	ra, 0x1
802040b0: e7 80 00 ad  	jalr	-0x530(ra) <.text+0x4b7c>
802040b4: 63 94 0a 08  	bnez	s5, 0x8020413c <.text+0x413c>
802040b8: 5a 85        	mv	a0, s6
802040ba: 97 10 00 00  	auipc	ra, 0x1
802040be: e7 80 20 ac  	jalr	-0x53e(ra) <.text+0x4b7c>
802040c2: 5a 85        	mv	a0, s6
802040c4: 97 10 00 00  	auipc	ra, 0x1
802040c8: e7 80 80 ab  	jalr	-0x548(ra) <.text+0x4b7c>
802040cc: 13 d5 0b 01  	srli	a0, s7, 0x10
802040d0: 93 9a 04 01  	slli	s5, s1, 0x10
802040d4: 33 65 55 01  	or	a0, a0, s5
802040d8: e2 45        	lw	a1, 0x18(sp)
802040da: c1 81        	srli	a1, a1, 0x10
802040dc: 42 0a        	slli	s4, s4, 0x10
802040de: b3 e5 45 01  	or	a1, a1, s4
802040e2: 0d 8d        	sub	a0, a0, a1
802040e4: 97 22 00 00  	auipc	t0, 0x2
802040e8: e7 82 02 22  	jalr	t0, 0x220(t0) <.text+0x6304>
802040ec: 82 80        	ret
802040ee: 52 45        	lw	a0, 0x14(sp)
802040f0: 22 05        	slli	a0, a0, 0x8
802040f2: 33 65 a5 01  	or	a0, a0, s10
802040f6: 32 47        	lw	a4, 0xc(sp)
802040f8: 42 07        	slli	a4, a4, 0x10
802040fa: 49 8f        	or	a4, a4, a0
802040fc: 62 45        	lw	a0, 0x18(sp)
802040fe: e2 85        	mv	a1, s8
80204100: 52 86        	mv	a2, s4
80204102: c2 46        	lw	a3, 0x10(sp)
80204104: 97 e0 ff ff  	auipc	ra, 0xffffe
80204108: e7 80 20 5b  	jalr	0x5b2(ra)
8020410c: 2a cc        	sw	a0, 0x18(sp)
8020410e: 2e 8c        	mv	s8, a1
80204110: e3 17 0d f6  	bnez	s10, 0x8020407e <.text+0x407e>
80204114: 95 bf        	j	0x80204088 <.text+0x4088>
80204116: 52 45        	lw	a0, 0x14(sp)
80204118: 22 05        	slli	a0, a0, 0x8
8020411a: 33 65 a5 01  	or	a0, a0, s10
8020411e: 32 47        	lw	a4, 0xc(sp)
80204120: 42 07        	slli	a4, a4, 0x10
80204122: 49 8f        	or	a4, a4, a0
80204124: 5e 85        	mv	a0, s7
80204126: e6 85        	mv	a1, s9
80204128: 52 89        	mv	s2, s4
8020412a: 52 86        	mv	a2, s4
8020412c: c2 46        	lw	a3, 0x10(sp)
8020412e: 97 e0 ff ff  	auipc	ra, 0xffffe
80204132: e7 80 80 58  	jalr	0x588(ra)
80204136: aa 8b        	mv	s7, a0
80204138: ae 84        	mv	s1, a1
8020413a: ad b7        	j	0x802040a4 <.text+0x40a4>
8020413c: d2 4c        	lw	s9, 0x14(sp)
8020413e: 13 f5 0c 02  	andi	a0, s9, 0x20
80204142: 19 ed        	bnez	a0, 0x80204160 <.text+0x4160>
80204144: 5a 85        	mv	a0, s6
80204146: 97 10 00 00  	auipc	ra, 0x1
8020414a: e7 80 60 a3  	jalr	-0x5ca(ra) <.text+0x4b7c>
8020414e: 62 45        	lw	a0, 0x18(sp)
80204150: 41 81        	srli	a0, a0, 0x10
80204152: 93 15 0a 01  	slli	a1, s4, 0x10
80204156: 4d 8d        	or	a0, a0, a1
80204158: ca 89        	mv	s3, s2
8020415a: 63 55 a9 02  	bge	s2, a0, 0x80204184 <.text+0x4184>
8020415e: a5 a0        	j	0x802041c6 <.text+0x41c6>
80204160: 63 07 0d 00  	beqz	s10, 0x8020416e <.text+0x416e>
80204164: 5a 85        	mv	a0, s6
80204166: 97 10 00 00  	auipc	ra, 0x1
8020416a: e7 80 60 a1  	jalr	-0x5ea(ra) <.text+0x4b7c>
8020416e: 93 f9 fc 00  	andi	s3, s9, 0xf
80204172: 62 45        	lw	a0, 0x18(sp)
80204174: 41 81        	srli	a0, a0, 0x10
80204176: 93 15 0a 01  	slli	a1, s4, 0x10
8020417a: 4d 8d        	or	a0, a0, a1
8020417c: 63 c5 a9 04  	blt	s3, a0, 0x802041c6 <.text+0x41c6>
80204180: 63 07 0d 00  	beqz	s10, 0x8020418e <.text+0x418e>
80204184: 5a 85        	mv	a0, s6
80204186: 97 10 00 00  	auipc	ra, 0x1
8020418a: e7 80 60 9f  	jalr	-0x60a(ra) <.text+0x4b7c>
8020418e: 13 d5 0b 01  	srli	a0, s7, 0x10
80204192: 93 95 04 01  	slli	a1, s1, 0x10
80204196: 4d 8d        	or	a0, a0, a1
80204198: 63 c8 a9 02  	blt	s3, a0, 0x802041c8 <.text+0x41c8>
8020419c: a2 0c        	slli	s9, s9, 0x8
8020419e: 33 e5 ac 01  	or	a0, s9, s10
802041a2: 32 4c        	lw	s8, 0xc(sp)
802041a4: 42 0c        	slli	s8, s8, 0x10
802041a6: 33 68 85 01  	or	a6, a0, s8
802041aa: 62 45        	lw	a0, 0x18(sp)
802041ac: d2 85        	mv	a1, s4
802041ae: 5e 86        	mv	a2, s7
802041b0: a6 86        	mv	a3, s1
802041b2: 4a 87        	mv	a4, s2
802041b4: c2 47        	lw	a5, 0x10(sp)
802041b6: 97 22 00 00  	auipc	t0, 0x2
802041ba: e7 82 e2 14  	jalr	t0, 0x14e(t0) <.text+0x6304>
802041be: 17 13 00 00  	auipc	t1, 0x1
802041c2: 67 00 e3 37  	jr	0x37e(t1) <.text+0x553c>
802041c6: 00 00        	unimp
802041c8: 00 00        	unimp
802041ca: 41 11        	addi	sp, sp, -0x10
802041cc: 06 c6        	sw	ra, 0xc(sp)
802041ce: 22 c4        	sw	s0, 0x8(sp)
802041d0: 2a 84        	mv	s0, a0
802041d2: 48 41        	lw	a0, 0x4(a0)
802041d4: 83 45 84 00  	lbu	a1, 0x8(s0)
802041d8: 97 d0 ff ff  	auipc	ra, 0xffffd
802041dc: e7 80 a0 07  	jalr	0x7a(ra)
802041e0: 22 85        	mv	a0, s0
802041e2: b2 40        	lw	ra, 0xc(sp)
802041e4: 22 44        	lw	s0, 0x8(sp)
802041e6: 41 01        	addi	sp, sp, 0x10
802041e8: 82 80        	ret
802041ea: 01 11        	addi	sp, sp, -0x20
802041ec: 06 ce        	sw	ra, 0x1c(sp)
802041ee: 22 cc        	sw	s0, 0x18(sp)
802041f0: 26 ca        	sw	s1, 0x14(sp)
802041f2: 4a c8        	sw	s2, 0x10(sp)
802041f4: 4e c6        	sw	s3, 0xc(sp)
802041f6: 52 c4        	sw	s4, 0x8(sp)
802041f8: 56 c2        	sw	s5, 0x4(sp)
802041fa: 5a c0        	sw	s6, 0x0(sp)
802041fc: 32 8b        	mv	s6, a2
802041fe: ae 89        	mv	s3, a1
80204200: 2a 89        	mv	s2, a0
80204202: 13 7a f6 0f  	andi	s4, a2, 0xff
80204206: 93 5a 86 00  	srli	s5, a2, 0x8
8020420a: 63 0d 0a 00  	beqz	s4, 0x80204224 <.text+0x4224>
8020420e: 4e 85        	mv	a0, s3
80204210: da 85        	mv	a1, s6
80204212: 97 e0 ff ff  	auipc	ra, 0xffffe
80204216: e7 80 a0 41  	jalr	0x41a(ra)
8020421a: 4e 85        	mv	a0, s3
8020421c: 97 e0 ff ff  	auipc	ra, 0xffffe
80204220: e7 80 40 bd  	jalr	-0x42c(ra)
80204224: 13 f5 0a 02  	andi	a0, s5, 0x20
80204228: 09 e9        	bnez	a0, 0x8020423a <.text+0x423a>
8020422a: 4e 85        	mv	a0, s3
8020422c: da 85        	mv	a1, s6
8020422e: 97 d0 ff ff  	auipc	ra, 0xffffd
80204232: e7 80 40 02  	jalr	0x24(ra)
80204236: ca 84        	mv	s1, s2
80204238: 19 a8        	j	0x8020424e <.text+0x424e>
8020423a: 63 08 0a 00  	beqz	s4, 0x8020424a <.text+0x424a>
8020423e: 4e 85        	mv	a0, s3
80204240: da 85        	mv	a1, s6
80204242: 97 d0 ff ff  	auipc	ra, 0xffffd
80204246: e7 80 00 01  	jalr	0x10(ra)
8020424a: 93 f4 fa 00  	andi	s1, s5, 0xf
8020424e: 13 f4 fa 0f  	andi	s0, s5, 0xff
80204252: 63 08 0a 00  	beqz	s4, 0x80204262 <.text+0x4262>
80204256: 4e 85        	mv	a0, s3
80204258: da 85        	mv	a1, s6
8020425a: 97 d0 ff ff  	auipc	ra, 0xffffd
8020425e: e7 80 80 ff  	jalr	-0x8(ra)
80204262: 41 88        	andi	s0, s0, 0x10
80204264: 01 cc        	beqz	s0, 0x8020427c <.text+0x427c>
80204266: 13 55 0b 01  	srli	a0, s6, 0x10
8020426a: 93 75 09 ff  	andi	a1, s2, -0x10
8020426e: 52 05        	slli	a0, a0, 0x14
80204270: 4d 8d        	or	a0, a0, a1
80204272: 63 45 05 00  	bltz	a0, 0x8020427c <.text+0x427c>
80204276: 01 45        	li	a0, 0x0
80204278: ad 45        	li	a1, 0xb
8020427a: 19 a0        	j	0x80204280 <.text+0x4280>
8020427c: 01 45        	li	a0, 0x0
8020427e: 9d 45        	li	a1, 0x7
80204280: 13 d6 f4 41  	srai	a2, s1, 0x1f
80204284: 93 d6 04 01  	srli	a3, s1, 0x10
80204288: 13 17 06 01  	slli	a4, a2, 0x10
8020428c: 13 96 04 01  	slli	a2, s1, 0x10
80204290: 4d 8e        	or	a2, a2, a1
80204292: 55 8d        	or	a0, a0, a3
80204294: b3 66 a7 00  	or	a3, a4, a0
80204298: 3d 45        	li	a0, 0xf
8020429a: 81 45        	li	a1, 0x0
8020429c: 4a 87        	mv	a4, s2
8020429e: ce 87        	mv	a5, s3
802042a0: 5a 88        	mv	a6, s6
802042a2: f2 40        	lw	ra, 0x1c(sp)
802042a4: 62 44        	lw	s0, 0x18(sp)
802042a6: d2 44        	lw	s1, 0x14(sp)
802042a8: 42 49        	lw	s2, 0x10(sp)
802042aa: b2 49        	lw	s3, 0xc(sp)
802042ac: 22 4a        	lw	s4, 0x8(sp)
802042ae: 92 4a        	lw	s5, 0x4(sp)
802042b0: 02 4b        	lw	s6, 0x0(sp)
802042b2: 05 61        	addi	sp, sp, 0x20
802042b4: 17 13 00 00  	auipc	t1, 0x1
802042b8: 67 00 83 28  	jr	0x288(t1) <.text+0x553c>
802042bc: 41 11        	addi	sp, sp, -0x10
802042be: 06 c6        	sw	ra, 0xc(sp)
802042c0: 22 c4        	sw	s0, 0x8(sp)
802042c2: 2e 84        	mv	s0, a1
802042c4: b2 85        	mv	a1, a2
802042c6: 97 f0 ff ff  	auipc	ra, 0xfffff
802042ca: e7 80 80 5a  	jalr	0x5a8(ra)
802042ce: 93 75 15 00  	andi	a1, a0, 0x1
802042d2: 99 c5        	beqz	a1, 0x802042e0 <.text+0x42e0>
802042d4: 4c 44        	lw	a1, 0xc(s0)
802042d6: 10 44        	lw	a2, 0x8(s0)
802042d8: 93 c5 f5 ff  	not	a1, a1
802042dc: 2e 96        	add	a2, a2, a1
802042de: 11 a0        	j	0x802042e2 <.text+0x42e2>
802042e0: 01 46        	li	a2, 0x0
802042e2: 93 45 f5 ff  	not	a1, a0
802042e6: 85 89        	andi	a1, a1, 0x1
802042e8: 32 85        	mv	a0, a2
802042ea: b2 40        	lw	ra, 0xc(sp)
802042ec: 22 44        	lw	s0, 0x8(sp)
802042ee: 41 01        	addi	sp, sp, 0x10
802042f0: 82 80        	ret
802042f2: 97 22 00 00  	auipc	t0, 0x2
802042f6: e7 82 e2 04  	jalr	t0, 0x4e(t0) <.text+0x6340>
802042fa: b6 84        	mv	s1, a3
802042fc: 32 8b        	mv	s6, a2
802042fe: 2e 89        	mv	s2, a1
80204300: aa 89        	mv	s3, a0
80204302: 93 fa f6 0f  	andi	s5, a3, 0xff
80204306: 13 d4 86 00  	srli	s0, a3, 0x8
8020430a: 63 83 0a 02  	beqz	s5, 0x80204330 <.text+0x4330>
8020430e: 5a 85        	mv	a0, s6
80204310: a6 85        	mv	a1, s1
80204312: 97 e0 ff ff  	auipc	ra, 0xffffe
80204316: e7 80 a0 31  	jalr	0x31a(ra)
8020431a: 5a 85        	mv	a0, s6
8020431c: a6 85        	mv	a1, s1
8020431e: 97 e0 ff ff  	auipc	ra, 0xffffe
80204322: e7 80 e0 30  	jalr	0x30e(ra)
80204326: 5a 85        	mv	a0, s6
80204328: 97 e0 ff ff  	auipc	ra, 0xffffe
8020432c: e7 80 80 ac  	jalr	-0x538(ra)
80204330: 13 75 04 02  	andi	a0, s0, 0x20
80204334: 13 da 04 01  	srli	s4, s1, 0x10
80204338: 2d c5        	beqz	a0, 0x802043a2 <.text+0x43a2>
8020433a: 09 45        	li	a0, 0x2
8020433c: 62 04        	slli	s0, s0, 0x18
8020433e: 63 83 aa 02  	beq	s5, a0, 0x80204364 <.text+0x4364>
80204342: 05 45        	li	a0, 0x1
80204344: 63 92 aa 04  	bne	s5, a0, 0x80204388 <.text+0x4388>
80204348: 85 45        	li	a1, 0x1
8020434a: 5a 85        	mv	a0, s6
8020434c: 97 d0 ff ff  	auipc	ra, 0xffffd
80204350: e7 80 60 f0  	jalr	-0xfa(ra)
80204354: 85 45        	li	a1, 0x1
80204356: 5a 85        	mv	a0, s6
80204358: 97 d0 ff ff  	auipc	ra, 0xffffd
8020435c: e7 80 a0 ef  	jalr	-0x106(ra)
80204360: 85 45        	li	a1, 0x1
80204362: 31 a8        	j	0x8020437e <.text+0x437e>
80204364: 89 45        	li	a1, 0x2
80204366: 5a 85        	mv	a0, s6
80204368: 97 d0 ff ff  	auipc	ra, 0xffffd
8020436c: e7 80 a0 ee  	jalr	-0x116(ra)
80204370: 89 45        	li	a1, 0x2
80204372: 5a 85        	mv	a0, s6
80204374: 97 d0 ff ff  	auipc	ra, 0xffffd
80204378: e7 80 e0 ed  	jalr	-0x122(ra)
8020437c: 89 45        	li	a1, 0x2
8020437e: 5a 85        	mv	a0, s6
80204380: 97 d0 ff ff  	auipc	ra, 0xffffd
80204384: e7 80 20 ed  	jalr	-0x12e(ra)
80204388: 23 a4 49 01  	sw	s4, 0x8(s3)
8020438c: 23 a0 29 01  	sw	s2, 0x0(s3)
80204390: 23 a6 89 00  	sw	s0, 0xc(s3)
80204394: 23 a2 69 01  	sw	s6, 0x4(s3)
80204398: 97 22 00 00  	auipc	t0, 0x2
8020439c: e7 82 02 fc  	jalr	t0, -0x40(t0) <.text+0x6358>
802043a0: 82 80        	ret
802043a2: 13 74 f4 0f  	andi	s0, s0, 0xff
802043a6: 5a 85        	mv	a0, s6
802043a8: a6 85        	mv	a1, s1
802043aa: 97 d0 ff ff  	auipc	ra, 0xffffd
802043ae: e7 80 80 ea  	jalr	-0x158(ra)
802043b2: 63 81 0a 02  	beqz	s5, 0x802043d4 <.text+0x43d4>
802043b6: 5a 85        	mv	a0, s6
802043b8: a6 85        	mv	a1, s1
802043ba: 97 d0 ff ff  	auipc	ra, 0xffffd
802043be: e7 80 80 e9  	jalr	-0x168(ra)
802043c2: 41 88        	andi	s0, s0, 0x10
802043c4: 65 e4        	bnez	s0, 0x802044ac <.text+0x44ac>
802043c6: 5a 85        	mv	a0, s6
802043c8: 97 e0 ff ff  	auipc	ra, 0xffffe
802043cc: e7 80 80 a2  	jalr	-0x5d8(ra)
802043d0: a6 85        	mv	a1, s1
802043d2: 21 a0        	j	0x802043da <.text+0x43da>
802043d4: 41 88        	andi	s0, s0, 0x10
802043d6: 79 e8        	bnez	s0, 0x802044ac <.text+0x44ac>
802043d8: 81 45        	li	a1, 0x0
802043da: 5a 85        	mv	a0, s6
802043dc: 97 d0 ff ff  	auipc	ra, 0xffffd
802043e0: e7 80 60 e7  	jalr	-0x18a(ra)
802043e4: 13 75 89 ff  	andi	a0, s2, -0x8
802043e8: 4e 0a        	slli	s4, s4, 0x13
802043ea: 33 65 aa 00  	or	a0, s4, a0
802043ee: 63 59 05 0c  	bgez	a0, 0x802044c0 <.text+0x44c0>
802043f2: 63 88 0a 00  	beqz	s5, 0x80204402 <.text+0x4402>
802043f6: 5a 85        	mv	a0, s6
802043f8: a6 85        	mv	a1, s1
802043fa: 97 d0 ff ff  	auipc	ra, 0xffffd
802043fe: e7 80 80 e5  	jalr	-0x1a8(ra)
80204402: 93 0a 4b 01  	addi	s5, s6, 0x14
80204406: 63 0c 09 0c  	beqz	s2, 0x802044de <.text+0x44de>
8020440a: 29 45        	li	a0, 0xa
8020440c: 63 4e 25 0d  	blt	a0, s2, 0x802044e8 <.text+0x44e8>
80204410: 21 45        	li	a0, 0x8
80204412: 4a 8a        	mv	s4, s2
80204414: 63 43 a9 00  	blt	s2, a0, 0x8020441a <.text+0x441a>
80204418: 21 4a        	li	s4, 0x8
8020441a: 63 48 0a 0c  	bltz	s4, 0x802044ea <.text+0x44ea>
8020441e: 81 44        	li	s1, 0x0
80204420: 01 4c        	li	s8, 0x0
80204422: 01 4b        	li	s6, 0x0
80204424: 56 84        	mv	s0, s5
80204426: 03 45 04 00  	lbu	a0, 0x0(s0)
8020442a: 13 f6 84 03  	andi	a2, s1, 0x38
8020442e: 81 45        	li	a1, 0x0
80204430: 97 20 00 00  	auipc	ra, 0x2
80204434: e7 80 00 cf  	jalr	-0x310(ra) <.text+0x6120>
80204438: 33 eb 65 01  	or	s6, a1, s6
8020443c: 33 6c 85 01  	or	s8, a0, s8
80204440: a1 04        	addi	s1, s1, 0x8
80204442: 7d 1a        	addi	s4, s4, -0x1
80204444: 05 04        	addi	s0, s0, 0x1
80204446: e3 10 0a fe  	bnez	s4, 0x80204426 <.text+0x4426>
8020444a: 25 45        	li	a0, 0x9
8020444c: 63 4c a9 02  	blt	s2, a0, 0x80204484 <.text+0x4484>
80204450: 03 ca 8a 00  	lbu	s4, 0x8(s5)
80204454: 13 04 79 ff  	addi	s0, s2, -0x9
80204458: 1d c4        	beqz	s0, 0x80204486 <.text+0x4486>
8020445a: 81 4b        	li	s7, 0x0
8020445c: a5 0a        	addi	s5, s5, 0x9
8020445e: a1 44        	li	s1, 0x8
80204460: 03 c5 0a 00  	lbu	a0, 0x0(s5)
80204464: 13 f6 84 03  	andi	a2, s1, 0x38
80204468: 81 45        	li	a1, 0x0
8020446a: 97 20 00 00  	auipc	ra, 0x2
8020446e: e7 80 60 cb  	jalr	-0x34a(ra) <.text+0x6120>
80204472: b3 eb 75 01  	or	s7, a1, s7
80204476: 33 6a 45 01  	or	s4, a0, s4
8020447a: 7d 14        	addi	s0, s0, -0x1
8020447c: 85 0a        	addi	s5, s5, 0x1
8020447e: a1 04        	addi	s1, s1, 0x8
80204480: 65 f0        	bnez	s0, 0x80204460 <.text+0x4460>
80204482: 19 a0        	j	0x80204488 <.text+0x4488>
80204484: 01 4a        	li	s4, 0x0
80204486: 81 4b        	li	s7, 0x0
80204488: 33 65 8a 01  	or	a0, s4, s8
8020448c: b3 e5 6b 01  	or	a1, s7, s6
80204490: 97 22 00 00  	auipc	t0, 0x2
80204494: e7 82 22 f5  	jalr	t0, -0xae(t0) <.text+0x63e2>
80204498: 99 c1        	beqz	a1, 0x8020449e <.text+0x449e>
8020449a: 37 05 00 a0  	lui	a0, 0xa0000
8020449e: 62 09        	slli	s2, s2, 0x18
802044a0: 33 65 75 01  	or	a0, a0, s7
802044a4: 33 64 a9 00  	or	s0, s2, a0
802044a8: 62 89        	mv	s2, s8
802044aa: f9 bd        	j	0x80204388 <.text+0x4388>
802044ac: 5a 85        	mv	a0, s6
802044ae: a6 85        	mv	a1, s1
802044b0: 97 d0 ff ff  	auipc	ra, 0xffffd
802044b4: e7 80 20 da  	jalr	-0x25e(ra)
802044b8: 97 10 00 00  	auipc	ra, 0x1
802044bc: e7 80 a0 07  	jalr	0x7a(ra) <.text+0x5532>
802044c0: 5a 85        	mv	a0, s6
802044c2: a6 85        	mv	a1, s1
802044c4: 97 d0 ff ff  	auipc	ra, 0xffffd
802044c8: e7 80 e0 d8  	jalr	-0x272(ra)
802044cc: 4a 85        	mv	a0, s2
802044ce: da 85        	mv	a1, s6
802044d0: 97 e0 ff ff  	auipc	ra, 0xffffe
802044d4: e7 80 80 92  	jalr	-0x6d8(ra)
802044d8: aa 8a        	mv	s5, a0
802044da: 2e 89        	mv	s2, a1
802044dc: 9d f5        	bnez	a1, 0x8020440a <.text+0x440a>
802044de: 01 4b        	li	s6, 0x0
802044e0: 01 4a        	li	s4, 0x0
802044e2: 37 04 00 e0  	lui	s0, 0xe0000
802044e6: 4d b5        	j	0x80204388 <.text+0x4388>
802044e8: 00 00        	unimp
802044ea: 00 00        	unimp
802044ec: 35 71        	addi	sp, sp, -0xa0
802044ee: 06 cf        	sw	ra, 0x9c(sp)
802044f0: 22 cd        	sw	s0, 0x98(sp)
802044f2: 26 cb        	sw	s1, 0x94(sp)
802044f4: 4a c9        	sw	s2, 0x90(sp)
802044f6: 4e c7        	sw	s3, 0x8c(sp)
802044f8: 52 c5        	sw	s4, 0x88(sp)
802044fa: 56 c3        	sw	s5, 0x84(sp)
802044fc: 5a c1        	sw	s6, 0x80(sp)
802044fe: de de        	sw	s7, 0x7c(sp)
80204500: e2 dc        	sw	s8, 0x78(sp)
80204502: e6 da        	sw	s9, 0x74(sp)
80204504: ea d8        	sw	s10, 0x70(sp)
80204506: ee d6        	sw	s11, 0x6c(sp)
80204508: 2a 8b        	mv	s6, a0
8020450a: 50 45        	lw	a2, 0xc(a0)
8020450c: 08 49        	lw	a0, 0x10(a0)
8020450e: 2e ca        	sw	a1, 0x14(sp)
80204510: 63 47 06 00  	bltz	a2, 0x8020451e <.text+0x451e>
80204514: 81 47        	li	a5, 0x0
80204516: 63 4b 05 00  	bltz	a0, 0x8020452c <.text+0x452c>
8020451a: be 86        	mv	a3, a5
8020451c: 19 a8        	j	0x80204532 <.text+0x4532>
8020451e: 13 46 f6 ff  	not	a2, a2
80204522: fd 57        	li	a5, -0x1
80204524: 63 44 05 00  	bltz	a0, 0x8020452c <.text+0x452c>
80204528: 81 46        	li	a3, 0x0
8020452a: 21 a0        	j	0x80204532 <.text+0x4532>
8020452c: 13 45 f5 ff  	not	a0, a0
80204530: fd 56        	li	a3, -0x1
80204532: 03 2c 0b 00  	lw	s8, 0x0(s6)
80204536: 03 2a 4b 00  	lw	s4, 0x4(s6)
8020453a: 83 4a 8b 00  	lbu	s5, 0x8(s6)
8020453e: 83 4d 9b 00  	lbu	s11, 0x9(s6)
80204542: 83 59 ab 00  	lhu	s3, 0xa(s6)
80204546: 3d 8e        	xor	a2, a2, a5
80204548: 13 57 06 01  	srli	a4, a2, 0x10
8020454c: 93 95 07 01  	slli	a1, a5, 0x10
80204550: 33 e9 e5 00  	or	s2, a1, a4
80204554: 42 06        	slli	a2, a2, 0x10
80204556: 93 0b 16 00  	addi	s7, a2, 0x1
8020455a: 35 8d        	xor	a0, a0, a3
8020455c: 93 55 05 01  	srli	a1, a0, 0x10
80204560: c2 06        	slli	a3, a3, 0x10
80204562: 33 e4 b6 00  	or	s0, a3, a1
80204566: 42 05        	slli	a0, a0, 0x10
80204568: 93 04 15 00  	addi	s1, a0, 0x1
8020456c: 52 85        	mv	a0, s4
8020456e: d6 85        	mv	a1, s5
80204570: 97 e0 ff ff  	auipc	ra, 0xffffe
80204574: e7 80 c0 0b  	jalr	0xbc(ra)
80204578: 13 95 8d 00  	slli	a0, s11, 0x8
8020457c: 33 65 55 01  	or	a0, a0, s5
80204580: 93 95 09 01  	slli	a1, s3, 0x10
80204584: 2e c6        	sw	a1, 0xc(sp)
80204586: b3 68 b5 00  	or	a7, a0, a1
8020458a: 28 08        	addi	a0, sp, 0x18
8020458c: de 85        	mv	a1, s7
8020458e: 4a 86        	mv	a2, s2
80204590: a6 86        	mv	a3, s1
80204592: 22 87        	mv	a4, s0
80204594: e2 87        	mv	a5, s8
80204596: 52 88        	mv	a6, s4
80204598: 97 f0 ff ff  	auipc	ra, 0xfffff
8020459c: e7 80 a0 7c  	jalr	0x7ca(ra)
802045a0: 02 54        	lw	s0, 0x20(sp)
802045a2: 62 45        	lw	a0, 0x18(sp)
802045a4: 72 4d        	lw	s10, 0x1c(sp)
802045a6: 92 54        	lw	s1, 0x24(sp)
802045a8: c1 75        	lui	a1, 0xffff0
802045aa: e9 8d        	and	a1, a1, a0
802045ac: 13 16 0d 01  	slli	a2, s10, 0x10
802045b0: 41 82        	srli	a2, a2, 0x10
802045b2: d1 8d        	or	a1, a1, a2
802045b4: b3 35 b0 00  	snez	a1, a1
802045b8: fd 15        	addi	a1, a1, -0x1
802045ba: 8d 89        	andi	a1, a1, 0x3
802045bc: b3 6c b5 00  	or	s9, a0, a1
802045c0: 6a d6        	sw	s10, 0x2c(sp)
802045c2: 66 d4        	sw	s9, 0x28(sp)
802045c4: 26 da        	sw	s1, 0x34(sp)
802045c6: 22 d8        	sw	s0, 0x30(sp)
802045c8: 62 dc        	sw	s8, 0x38(sp)
802045ca: 52 de        	sw	s4, 0x3c(sp)
802045cc: 23 00 51 05  	sb	s5, 0x40(sp)
802045d0: a3 00 b1 05  	sb	s11, 0x41(sp)
802045d4: 23 11 31 05  	sh	s3, 0x42(sp)
802045d8: ea c6        	sw	s10, 0x4c(sp)
802045da: e6 c4        	sw	s9, 0x48(sp)
802045dc: d2 4b        	lw	s7, 0x14(sp)
802045de: 03 a9 4b 00  	lw	s2, 0x4(s7)
802045e2: 03 c5 8b 00  	lbu	a0, 0x8(s7)
802045e6: 2a c8        	sw	a0, 0x10(sp)
802045e8: 4a 85        	mv	a0, s2
802045ea: 97 e0 ff ff  	auipc	ra, 0xffffe
802045ee: e7 80 60 80  	jalr	-0x7fa(ra)
802045f2: 63 80 0a 02  	beqz	s5, 0x80204612 <.text+0x4612>
802045f6: 52 85        	mv	a0, s4
802045f8: 97 d0 ff ff  	auipc	ra, 0xffffd
802045fc: e7 80 80 7f  	jalr	0x7f8(ra)
80204600: 13 f5 0d 02  	andi	a0, s11, 0x20
80204604: 11 c9        	beqz	a0, 0x80204618 <.text+0x4618>
80204606: 5a 85        	mv	a0, s6
80204608: 97 00 00 00  	auipc	ra, 0x0
8020460c: e7 80 20 bc  	jalr	-0x43e(ra) <.text+0x41ca>
80204610: 39 a8        	j	0x8020462e <.text+0x462e>
80204612: 13 f5 0d 02  	andi	a0, s11, 0x20
80204616: 01 ed        	bnez	a0, 0x8020462e <.text+0x462e>
80204618: 5a 85        	mv	a0, s6
8020461a: 97 00 00 00  	auipc	ra, 0x0
8020461e: e7 80 00 bb  	jalr	-0x450(ra) <.text+0x41ca>
80204622: 32 45        	lw	a0, 0xc(sp)
80204624: 33 65 85 01  	or	a0, a0, s8
80204628: 13 5b f5 01  	srli	s6, a0, 0x1f
8020462c: 21 a0        	j	0x80204634 <.text+0x4634>
8020462e: e6 0d        	slli	s11, s11, 0x19
80204630: 13 db fd 01  	srli	s6, s11, 0x1f
80204634: 13 d5 ec 00  	srli	a0, s9, 0xe
80204638: 93 15 2d 01  	slli	a1, s10, 0x12
8020463c: 4d 8d        	or	a0, a0, a1
8020463e: 93 55 ed 00  	srli	a1, s10, 0xe
80204642: 39 80        	srli	s0, s0, 0xe
80204644: 13 96 24 01  	slli	a2, s1, 0x12
80204648: 33 6c c4 00  	or	s8, s0, a2
8020464c: 93 dd e4 00  	srli	s11, s1, 0xe
80204650: 33 45 85 01  	xor	a0, a0, s8
80204654: b3 c5 b5 01  	xor	a1, a1, s11
80204658: 4d 8d        	or	a0, a0, a1
8020465a: 5d c5        	beqz	a0, 0x80204708 <.text+0x4708>
8020465c: 01 45        	li	a0, 0x0
8020465e: 13 0a 81 04  	addi	s4, sp, 0x48
80204662: 93 0b 49 01  	addi	s7, s2, 0x14
80204666: aa 89        	mv	s3, a0
80204668: 22 58        	lw	a6, 0x28(sp)
8020466a: b2 55        	lw	a1, 0x2c(sp)
8020466c: 42 56        	lw	a2, 0x30(sp)
8020466e: d2 56        	lw	a3, 0x34(sp)
80204670: 62 57        	lw	a4, 0x38(sp)
80204672: f2 54        	lw	s1, 0x3c(sp)
80204674: 03 44 01 04  	lbu	s0, 0x40(sp)
80204678: 83 47 11 04  	lbu	a5, 0x41(sp)
8020467c: 03 15 21 04  	lh	a0, 0x42(sp)
80204680: ae ca        	sw	a1, 0x54(sp)
80204682: c2 c8        	sw	a6, 0x50(sp)
80204684: b6 ce        	sw	a3, 0x5c(sp)
80204686: b2 cc        	sw	a2, 0x58(sp)
80204688: ba d0        	sw	a4, 0x60(sp)
8020468a: a6 d2        	sw	s1, 0x64(sp)
8020468c: 23 04 81 06  	sb	s0, 0x68(sp)
80204690: a3 04 f1 06  	sb	a5, 0x69(sp)
80204694: 23 15 a1 06  	sh	a0, 0x6a(sp)
80204698: 26 85        	mv	a0, s1
8020469a: a2 85        	mv	a1, s0
8020469c: 97 e0 ff ff  	auipc	ra, 0xffffe
802046a0: e7 80 00 f9  	jalr	-0x70(ra)
802046a4: 90 08        	addi	a2, sp, 0x50
802046a6: 66 85        	mv	a0, s9
802046a8: ea 85        	mv	a1, s10
802046aa: 97 00 00 00  	auipc	ra, 0x0
802046ae: e7 80 40 19  	jalr	0x194(ra) <.text+0x483e>
802046b2: aa 8a        	mv	s5, a0
802046b4: 8c 08        	addi	a1, sp, 0x50
802046b6: 52 85        	mv	a0, s4
802046b8: 97 00 00 00  	auipc	ra, 0x0
802046bc: e7 80 e0 35  	jalr	0x35e(ra) <.text+0x4a16>
802046c0: 26 85        	mv	a0, s1
802046c2: a2 85        	mv	a1, s0
802046c4: 97 d0 ff ff  	auipc	ra, 0xffffd
802046c8: e7 80 e0 b8  	jalr	-0x472(ra)
802046cc: 03 25 c9 00  	lw	a0, 0xc(s2)
802046d0: b3 85 3b 01  	add	a1, s7, s3
802046d4: aa 95        	add	a1, a1, a0
802046d6: 13 85 19 00  	addi	a0, s3, 0x1
802046da: 23 80 55 01  	sb	s5, 0x0(a1)
802046de: 63 43 35 09  	blt	a0, s3, 0x80204764 <.text+0x4764>
802046e2: 36 4d        	lw	s10, 0x4c(sp)
802046e4: a6 4c        	lw	s9, 0x48(sp)
802046e6: 93 15 2d 01  	slli	a1, s10, 0x12
802046ea: 13 d6 ec 00  	srli	a2, s9, 0xe
802046ee: d1 8d        	or	a1, a1, a2
802046f0: 13 56 ed 00  	srli	a2, s10, 0xe
802046f4: 33 46 b6 01  	xor	a2, a2, s11
802046f8: b3 c5 85 01  	xor	a1, a1, s8
802046fc: d1 8d        	or	a1, a1, a2
802046fe: a5 f5        	bnez	a1, 0x80204666 <.text+0x4666>
80204700: 72 5a        	lw	s4, 0x3c(sp)
80204702: 83 4a 01 04  	lbu	s5, 0x40(sp)
80204706: d2 4b        	lw	s7, 0x14(sp)
80204708: da 85        	mv	a1, s6
8020470a: 4a 86        	mv	a2, s2
8020470c: 97 00 00 00  	auipc	ra, 0x0
80204710: e7 80 00 0b  	jalr	0xb0(ra) <.text+0x47bc>
80204714: 03 24 c9 00  	lw	s0, 0xc(s2)
80204718: 83 14 09 01  	lh	s1, 0x10(s2)
8020471c: 93 59 f4 41  	srai	s3, s0, 0x1f
80204720: 4a 85        	mv	a0, s2
80204722: c2 45        	lw	a1, 0x10(sp)
80204724: 97 d0 ff ff  	auipc	ra, 0xffffd
80204728: e7 80 e0 b2  	jalr	-0x4d2(ra)
8020472c: c2 04        	slli	s1, s1, 0x10
8020472e: 33 e5 34 01  	or	a0, s1, s3
80204732: 23 a0 8b 00  	sw	s0, 0x0(s7)
80204736: 41 81        	srli	a0, a0, 0x10
80204738: 23 95 ab 00  	sh	a0, 0xa(s7)
8020473c: 52 85        	mv	a0, s4
8020473e: d6 85        	mv	a1, s5
80204740: fa 40        	lw	ra, 0x9c(sp)
80204742: 6a 44        	lw	s0, 0x98(sp)
80204744: da 44        	lw	s1, 0x94(sp)
80204746: 4a 49        	lw	s2, 0x90(sp)
80204748: ba 49        	lw	s3, 0x8c(sp)
8020474a: 2a 4a        	lw	s4, 0x88(sp)
8020474c: 9a 4a        	lw	s5, 0x84(sp)
8020474e: 0a 4b        	lw	s6, 0x80(sp)
80204750: f6 5b        	lw	s7, 0x7c(sp)
80204752: 66 5c        	lw	s8, 0x78(sp)
80204754: d6 5c        	lw	s9, 0x74(sp)
80204756: 46 5d        	lw	s10, 0x70(sp)
80204758: b6 5d        	lw	s11, 0x6c(sp)
8020475a: 0d 61        	addi	sp, sp, 0xa0
8020475c: 17 d3 ff ff  	auipc	t1, 0xffffd
80204760: 67 00 63 af  	jr	-0x50a(t1)
80204764: 00 00        	unimp
80204766: 41 11        	addi	sp, sp, -0x10
80204768: 06 c6        	sw	ra, 0xc(sp)
8020476a: 22 c4        	sw	s0, 0x8(sp)
8020476c: 26 c2        	sw	s1, 0x4(sp)
8020476e: 36 84        	mv	s0, a3
80204770: c4 42        	lw	s1, 0x4(a3)
80204772: 63 5e b0 00  	blez	a1, 0x8020478e <.text+0x478e>
80204776: d4 44        	lw	a3, 0xc(s1)
80204778: a6 96        	add	a3, a3, s1
8020477a: d1 06        	addi	a3, a3, 0x14
8020477c: 2e 87        	mv	a4, a1
8020477e: 83 47 05 00  	lbu	a5, 0x0(a0)
80204782: 23 80 f6 00  	sb	a5, 0x0(a3)
80204786: 7d 17        	addi	a4, a4, -0x1
80204788: 85 06        	addi	a3, a3, 0x1
8020478a: 05 05        	addi	a0, a0, 0x1
8020478c: 6d fb        	bnez	a4, 0x8020477e <.text+0x477e>
8020478e: 2e 85        	mv	a0, a1
80204790: b2 85        	mv	a1, a2
80204792: 26 86        	mv	a2, s1
80204794: 97 00 00 00  	auipc	ra, 0x0
80204798: e7 80 80 02  	jalr	0x28(ra) <.text+0x47bc>
8020479c: c8 44        	lw	a0, 0xc(s1)
8020479e: 83 95 04 01  	lh	a1, 0x10(s1)
802047a2: 13 56 f5 41  	srai	a2, a0, 0x1f
802047a6: c2 05        	slli	a1, a1, 0x10
802047a8: d1 8d        	or	a1, a1, a2
802047aa: 08 c0        	sw	a0, 0x0(s0)
802047ac: c1 81        	srli	a1, a1, 0x10
802047ae: 23 15 b4 00  	sh	a1, 0xa(s0)
802047b2: b2 40        	lw	ra, 0xc(sp)
802047b4: 22 44        	lw	s0, 0x8(sp)
802047b6: 92 44        	lw	s1, 0x4(sp)
802047b8: 41 01        	addi	sp, sp, 0x10
802047ba: 82 80        	ret
802047bc: 41 11        	addi	sp, sp, -0x10
802047be: 06 c6        	sw	ra, 0xc(sp)
802047c0: 58 46        	lw	a4, 0xc(a2)
802047c2: b3 06 a7 00  	add	a3, a4, a0
802047c6: b3 a7 e6 00  	slt	a5, a3, a4
802047ca: 13 25 05 00  	slti	a0, a0, 0x0
802047ce: 63 17 f5 06  	bne	a0, a5, 0x8020483c <.text+0x483c>
802047d2: 03 15 06 01  	lh	a0, 0x10(a2)
802047d6: 7d 87        	srai	a4, a4, 0x1f
802047d8: 42 05        	slli	a0, a0, 0x10
802047da: 59 8d        	or	a0, a0, a4
802047dc: 13 25 05 00  	slti	a0, a0, 0x0
802047e0: 6d 8d        	and	a0, a0, a1
802047e2: 63 ca 06 02  	bltz	a3, 0x80204816 <.text+0x4816>
802047e6: 81 45        	li	a1, 0x0
802047e8: 01 47        	li	a4, 0x0
802047ea: 01 c5        	beqz	a0, 0x802047f2 <.text+0x47f2>
802047ec: 37 07 00 80  	lui	a4, 0x80000
802047f0: 4d 8f        	or	a4, a4, a1
802047f2: 7a 05        	slli	a0, a0, 0x1e
802047f4: 59 8d        	or	a0, a0, a4
802047f6: 54 c6        	sw	a3, 0xc(a2)
802047f8: 41 81        	srli	a0, a0, 0x10
802047fa: 8d 65        	lui	a1, 0x3
802047fc: 4d 8d        	or	a0, a0, a1
802047fe: 23 18 a6 00  	sh	a0, 0x10(a2)
80204802: b2 96        	add	a3, a3, a2
80204804: 23 8a 06 00  	sb	zero, 0x14(a3)
80204808: 03 15 26 01  	lh	a0, 0x12(a2)
8020480c: 63 49 05 00  	bltz	a0, 0x8020481e <.text+0x481e>
80204810: b2 40        	lw	ra, 0xc(sp)
80204812: 41 01        	addi	sp, sp, 0x10
80204814: 82 80        	ret
80204816: fd 55        	li	a1, -0x1
80204818: 7d 57        	li	a4, -0x1
8020481a: 69 f9        	bnez	a0, 0x802047ec <.text+0x47ec>
8020481c: d9 bf        	j	0x802047f2 <.text+0x47f2>
8020481e: 32 85        	mv	a0, a2
80204820: 97 f0 ff ff  	auipc	ra, 0xfffff
80204824: e7 80 00 06  	jalr	0x60(ra)
80204828: 0c 41        	lw	a1, 0x0(a0)
8020482a: 23 20 05 00  	sw	zero, 0x0(a0)
8020482e: 2e 85        	mv	a0, a1
80204830: b2 40        	lw	ra, 0xc(sp)
80204832: 41 01        	addi	sp, sp, 0x10
80204834: 17 f3 ff ff  	auipc	t1, 0xfffff
80204838: 67 00 83 06  	jr	0x68(t1)
8020483c: 00 00        	unimp
8020483e: 97 22 00 00  	auipc	t0, 0x2
80204842: e7 82 42 ae  	jalr	t0, -0x51c(t0) <.text+0x6322>
80204846: 32 84        	mv	s0, a2
80204848: 83 4b 96 01  	lbu	s7, 0x19(a2)
8020484c: 10 4a        	lw	a2, 0x10(a2)
8020484e: 83 5a a4 01  	lhu	s5, 0x1a(s0)
80204852: 2e 8a        	mv	s4, a1
80204854: 2a 8b        	mv	s6, a0
80204856: 93 fc 0b 01  	andi	s9, s7, 0x10
8020485a: 05 45        	li	a0, 0x1
8020485c: 63 88 0c 00  	beqz	s9, 0x8020486c <.text+0x486c>
80204860: 13 d5 ba 00  	srli	a0, s5, 0xb
80204864: 93 55 f6 01  	srli	a1, a2, 0x1f
80204868: 4d 8d        	or	a0, a0, a1
8020486a: 05 89        	andi	a0, a0, 0x1
8020486c: 03 4c 84 01  	lbu	s8, 0x18(s0)
80204870: 44 40        	lw	s1, 0x4(s0)
80204872: 03 29 04 00  	lw	s2, 0x0(s0)
80204876: 83 2d c4 00  	lw	s11, 0xc(s0)
8020487a: 03 2d 84 00  	lw	s10, 0x8(s0)
8020487e: 83 29 44 01  	lw	s3, 0x14(s0)
80204882: 93 75 cb 00  	andi	a1, s6, 0xc
80204886: 91 46        	li	a3, 0x4
80204888: 33 95 a6 00  	sll	a0, a3, a0
8020488c: 32 c2        	sw	a2, 0x4(sp)
8020488e: 63 88 a5 10  	beq	a1, a0, 0x8020499e <.text+0x499e>
80204892: 93 55 eb 00  	srli	a1, s6, 0xe
80204896: 93 16 2a 01  	slli	a3, s4, 0x12
8020489a: 13 56 ea 00  	srli	a2, s4, 0xe
8020489e: 13 d5 e4 00  	srli	a0, s1, 0xe
802048a2: d5 8d        	or	a1, a1, a3
802048a4: 63 05 a6 00  	beq	a2, a0, 0x802048ae <.text+0x48ae>
802048a8: 33 35 a6 00  	sltu	a0, a2, a0
802048ac: 39 a0        	j	0x802048ba <.text+0x48ba>
802048ae: 13 55 e9 00  	srli	a0, s2, 0xe
802048b2: ca 04        	slli	s1, s1, 0x12
802048b4: 45 8d        	or	a0, a0, s1
802048b6: 33 b5 a5 00  	sltu	a0, a1, a0
802048ba: 93 d6 ed 00  	srli	a3, s11, 0xe
802048be: 63 05 d6 00  	beq	a2, a3, 0x802048c8 <.text+0x48c8>
802048c2: b3 35 d6 00  	sltu	a1, a2, a3
802048c6: 01 a8        	j	0x802048d6 <.text+0x48d6>
802048c8: 13 56 ed 00  	srli	a2, s10, 0xe
802048cc: ca 0d        	slli	s11, s11, 0x12
802048ce: 33 66 b6 01  	or	a2, a2, s11
802048d2: b3 b5 c5 00  	sltu	a1, a1, a2
802048d6: 93 c5 15 00  	xori	a1, a1, 0x1
802048da: 4d 8d        	or	a0, a0, a1
802048dc: 75 e1        	bnez	a0, 0x802049c0 <.text+0x49c0>
802048de: 63 01 0c 02  	beqz	s8, 0x80204900 <.text+0x4900>
802048e2: 22 85        	mv	a0, s0
802048e4: 97 00 00 00  	auipc	ra, 0x0
802048e8: e7 80 80 27  	jalr	0x278(ra) <.text+0x4b5c>
802048ec: 22 85        	mv	a0, s0
802048ee: 97 00 00 00  	auipc	ra, 0x0
802048f2: e7 80 e0 26  	jalr	0x26e(ra) <.text+0x4b5c>
802048f6: 4e 85        	mv	a0, s3
802048f8: 97 d0 ff ff  	auipc	ra, 0xffffd
802048fc: e7 80 80 4f  	jalr	0x4f8(ra)
80204900: 63 91 0c 0c  	bnez	s9, 0x802049c2 <.text+0x49c2>
80204904: 13 f5 0b 02  	andi	a0, s7, 0x20
80204908: 39 e1        	bnez	a0, 0x8020494e <.text+0x494e>
8020490a: 22 85        	mv	a0, s0
8020490c: 97 00 00 00  	auipc	ra, 0x0
80204910: e7 80 00 27  	jalr	0x270(ra) <.text+0x4b7c>
80204914: 22 85        	mv	a0, s0
80204916: 97 00 00 00  	auipc	ra, 0x0
8020491a: e7 80 60 26  	jalr	0x266(ra) <.text+0x4b7c>
8020491e: 92 45        	lw	a1, 0x4(sp)
80204920: 13 f5 85 ff  	andi	a0, a1, -0x8
80204924: ce 0a        	slli	s5, s5, 0x13
80204926: 33 e5 aa 00  	or	a0, s5, a0
8020492a: 63 59 05 0c  	bgez	a0, 0x802049fc <.text+0x49fc>
8020492e: 63 07 0c 00  	beqz	s8, 0x8020493c <.text+0x493c>
80204932: 22 85        	mv	a0, s0
80204934: 97 00 00 00  	auipc	ra, 0x0
80204938: e7 80 80 24  	jalr	0x248(ra) <.text+0x4b7c>
8020493c: 13 85 49 01  	addi	a0, s3, 0x14
80204940: 93 55 0b 01  	srli	a1, s6, 0x10
80204944: 42 0a        	slli	s4, s4, 0x10
80204946: b3 e5 45 01  	or	a1, a1, s4
8020494a: 2e 95        	add	a0, a0, a1
8020494c: 91 a0        	j	0x80204990 <.text+0x4990>
8020494e: 09 45        	li	a0, 0x2
80204950: 63 05 ac 00  	beq	s8, a0, 0x8020495a <.text+0x495a>
80204954: 05 45        	li	a0, 0x1
80204956: 63 11 ac 02  	bne	s8, a0, 0x80204978 <.text+0x4978>
8020495a: 22 85        	mv	a0, s0
8020495c: 97 00 00 00  	auipc	ra, 0x0
80204960: e7 80 00 22  	jalr	0x220(ra) <.text+0x4b7c>
80204964: 22 85        	mv	a0, s0
80204966: 97 00 00 00  	auipc	ra, 0x0
8020496a: e7 80 60 21  	jalr	0x216(ra) <.text+0x4b7c>
8020496e: 22 85        	mv	a0, s0
80204970: 97 00 00 00  	auipc	ra, 0x0
80204974: e7 80 c0 20  	jalr	0x20c(ra) <.text+0x4b7c>
80204978: 12 45        	lw	a0, 0x4(sp)
8020497a: 2a c4        	sw	a0, 0x8(sp)
8020497c: 4e c6        	sw	s3, 0xc(sp)
8020497e: 02 ca        	sw	zero, 0x14(sp)
80204980: 56 c8        	sw	s5, 0x10(sp)
80204982: 13 55 0b 01  	srli	a0, s6, 0x10
80204986: 42 0a        	slli	s4, s4, 0x10
80204988: 33 65 45 01  	or	a0, a0, s4
8020498c: 2c 00        	addi	a1, sp, 0x8
8020498e: 2e 95        	add	a0, a0, a1
80204990: 03 45 05 00  	lbu	a0, 0x0(a0)
80204994: 97 22 00 00  	auipc	t0, 0x2
80204998: e7 82 02 97  	jalr	t0, -0x690(t0) <.text+0x6304>
8020499c: 82 80        	ret
8020499e: 13 95 8b 00  	slli	a0, s7, 0x8
802049a2: 33 65 85 01  	or	a0, a0, s8
802049a6: 13 97 0a 01  	slli	a4, s5, 0x10
802049aa: 49 8f        	or	a4, a4, a0
802049ac: 5a 85        	mv	a0, s6
802049ae: d2 85        	mv	a1, s4
802049b0: ce 86        	mv	a3, s3
802049b2: 97 e0 ff ff  	auipc	ra, 0xffffe
802049b6: e7 80 40 d0  	jalr	-0x2fc(ra)
802049ba: 2a 8b        	mv	s6, a0
802049bc: 2e 8a        	mv	s4, a1
802049be: d1 bd        	j	0x80204892 <.text+0x4892>
802049c0: 00 00        	unimp
802049c2: 22 85        	mv	a0, s0
802049c4: 97 00 00 00  	auipc	ra, 0x0
802049c8: e7 80 80 1b  	jalr	0x1b8(ra) <.text+0x4b7c>
802049cc: 22 85        	mv	a0, s0
802049ce: 97 00 00 00  	auipc	ra, 0x0
802049d2: e7 80 e0 1a  	jalr	0x1ae(ra) <.text+0x4b7c>
802049d6: 22 85        	mv	a0, s0
802049d8: 97 00 00 00  	auipc	ra, 0x0
802049dc: e7 80 40 1a  	jalr	0x1a4(ra) <.text+0x4b7c>
802049e0: a2 0b        	slli	s7, s7, 0x8
802049e2: 33 e5 8b 01  	or	a0, s7, s8
802049e6: 13 97 0a 01  	slli	a4, s5, 0x10
802049ea: 49 8f        	or	a4, a4, a0
802049ec: 5a 85        	mv	a0, s6
802049ee: d2 85        	mv	a1, s4
802049f0: 12 46        	lw	a2, 0x4(sp)
802049f2: ce 86        	mv	a3, s3
802049f4: 97 00 00 00  	auipc	ra, 0x0
802049f8: e7 80 80 1a  	jalr	0x1a8(ra) <.text+0x4b9c>
802049fc: 22 85        	mv	a0, s0
802049fe: 2e 84        	mv	s0, a1
80204a00: 97 00 00 00  	auipc	ra, 0x0
80204a04: e7 80 c0 17  	jalr	0x17c(ra) <.text+0x4b7c>
80204a08: 22 85        	mv	a0, s0
80204a0a: ce 85        	mv	a1, s3
80204a0c: 97 d0 ff ff  	auipc	ra, 0xffffd
80204a10: e7 80 c0 3e  	jalr	0x3ec(ra)
80204a14: 35 b7        	j	0x80204940 <.text+0x4940>
80204a16: 97 22 00 00  	auipc	t0, 0x2
80204a1a: e7 82 a2 92  	jalr	t0, -0x6d6(t0) <.text+0x6340>
80204a1e: 66 c2        	sw	s9, 0x4(sp)
80204a20: 2e 84        	mv	s0, a1
80204a22: aa 84        	mv	s1, a0
80204a24: 03 a9 05 01  	lw	s2, 0x10(a1)
80204a28: 83 a9 45 01  	lw	s3, 0x14(a1)
80204a2c: 03 cb 85 01  	lbu	s6, 0x18(a1)
80204a30: 03 cc 95 01  	lbu	s8, 0x19(a1)
80204a34: 83 db a5 01  	lhu	s7, 0x1a(a1)
80204a38: 03 2a 45 00  	lw	s4, 0x4(a0)
80204a3c: 83 2a 05 00  	lw	s5, 0x0(a0)
80204a40: 63 0c 0b 00  	beqz	s6, 0x80204a58 <.text+0x4a58>
80204a44: 22 85        	mv	a0, s0
80204a46: 97 00 00 00  	auipc	ra, 0x0
80204a4a: e7 80 60 11  	jalr	0x116(ra) <.text+0x4b5c>
80204a4e: 4e 85        	mv	a0, s3
80204a50: 97 d0 ff ff  	auipc	ra, 0xffffd
80204a54: e7 80 00 3a  	jalr	0x3a0(ra)
80204a58: 93 7c 0c 01  	andi	s9, s8, 0x10
80204a5c: 05 45        	li	a0, 0x1
80204a5e: 63 88 0c 00  	beqz	s9, 0x80204a6e <.text+0x4a6e>
80204a62: 13 d5 bb 00  	srli	a0, s7, 0xb
80204a66: 93 55 f9 01  	srli	a1, s2, 0x1f
80204a6a: 4d 8d        	or	a0, a0, a1
80204a6c: 05 89        	andi	a0, a0, 0x1
80204a6e: 93 f5 ca 00  	andi	a1, s5, 0xc
80204a72: 11 46        	li	a2, 0x4
80204a74: 33 15 a6 00  	sll	a0, a2, a0
80204a78: 63 85 a5 06  	beq	a1, a0, 0x80204ae2 <.text+0x4ae2>
80204a7c: 63 07 0b 00  	beqz	s6, 0x80204a8a <.text+0x4a8a>
80204a80: 22 85        	mv	a0, s0
80204a82: 97 00 00 00  	auipc	ra, 0x0
80204a86: e7 80 a0 0f  	jalr	0xfa(ra) <.text+0x4b7c>
80204a8a: 63 90 0c 08  	bnez	s9, 0x80204b0a <.text+0x4b0a>
80204a8e: 22 85        	mv	a0, s0
80204a90: 97 00 00 00  	auipc	ra, 0x0
80204a94: e7 80 c0 0e  	jalr	0xec(ra) <.text+0x4b7c>
80204a98: 13 d5 0a 01  	srli	a0, s5, 0x10
80204a9c: 93 15 0a 01  	slli	a1, s4, 0x10
80204aa0: c9 8d        	or	a1, a1, a0
80204aa2: 13 85 15 00  	addi	a0, a1, 0x1
80204aa6: 63 44 05 00  	bltz	a0, 0x80204aae <.text+0x4aae>
80204aaa: aa 85        	mv	a1, a0
80204aac: 21 a0        	j	0x80204ab4 <.text+0x4ab4>
80204aae: 79 56        	li	a2, -0x2
80204ab0: b3 05 b6 40  	sub	a1, a2, a1
80204ab4: 7d 85        	srai	a0, a0, 0x1f
80204ab6: a9 8d        	xor	a1, a1, a0
80204ab8: 13 d6 05 01  	srli	a2, a1, 0x10
80204abc: 42 05        	slli	a0, a0, 0x10
80204abe: 51 8d        	or	a0, a0, a2
80204ac0: c2 05        	slli	a1, a1, 0x10
80204ac2: 91 05        	addi	a1, a1, 0x4
80204ac4: c8 c0        	sw	a0, 0x4(s1)
80204ac6: 8c c0        	sw	a1, 0x0(s1)
80204ac8: b2 50        	lw	ra, 0x2c(sp)
80204aca: 22 54        	lw	s0, 0x28(sp)
80204acc: 92 54        	lw	s1, 0x24(sp)
80204ace: 02 59        	lw	s2, 0x20(sp)
80204ad0: f2 49        	lw	s3, 0x1c(sp)
80204ad2: 62 4a        	lw	s4, 0x18(sp)
80204ad4: d2 4a        	lw	s5, 0x14(sp)
80204ad6: 42 4b        	lw	s6, 0x10(sp)
80204ad8: b2 4b        	lw	s7, 0xc(sp)
80204ada: 22 4c        	lw	s8, 0x8(sp)
80204adc: 92 4c        	lw	s9, 0x4(sp)
80204ade: 45 61        	addi	sp, sp, 0x30
80204ae0: 82 80        	ret
80204ae2: 13 15 8c 00  	slli	a0, s8, 0x8
80204ae6: 33 65 65 01  	or	a0, a0, s6
80204aea: 13 97 0b 01  	slli	a4, s7, 0x10
80204aee: 49 8f        	or	a4, a4, a0
80204af0: 56 85        	mv	a0, s5
80204af2: d2 85        	mv	a1, s4
80204af4: 4a 86        	mv	a2, s2
80204af6: ce 86        	mv	a3, s3
80204af8: 97 e0 ff ff  	auipc	ra, 0xffffe
80204afc: e7 80 e0 bb  	jalr	-0x442(ra)
80204b00: aa 8a        	mv	s5, a0
80204b02: 2e 8a        	mv	s4, a1
80204b04: e3 1e 0b f6  	bnez	s6, 0x80204a80 <.text+0x4a80>
80204b08: 49 b7        	j	0x80204a8a <.text+0x4a8a>
80204b0a: 13 75 0c 02  	andi	a0, s8, 0x20
80204b0e: 01 e9        	bnez	a0, 0x80204b1e <.text+0x4b1e>
80204b10: 22 85        	mv	a0, s0
80204b12: 97 00 00 00  	auipc	ra, 0x0
80204b16: e7 80 a0 06  	jalr	0x6a(ra) <.text+0x4b7c>
80204b1a: 4a 85        	mv	a0, s2
80204b1c: 11 a8        	j	0x80204b30 <.text+0x4b30>
80204b1e: 63 07 0b 00  	beqz	s6, 0x80204b2c <.text+0x4b2c>
80204b22: 22 85        	mv	a0, s0
80204b24: 97 00 00 00  	auipc	ra, 0x0
80204b28: e7 80 80 05  	jalr	0x58(ra) <.text+0x4b7c>
80204b2c: 13 75 fc 00  	andi	a0, s8, 0xf
80204b30: 93 d5 0a 01  	srli	a1, s5, 0x10
80204b34: 13 16 0a 01  	slli	a2, s4, 0x10
80204b38: d1 8d        	or	a1, a1, a2
80204b3a: 63 d0 a5 02  	bge	a1, a0, 0x80204b5a <.text+0x4b5a>
80204b3e: 22 0c        	slli	s8, s8, 0x8
80204b40: 33 65 6c 01  	or	a0, s8, s6
80204b44: 13 97 0b 01  	slli	a4, s7, 0x10
80204b48: 49 8f        	or	a4, a4, a0
80204b4a: 56 85        	mv	a0, s5
80204b4c: d2 85        	mv	a1, s4
80204b4e: 4a 86        	mv	a2, s2
80204b50: ce 86        	mv	a3, s3
80204b52: 97 f0 ff ff  	auipc	ra, 0xfffff
80204b56: e7 80 00 05  	jalr	0x50(ra)
80204b5a: 00 00        	unimp
80204b5c: 41 11        	addi	sp, sp, -0x10
80204b5e: 06 c6        	sw	ra, 0xc(sp)
80204b60: 22 c4        	sw	s0, 0x8(sp)
80204b62: 2a 84        	mv	s0, a0
80204b64: 48 49        	lw	a0, 0x14(a0)
80204b66: 83 45 84 01  	lbu	a1, 0x18(s0)
80204b6a: 97 e0 ff ff  	auipc	ra, 0xffffe
80204b6e: e7 80 20 ac  	jalr	-0x53e(ra)
80204b72: 22 85        	mv	a0, s0
80204b74: b2 40        	lw	ra, 0xc(sp)
80204b76: 22 44        	lw	s0, 0x8(sp)
80204b78: 41 01        	addi	sp, sp, 0x10
80204b7a: 82 80        	ret
80204b7c: 41 11        	addi	sp, sp, -0x10
80204b7e: 06 c6        	sw	ra, 0xc(sp)
80204b80: 22 c4        	sw	s0, 0x8(sp)
80204b82: 2a 84        	mv	s0, a0
80204b84: 48 49        	lw	a0, 0x14(a0)
80204b86: 83 45 84 01  	lbu	a1, 0x18(s0)
80204b8a: 97 c0 ff ff  	auipc	ra, 0xffffc
80204b8e: e7 80 80 6c  	jalr	0x6c8(ra)
80204b92: 22 85        	mv	a0, s0
80204b94: b2 40        	lw	ra, 0xc(sp)
80204b96: 22 44        	lw	s0, 0x8(sp)
80204b98: 41 01        	addi	sp, sp, 0x10
80204b9a: 82 80        	ret
80204b9c: b1 67        	lui	a5, 0xc
80204b9e: 85 07        	addi	a5, a5, 0x1
80204ba0: e9 8f        	and	a5, a5, a0
80204ba2: 81 eb        	bnez	a5, 0x80204bb2 <.text+0x4bb2>
80204ba4: 41 11        	addi	sp, sp, -0x10
80204ba6: 06 c6        	sw	ra, 0xc(sp)
80204ba8: 97 e0 ff ff  	auipc	ra, 0xffffe
80204bac: e7 80 60 86  	jalr	-0x79a(ra)
80204bb0: 00 00        	unimp
80204bb2: 00 00        	unimp
80204bb4: 41 11        	addi	sp, sp, -0x10
80204bb6: 06 c6        	sw	ra, 0xc(sp)
80204bb8: 22 c4        	sw	s0, 0x8(sp)
80204bba: 2e 84        	mv	s0, a1
80204bbc: b2 85        	mv	a1, a2
80204bbe: 97 f0 ff ff  	auipc	ra, 0xfffff
80204bc2: e7 80 00 cb  	jalr	-0x350(ra)
80204bc6: 93 75 15 00  	andi	a1, a0, 0x1
80204bca: 81 c5        	beqz	a1, 0x80204bd2 <.text+0x4bd2>
80204bcc: 10 44        	lw	a2, 0x8(s0)
80204bce: 7d 16        	addi	a2, a2, -0x1
80204bd0: 11 a0        	j	0x80204bd4 <.text+0x4bd4>
80204bd2: 01 46        	li	a2, 0x0
80204bd4: 93 45 f5 ff  	not	a1, a0
80204bd8: 85 89        	andi	a1, a1, 0x1
80204bda: 32 85        	mv	a0, a2
80204bdc: b2 40        	lw	ra, 0xc(sp)
80204bde: 22 44        	lw	s0, 0x8(sp)
80204be0: 41 01        	addi	sp, sp, 0x10
80204be2: 82 80        	ret
80204be4: 15 71        	addi	sp, sp, -0xe0
80204be6: 86 cf        	sw	ra, 0xdc(sp)
80204be8: a2 cd        	sw	s0, 0xd8(sp)
80204bea: a6 cb        	sw	s1, 0xd4(sp)
80204bec: ca c9        	sw	s2, 0xd0(sp)
80204bee: ce c7        	sw	s3, 0xcc(sp)
80204bf0: d2 c5        	sw	s4, 0xc8(sp)
80204bf2: d6 c3        	sw	s5, 0xc4(sp)
80204bf4: da c1        	sw	s6, 0xc0(sp)
80204bf6: 5e df        	sw	s7, 0xbc(sp)
80204bf8: 62 dd        	sw	s8, 0xb8(sp)
80204bfa: 66 db        	sw	s9, 0xb4(sp)
80204bfc: 6a d9        	sw	s10, 0xb0(sp)
80204bfe: 6e d7        	sw	s11, 0xac(sp)
80204c00: 2e 8d        	mv	s10, a1
80204c02: 83 aa 45 00  	lw	s5, 0x4(a1)
80204c06: 03 ac 05 00  	lw	s8, 0x0(a1)
80204c0a: 03 aa c5 00  	lw	s4, 0xc(a1)
80204c0e: 83 ab 85 00  	lw	s7, 0x8(a1)
80204c12: 03 a9 05 01  	lw	s2, 0x10(a1)
80204c16: 83 a9 45 01  	lw	s3, 0x14(a1)
80204c1a: 83 c4 95 01  	lbu	s1, 0x19(a1)
80204c1e: 03 c4 85 01  	lbu	s0, 0x18(a1)
80204c22: 83 dc a5 01  	lhu	s9, 0x1a(a1)
80204c26: 93 f5 04 01  	andi	a1, s1, 0x10
80204c2a: 2a 8b        	mv	s6, a0
80204c2c: 63 90 05 12  	bnez	a1, 0x80204d4c <.text+0x4d4c>
80204c30: 05 c0        	beqz	s0, 0x80204c50 <.text+0x4c50>
80204c32: 6a 85        	mv	a0, s10
80204c34: 97 00 00 00  	auipc	ra, 0x0
80204c38: e7 80 80 f2  	jalr	-0xd8(ra) <.text+0x4b5c>
80204c3c: 6a 85        	mv	a0, s10
80204c3e: 97 00 00 00  	auipc	ra, 0x0
80204c42: e7 80 e0 f1  	jalr	-0xe2(ra) <.text+0x4b5c>
80204c46: 4e 85        	mv	a0, s3
80204c48: 97 d0 ff ff  	auipc	ra, 0xffffd
80204c4c: e7 80 80 1a  	jalr	0x1a8(ra)
80204c50: 13 55 0c 01  	srli	a0, s8, 0x10
80204c54: c2 0a        	slli	s5, s5, 0x10
80204c56: b3 6a 55 01  	or	s5, a0, s5
80204c5a: 13 d5 0b 01  	srli	a0, s7, 0x10
80204c5e: 42 0a        	slli	s4, s4, 0x10
80204c60: 93 f5 04 02  	andi	a1, s1, 0x20
80204c64: 33 6a 45 01  	or	s4, a0, s4
80204c68: a5 e1        	bnez	a1, 0x80204cc8 <.text+0x4cc8>
80204c6a: 6a 85        	mv	a0, s10
80204c6c: 97 00 00 00  	auipc	ra, 0x0
80204c70: e7 80 00 f1  	jalr	-0xf0(ra) <.text+0x4b7c>
80204c74: 6a 85        	mv	a0, s10
80204c76: 97 00 00 00  	auipc	ra, 0x0
80204c7a: e7 80 60 f0  	jalr	-0xfa(ra) <.text+0x4b7c>
80204c7e: 13 75 89 ff  	andi	a0, s2, -0x8
80204c82: ce 0c        	slli	s9, s9, 0x13
80204c84: 33 e5 ac 00  	or	a0, s9, a0
80204c88: 63 5d 05 12  	bgez	a0, 0x80204dc2 <.text+0x4dc2>
80204c8c: 11 c4        	beqz	s0, 0x80204c98 <.text+0x4c98>
80204c8e: 6a 85        	mv	a0, s10
80204c90: 97 00 00 00  	auipc	ra, 0x0
80204c94: e7 80 c0 ee  	jalr	-0x114(ra) <.text+0x4b7c>
80204c98: 13 85 49 01  	addi	a0, s3, 0x14
80204c9c: 33 04 55 01  	add	s0, a0, s5
80204ca0: b3 04 5a 41  	sub	s1, s4, s5
80204ca4: 22 85        	mv	a0, s0
80204ca6: a6 85        	mv	a1, s1
80204ca8: 97 00 00 00  	auipc	ra, 0x0
80204cac: e7 80 e0 30  	jalr	0x30e(ra) <.text+0x4fb6>
80204cb0: aa 86        	mv	a3, a0
80204cb2: 0a 85        	mv	a0, sp
80204cb4: a2 85        	mv	a1, s0
80204cb6: 26 86        	mv	a2, s1
80204cb8: 97 00 00 00  	auipc	ra, 0x0
80204cbc: e7 80 20 5a  	jalr	0x5a2(ra) <.text+0x525a>
80204cc0: 22 49        	lw	s2, 0x8(sp)
80204cc2: 92 44        	lw	s1, 0x4(sp)
80204cc4: 02 44        	lw	s0, 0x0(sp)
80204cc6: b9 a8        	j	0x80204d24 <.text+0x4d24>
80204cc8: 09 45        	li	a0, 0x2
80204cca: 63 05 a4 00  	beq	s0, a0, 0x80204cd4 <.text+0x4cd4>
80204cce: 05 45        	li	a0, 0x1
80204cd0: 63 11 a4 02  	bne	s0, a0, 0x80204cf2 <.text+0x4cf2>
80204cd4: 6a 85        	mv	a0, s10
80204cd6: 97 00 00 00  	auipc	ra, 0x0
80204cda: e7 80 60 ea  	jalr	-0x15a(ra) <.text+0x4b7c>
80204cde: 6a 85        	mv	a0, s10
80204ce0: 97 00 00 00  	auipc	ra, 0x0
80204ce4: e7 80 c0 e9  	jalr	-0x164(ra) <.text+0x4b7c>
80204ce8: 6a 85        	mv	a0, s10
80204cea: 97 00 00 00  	auipc	ra, 0x0
80204cee: e7 80 20 e9  	jalr	-0x16e(ra) <.text+0x4b7c>
80204cf2: ca d8        	sw	s2, 0x70(sp)
80204cf4: ce da        	sw	s3, 0x74(sp)
80204cf6: 82 de        	sw	zero, 0x7c(sp)
80204cf8: e6 dc        	sw	s9, 0x78(sp)
80204cfa: 80 18        	addi	s0, sp, 0x70
80204cfc: 56 94        	add	s0, s0, s5
80204cfe: b3 04 5a 41  	sub	s1, s4, s5
80204d02: 22 85        	mv	a0, s0
80204d04: a6 85        	mv	a1, s1
80204d06: 97 00 00 00  	auipc	ra, 0x0
80204d0a: e7 80 00 2b  	jalr	0x2b0(ra) <.text+0x4fb6>
80204d0e: aa 86        	mv	a3, a0
80204d10: 08 08        	addi	a0, sp, 0x10
80204d12: a2 85        	mv	a1, s0
80204d14: 26 86        	mv	a2, s1
80204d16: 97 00 00 00  	auipc	ra, 0x0
80204d1a: e7 80 40 54  	jalr	0x544(ra) <.text+0x525a>
80204d1e: 62 49        	lw	s2, 0x18(sp)
80204d20: d2 44        	lw	s1, 0x14(sp)
80204d22: 42 44        	lw	s0, 0x10(sp)
80204d24: 5a 85        	mv	a0, s6
80204d26: 44 c1        	sw	s1, 0x4(a0)
80204d28: 00 c1        	sw	s0, 0x0(a0)
80204d2a: 23 24 2b 01  	sw	s2, 0x8(s6)
80204d2e: fe 40        	lw	ra, 0xdc(sp)
80204d30: 6e 44        	lw	s0, 0xd8(sp)
80204d32: de 44        	lw	s1, 0xd4(sp)
80204d34: 4e 49        	lw	s2, 0xd0(sp)
80204d36: be 49        	lw	s3, 0xcc(sp)
80204d38: 2e 4a        	lw	s4, 0xc8(sp)
80204d3a: 9e 4a        	lw	s5, 0xc4(sp)
80204d3c: 0e 4b        	lw	s6, 0xc0(sp)
80204d3e: fa 5b        	lw	s7, 0xbc(sp)
80204d40: 6a 5c        	lw	s8, 0xb8(sp)
80204d42: da 5c        	lw	s9, 0xb4(sp)
80204d44: 4a 5d        	lw	s10, 0xb0(sp)
80204d46: ba 5d        	lw	s11, 0xac(sp)
80204d48: 2d 61        	addi	sp, sp, 0xe0
80204d4a: 82 80        	ret
80204d4c: 62 d8        	sw	s8, 0x30(sp)
80204d4e: 56 da        	sw	s5, 0x34(sp)
80204d50: 5e dc        	sw	s7, 0x38(sp)
80204d52: 52 de        	sw	s4, 0x3c(sp)
80204d54: ca c0        	sw	s2, 0x40(sp)
80204d56: ce c2        	sw	s3, 0x44(sp)
80204d58: 23 04 81 04  	sb	s0, 0x48(sp)
80204d5c: a3 04 91 04  	sb	s1, 0x49(sp)
80204d60: 23 15 91 05  	sh	s9, 0x4a(sp)
80204d64: 4e 85        	mv	a0, s3
80204d66: a2 85        	mv	a1, s0
80204d68: 97 e0 ff ff  	auipc	ra, 0xffffe
80204d6c: e7 80 40 8c  	jalr	-0x73c(ra)
80204d70: 26 45        	lw	a0, 0x48(sp)
80204d72: 96 45        	lw	a1, 0x44(sp)
80204d74: 06 46        	lw	a2, 0x40(sp)
80204d76: aa cc        	sw	a0, 0x58(sp)
80204d78: ae ca        	sw	a1, 0x54(sp)
80204d7a: b2 c8        	sw	a2, 0x50(sp)
80204d7c: 18 18        	addi	a4, sp, 0x30
80204d7e: 62 85        	mv	a0, s8
80204d80: d6 85        	mv	a1, s5
80204d82: 5e 86        	mv	a2, s7
80204d84: d2 86        	mv	a3, s4
80204d86: 97 f0 ff ff  	auipc	ra, 0xfffff
80204d8a: e7 80 20 27  	jalr	0x272(ra)
80204d8e: aa 89        	mv	s3, a0
80204d90: 37 f5 20 80  	lui	a0, 0x8020f
80204d94: 63 86 09 04  	beqz	s3, 0x80204de0 <.text+0x4de0>
80204d98: 63 57 30 05  	blez	s3, 0x80204de6 <.text+0x4de6>
80204d9c: 93 85 09 01  	addi	a1, s3, 0x10
80204da0: 37 f5 20 80  	lui	a0, 0x8020f
80204da4: 13 05 45 db  	addi	a0, a0, -0x24c
80204da8: 0d 46        	li	a2, 0x3
80204daa: 97 f0 ff ff  	auipc	ra, 0xfffff
80204dae: e7 80 a0 ae  	jalr	-0x516(ra)
80204db2: aa 8b        	mv	s7, a0
80204db4: 13 95 19 00  	slli	a0, s3, 0x1
80204db8: 23 a4 3b 01  	sw	s3, 0x8(s7)
80204dbc: 23 a6 ab 00  	sw	a0, 0xc(s7)
80204dc0: 2d a0        	j	0x80204dea <.text+0x4dea>
80204dc2: 6a 85        	mv	a0, s10
80204dc4: 97 00 00 00  	auipc	ra, 0x0
80204dc8: e7 80 80 db  	jalr	-0x248(ra) <.text+0x4b7c>
80204dcc: 4a 85        	mv	a0, s2
80204dce: ce 85        	mv	a1, s3
80204dd0: 97 d0 ff ff  	auipc	ra, 0xffffd
80204dd4: e7 80 80 02  	jalr	0x28(ra)
80204dd8: e3 12 05 ec  	bnez	a0, 0x80204c9c <.text+0x4c9c>
80204ddc: 01 44        	li	s0, 0x0
80204dde: c9 b5        	j	0x80204ca0 <.text+0x4ca0>
80204de0: 93 0b 05 d6  	addi	s7, a0, -0x2a0
80204de4: 79 a2        	j	0x80204f72 <.text+0x4f72>
80204de6: 93 0b 05 d6  	addi	s7, a0, -0x2a0
80204dea: 66 45        	lw	a0, 0x58(sp)
80204dec: d6 45        	lw	a1, 0x54(sp)
80204dee: 46 46        	lw	a2, 0x50(sp)
80204df0: aa d2        	sw	a0, 0x64(sp)
80204df2: ae d0        	sw	a1, 0x60(sp)
80204df4: b2 ce        	sw	a2, 0x5c(sp)
80204df6: 88 10        	addi	a0, sp, 0x60
80204df8: ac 10        	addi	a1, sp, 0x68
80204dfa: 97 00 00 00  	auipc	ra, 0x0
80204dfe: e7 80 c0 6f  	jalr	0x6fc(ra) <.text+0x54f6>
80204e02: a8 10        	addi	a0, sp, 0x68
80204e04: 97 00 00 00  	auipc	ra, 0x0
80204e08: e7 80 20 70  	jalr	0x702(ra) <.text+0x5506>
80204e0c: 52 54        	lw	s0, 0x34(sp)
80204e0e: 42 5c        	lw	s8, 0x30(sp)
80204e10: 62 55        	lw	a0, 0x38(sp)
80204e12: f2 54        	lw	s1, 0x3c(sp)
80204e14: 86 45        	lw	a1, 0x40(sp)
80204e16: 16 4a        	lw	s4, 0x44(sp)
80204e18: 83 4a 81 04  	lbu	s5, 0x48(sp)
80204e1c: 03 46 91 04  	lbu	a2, 0x49(sp)
80204e20: 83 16 a1 04  	lh	a3, 0x4a(sp)
80204e24: a2 da        	sw	s0, 0x74(sp)
80204e26: e2 d8        	sw	s8, 0x70(sp)
80204e28: a6 de        	sw	s1, 0x7c(sp)
80204e2a: aa dc        	sw	a0, 0x78(sp)
80204e2c: 2e c1        	sw	a1, 0x80(sp)
80204e2e: 52 c3        	sw	s4, 0x84(sp)
80204e30: 23 04 51 09  	sb	s5, 0x88(sp)
80204e34: a3 04 c1 08  	sb	a2, 0x89(sp)
80204e38: 23 15 d1 08  	sh	a3, 0x8a(sp)
80204e3c: 22 cb        	sw	s0, 0x94(sp)
80204e3e: 62 c9        	sw	s8, 0x90(sp)
80204e40: 63 c9 09 16  	bltz	s3, 0x80204fb2 <.text+0x4fb2>
80204e44: 93 95 24 01  	slli	a1, s1, 0x12
80204e48: 39 81        	srli	a0, a0, 0xe
80204e4a: b3 6c b5 00  	or	s9, a0, a1
80204e4e: b9 80        	srli	s1, s1, 0xe
80204e50: 13 55 ec 00  	srli	a0, s8, 0xe
80204e54: 93 15 24 01  	slli	a1, s0, 0x12
80204e58: 4d 8d        	or	a0, a0, a1
80204e5a: 93 55 e4 00  	srli	a1, s0, 0xe
80204e5e: a5 8d        	xor	a1, a1, s1
80204e60: 33 45 95 01  	xor	a0, a0, s9
80204e64: 4d 8d        	or	a0, a0, a1
80204e66: 19 e1        	bnez	a0, 0x80204e6c <.text+0x4e6c>
80204e68: 81 4d        	li	s11, 0x0
80204e6a: e5 a8        	j	0x80204f62 <.text+0x4f62>
80204e6c: 88 00        	addi	a0, sp, 0x40
80204e6e: 0c 45        	lw	a1, 0x8(a0)
80204e70: 50 41        	lw	a2, 0x4(a0)
80204e72: 08 41        	lw	a0, 0x0(a0)
80204e74: 13 09 01 09  	addi	s2, sp, 0x90
80204e78: 2e d1        	sw	a1, 0xa0(sp)
80204e7a: 32 cf        	sw	a2, 0x9c(sp)
80204e7c: 2a cd        	sw	a0, 0x98(sp)
80204e7e: 68 09        	addi	a0, sp, 0x9c
80204e80: 4c 11        	addi	a1, sp, 0xa4
80204e82: 97 00 00 00  	auipc	ra, 0x0
80204e86: e7 80 40 67  	jalr	0x674(ra) <.text+0x54f6>
80204e8a: 48 11        	addi	a0, sp, 0xa4
80204e8c: 97 00 00 00  	auipc	ra, 0x0
80204e90: e7 80 a0 67  	jalr	0x67a(ra) <.text+0x5506>
80204e94: 10 18        	addi	a2, sp, 0x30
80204e96: 62 85        	mv	a0, s8
80204e98: a2 85        	mv	a1, s0
80204e9a: 97 00 00 00  	auipc	ra, 0x0
80204e9e: e7 80 40 9a  	jalr	-0x65c(ra) <.text+0x483e>
80204ea2: 2a 84        	mv	s0, a0
80204ea4: 52 85        	mv	a0, s4
80204ea6: d6 85        	mv	a1, s5
80204ea8: 97 d0 ff ff  	auipc	ra, 0xffffd
80204eac: e7 80 40 78  	jalr	0x784(ra)
80204eb0: 0c 18        	addi	a1, sp, 0x30
80204eb2: 4a 85        	mv	a0, s2
80204eb4: 97 00 00 00  	auipc	ra, 0x0
80204eb8: e7 80 20 b6  	jalr	-0x49e(ra) <.text+0x4a16>
80204ebc: 08 18        	addi	a0, sp, 0x30
80204ebe: 97 00 00 00  	auipc	ra, 0x0
80204ec2: e7 80 e0 cb  	jalr	-0x342(ra) <.text+0x4b7c>
80204ec6: 85 4d        	li	s11, 0x1
80204ec8: 23 88 8b 00  	sb	s0, 0x10(s7)
80204ecc: 63 8c b9 07  	beq	s3, s11, 0x80204f44 <.text+0x4f44>
80204ed0: 13 89 1b 01  	addi	s2, s7, 0x11
80204ed4: 5a 44        	lw	s0, 0x94(sp)
80204ed6: 4a 4c        	lw	s8, 0x90(sp)
80204ed8: 13 15 24 01  	slli	a0, s0, 0x12
80204edc: 93 55 ec 00  	srli	a1, s8, 0xe
80204ee0: 4d 8d        	or	a0, a0, a1
80204ee2: 93 55 e4 00  	srli	a1, s0, 0xe
80204ee6: a5 8d        	xor	a1, a1, s1
80204ee8: 33 45 95 01  	xor	a0, a0, s9
80204eec: 4d 8d        	or	a0, a0, a1
80204eee: 2d c5        	beqz	a0, 0x80204f58 <.text+0x4f58>
80204ef0: 85 0d        	addi	s11, s11, 0x1
80204ef2: 52 85        	mv	a0, s4
80204ef4: d6 85        	mv	a1, s5
80204ef6: 97 d0 ff ff  	auipc	ra, 0xffffd
80204efa: e7 80 60 73  	jalr	0x736(ra)
80204efe: 10 18        	addi	a2, sp, 0x30
80204f00: 62 85        	mv	a0, s8
80204f02: a2 85        	mv	a1, s0
80204f04: 97 00 00 00  	auipc	ra, 0x0
80204f08: e7 80 a0 93  	jalr	-0x6c6(ra) <.text+0x483e>
80204f0c: 2a 84        	mv	s0, a0
80204f0e: 08 18        	addi	a0, sp, 0x30
80204f10: 97 00 00 00  	auipc	ra, 0x0
80204f14: e7 80 c0 c6  	jalr	-0x394(ra) <.text+0x4b7c>
80204f18: 52 85        	mv	a0, s4
80204f1a: d6 85        	mv	a1, s5
80204f1c: 97 d0 ff ff  	auipc	ra, 0xffffd
80204f20: e7 80 00 71  	jalr	0x710(ra)
80204f24: 0c 18        	addi	a1, sp, 0x30
80204f26: 08 09        	addi	a0, sp, 0x90
80204f28: 97 00 00 00  	auipc	ra, 0x0
80204f2c: e7 80 e0 ae  	jalr	-0x512(ra) <.text+0x4a16>
80204f30: 08 18        	addi	a0, sp, 0x30
80204f32: 97 00 00 00  	auipc	ra, 0x0
80204f36: e7 80 a0 c4  	jalr	-0x3b6(ra) <.text+0x4b7c>
80204f3a: 23 00 89 00  	sb	s0, 0x0(s2)
80204f3e: 05 09        	addi	s2, s2, 0x1
80204f40: e3 9a b9 f9  	bne	s3, s11, 0x80204ed4 <.text+0x4ed4>
80204f44: 08 18        	addi	a0, sp, 0x30
80204f46: 97 00 00 00  	auipc	ra, 0x0
80204f4a: e7 80 60 c3  	jalr	-0x3ca(ra) <.text+0x4b7c>
80204f4e: 1a 4a        	lw	s4, 0x84(sp)
80204f50: 83 4a 81 08  	lbu	s5, 0x88(sp)
80204f54: ce 8d        	mv	s11, s3
80204f56: 31 a0        	j	0x80204f62 <.text+0x4f62>
80204f58: 08 18        	addi	a0, sp, 0x30
80204f5a: 97 00 00 00  	auipc	ra, 0x0
80204f5e: e7 80 20 c2  	jalr	-0x3de(ra) <.text+0x4b7c>
80204f62: 52 85        	mv	a0, s4
80204f64: d6 85        	mv	a1, s5
80204f66: 97 c0 ff ff  	auipc	ra, 0xffffc
80204f6a: e7 80 c0 2e  	jalr	0x2ec(ra)
80204f6e: 63 93 3d 05  	bne	s11, s3, 0x80204fb4 <.text+0x4fb4>
80204f72: 6a 85        	mv	a0, s10
80204f74: 97 00 00 00  	auipc	ra, 0x0
80204f78: e7 80 80 c0  	jalr	-0x3f8(ra) <.text+0x4b7c>
80204f7c: 03 a4 8b 00  	lw	s0, 0x8(s7)
80204f80: 93 84 0b 01  	addi	s1, s7, 0x10
80204f84: 26 85        	mv	a0, s1
80204f86: a2 85        	mv	a1, s0
80204f88: 97 00 00 00  	auipc	ra, 0x0
80204f8c: e7 80 e0 02  	jalr	0x2e(ra) <.text+0x4fb6>
80204f90: aa 86        	mv	a3, a0
80204f92: 08 10        	addi	a0, sp, 0x20
80204f94: a6 85        	mv	a1, s1
80204f96: 22 86        	mv	a2, s0
80204f98: 97 00 00 00  	auipc	ra, 0x0
80204f9c: e7 80 20 2c  	jalr	0x2c2(ra) <.text+0x525a>
80204fa0: 22 59        	lw	s2, 0x28(sp)
80204fa2: 92 54        	lw	s1, 0x24(sp)
80204fa4: 02 54        	lw	s0, 0x20(sp)
80204fa6: 5e 85        	mv	a0, s7
80204fa8: 97 f0 ff ff  	auipc	ra, 0xfffff
80204fac: e7 80 40 8f  	jalr	-0x70c(ra)
80204fb0: 95 bb        	j	0x80204d24 <.text+0x4d24>
80204fb2: 00 00        	unimp
80204fb4: 00 00        	unimp
80204fb6: 05 46        	li	a2, 0x1
80204fb8: 63 8f 05 28  	beqz	a1, 0x80205256 <.text+0x5256>
80204fbc: 13 f8 05 ff  	andi	a6, a1, -0x10
80204fc0: 63 54 00 1d  	blez	a6, 0x80205188 <.text+0x5188>
80204fc4: 83 46 15 00  	lbu	a3, 0x1(a0)
80204fc8: 03 47 05 00  	lbu	a4, 0x0(a0)
80204fcc: 83 47 25 00  	lbu	a5, 0x2(a0)
80204fd0: 03 46 35 00  	lbu	a2, 0x3(a0)
80204fd4: a2 06        	slli	a3, a3, 0x8
80204fd6: d9 8e        	or	a3, a3, a4
80204fd8: c2 07        	slli	a5, a5, 0x10
80204fda: 62 06        	slli	a2, a2, 0x18
80204fdc: 5d 8e        	or	a2, a2, a5
80204fde: b3 68 d6 00  	or	a7, a2, a3
80204fe2: 83 46 55 00  	lbu	a3, 0x5(a0)
80204fe6: 03 47 45 00  	lbu	a4, 0x4(a0)
80204fea: 83 47 65 00  	lbu	a5, 0x6(a0)
80204fee: 03 46 75 00  	lbu	a2, 0x7(a0)
80204ff2: a2 06        	slli	a3, a3, 0x8
80204ff4: d9 8e        	or	a3, a3, a4
80204ff6: c2 07        	slli	a5, a5, 0x10
80204ff8: 62 06        	slli	a2, a2, 0x18
80204ffa: 5d 8e        	or	a2, a2, a5
80204ffc: b3 62 d6 00  	or	t0, a2, a3
80205000: 83 46 95 00  	lbu	a3, 0x9(a0)
80205004: 03 47 85 00  	lbu	a4, 0x8(a0)
80205008: 83 47 a5 00  	lbu	a5, 0xa(a0)
8020500c: 03 46 b5 00  	lbu	a2, 0xb(a0)
80205010: a2 06        	slli	a3, a3, 0x8
80205012: 33 e3 e6 00  	or	t1, a3, a4
80205016: c2 07        	slli	a5, a5, 0x10
80205018: 62 06        	slli	a2, a2, 0x18
8020501a: 03 47 d5 00  	lbu	a4, 0xd(a0)
8020501e: 83 46 c5 00  	lbu	a3, 0xc(a0)
80205022: 5d 8e        	or	a2, a2, a5
80205024: b3 63 66 00  	or	t2, a2, t1
80205028: 22 07        	slli	a4, a4, 0x8
8020502a: d9 8e        	or	a3, a3, a4
8020502c: 83 47 e5 00  	lbu	a5, 0xe(a0)
80205030: 03 47 f5 00  	lbu	a4, 0xf(a0)
80205034: 37 86 80 80  	lui	a2, 0x80808
80205038: 13 03 06 08  	addi	t1, a2, 0x80
8020503c: c2 07        	slli	a5, a5, 0x10
8020503e: 62 07        	slli	a4, a4, 0x18
80205040: 5d 8f        	or	a4, a4, a5
80205042: d9 8e        	or	a3, a3, a4
80205044: 33 e6 56 00  	or	a2, a3, t0
80205048: b3 e6 13 01  	or	a3, t2, a7
8020504c: 55 8e        	or	a2, a2, a3
8020504e: 33 76 66 00  	and	a2, a2, t1
80205052: 63 11 06 20  	bnez	a2, 0x80205254 <.text+0x5254>
80205056: 45 46        	li	a2, 0x11
80205058: 63 6a c8 12  	bltu	a6, a2, 0x8020518c <.text+0x518c>
8020505c: 03 46 55 01  	lbu	a2, 0x15(a0)
80205060: 83 46 45 01  	lbu	a3, 0x14(a0)
80205064: 03 47 65 01  	lbu	a4, 0x16(a0)
80205068: 83 47 75 01  	lbu	a5, 0x17(a0)
8020506c: 22 06        	slli	a2, a2, 0x8
8020506e: 55 8e        	or	a2, a2, a3
80205070: 42 07        	slli	a4, a4, 0x10
80205072: e2 07        	slli	a5, a5, 0x18
80205074: 5d 8f        	or	a4, a4, a5
80205076: b3 68 c7 00  	or	a7, a4, a2
8020507a: 83 46 15 01  	lbu	a3, 0x11(a0)
8020507e: 03 47 05 01  	lbu	a4, 0x10(a0)
80205082: 83 47 25 01  	lbu	a5, 0x12(a0)
80205086: 03 46 35 01  	lbu	a2, 0x13(a0)
8020508a: a2 06        	slli	a3, a3, 0x8
8020508c: d9 8e        	or	a3, a3, a4
8020508e: c2 07        	slli	a5, a5, 0x10
80205090: 62 06        	slli	a2, a2, 0x18
80205092: 5d 8e        	or	a2, a2, a5
80205094: b3 62 d6 00  	or	t0, a2, a3
80205098: 83 46 d5 01  	lbu	a3, 0x1d(a0)
8020509c: 03 47 c5 01  	lbu	a4, 0x1c(a0)
802050a0: 83 47 e5 01  	lbu	a5, 0x1e(a0)
802050a4: 03 46 f5 01  	lbu	a2, 0x1f(a0)
802050a8: a2 06        	slli	a3, a3, 0x8
802050aa: d9 8e        	or	a3, a3, a4
802050ac: c2 07        	slli	a5, a5, 0x10
802050ae: 62 06        	slli	a2, a2, 0x18
802050b0: 5d 8e        	or	a2, a2, a5
802050b2: b3 63 d6 00  	or	t2, a2, a3
802050b6: 83 46 95 01  	lbu	a3, 0x19(a0)
802050ba: 03 47 85 01  	lbu	a4, 0x18(a0)
802050be: 83 47 a5 01  	lbu	a5, 0x1a(a0)
802050c2: 03 46 b5 01  	lbu	a2, 0x1b(a0)
802050c6: a2 06        	slli	a3, a3, 0x8
802050c8: d9 8e        	or	a3, a3, a4
802050ca: c2 07        	slli	a5, a5, 0x10
802050cc: 62 06        	slli	a2, a2, 0x18
802050ce: 5d 8e        	or	a2, a2, a5
802050d0: 55 8e        	or	a2, a2, a3
802050d2: 33 66 56 00  	or	a2, a2, t0
802050d6: b3 e6 13 01  	or	a3, t2, a7
802050da: b3 f6 66 00  	and	a3, a3, t1
802050de: 33 76 66 00  	and	a2, a2, t1
802050e2: 55 8e        	or	a2, a2, a3
802050e4: 63 18 06 16  	bnez	a2, 0x80205254 <.text+0x5254>
802050e8: 2a 98        	add	a6, a6, a0
802050ea: 93 06 05 02  	addi	a3, a0, 0x20
802050ee: 63 f1 06 0b  	bgeu	a3, a6, 0x80205190 <.text+0x5190>
802050f2: 03 c7 56 00  	lbu	a4, 0x5(a3)
802050f6: 83 c7 46 00  	lbu	a5, 0x4(a3)
802050fa: 83 c8 66 00  	lbu	a7, 0x6(a3)
802050fe: 83 c2 76 00  	lbu	t0, 0x7(a3)
80205102: 22 07        	slli	a4, a4, 0x8
80205104: 5d 8f        	or	a4, a4, a5
80205106: c2 08        	slli	a7, a7, 0x10
80205108: e2 02        	slli	t0, t0, 0x18
8020510a: b3 e7 12 01  	or	a5, t0, a7
8020510e: b3 e8 e7 00  	or	a7, a5, a4
80205112: 83 c7 16 00  	lbu	a5, 0x1(a3)
80205116: 03 c7 06 00  	lbu	a4, 0x0(a3)
8020511a: 83 c2 26 00  	lbu	t0, 0x2(a3)
8020511e: 83 c3 36 00  	lbu	t2, 0x3(a3)
80205122: a2 07        	slli	a5, a5, 0x8
80205124: 5d 8f        	or	a4, a4, a5
80205126: c2 02        	slli	t0, t0, 0x10
80205128: e2 03        	slli	t2, t2, 0x18
8020512a: b3 e7 53 00  	or	a5, t2, t0
8020512e: b3 e2 e7 00  	or	t0, a5, a4
80205132: 83 c7 d6 00  	lbu	a5, 0xd(a3)
80205136: 03 c7 c6 00  	lbu	a4, 0xc(a3)
8020513a: 83 c3 e6 00  	lbu	t2, 0xe(a3)
8020513e: 03 ce f6 00  	lbu	t3, 0xf(a3)
80205142: a2 07        	slli	a5, a5, 0x8
80205144: 5d 8f        	or	a4, a4, a5
80205146: c2 03        	slli	t2, t2, 0x10
80205148: 62 0e        	slli	t3, t3, 0x18
8020514a: b3 67 7e 00  	or	a5, t3, t2
8020514e: b3 e3 e7 00  	or	t2, a5, a4
80205152: 83 c7 96 00  	lbu	a5, 0x9(a3)
80205156: 03 c7 86 00  	lbu	a4, 0x8(a3)
8020515a: 03 ce a6 00  	lbu	t3, 0xa(a3)
8020515e: 83 ce b6 00  	lbu	t4, 0xb(a3)
80205162: a2 07        	slli	a5, a5, 0x8
80205164: 5d 8f        	or	a4, a4, a5
80205166: 42 0e        	slli	t3, t3, 0x10
80205168: e2 0e        	slli	t4, t4, 0x18
8020516a: b3 e7 ce 01  	or	a5, t4, t3
8020516e: 5d 8f        	or	a4, a4, a5
80205170: 33 67 57 00  	or	a4, a4, t0
80205174: b3 e7 13 01  	or	a5, t2, a7
80205178: b3 f7 67 00  	and	a5, a5, t1
8020517c: 33 77 67 00  	and	a4, a4, t1
80205180: 5d 8f        	or	a4, a4, a5
80205182: c1 06        	addi	a3, a3, 0x10
80205184: 2d d7        	beqz	a4, 0x802050ee <.text+0x50ee>
80205186: c1 a8        	j	0x80205256 <.text+0x5256>
80205188: aa 86        	mv	a3, a0
8020518a: 19 a0        	j	0x80205190 <.text+0x5190>
8020518c: 93 06 05 01  	addi	a3, a0, 0x10
80205190: 13 f6 85 ff  	andi	a2, a1, -0x8
80205194: 2a 96        	add	a2, a2, a0
80205196: 63 fa c6 04  	bgeu	a3, a2, 0x802051ea <.text+0x51ea>
8020519a: 03 c8 56 00  	lbu	a6, 0x5(a3)
8020519e: 03 c7 46 00  	lbu	a4, 0x4(a3)
802051a2: 83 c7 66 00  	lbu	a5, 0x6(a3)
802051a6: 03 c6 76 00  	lbu	a2, 0x7(a3)
802051aa: 22 08        	slli	a6, a6, 0x8
802051ac: 33 67 e8 00  	or	a4, a6, a4
802051b0: c2 07        	slli	a5, a5, 0x10
802051b2: 62 06        	slli	a2, a2, 0x18
802051b4: 5d 8e        	or	a2, a2, a5
802051b6: 33 68 e6 00  	or	a6, a2, a4
802051ba: 83 c8 16 00  	lbu	a7, 0x1(a3)
802051be: 83 c7 06 00  	lbu	a5, 0x0(a3)
802051c2: 03 c6 26 00  	lbu	a2, 0x2(a3)
802051c6: 03 c7 36 00  	lbu	a4, 0x3(a3)
802051ca: a2 08        	slli	a7, a7, 0x8
802051cc: b3 e7 f8 00  	or	a5, a7, a5
802051d0: 42 06        	slli	a2, a2, 0x10
802051d2: 62 07        	slli	a4, a4, 0x18
802051d4: 59 8e        	or	a2, a2, a4
802051d6: 5d 8e        	or	a2, a2, a5
802051d8: 33 66 06 01  	or	a2, a2, a6
802051dc: 37 87 80 80  	lui	a4, 0x80808
802051e0: 13 07 07 08  	addi	a4, a4, 0x80
802051e4: 79 8e        	and	a2, a2, a4
802051e6: 3d e6        	bnez	a2, 0x80205254 <.text+0x5254>
802051e8: a1 06        	addi	a3, a3, 0x8
802051ea: 13 f6 c5 ff  	andi	a2, a1, -0x4
802051ee: 2a 96        	add	a2, a2, a0
802051f0: 63 f8 c6 02  	bgeu	a3, a2, 0x80205220 <.text+0x5220>
802051f4: 03 c8 16 00  	lbu	a6, 0x1(a3)
802051f8: 03 c7 06 00  	lbu	a4, 0x0(a3)
802051fc: 83 c7 26 00  	lbu	a5, 0x2(a3)
80205200: 03 c6 36 00  	lbu	a2, 0x3(a3)
80205204: 22 08        	slli	a6, a6, 0x8
80205206: 33 67 e8 00  	or	a4, a6, a4
8020520a: c2 07        	slli	a5, a5, 0x10
8020520c: 62 06        	slli	a2, a2, 0x18
8020520e: 5d 8e        	or	a2, a2, a5
80205210: 59 8e        	or	a2, a2, a4
80205212: 37 87 80 80  	lui	a4, 0x80808
80205216: 13 07 07 08  	addi	a4, a4, 0x80
8020521a: 79 8e        	and	a2, a2, a4
8020521c: 05 ee        	bnez	a2, 0x80205254 <.text+0x5254>
8020521e: 91 06        	addi	a3, a3, 0x4
80205220: 13 f6 e5 ff  	andi	a2, a1, -0x2
80205224: 2a 96        	add	a2, a2, a0
80205226: 63 fe c6 00  	bgeu	a3, a2, 0x80205242 <.text+0x5242>
8020522a: 03 c6 16 00  	lbu	a2, 0x1(a3)
8020522e: 03 c7 06 00  	lbu	a4, 0x0(a3)
80205232: 22 06        	slli	a2, a2, 0x8
80205234: 59 8e        	or	a2, a2, a4
80205236: 21 67        	lui	a4, 0x8
80205238: 13 07 07 08  	addi	a4, a4, 0x80
8020523c: 79 8e        	and	a2, a2, a4
8020523e: 19 ea        	bnez	a2, 0x80205254 <.text+0x5254>
80205240: 89 06        	addi	a3, a3, 0x2
80205242: 2e 95        	add	a0, a0, a1
80205244: 63 f6 a6 00  	bgeu	a3, a0, 0x80205250 <.text+0x5250>
80205248: 03 85 06 00  	lb	a0, 0x0(a3)
8020524c: 63 44 05 00  	bltz	a0, 0x80205254 <.text+0x5254>
80205250: 05 46        	li	a2, 0x1
80205252: 11 a0        	j	0x80205256 <.text+0x5256>
80205254: 01 46        	li	a2, 0x0
80205256: 32 85        	mv	a0, a2
80205258: 82 80        	ret
8020525a: 97 12 00 00  	auipc	t0, 0x1
8020525e: e7 82 62 0e  	jalr	t0, 0xe6(t0) <.text+0x6340>
80205262: 2a 89        	mv	s2, a0
80205264: 15 ca        	beqz	a2, 0x80205298 <.text+0x5298>
80205266: 32 8a        	mv	s4, a2
80205268: ae 89        	mv	s3, a1
8020526a: 29 45        	li	a0, 0xa
8020526c: 63 5b c5 02  	bge	a0, a2, 0x802052a2 <.text+0x52a2>
80205270: 4e 85        	mv	a0, s3
80205272: d2 85        	mv	a1, s4
80205274: 52 86        	mv	a2, s4
80205276: 97 00 00 00  	auipc	ra, 0x0
8020527a: e7 80 60 0e  	jalr	0xe6(ra) <.text+0x535c>
8020527e: 2a 8c        	mv	s8, a0
80205280: 83 2b c5 00  	lw	s7, 0xc(a0)
80205284: 03 15 05 01  	lh	a0, 0x10(a0)
80205288: 93 d5 fb 41  	srai	a1, s7, 0x1f
8020528c: 42 05        	slli	a0, a0, 0x10
8020528e: 4d 8d        	or	a0, a0, a1
80205290: 93 5a 05 01  	srli	s5, a0, 0x10
80205294: 05 45        	li	a0, 0x1
80205296: 65 a0        	j	0x8020533e <.text+0x533e>
80205298: 81 4b        	li	s7, 0x0
8020529a: 01 4c        	li	s8, 0x0
8020529c: 81 4a        	li	s5, 0x0
8020529e: 39 65        	lui	a0, 0xe
802052a0: 79 a8        	j	0x8020533e <.text+0x533e>
802052a2: 21 45        	li	a0, 0x8
802052a4: d2 8a        	mv	s5, s4
802052a6: 63 43 aa 00  	blt	s4, a0, 0x802052ac <.text+0x52ac>
802052aa: a1 4a        	li	s5, 0x8
802052ac: 63 c7 0a 0a  	bltz	s5, 0x8020535a <.text+0x535a>
802052b0: 81 44        	li	s1, 0x0
802052b2: 81 4b        	li	s7, 0x0
802052b4: 01 4c        	li	s8, 0x0
802052b6: 4e 84        	mv	s0, s3
802052b8: 03 45 04 00  	lbu	a0, 0x0(s0)
802052bc: 13 f6 84 03  	andi	a2, s1, 0x38
802052c0: 81 45        	li	a1, 0x0
802052c2: 97 10 00 00  	auipc	ra, 0x1
802052c6: e7 80 e0 e5  	jalr	-0x1a2(ra) <.text+0x6120>
802052ca: 33 ec 85 01  	or	s8, a1, s8
802052ce: b3 6b 75 01  	or	s7, a0, s7
802052d2: a1 04        	addi	s1, s1, 0x8
802052d4: fd 1a        	addi	s5, s5, -0x1
802052d6: 05 04        	addi	s0, s0, 0x1
802052d8: e3 90 0a fe  	bnez	s5, 0x802052b8 <.text+0x52b8>
802052dc: 25 45        	li	a0, 0x9
802052de: 63 4c aa 02  	blt	s4, a0, 0x80205316 <.text+0x5316>
802052e2: 83 ca 89 00  	lbu	s5, 0x8(s3)
802052e6: 13 04 7a ff  	addi	s0, s4, -0x9
802052ea: 1d c4        	beqz	s0, 0x80205318 <.text+0x5318>
802052ec: 01 4b        	li	s6, 0x0
802052ee: a5 09        	addi	s3, s3, 0x9
802052f0: a1 44        	li	s1, 0x8
802052f2: 03 c5 09 00  	lbu	a0, 0x0(s3)
802052f6: 13 f6 84 03  	andi	a2, s1, 0x38
802052fa: 81 45        	li	a1, 0x0
802052fc: 97 10 00 00  	auipc	ra, 0x1
80205300: e7 80 40 e2  	jalr	-0x1dc(ra) <.text+0x6120>
80205304: 33 eb 65 01  	or	s6, a1, s6
80205308: b3 6a 55 01  	or	s5, a0, s5
8020530c: 7d 14        	addi	s0, s0, -0x1
8020530e: 85 09        	addi	s3, s3, 0x1
80205310: a1 04        	addi	s1, s1, 0x8
80205312: 65 f0        	bnez	s0, 0x802052f2 <.text+0x52f2>
80205314: 19 a0        	j	0x8020531a <.text+0x531a>
80205316: 81 4a        	li	s5, 0x0
80205318: 01 4b        	li	s6, 0x0
8020531a: 33 e5 7a 01  	or	a0, s5, s7
8020531e: b3 65 8b 01  	or	a1, s6, s8
80205322: 97 12 00 00  	auipc	t0, 0x1
80205326: e7 82 02 0c  	jalr	t0, 0xc0(t0) <.text+0x63e2>
8020532a: 99 c1        	beqz	a1, 0x80205330 <.text+0x5330>
8020532c: 37 05 00 a0  	lui	a0, 0xa0000
80205330: 62 0a        	slli	s4, s4, 0x18
80205332: 33 65 65 01  	or	a0, a0, s6
80205336: 33 65 aa 00  	or	a0, s4, a0
8020533a: 61 81        	srli	a0, a0, 0x18
8020533c: 22 05        	slli	a0, a0, 0x8
8020533e: c2 0a        	slli	s5, s5, 0x10
80205340: 33 65 55 01  	or	a0, a0, s5
80205344: 23 22 89 01  	sw	s8, 0x4(s2)
80205348: 23 20 79 01  	sw	s7, 0x0(s2)
8020534c: 23 24 a9 00  	sw	a0, 0x8(s2)
80205350: 97 12 00 00  	auipc	t0, 0x1
80205354: e7 82 82 00  	jalr	t0, 0x8(t0) <.text+0x6358>
80205358: 82 80        	ret
8020535a: 00 00        	unimp
8020535c: 41 11        	addi	sp, sp, -0x10
8020535e: 06 c6        	sw	ra, 0xc(sp)
80205360: 22 c4        	sw	s0, 0x8(sp)
80205362: 26 c2        	sw	s1, 0x4(sp)
80205364: 32 87        	mv	a4, a2
80205366: 2e 84        	mv	s0, a1
80205368: aa 84        	mv	s1, a0
8020536a: 85 8a        	andi	a3, a3, 0x1
8020536c: 63 c5 05 04  	bltz	a1, 0x802053b6 <.text+0x53b6>
80205370: 01 45        	li	a0, 0x0
80205372: 81 45        	li	a1, 0x0
80205374: 81 c6        	beqz	a3, 0x8020537c <.text+0x537c>
80205376: b7 05 00 80  	lui	a1, 0x80000
8020537a: c9 8d        	or	a1, a1, a0
8020537c: fa 06        	slli	a3, a3, 0x1e
8020537e: 37 05 00 30  	lui	a0, 0x30000
80205382: 4d 8d        	or	a0, a0, a1
80205384: 33 66 d5 00  	or	a2, a0, a3
80205388: 3a 85        	mv	a0, a4
8020538a: a2 85        	mv	a1, s0
8020538c: 97 00 00 00  	auipc	ra, 0x0
80205390: e7 80 20 03  	jalr	0x32(ra) <.text+0x53be>
80205394: 63 5c 80 00  	blez	s0, 0x802053ac <.text+0x53ac>
80205398: 93 05 45 01  	addi	a1, a0, 0x14
8020539c: 03 c6 04 00  	lbu	a2, 0x0(s1)
802053a0: 23 80 c5 00  	sb	a2, 0x0(a1)
802053a4: 7d 14        	addi	s0, s0, -0x1
802053a6: 85 05        	addi	a1, a1, 0x1
802053a8: 85 04        	addi	s1, s1, 0x1
802053aa: 6d f8        	bnez	s0, 0x8020539c <.text+0x539c>
802053ac: b2 40        	lw	ra, 0xc(sp)
802053ae: 22 44        	lw	s0, 0x8(sp)
802053b0: 92 44        	lw	s1, 0x4(sp)
802053b2: 41 01        	addi	sp, sp, 0x10
802053b4: 82 80        	ret
802053b6: 7d 55        	li	a0, -0x1
802053b8: fd 55        	li	a1, -0x1
802053ba: d5 fe        	bnez	a3, 0x80205376 <.text+0x5376>
802053bc: c1 b7        	j	0x8020537c <.text+0x537c>
802053be: 01 11        	addi	sp, sp, -0x20
802053c0: 06 ce        	sw	ra, 0x1c(sp)
802053c2: 22 cc        	sw	s0, 0x18(sp)
802053c4: 26 ca        	sw	s1, 0x14(sp)
802053c6: 4a c8        	sw	s2, 0x10(sp)
802053c8: 4e c6        	sw	s3, 0xc(sp)
802053ca: 52 c4        	sw	s4, 0x8(sp)
802053cc: 56 c2        	sw	s5, 0x4(sp)
802053ce: aa 8a        	mv	s5, a0
802053d0: 05 05        	addi	a0, a0, 0x1
802053d2: 63 49 55 0b  	blt	a0, s5, 0x80205484 <.text+0x5484>
802053d6: 32 89        	mv	s2, a2
802053d8: ae 89        	mv	s3, a1
802053da: 13 aa 0a 04  	slti	s4, s5, 0x40
802053de: 13 44 1a 00  	xori	s0, s4, 0x1
802053e2: 0a 04        	slli	s0, s0, 0x2
802053e4: b3 05 85 00  	add	a1, a0, s0
802053e8: 33 a5 a5 00  	slt	a0, a1, a0
802053ec: 13 26 04 00  	slti	a2, s0, 0x0
802053f0: 63 1b a6 08  	bne	a2, a0, 0x80205486 <.text+0x5486>
802053f4: 13 85 45 01  	addi	a0, a1, 0x14
802053f8: 63 48 b5 08  	blt	a0, a1, 0x80205488 <.text+0x5488>
802053fc: 93 05 00 08  	li	a1, 0x80
80205400: 63 55 b5 08  	bge	a0, a1, 0x8020548a <.text+0x548a>
80205404: 3d 05        	addi	a0, a0, 0xf
80205406: 41 99        	andi	a0, a0, -0x10
80205408: 93 04 c5 fe  	addi	s1, a0, -0x14
8020540c: 63 d7 a4 08  	bge	s1, a0, 0x8020549a <.text+0x549a>
80205410: 93 85 44 01  	addi	a1, s1, 0x14
80205414: 37 f5 20 80  	lui	a0, 0x8020f
80205418: 13 05 05 d7  	addi	a0, a0, -0x290
8020541c: 0d 46        	li	a2, 0x3
8020541e: 97 e0 ff ff  	auipc	ra, 0xffffe
80205422: e7 80 60 47  	jalr	0x476(ra)
80205426: 33 26 80 00  	sgtz	a2, s0
8020542a: b3 85 84 40  	sub	a1, s1, s0
8020542e: b3 a6 95 00  	slt	a3, a1, s1
80205432: 63 15 d6 06  	bne	a2, a3, 0x8020549c <.text+0x549c>
80205436: 2a 84        	mv	s0, a0
80205438: 13 45 fa ff  	not	a0, s4
8020543c: 0c c4        	sw	a1, 0x8(s0)
8020543e: 23 26 34 01  	sw	s3, 0xc(s0)
80205442: 93 55 09 01  	srli	a1, s2, 0x10
80205446: 23 18 b4 00  	sh	a1, 0x10(s0)
8020544a: 3e 05        	slli	a0, a0, 0xf
8020544c: 93 05 00 04  	li	a1, 0x40
80205450: 23 19 a4 00  	sh	a0, 0x12(s0)
80205454: 63 cb ba 00  	blt	s5, a1, 0x8020546a <.text+0x546a>
80205458: 22 85        	mv	a0, s0
8020545a: 97 e0 ff ff  	auipc	ra, 0xffffe
8020545e: e7 80 60 42  	jalr	0x426(ra)
80205462: 23 20 05 00  	sw	zero, 0x0(a0)
80205466: 83 29 c4 00  	lw	s3, 0xc(s0)
8020546a: a2 99        	add	s3, s3, s0
8020546c: 23 8a 09 00  	sb	zero, 0x14(s3)
80205470: 22 85        	mv	a0, s0
80205472: f2 40        	lw	ra, 0x1c(sp)
80205474: 62 44        	lw	s0, 0x18(sp)
80205476: d2 44        	lw	s1, 0x14(sp)
80205478: 42 49        	lw	s2, 0x10(sp)
8020547a: b2 49        	lw	s3, 0xc(sp)
8020547c: 22 4a        	lw	s4, 0x8(sp)
8020547e: 92 4a        	lw	s5, 0x4(sp)
80205480: 05 61        	addi	sp, sp, 0x20
80205482: 82 80        	ret
80205484: 00 00        	unimp
80205486: 00 00        	unimp
80205488: 00 00        	unimp
8020548a: 93 05 f5 00  	addi	a1, a0, 0xf
8020548e: 63 c8 a5 00  	blt	a1, a0, 0x8020549e <.text+0x549e>
80205492: c1 99        	andi	a1, a1, -0x10
80205494: 93 84 c5 fe  	addi	s1, a1, -0x14
80205498: b5 bf        	j	0x80205414 <.text+0x5414>
8020549a: 00 00        	unimp
8020549c: 00 00        	unimp
8020549e: 00 00        	unimp
802054a0: 41 11        	addi	sp, sp, -0x10
802054a2: 06 c6        	sw	ra, 0xc(sp)
802054a4: 22 c4        	sw	s0, 0x8(sp)
802054a6: 2a 84        	mv	s0, a0
802054a8: 03 15 25 01  	lh	a0, 0x12(a0)
802054ac: 63 5b 05 00  	bgez	a0, 0x802054c2 <.text+0x54c2>
802054b0: 22 85        	mv	a0, s0
802054b2: 97 e0 ff ff  	auipc	ra, 0xffffe
802054b6: e7 80 e0 3c  	jalr	0x3ce(ra)
802054ba: 97 00 00 00  	auipc	ra, 0x0
802054be: e7 80 80 01  	jalr	0x18(ra) <.text+0x54d2>
802054c2: 22 85        	mv	a0, s0
802054c4: b2 40        	lw	ra, 0xc(sp)
802054c6: 22 44        	lw	s0, 0x8(sp)
802054c8: 41 01        	addi	sp, sp, 0x10
802054ca: 17 e3 ff ff  	auipc	t1, 0xffffe
802054ce: 67 00 a3 62  	jr	0x62a(t1)
802054d2: 41 11        	addi	sp, sp, -0x10
802054d4: 06 c6        	sw	ra, 0xc(sp)
802054d6: 22 c4        	sw	s0, 0x8(sp)
802054d8: 2a 84        	mv	s0, a0
802054da: 08 41        	lw	a0, 0x0(a0)
802054dc: 97 e0 ff ff  	auipc	ra, 0xffffe
802054e0: e7 80 00 3c  	jalr	0x3c0(ra)
802054e4: 22 85        	mv	a0, s0
802054e6: b2 40        	lw	ra, 0xc(sp)
802054e8: 22 44        	lw	s0, 0x8(sp)
802054ea: 41 01        	addi	sp, sp, 0x10
802054ec: 82 80        	ret
802054ee: 17 e3 ff ff  	auipc	t1, 0xffffe
802054f2: 67 00 63 60  	jr	0x606(t1)
802054f6: 03 46 45 00  	lbu	a2, 0x4(a0)
802054fa: 23 82 c5 00  	sb	a2, 0x4(a1)
802054fe: 08 41        	lw	a0, 0x0(a0)
80205500: 88 c1        	sw	a0, 0x0(a1)
80205502: 2e 85        	mv	a0, a1
80205504: 82 80        	ret
80205506: 41 11        	addi	sp, sp, -0x10
80205508: 06 c6        	sw	ra, 0xc(sp)
8020550a: 22 c4        	sw	s0, 0x8(sp)
8020550c: 2a 84        	mv	s0, a0
8020550e: 08 41        	lw	a0, 0x0(a0)
80205510: 83 45 44 00  	lbu	a1, 0x4(s0)
80205514: 97 d0 ff ff  	auipc	ra, 0xffffd
80205518: e7 80 80 11  	jalr	0x118(ra)
8020551c: 22 85        	mv	a0, s0
8020551e: b2 40        	lw	ra, 0xc(sp)
80205520: 22 44        	lw	s0, 0x8(sp)
80205522: 41 01        	addi	sp, sp, 0x10
80205524: 82 80        	ret
80205526: 17 e3 ff ff  	auipc	t1, 0xffffe
8020552a: 67 00 e3 5c  	jr	0x5ce(t1)
8020552e: 01 45        	li	a0, 0x0
80205530: 82 80        	ret
80205532: 97 00 00 00  	auipc	ra, 0x0
80205536: e7 80 80 00  	jalr	0x8(ra) <.text+0x553a>
8020553a: 00 00        	unimp
8020553c: 97 12 00 00  	auipc	t0, 0x1
80205540: e7 82 62 de  	jalr	t0, -0x21a(t0) <.text+0x6322>
80205544: aa 8a        	mv	s5, a0
80205546: b1 64        	lui	s1, 0xc
80205548: 85 04        	addi	s1, s1, 0x1
8020554a: 65 8d        	and	a0, a0, s1
8020554c: c2 89        	mv	s3, a6
8020554e: 3e 8a        	mv	s4, a5
80205550: 3a 89        	mv	s2, a4
80205552: 36 8b        	mv	s6, a3
80205554: 32 84        	mv	s0, a2
80205556: 2e 8c        	mv	s8, a1
80205558: 63 0a 05 2a  	beqz	a0, 0x8020580c <.text+0x580c>
8020555c: e1 8c        	and	s1, s1, s0
8020555e: 63 88 04 2c  	beqz	s1, 0x8020582e <.text+0x582e>
80205562: 13 d5 ea 00  	srli	a0, s5, 0xe
80205566: 93 15 2c 01  	slli	a1, s8, 0x12
8020556a: c9 8d        	or	a1, a1, a0
8020556c: 13 56 ec 00  	srli	a2, s8, 0xe
80205570: 39 80        	srli	s0, s0, 0xe
80205572: 13 15 2b 01  	slli	a0, s6, 0x12
80205576: 93 5b eb 00  	srli	s7, s6, 0xe
8020557a: 33 6b a4 00  	or	s6, s0, a0
8020557e: 63 05 76 01  	beq	a2, s7, 0x80205588 <.text+0x5588>
80205582: b3 36 76 01  	sltu	a3, a2, s7
80205586: 19 a0        	j	0x8020558c <.text+0x558c>
80205588: b3 b6 65 01  	sltu	a3, a1, s6
8020558c: 13 d7 89 00  	srli	a4, s3, 0x8
80205590: 13 d5 09 01  	srli	a0, s3, 0x10
80205594: 81 ca        	beqz	a3, 0x802055a4 <.text+0x55a4>
80205596: 93 75 07 01  	andi	a1, a4, 0x10
8020559a: 2e cc        	sw	a1, 0x18(sp)
8020559c: 4a c8        	sw	s2, 0x10(sp)
8020559e: 81 e9        	bnez	a1, 0x802055ae <.text+0x55ae>
802055a0: 21 4d        	li	s10, 0x8
802055a2: 31 a8        	j	0x802055be <.text+0x55be>
802055a4: 63 8a cb 0c  	beq	s7, a2, 0x80205678 <.text+0x5678>
802055a8: b3 b5 cb 00  	sltu	a1, s7, a2
802055ac: c1 a8        	j	0x8020567c <.text+0x567c>
802055ae: 2d 81        	srli	a0, a0, 0xb
802055b0: 93 55 f9 01  	srli	a1, s2, 0x1f
802055b4: 4d 8d        	or	a0, a0, a1
802055b6: 05 89        	andi	a0, a0, 0x1
802055b8: 91 45        	li	a1, 0x4
802055ba: 33 9d a5 00  	sll	s10, a1, a0
802055be: 01 44        	li	s0, 0x0
802055c0: 3a c4        	sw	a4, 0x8(sp)
802055c2: 13 75 f7 0f  	andi	a0, a4, 0xff
802055c6: 2a c6        	sw	a0, 0xc(sp)
802055c8: 13 f9 f9 0f  	andi	s2, s3, 0xff
802055cc: 93 04 14 00  	addi	s1, s0, 0x1
802055d0: 63 c6 84 1e  	blt	s1, s0, 0x802057bc <.text+0x57bc>
802055d4: 63 0d 09 00  	beqz	s2, 0x802055ee <.text+0x55ee>
802055d8: 52 85        	mv	a0, s4
802055da: ce 85        	mv	a1, s3
802055dc: 97 d0 ff ff  	auipc	ra, 0xffffd
802055e0: e7 80 00 05  	jalr	0x50(ra)
802055e4: 52 85        	mv	a0, s4
802055e6: 97 d0 ff ff  	auipc	ra, 0xffffd
802055ea: e7 80 a0 80  	jalr	-0x7f6(ra)
802055ee: 13 f5 ca 00  	andi	a0, s5, 0xc
802055f2: 63 05 a5 07  	beq	a0, s10, 0x8020565c <.text+0x565c>
802055f6: 63 08 09 00  	beqz	s2, 0x80205606 <.text+0x5606>
802055fa: 52 85        	mv	a0, s4
802055fc: ce 85        	mv	a1, s3
802055fe: 97 c0 ff ff  	auipc	ra, 0xffffc
80205602: e7 80 40 c5  	jalr	-0x3ac(ra)
80205606: 93 dc 0a 01  	srli	s9, s5, 0x10
8020560a: 93 1d 0c 01  	slli	s11, s8, 0x10
8020560e: 62 45        	lw	a0, 0x18(sp)
80205610: 63 17 05 1a  	bnez	a0, 0x802057be <.text+0x57be>
80205614: 52 85        	mv	a0, s4
80205616: ce 85        	mv	a1, s3
80205618: 97 c0 ff ff  	auipc	ra, 0xffffc
8020561c: e7 80 a0 c3  	jalr	-0x3c6(ra)
80205620: b3 e5 bc 01  	or	a1, s9, s11
80205624: 13 85 15 00  	addi	a0, a1, 0x1
80205628: 63 44 05 00  	bltz	a0, 0x80205630 <.text+0x5630>
8020562c: aa 85        	mv	a1, a0
8020562e: 21 a0        	j	0x80205636 <.text+0x5636>
80205630: 79 56        	li	a2, -0x2
80205632: b3 05 b6 40  	sub	a1, a2, a1
80205636: da 86        	mv	a3, s6
80205638: 5e 87        	mv	a4, s7
8020563a: 97 12 00 00  	auipc	t0, 0x1
8020563e: e7 82 82 df  	jalr	t0, -0x208(t0) <.text+0x6432>
80205642: 4a 06        	slli	a2, a2, 0x12
80205644: b9 81        	srli	a1, a1, 0xe
80205646: d1 8d        	or	a1, a1, a2
80205648: 13 55 ec 00  	srli	a0, s8, 0xe
8020564c: b3 c5 65 01  	xor	a1, a1, s6
80205650: 33 45 75 01  	xor	a0, a0, s7
80205654: 4d 8d        	or	a0, a0, a1
80205656: 05 04        	addi	s0, s0, 0x1
80205658: 35 f9        	bnez	a0, 0x802055cc <.text+0x55cc>
8020565a: 35 a8        	j	0x80205696 <.text+0x5696>
8020565c: 56 85        	mv	a0, s5
8020565e: e2 85        	mv	a1, s8
80205660: 42 46        	lw	a2, 0x10(sp)
80205662: d2 86        	mv	a3, s4
80205664: 4e 87        	mv	a4, s3
80205666: 97 d0 ff ff  	auipc	ra, 0xffffd
8020566a: e7 80 00 05  	jalr	0x50(ra)
8020566e: aa 8a        	mv	s5, a0
80205670: 2e 8c        	mv	s8, a1
80205672: e3 14 09 f8  	bnez	s2, 0x802055fa <.text+0x55fa>
80205676: 41 bf        	j	0x80205606 <.text+0x5606>
80205678: b3 35 bb 00  	sltu	a1, s6, a1
8020567c: 93 c5 15 00  	xori	a1, a1, 0x1
80205680: 91 e9        	bnez	a1, 0x80205694 <.text+0x5694>
80205682: 93 75 07 01  	andi	a1, a4, 0x10
80205686: 2e 86        	mv	a2, a1
80205688: 4a c8        	sw	s2, 0x10(sp)
8020568a: 5e ca        	sw	s7, 0x14(sp)
8020568c: da 8d        	mv	s11, s6
8020568e: 91 e9        	bnez	a1, 0x802056a2 <.text+0x56a2>
80205690: 21 4d        	li	s10, 0x8
80205692: 05 a0        	j	0x802056b2 <.text+0x56b2>
80205694: 81 44        	li	s1, 0x0
80205696: 26 85        	mv	a0, s1
80205698: 97 12 00 00  	auipc	t0, 0x1
8020569c: e7 82 c2 c6  	jalr	t0, -0x394(t0) <.text+0x6304>
802056a0: 82 80        	ret
802056a2: 2d 81        	srli	a0, a0, 0xb
802056a4: 93 55 f9 01  	srli	a1, s2, 0x1f
802056a8: 4d 8d        	or	a0, a0, a1
802056aa: 05 89        	andi	a0, a0, 0x1
802056ac: 91 45        	li	a1, 0x4
802056ae: 33 9d a5 00  	sll	s10, a1, a0
802056b2: 01 44        	li	s0, 0x0
802056b4: 13 75 07 02  	andi	a0, a4, 0x20
802056b8: 2a cc        	sw	a0, 0x18(sp)
802056ba: 3d 8b        	andi	a4, a4, 0xf
802056bc: 3a c6        	sw	a4, 0xc(sp)
802056be: 93 fc f9 0f  	andi	s9, s3, 0xff
802056c2: 32 8b        	mv	s6, a2
802056c4: 93 04 f4 ff  	addi	s1, s0, -0x1
802056c8: 63 d8 84 10  	bge	s1, s0, 0x802057d8 <.text+0x57d8>
802056cc: 63 8d 0c 00  	beqz	s9, 0x802056e6 <.text+0x56e6>
802056d0: 52 85        	mv	a0, s4
802056d2: ce 85        	mv	a1, s3
802056d4: 97 d0 ff ff  	auipc	ra, 0xffffd
802056d8: e7 80 80 f5  	jalr	-0xa8(ra)
802056dc: 52 85        	mv	a0, s4
802056de: 97 c0 ff ff  	auipc	ra, 0xffffc
802056e2: e7 80 20 71  	jalr	0x712(ra)
802056e6: 13 f5 ca 00  	andi	a0, s5, 0xc
802056ea: 63 08 a5 07  	beq	a0, s10, 0x8020575a <.text+0x575a>
802056ee: 13 d5 ea 00  	srli	a0, s5, 0xe
802056f2: 33 65 ac 00  	or	a0, s8, a0
802056f6: 75 c1        	beqz	a0, 0x802057da <.text+0x57da>
802056f8: 63 88 0c 00  	beqz	s9, 0x80205708 <.text+0x5708>
802056fc: 52 85        	mv	a0, s4
802056fe: ce 85        	mv	a1, s3
80205700: 97 c0 ff ff  	auipc	ra, 0xffffc
80205704: e7 80 20 b5  	jalr	-0x4ae(ra)
80205708: 13 d9 0a 01  	srli	s2, s5, 0x10
8020570c: 93 1b 0c 01  	slli	s7, s8, 0x10
80205710: 63 11 0b 06  	bnez	s6, 0x80205772 <.text+0x5772>
80205714: 52 85        	mv	a0, s4
80205716: ce 85        	mv	a1, s3
80205718: 97 c0 ff ff  	auipc	ra, 0xffffc
8020571c: e7 80 a0 b3  	jalr	-0x4c6(ra)
80205720: b3 65 79 01  	or	a1, s2, s7
80205724: 13 85 f5 ff  	addi	a0, a1, -0x1
80205728: 63 44 05 00  	bltz	a0, 0x80205730 <.text+0x5730>
8020572c: aa 85        	mv	a1, a0
8020572e: 19 a0        	j	0x80205734 <.text+0x5734>
80205730: b3 05 b0 40  	neg	a1, a1
80205734: 97 12 00 00  	auipc	t0, 0x1
80205738: e7 82 e2 cf  	jalr	t0, -0x302(t0) <.text+0x6432>
8020573c: 13 d5 ea 00  	srli	a0, s5, 0xe
80205740: 93 15 2c 01  	slli	a1, s8, 0x12
80205744: 4d 8d        	or	a0, a0, a1
80205746: 93 55 ec 00  	srli	a1, s8, 0xe
8020574a: 52 46        	lw	a2, 0x14(sp)
8020574c: b1 8d        	xor	a1, a1, a2
8020574e: 33 45 b5 01  	xor	a0, a0, s11
80205752: 4d 8d        	or	a0, a0, a1
80205754: 7d 14        	addi	s0, s0, -0x1
80205756: 3d f5        	bnez	a0, 0x802056c4 <.text+0x56c4>
80205758: 3d bf        	j	0x80205696 <.text+0x5696>
8020575a: 56 85        	mv	a0, s5
8020575c: e2 85        	mv	a1, s8
8020575e: 42 46        	lw	a2, 0x10(sp)
80205760: d2 86        	mv	a3, s4
80205762: 4e 87        	mv	a4, s3
80205764: 97 d0 ff ff  	auipc	ra, 0xffffd
80205768: e7 80 20 f5  	jalr	-0xae(ra)
8020576c: aa 8a        	mv	s5, a0
8020576e: 2e 8c        	mv	s8, a1
80205770: bd bf        	j	0x802056ee <.text+0x56ee>
80205772: ce 85        	mv	a1, s3
80205774: 42 46        	lw	a2, 0x10(sp)
80205776: 62 45        	lw	a0, 0x18(sp)
80205778: 19 c9        	beqz	a0, 0x8020578e <.text+0x578e>
8020577a: b2 45        	lw	a1, 0xc(sp)
8020577c: 63 80 0c 02  	beqz	s9, 0x8020579c <.text+0x579c>
80205780: ce 85        	mv	a1, s3
80205782: 32 46        	lw	a2, 0xc(sp)
80205784: 05 45        	li	a0, 0x1
80205786: 63 84 ac 00  	beq	s9, a0, 0x8020578e <.text+0x578e>
8020578a: 89 45        	li	a1, 0x2
8020578c: 32 46        	lw	a2, 0xc(sp)
8020578e: 32 c4        	sw	a2, 0x8(sp)
80205790: 52 85        	mv	a0, s4
80205792: 97 c0 ff ff  	auipc	ra, 0xffffc
80205796: e7 80 00 ac  	jalr	-0x540(ra)
8020579a: a2 45        	lw	a1, 0x8(sp)
8020579c: 33 65 79 01  	or	a0, s2, s7
802057a0: 63 c6 a5 0a  	blt	a1, a0, 0x8020584c <.text+0x584c>
802057a4: 56 85        	mv	a0, s5
802057a6: e2 85        	mv	a1, s8
802057a8: 42 46        	lw	a2, 0x10(sp)
802057aa: d2 86        	mv	a3, s4
802057ac: 4e 87        	mv	a4, s3
802057ae: 97 e0 ff ff  	auipc	ra, 0xffffe
802057b2: e7 80 c0 40  	jalr	0x40c(ra)
802057b6: aa 8a        	mv	s5, a0
802057b8: 2e 8c        	mv	s8, a1
802057ba: 49 b7        	j	0x8020573c <.text+0x573c>
802057bc: 00 00        	unimp
802057be: 32 45        	lw	a0, 0xc(sp)
802057c0: 13 75 05 02  	andi	a0, a0, 0x20
802057c4: 01 ed        	bnez	a0, 0x802057dc <.text+0x57dc>
802057c6: 52 85        	mv	a0, s4
802057c8: ce 85        	mv	a1, s3
802057ca: 97 c0 ff ff  	auipc	ra, 0xffffc
802057ce: e7 80 80 a8  	jalr	-0x578(ra)
802057d2: 42 44        	lw	s0, 0x10(sp)
802057d4: 22 85        	mv	a0, s0
802057d6: 31 a8        	j	0x802057f2 <.text+0x57f2>
802057d8: 00 00        	unimp
802057da: 00 00        	unimp
802057dc: 42 44        	lw	s0, 0x10(sp)
802057de: 63 08 09 00  	beqz	s2, 0x802057ee <.text+0x57ee>
802057e2: 52 85        	mv	a0, s4
802057e4: ce 85        	mv	a1, s3
802057e6: 97 c0 ff ff  	auipc	ra, 0xffffc
802057ea: e7 80 c0 a6  	jalr	-0x594(ra)
802057ee: 22 45        	lw	a0, 0x8(sp)
802057f0: 3d 89        	andi	a0, a0, 0xf
802057f2: b3 e5 bc 01  	or	a1, s9, s11
802057f6: 63 da a5 04  	bge	a1, a0, 0x8020584a <.text+0x584a>
802057fa: 56 85        	mv	a0, s5
802057fc: e2 85        	mv	a1, s8
802057fe: 22 86        	mv	a2, s0
80205800: d2 86        	mv	a3, s4
80205802: 4e 87        	mv	a4, s3
80205804: 97 e0 ff ff  	auipc	ra, 0xffffe
80205808: e7 80 e0 39  	jalr	0x39e(ra)
8020580c: 56 85        	mv	a0, s5
8020580e: e2 85        	mv	a1, s8
80205810: 4a 86        	mv	a2, s2
80205812: d2 86        	mv	a3, s4
80205814: 4e 87        	mv	a4, s3
80205816: 97 d0 ff ff  	auipc	ra, 0xffffd
8020581a: e7 80 80 bf  	jalr	-0x408(ra)
8020581e: 2e 8c        	mv	s8, a1
80205820: 49 99        	andi	a0, a0, -0xe
80205822: 93 f5 ca 00  	andi	a1, s5, 0xc
80205826: 4d 8d        	or	a0, a0, a1
80205828: 93 0a 15 00  	addi	s5, a0, 0x1
8020582c: 05 bb        	j	0x8020555c <.text+0x555c>
8020582e: 22 85        	mv	a0, s0
80205830: da 85        	mv	a1, s6
80205832: 4a 86        	mv	a2, s2
80205834: d2 86        	mv	a3, s4
80205836: 4e 87        	mv	a4, s3
80205838: 97 d0 ff ff  	auipc	ra, 0xffffd
8020583c: e7 80 60 bd  	jalr	-0x42a(ra)
80205840: 2e 8b        	mv	s6, a1
80205842: 49 99        	andi	a0, a0, -0xe
80205844: 13 04 15 00  	addi	s0, a0, 0x1
80205848: 29 bb        	j	0x80205562 <.text+0x5562>
8020584a: 00 00        	unimp
8020584c: 00 00        	unimp
8020584e: 97 00 00 00  	auipc	ra, 0x0
80205852: e7 80 80 00  	jalr	0x8(ra) <.text+0x5856>
80205856: 00 00        	unimp
80205858: 41 11        	addi	sp, sp, -0x10
8020585a: 06 c6        	sw	ra, 0xc(sp)
8020585c: 22 c4        	sw	s0, 0x8(sp)
8020585e: 26 c2        	sw	s1, 0x4(sp)
80205860: aa 84        	mv	s1, a0
80205862: 08 41        	lw	a0, 0x0(a0)
80205864: 8c 44        	lw	a1, 0x8(s1)
80205866: 97 e0 ff ff  	auipc	ra, 0xffffe
8020586a: e7 80 80 00  	jalr	0x8(ra)
8020586e: 05 89        	andi	a0, a0, 0x1
80205870: 05 44        	li	s0, 0x1
80205872: 19 c9        	beqz	a0, 0x80205888 <.text+0x5888>
80205874: c4 40        	lw	s1, 0x4(s1)
80205876: 26 85        	mv	a0, s1
80205878: 97 e0 ff ff  	auipc	ra, 0xffffe
8020587c: e7 80 80 15  	jalr	0x158(ra)
80205880: 01 c5        	beqz	a0, 0x80205888 <.text+0x5888>
80205882: 88 44        	lw	a0, 0x8(s1)
80205884: 01 44        	li	s0, 0x0
80205886: 7d 15        	addi	a0, a0, -0x1
80205888: a2 85        	mv	a1, s0
8020588a: b2 40        	lw	ra, 0xc(sp)
8020588c: 22 44        	lw	s0, 0x8(sp)
8020588e: 92 44        	lw	s1, 0x4(sp)
80205890: 41 01        	addi	sp, sp, 0x10
80205892: 82 80        	ret
80205894: a9 45        	li	a1, 0xa
80205896: 63 c6 a5 00  	blt	a1, a0, 0x802058a2 <.text+0x58a2>
8020589a: 97 00 00 00  	auipc	ra, 0x0
8020589e: e7 80 00 ca  	jalr	-0x360(ra) <.text+0x553a>
802058a2: 97 00 00 00  	auipc	ra, 0x0
802058a6: e7 80 80 00  	jalr	0x8(ra) <.text+0x58aa>
802058aa: 41 11        	addi	sp, sp, -0x10
802058ac: 06 c6        	sw	ra, 0xc(sp)
802058ae: 37 06 00 30  	lui	a2, 0x30000
802058b2: 81 45        	li	a1, 0x0
802058b4: 97 00 00 00  	auipc	ra, 0x0
802058b8: e7 80 a0 b0  	jalr	-0x4f6(ra) <.text+0x53be>
802058bc: 97 00 00 00  	auipc	ra, 0x0
802058c0: e7 80 e0 c7  	jalr	-0x382(ra) <.text+0x553a>
802058c4: 59 71        	addi	sp, sp, -0x70
802058c6: 86 d6        	sw	ra, 0x6c(sp)
802058c8: a2 d4        	sw	s0, 0x68(sp)
802058ca: a6 d2        	sw	s1, 0x64(sp)
802058cc: ca d0        	sw	s2, 0x60(sp)
802058ce: ce ce        	sw	s3, 0x5c(sp)
802058d0: d2 cc        	sw	s4, 0x58(sp)
802058d2: d6 ca        	sw	s5, 0x54(sp)
802058d4: da c8        	sw	s6, 0x50(sp)
802058d6: de c6        	sw	s7, 0x4c(sp)
802058d8: e2 c4        	sw	s8, 0x48(sp)
802058da: e6 c2        	sw	s9, 0x44(sp)
802058dc: b6 8c        	mv	s9, a3
802058de: 32 8b        	mv	s6, a2
802058e0: ae 89        	mv	s3, a1
802058e2: 2a 89        	mv	s2, a0
802058e4: 93 fa f6 0f  	andi	s5, a3, 0xff
802058e8: 13 da 86 00  	srli	s4, a3, 0x8
802058ec: 63 8d 0a 00  	beqz	s5, 0x80205906 <.text+0x5906>
802058f0: 5a 85        	mv	a0, s6
802058f2: e6 85        	mv	a1, s9
802058f4: 97 d0 ff ff  	auipc	ra, 0xffffd
802058f8: e7 80 80 d3  	jalr	-0x2c8(ra)
802058fc: 5a 85        	mv	a0, s6
802058fe: 97 c0 ff ff  	auipc	ra, 0xffffc
80205902: e7 80 20 4f  	jalr	0x4f2(ra)
80205906: 13 75 0a 02  	andi	a0, s4, 0x20
8020590a: 09 e9        	bnez	a0, 0x8020591c <.text+0x591c>
8020590c: 5a 85        	mv	a0, s6
8020590e: e6 85        	mv	a1, s9
80205910: 97 c0 ff ff  	auipc	ra, 0xffffc
80205914: e7 80 20 94  	jalr	-0x6be(ra)
80205918: 4e 84        	mv	s0, s3
8020591a: 19 a8        	j	0x80205930 <.text+0x5930>
8020591c: 63 88 0a 00  	beqz	s5, 0x8020592c <.text+0x592c>
80205920: 5a 85        	mv	a0, s6
80205922: e6 85        	mv	a1, s9
80205924: 97 c0 ff ff  	auipc	ra, 0xffffc
80205928: e7 80 e0 92  	jalr	-0x6d2(ra)
8020592c: 13 74 fa 00  	andi	s0, s4, 0xf
80205930: 93 7b fa 0f  	andi	s7, s4, 0xff
80205934: 63 88 0a 00  	beqz	s5, 0x80205944 <.text+0x5944>
80205938: 5a 85        	mv	a0, s6
8020593a: e6 85        	mv	a1, s9
8020593c: 97 c0 ff ff  	auipc	ra, 0xffffc
80205940: e7 80 60 91  	jalr	-0x6ea(ra)
80205944: 13 f5 0b 01  	andi	a0, s7, 0x10
80205948: 93 da 0c 01  	srli	s5, s9, 0x10
8020594c: 19 c9        	beqz	a0, 0x80205962 <.text+0x5962>
8020594e: 13 f5 09 ff  	andi	a0, s3, -0x10
80205952: 93 95 4a 01  	slli	a1, s5, 0x14
80205956: 4d 8d        	or	a0, a0, a1
80205958: 63 45 05 00  	bltz	a0, 0x80205962 <.text+0x5962>
8020595c: 01 45        	li	a0, 0x0
8020595e: ad 45        	li	a1, 0xb
80205960: 19 a0        	j	0x80205966 <.text+0x5966>
80205962: 01 45        	li	a0, 0x0
80205964: 9d 45        	li	a1, 0x7
80205966: 13 56 f4 41  	srai	a2, s0, 0x1f
8020596a: 13 57 04 01  	srli	a4, s0, 0x10
8020596e: 42 06        	slli	a2, a2, 0x10
80205970: 93 16 04 01  	slli	a3, s0, 0x10
80205974: cd 8e        	or	a3, a3, a1
80205976: 59 8d        	or	a0, a0, a4
80205978: 33 67 a6 00  	or	a4, a2, a0
8020597c: 28 08        	addi	a0, sp, 0x18
8020597e: bd 45        	li	a1, 0xf
80205980: 01 46        	li	a2, 0x0
80205982: ce 87        	mv	a5, s3
80205984: 5a 88        	mv	a6, s6
80205986: e6 88        	mv	a7, s9
80205988: 97 e0 ff ff  	auipc	ra, 0xffffe
8020598c: e7 80 a0 3d  	jalr	0x3da(ra)
80205990: 82 5b        	lw	s7, 0x20(sp)
80205992: 62 45        	lw	a0, 0x18(sp)
80205994: 72 44        	lw	s0, 0x1c(sp)
80205996: 12 5c        	lw	s8, 0x24(sp)
80205998: c1 75        	lui	a1, 0xffff0
8020599a: e9 8d        	and	a1, a1, a0
8020599c: 13 16 04 01  	slli	a2, s0, 0x10
802059a0: 41 82        	srli	a2, a2, 0x10
802059a2: d1 8d        	or	a1, a1, a2
802059a4: b3 35 b0 00  	snez	a1, a1
802059a8: fd 15        	addi	a1, a1, -0x1
802059aa: 8d 89        	andi	a1, a1, 0x3
802059ac: b3 64 b5 00  	or	s1, a0, a1
802059b0: 5a 85        	mv	a0, s6
802059b2: e6 85        	mv	a1, s9
802059b4: 97 d0 ff ff  	auipc	ra, 0xffffd
802059b8: e7 80 80 c7  	jalr	-0x388(ra)
802059bc: 22 d6        	sw	s0, 0x2c(sp)
802059be: 26 d4        	sw	s1, 0x28(sp)
802059c0: 62 da        	sw	s8, 0x34(sp)
802059c2: 5e d8        	sw	s7, 0x30(sp)
802059c4: 4e dc        	sw	s3, 0x38(sp)
802059c6: 5a de        	sw	s6, 0x3c(sp)
802059c8: 23 00 91 05  	sb	s9, 0x40(sp)
802059cc: a3 00 41 05  	sb	s4, 0x41(sp)
802059d0: 23 11 51 05  	sh	s5, 0x42(sp)
802059d4: 28 00        	addi	a0, sp, 0x8
802059d6: 2c 10        	addi	a1, sp, 0x28
802059d8: 97 f0 ff ff  	auipc	ra, 0xfffff
802059dc: e7 80 c0 20  	jalr	0x20c(ra)
802059e0: a2 49        	lw	s3, 0x8(sp)
802059e2: b2 44        	lw	s1, 0xc(sp)
802059e4: 42 44        	lw	s0, 0x10(sp)
802059e6: 28 10        	addi	a0, sp, 0x28
802059e8: 97 f0 ff ff  	auipc	ra, 0xfffff
802059ec: e7 80 40 19  	jalr	0x194(ra)
802059f0: 4a 85        	mv	a0, s2
802059f2: 00 c5        	sw	s0, 0x8(a0)
802059f4: 44 c1        	sw	s1, 0x4(a0)
802059f6: 23 20 39 01  	sw	s3, 0x0(s2)
802059fa: b6 50        	lw	ra, 0x6c(sp)
802059fc: 26 54        	lw	s0, 0x68(sp)
802059fe: 96 54        	lw	s1, 0x64(sp)
80205a00: 06 59        	lw	s2, 0x60(sp)
80205a02: f6 49        	lw	s3, 0x5c(sp)
80205a04: 66 4a        	lw	s4, 0x58(sp)
80205a06: d6 4a        	lw	s5, 0x54(sp)
80205a08: 46 4b        	lw	s6, 0x50(sp)
80205a0a: b6 4b        	lw	s7, 0x4c(sp)
80205a0c: 26 4c        	lw	s8, 0x48(sp)
80205a0e: 96 4c        	lw	s9, 0x44(sp)
80205a10: 65 61        	addi	sp, sp, 0x70
80205a12: 82 80        	ret
80205a14: 97 00 00 00  	auipc	ra, 0x0
80205a18: e7 80 80 00  	jalr	0x8(ra) <.text+0x5a1c>
80205a1c: 59 71        	addi	sp, sp, -0x70
80205a1e: 86 d6        	sw	ra, 0x6c(sp)
80205a20: a2 d4        	sw	s0, 0x68(sp)
80205a22: a6 d2        	sw	s1, 0x64(sp)
80205a24: ca d0        	sw	s2, 0x60(sp)
80205a26: ce ce        	sw	s3, 0x5c(sp)
80205a28: d2 cc        	sw	s4, 0x58(sp)
80205a2a: d6 ca        	sw	s5, 0x54(sp)
80205a2c: aa 84        	mv	s1, a0
80205a2e: 97 b0 ff ff  	auipc	ra, 0xffffb
80205a32: e7 80 60 ce  	jalr	-0x31a(ra)
80205a36: 2a 8a        	mv	s4, a0
80205a38: 97 b0 ff ff  	auipc	ra, 0xffffb
80205a3c: e7 80 80 ce  	jalr	-0x318(ra)
80205a40: aa 89        	mv	s3, a0
80205a42: 97 b0 ff ff  	auipc	ra, 0xffffb
80205a46: e7 80 a0 ce  	jalr	-0x316(ra)
80205a4a: 2a 89        	mv	s2, a0
80205a4c: 03 c5 94 07  	lbu	a0, 0x79(s1)
80205a50: 83 c5 84 07  	lbu	a1, 0x78(s1)
80205a54: 03 c6 a4 07  	lbu	a2, 0x7a(s1)
80205a58: 83 c6 b4 07  	lbu	a3, 0x7b(s1)
80205a5c: 22 05        	slli	a0, a0, 0x8
80205a5e: 4d 8d        	or	a0, a0, a1
80205a60: 42 06        	slli	a2, a2, 0x10
80205a62: e2 06        	slli	a3, a3, 0x18
80205a64: b3 e5 c6 00  	or	a1, a3, a2
80205a68: c9 8d        	or	a1, a1, a0
80205a6a: 28 18        	addi	a0, sp, 0x38
80205a6c: 97 00 00 00  	auipc	ra, 0x0
80205a70: e7 80 e0 12  	jalr	0x12e(ra) <.text+0x5b9a>
80205a74: 86 44        	lw	s1, 0x40(sp)
80205a76: 72 54        	lw	s0, 0x3c(sp)
80205a78: 62 55        	lw	a0, 0x38(sp)
80205a7a: a2 85        	mv	a1, s0
80205a7c: 26 86        	mv	a2, s1
80205a7e: 97 b0 ff ff  	auipc	ra, 0xffffb
80205a82: e7 80 a0 3a  	jalr	0x3aa(ra)
80205a86: 22 85        	mv	a0, s0
80205a88: a6 85        	mv	a1, s1
80205a8a: 97 b0 ff ff  	auipc	ra, 0xffffb
80205a8e: e7 80 80 7c  	jalr	0x7c8(ra)
80205a92: 82 c4        	sw	zero, 0x48(sp)
80205a94: 82 c6        	sw	zero, 0x4c(sp)
80205a96: b9 6a        	lui	s5, 0xe
80205a98: d6 c8        	sw	s5, 0x50(sp)
80205a9a: 13 05 c0 02  	li	a0, 0x2c
80205a9e: ac 00        	addi	a1, sp, 0x48
80205aa0: 97 b0 ff ff  	auipc	ra, 0xffffb
80205aa4: e7 80 40 51  	jalr	0x514(ra)
80205aa8: 36 45        	lw	a0, 0x4c(sp)
80205aaa: 83 45 01 05  	lbu	a1, 0x50(sp)
80205aae: 97 b0 ff ff  	auipc	ra, 0xffffb
80205ab2: e7 80 40 7a  	jalr	0x7a4(ra)
80205ab6: 5d 45        	li	a0, 0x17
80205ab8: aa c4        	sw	a0, 0x48(sp)
80205aba: 37 f5 20 80  	lui	a0, 0x8020f
80205abe: 13 05 c5 a4  	addi	a0, a0, -0x5b4
80205ac2: aa c6        	sw	a0, 0x4c(sp)
80205ac4: 37 85 00 d0  	lui	a0, 0xd0008
80205ac8: aa c8        	sw	a0, 0x50(sp)
80205aca: 28 10        	addi	a0, sp, 0x28
80205acc: d2 85        	mv	a1, s4
80205ace: 97 00 00 00  	auipc	ra, 0x0
80205ad2: e7 80 80 21  	jalr	0x218(ra) <.text+0x5ce6>
80205ad6: 42 54        	lw	s0, 0x30(sp)
80205ad8: b2 54        	lw	s1, 0x2c(sp)
80205ada: 22 55        	lw	a0, 0x28(sp)
80205adc: b4 00        	addi	a3, sp, 0x48
80205ade: a6 85        	mv	a1, s1
80205ae0: 22 86        	mv	a2, s0
80205ae2: 97 c0 ff ff  	auipc	ra, 0xffffc
80205ae6: e7 80 00 9f  	jalr	-0x610(ra)
80205aea: 26 85        	mv	a0, s1
80205aec: a2 85        	mv	a1, s0
80205aee: 97 b0 ff ff  	auipc	ra, 0xffffb
80205af2: e7 80 40 76  	jalr	0x764(ra)
80205af6: 37 25 73 74  	lui	a0, 0x74732
80205afa: 13 05 c5 02  	addi	a0, a0, 0x2c
80205afe: b7 65 6c 3d  	lui	a1, 0x3d6c6
80205b02: 93 85 65 17  	addi	a1, a1, 0x176
80205b06: 75 46        	li	a2, 0x1d
80205b08: 2e 06        	slli	a2, a2, 0xb
80205b0a: b4 00        	addi	a3, sp, 0x48
80205b0c: 97 c0 ff ff  	auipc	ra, 0xffffc
80205b10: e7 80 60 9c  	jalr	-0x63a(ra)
80205b14: 28 08        	addi	a0, sp, 0x18
80205b16: ce 85        	mv	a1, s3
80205b18: 97 00 00 00  	auipc	ra, 0x0
80205b1c: e7 80 e0 1c  	jalr	0x1ce(ra) <.text+0x5ce6>
80205b20: 02 54        	lw	s0, 0x20(sp)
80205b22: f2 44        	lw	s1, 0x1c(sp)
80205b24: 62 45        	lw	a0, 0x18(sp)
80205b26: b4 00        	addi	a3, sp, 0x48
80205b28: a6 85        	mv	a1, s1
80205b2a: 22 86        	mv	a2, s0
80205b2c: 97 c0 ff ff  	auipc	ra, 0xffffc
80205b30: e7 80 60 9a  	jalr	-0x65a(ra)
80205b34: 26 85        	mv	a0, s1
80205b36: a2 85        	mv	a1, s0
80205b38: 97 b0 ff ff  	auipc	ra, 0xffffb
80205b3c: e7 80 a0 71  	jalr	0x71a(ra)
80205b40: 37 25 73 65  	lui	a0, 0x65732
80205b44: 13 05 c5 02  	addi	a0, a0, 0x2c
80205b48: b7 65 3d 00  	lui	a1, 0x3d6
80205b4c: 93 85 05 37  	addi	a1, a1, 0x370
80205b50: 13 86 0a 70  	addi	a2, s5, 0x700
80205b54: b4 00        	addi	a3, sp, 0x48
80205b56: 97 c0 ff ff  	auipc	ra, 0xffffc
80205b5a: e7 80 c0 97  	jalr	-0x684(ra)
80205b5e: 28 00        	addi	a0, sp, 0x8
80205b60: ca 85        	mv	a1, s2
80205b62: 97 00 00 00  	auipc	ra, 0x0
80205b66: e7 80 80 03  	jalr	0x38(ra) <.text+0x5b9a>
80205b6a: 42 44        	lw	s0, 0x10(sp)
80205b6c: b2 44        	lw	s1, 0xc(sp)
80205b6e: 22 45        	lw	a0, 0x8(sp)
80205b70: b4 00        	addi	a3, sp, 0x48
80205b72: a6 85        	mv	a1, s1
80205b74: 22 86        	mv	a2, s0
80205b76: 97 c0 ff ff  	auipc	ra, 0xffffc
80205b7a: e7 80 c0 95  	jalr	-0x6a4(ra)
80205b7e: 26 85        	mv	a0, s1
80205b80: a2 85        	mv	a1, s0
80205b82: 97 b0 ff ff  	auipc	ra, 0xffffb
80205b86: e7 80 00 6d  	jalr	0x6d0(ra)
80205b8a: 26 45        	lw	a0, 0x48(sp)
80205b8c: b6 45        	lw	a1, 0x4c(sp)
80205b8e: 46 46        	lw	a2, 0x50(sp)
80205b90: a5 46        	li	a3, 0x9
80205b92: 97 00 00 00  	auipc	ra, 0x0
80205b96: e7 80 e0 25  	jalr	0x25e(ra) <.text+0x5df0>
80205b9a: 97 12 00 00  	auipc	t0, 0x1
80205b9e: e7 82 22 81  	jalr	t0, -0x7ee(t0) <.text+0x63ac>
80205ba2: ae 89        	mv	s3, a1
80205ba4: 2a 89        	mv	s2, a0
80205ba6: 02 d2        	sw	zero, 0x24(sp)
80205ba8: 02 d4        	sw	zero, 0x28(sp)
80205baa: 39 65        	lui	a0, 0xe
80205bac: 2a d6        	sw	a0, 0x2c(sp)
80205bae: 1d 45        	li	a0, 0x7
80205bb0: b7 f5 20 80  	lui	a1, 0x8020f
80205bb4: 13 8b 05 b1  	addi	s6, a1, -0x4f0
80205bb8: 13 0a cb fe  	addi	s4, s6, -0x14
80205bbc: b7 f5 20 80  	lui	a1, 0x8020f
80205bc0: 93 8a c5 dc  	addi	s5, a1, -0x234
80205bc4: 93 0b 00 02  	li	s7, 0x20
80205bc8: 2a 8c        	mv	s8, a0
80205bca: 0a 05        	slli	a0, a0, 0x2
80205bcc: b3 dc a9 00  	srl	s9, s3, a0
80205bd0: 52 85        	mv	a0, s4
80205bd2: 81 45        	li	a1, 0x0
80205bd4: 97 b0 ff ff  	auipc	ra, 0xffffb
80205bd8: e7 80 e0 67  	jalr	0x67e(ra)
80205bdc: 93 05 00 02  	li	a1, 0x20
80205be0: 0d 46        	li	a2, 0x3
80205be2: 56 85        	mv	a0, s5
80205be4: 97 e0 ff ff  	auipc	ra, 0xffffe
80205be8: e7 80 00 cb  	jalr	-0x350(ra)
80205bec: 2a 84        	mv	s0, a0
80205bee: 41 45        	li	a0, 0x10
80205bf0: 08 c4        	sw	a0, 0x8(s0)
80205bf2: 23 26 74 01  	sw	s7, 0xc(s0)
80205bf6: 93 05 04 01  	addi	a1, s0, 0x10
80205bfa: 5a 86        	mv	a2, s6
80205bfc: 83 46 06 00  	lbu	a3, 0x0(a2)
80205c00: 23 80 d5 00  	sb	a3, 0x0(a1)
80205c04: 7d 15        	addi	a0, a0, -0x1
80205c06: 85 05        	addi	a1, a1, 0x1
80205c08: 05 06        	addi	a2, a2, 0x1
80205c0a: 6d f9        	bnez	a0, 0x80205bfc <.text+0x5bfc>
80205c0c: 22 85        	mv	a0, s0
80205c0e: 97 e0 ff ff  	auipc	ra, 0xffffe
80205c12: e7 80 20 dc  	jalr	-0x23e(ra)
80205c16: 22 cc        	sw	s0, 0x18(sp)
80205c18: 09 e9        	bnez	a0, 0x80205c2a <.text+0x5c2a>
80205c1a: 0c 44        	lw	a1, 0x8(s0)
80205c1c: 85 05        	addi	a1, a1, 0x1
80205c1e: 30 08        	addi	a2, sp, 0x18
80205c20: 97 00 00 00  	auipc	ra, 0x0
80205c24: e7 80 80 2f  	jalr	0x2f8(ra) <.text+0x5f18>
80205c28: 62 44        	lw	s0, 0x18(sp)
80205c2a: 48 44        	lw	a0, 0xc(s0)
80205c2c: 04 44        	lw	s1, 0x8(s0)
80205c2e: 93 55 15 00  	srli	a1, a0, 0x1
80205c32: 13 8d 14 00  	addi	s10, s1, 0x1
80205c36: 63 fd b4 06  	bgeu	s1, a1, 0x80205cb0 <.text+0x5cb0>
80205c3a: 13 f5 fc 00  	andi	a0, s9, 0xf
80205c3e: 23 24 a4 01  	sw	s10, 0x8(s0)
80205c42: b3 05 94 00  	add	a1, s0, s1
80205c46: 23 88 05 00  	sb	zero, 0x10(a1)
80205c4a: 63 ef a4 06  	bltu	s1, a0, 0x80205cc8 <.text+0x5cc8>
80205c4e: 5a 95        	add	a0, a0, s6
80205c50: 83 04 05 00  	lb	s1, 0x0(a0)
80205c54: 22 85        	mv	a0, s0
80205c56: 97 e0 ff ff  	auipc	ra, 0xffffe
80205c5a: e7 80 60 c4  	jalr	-0x3ba(ra)
80205c5e: 63 c6 04 06  	bltz	s1, 0x80205cca <.text+0x5cca>
80205c62: 13 f5 f4 0f  	andi	a0, s1, 0xff
80205c66: 02 ce        	sw	zero, 0x1c(sp)
80205c68: 2a cc        	sw	a0, 0x18(sp)
80205c6a: 28 08        	addi	a0, sp, 0x18
80205c6c: 85 45        	li	a1, 0x1
80205c6e: 97 f0 ff ff  	auipc	ra, 0xfffff
80205c72: e7 80 80 34  	jalr	0x348(ra)
80205c76: aa 86        	mv	a3, a0
80205c78: 28 00        	addi	a0, sp, 0x8
80205c7a: 2c 08        	addi	a1, sp, 0x18
80205c7c: 05 46        	li	a2, 0x1
80205c7e: 97 f0 ff ff  	auipc	ra, 0xfffff
80205c82: e7 80 c0 5d  	jalr	0x5dc(ra)
80205c86: 42 44        	lw	s0, 0x10(sp)
80205c88: b2 44        	lw	s1, 0xc(sp)
80205c8a: 22 45        	lw	a0, 0x8(sp)
80205c8c: 54 10        	addi	a3, sp, 0x24
80205c8e: a6 85        	mv	a1, s1
80205c90: 22 86        	mv	a2, s0
80205c92: 97 c0 ff ff  	auipc	ra, 0xffffc
80205c96: e7 80 00 84  	jalr	-0x7c0(ra)
80205c9a: 26 85        	mv	a0, s1
80205c9c: a2 85        	mv	a1, s0
80205c9e: 97 b0 ff ff  	auipc	ra, 0xffffb
80205ca2: e7 80 40 5b  	jalr	0x5b4(ra)
80205ca6: 13 05 fc ff  	addi	a0, s8, -0x1
80205caa: e3 1f 0c f0  	bnez	s8, 0x80205bc8 <.text+0x5bc8>
80205cae: 39 a8        	j	0x80205ccc <.text+0x5ccc>
80205cb0: 13 35 25 00  	sltiu	a0, a0, 0x2
80205cb4: 13 45 15 00  	xori	a0, a0, 0x1
80205cb8: 30 08        	addi	a2, sp, 0x18
80205cba: ea 85        	mv	a1, s10
80205cbc: 97 00 00 00  	auipc	ra, 0x0
80205cc0: e7 80 c0 25  	jalr	0x25c(ra) <.text+0x5f18>
80205cc4: 62 44        	lw	s0, 0x18(sp)
80205cc6: 95 bf        	j	0x80205c3a <.text+0x5c3a>
80205cc8: 00 00        	unimp
80205cca: 00 00        	unimp
80205ccc: 32 55        	lw	a0, 0x2c(sp)
80205cce: a2 55        	lw	a1, 0x28(sp)
80205cd0: 12 56        	lw	a2, 0x24(sp)
80205cd2: ca 86        	mv	a3, s2
80205cd4: 88 c6        	sw	a0, 0x8(a3)
80205cd6: cc c2        	sw	a1, 0x4(a3)
80205cd8: 90 c2        	sw	a2, 0x0(a3)
80205cda: 97 02 00 00  	auipc	t0, 0x0
80205cde: e7 82 e2 6e  	jalr	t0, 0x6ee(t0) <.text+0x63c8>
80205ce2: 25 61        	addi	sp, sp, 0x60
80205ce4: 82 80        	ret
80205ce6: 5d 71        	addi	sp, sp, -0x50
80205ce8: 86 c6        	sw	ra, 0x4c(sp)
80205cea: a2 c4        	sw	s0, 0x48(sp)
80205cec: a6 c2        	sw	s1, 0x44(sp)
80205cee: ca c0        	sw	s2, 0x40(sp)
80205cf0: 4e de        	sw	s3, 0x3c(sp)
80205cf2: 52 dc        	sw	s4, 0x38(sp)
80205cf4: 56 da        	sw	s5, 0x34(sp)
80205cf6: 5a d8        	sw	s6, 0x30(sp)
80205cf8: 2e 8b        	mv	s6, a1
80205cfa: 2a 89        	mv	s2, a0
80205cfc: 08 08        	addi	a0, sp, 0x10
80205cfe: 13 06 00 02  	li	a2, 0x20
80205d02: 93 09 01 01  	addi	s3, sp, 0x10
80205d06: 81 45        	li	a1, 0x0
80205d08: 97 00 00 00  	auipc	ra, 0x0
80205d0c: e7 80 20 35  	jalr	0x352(ra) <.text+0x605a>
80205d10: 63 0b 0b 08  	beqz	s6, 0x80205da6 <.text+0x5da6>
80205d14: 01 44        	li	s0, 0x0
80205d16: fd 44        	li	s1, 0x1f
80205d18: 29 4a        	li	s4, 0xa
80205d1a: 93 0a 60 0f  	li	s5, 0xf6
80205d1e: 29 46        	li	a2, 0xa
80205d20: 5a 85        	mv	a0, s6
80205d22: a2 85        	mv	a1, s0
80205d24: 81 46        	li	a3, 0x0
80205d26: 97 00 00 00  	auipc	ra, 0x0
80205d2a: e7 80 20 4f  	jalr	0x4f2(ra) <.text+0x6218>
80205d2e: 33 06 55 03  	mul	a2, a0, s5
80205d32: 5a 96        	add	a2, a2, s6
80205d34: 93 76 f6 0f  	andi	a3, a2, 0xff
80205d38: 63 f5 46 01  	bgeu	a3, s4, 0x80205d42 <.text+0x5d42>
80205d3c: 93 06 06 03  	addi	a3, a2, 0x30
80205d40: 11 a8        	j	0x80205d54 <.text+0x5d54>
80205d42: 59 16        	addi	a2, a2, -0xa
80205d44: 13 76 f6 0f  	andi	a2, a2, 0xff
80205d48: 93 06 16 06  	addi	a3, a2, 0x61
80205d4c: 13 f6 f6 0f  	andi	a2, a3, 0xff
80205d50: 63 19 d6 08  	bne	a2, a3, 0x80205de2 <.text+0x5de2>
80205d54: 33 87 99 00  	add	a4, s3, s1
80205d58: 13 86 f4 ff  	addi	a2, s1, -0x1
80205d5c: 23 00 d7 00  	sb	a3, 0x0(a4)
80205d60: 63 50 96 08  	bge	a2, s1, 0x80205de0 <.text+0x5de0>
80205d64: 93 36 ab 00  	sltiu	a3, s6, 0xa
80205d68: 13 37 14 00  	seqz	a4, s0
80205d6c: f9 8e        	and	a3, a3, a4
80205d6e: b2 84        	mv	s1, a2
80205d70: 2a 8b        	mv	s6, a0
80205d72: 2e 84        	mv	s0, a1
80205d74: cd d6        	beqz	a3, 0x80205d1e <.text+0x5d1e>
80205d76: 93 05 16 00  	addi	a1, a2, 0x1
80205d7a: b3 26 b0 00  	sgtz	a3, a1
80205d7e: 79 45        	li	a0, 0x1e
80205d80: 11 8d        	sub	a0, a0, a2
80205d82: 13 26 f5 01  	slti	a2, a0, 0x1f
80205d86: 63 9f c6 04  	bne	a3, a2, 0x80205de4 <.text+0x5de4>
80205d8a: 13 04 15 00  	addi	s0, a0, 0x1
80205d8e: 63 4c a4 04  	blt	s0, a0, 0x80205de6 <.text+0x5de6>
80205d92: 63 4b 04 04  	bltz	s0, 0x80205de8 <.text+0x5de8>
80205d96: 08 08        	addi	a0, sp, 0x10
80205d98: aa 95        	add	a1, a1, a0
80205d9a: 22 86        	mv	a2, s0
80205d9c: 97 00 00 00  	auipc	ra, 0x0
80205da0: e7 80 c0 2e  	jalr	0x2ec(ra) <.text+0x6088>
80205da4: 31 a0        	j	0x80205db0 <.text+0x5db0>
80205da6: 13 05 00 03  	li	a0, 0x30
80205daa: 23 08 a1 00  	sb	a0, 0x10(sp)
80205dae: 05 44        	li	s0, 0x1
80205db0: 0a 85        	mv	a0, sp
80205db2: 0c 08        	addi	a1, sp, 0x10
80205db4: 22 86        	mv	a2, s0
80205db6: 97 b0 ff ff  	auipc	ra, 0xffffb
80205dba: e7 80 c0 5d  	jalr	0x5dc(ra)
80205dbe: 22 45        	lw	a0, 0x8(sp)
80205dc0: 92 45        	lw	a1, 0x4(sp)
80205dc2: 02 46        	lw	a2, 0x0(sp)
80205dc4: ca 86        	mv	a3, s2
80205dc6: 88 c6        	sw	a0, 0x8(a3)
80205dc8: cc c2        	sw	a1, 0x4(a3)
80205dca: 90 c2        	sw	a2, 0x0(a3)
80205dcc: b6 40        	lw	ra, 0x4c(sp)
80205dce: 26 44        	lw	s0, 0x48(sp)
80205dd0: 96 44        	lw	s1, 0x44(sp)
80205dd2: 06 49        	lw	s2, 0x40(sp)
80205dd4: f2 59        	lw	s3, 0x3c(sp)
80205dd6: 62 5a        	lw	s4, 0x38(sp)
80205dd8: d2 5a        	lw	s5, 0x34(sp)
80205dda: 42 5b        	lw	s6, 0x30(sp)
80205ddc: 61 61        	addi	sp, sp, 0x50
80205dde: 82 80        	ret
		...
80205de8: 97 00 00 00  	auipc	ra, 0x0
80205dec: e7 80 60 a6  	jalr	-0x59a(ra) <.text+0x584e>
80205df0: 1d 71        	addi	sp, sp, -0x60
80205df2: 86 ce        	sw	ra, 0x5c(sp)
80205df4: a2 cc        	sw	s0, 0x58(sp)
80205df6: a6 ca        	sw	s1, 0x54(sp)
80205df8: ca c8        	sw	s2, 0x50(sp)
80205dfa: ce c6        	sw	s3, 0x4c(sp)
80205dfc: d2 c4        	sw	s4, 0x48(sp)
80205dfe: d6 c2        	sw	s5, 0x44(sp)
80205e00: b6 84        	mv	s1, a3
80205e02: 32 89        	mv	s2, a2
80205e04: ae 89        	mv	s3, a1
80205e06: 2a 8a        	mv	s4, a0
80205e08: 02 d2        	sw	zero, 0x24(sp)
80205e0a: 02 d4        	sw	zero, 0x28(sp)
80205e0c: b9 6a        	lui	s5, 0xe
80205e0e: 56 d6        	sw	s5, 0x2c(sp)
80205e10: 41 45        	li	a0, 0x10
80205e12: 4c 10        	addi	a1, sp, 0x24
80205e14: 97 b0 ff ff  	auipc	ra, 0xffffb
80205e18: e7 80 00 1a  	jalr	0x1a0(ra)
80205e1c: 22 55        	lw	a0, 0x28(sp)
80205e1e: 83 45 c1 02  	lbu	a1, 0x2c(sp)
80205e22: 97 b0 ff ff  	auipc	ra, 0xffffb
80205e26: e7 80 00 43  	jalr	0x430(ra)
80205e2a: 37 55 41 4e  	lui	a0, 0x4e415
80205e2e: 13 05 b5 05  	addi	a0, a0, 0x5b
80205e32: 2a cc        	sw	a0, 0x18(sp)
80205e34: 37 45 3a 00  	lui	a0, 0x3a4
80205e38: 13 05 95 34  	addi	a0, a0, 0x349
80205e3c: 2a ce        	sw	a0, 0x1c(sp)
80205e3e: 13 85 0a 70  	addi	a0, s5, 0x700
80205e42: 2a d0        	sw	a0, 0x20(sp)
80205e44: 37 f5 20 80  	lui	a0, 0x8020f
80205e48: 93 05 c5 9f  	addi	a1, a0, -0x604
80205e4c: 5d 45        	li	a0, 0x17
80205e4e: 37 86 00 d0  	lui	a2, 0xd0008
80205e52: 34 08        	addi	a3, sp, 0x18
80205e54: 97 b0 ff ff  	auipc	ra, 0xffffb
80205e58: e7 80 e0 67  	jalr	0x67e(ra)
80205e5c: 13 86 0a 10  	addi	a2, s5, 0x100
80205e60: 13 05 a0 03  	li	a0, 0x3a
80205e64: 34 08        	addi	a3, sp, 0x18
80205e66: 81 45        	li	a1, 0x0
80205e68: 97 b0 ff ff  	auipc	ra, 0xffffb
80205e6c: e7 80 a0 66  	jalr	0x66a(ra)
80205e70: 48 10        	addi	a0, sp, 0x24
80205e72: 13 06 00 02  	li	a2, 0x20
80205e76: 81 45        	li	a1, 0x0
80205e78: 97 00 00 00  	auipc	ra, 0x0
80205e7c: e7 80 20 1e  	jalr	0x1e2(ra) <.text+0x605a>
80205e80: 48 10        	addi	a0, sp, 0x24
80205e82: 93 05 00 02  	li	a1, 0x20
80205e86: 29 46        	li	a2, 0xa
80205e88: 26 87        	mv	a4, s1
80205e8a: 81 47        	li	a5, 0x0
80205e8c: 97 b0 ff ff  	auipc	ra, 0xffffb
80205e90: e7 80 c0 3d  	jalr	0x3dc(ra)
80205e94: 2a 86        	mv	a2, a0
80205e96: 28 00        	addi	a0, sp, 0x8
80205e98: 4c 10        	addi	a1, sp, 0x24
80205e9a: 97 b0 ff ff  	auipc	ra, 0xffffb
80205e9e: e7 80 80 4f  	jalr	0x4f8(ra)
80205ea2: c2 44        	lw	s1, 0x10(sp)
80205ea4: 32 44        	lw	s0, 0xc(sp)
80205ea6: 22 45        	lw	a0, 0x8(sp)
80205ea8: 34 08        	addi	a3, sp, 0x18
80205eaa: a2 85        	mv	a1, s0
80205eac: 26 86        	mv	a2, s1
80205eae: 97 b0 ff ff  	auipc	ra, 0xffffb
80205eb2: e7 80 40 62  	jalr	0x624(ra)
80205eb6: 22 85        	mv	a0, s0
80205eb8: a6 85        	mv	a1, s1
80205eba: 97 b0 ff ff  	auipc	ra, 0xffffb
80205ebe: e7 80 80 39  	jalr	0x398(ra)
80205ec2: 09 65        	lui	a0, 0x2
80205ec4: 13 05 d5 05  	addi	a0, a0, 0x5d
80205ec8: 13 86 0a 20  	addi	a2, s5, 0x200
80205ecc: 34 08        	addi	a3, sp, 0x18
80205ece: 81 45        	li	a1, 0x0
80205ed0: 97 b0 ff ff  	auipc	ra, 0xffffb
80205ed4: e7 80 20 60  	jalr	0x602(ra)
80205ed8: 34 08        	addi	a3, sp, 0x18
80205eda: 52 85        	mv	a0, s4
80205edc: ce 85        	mv	a1, s3
80205ede: 4a 86        	mv	a2, s2
80205ee0: 97 b0 ff ff  	auipc	ra, 0xffffb
80205ee4: e7 80 20 5f  	jalr	0x5f2(ra)
80205ee8: 62 45        	lw	a0, 0x18(sp)
80205eea: 83 45 11 02  	lbu	a1, 0x21(sp)
80205eee: 03 44 01 02  	lbu	s0, 0x20(sp)
80205ef2: 03 16 21 02  	lh	a2, 0x22(sp)
80205ef6: f2 44        	lw	s1, 0x1c(sp)
80205ef8: a2 05        	slli	a1, a1, 0x8
80205efa: c1 8d        	or	a1, a1, s0
80205efc: 42 06        	slli	a2, a2, 0x10
80205efe: 4d 8e        	or	a2, a2, a1
80205f00: a6 85        	mv	a1, s1
80205f02: 97 b0 ff ff  	auipc	ra, 0xffffb
80205f06: e7 80 60 f2  	jalr	-0xda(ra)
80205f0a: 26 85        	mv	a0, s1
80205f0c: a2 85        	mv	a1, s0
80205f0e: 97 b0 ff ff  	auipc	ra, 0xffffb
80205f12: e7 80 40 34  	jalr	0x344(ra)
80205f16: 01 a0        	j	0x80205f16 <.text+0x5f16>
80205f18: 41 11        	addi	sp, sp, -0x10
80205f1a: 06 c6        	sw	ra, 0xc(sp)
80205f1c: 22 c4        	sw	s0, 0x8(sp)
80205f1e: 32 84        	mv	s0, a2
80205f20: 10 42        	lw	a2, 0x0(a2)
80205f22: 97 00 00 00  	auipc	ra, 0x0
80205f26: e7 80 20 01  	jalr	0x12(ra) <.text+0x5f34>
80205f2a: 08 c0        	sw	a0, 0x0(s0)
80205f2c: b2 40        	lw	ra, 0xc(sp)
80205f2e: 22 44        	lw	s0, 0x8(sp)
80205f30: 41 01        	addi	sp, sp, 0x10
80205f32: 82 80        	ret
80205f34: 97 02 00 00  	auipc	t0, 0x0
80205f38: e7 82 42 52  	jalr	t0, 0x524(t0) <.text+0x6458>
80205f3c: b2 89        	mv	s3, a2
80205f3e: 50 46        	lw	a2, 0xc(a2)
80205f40: 93 54 16 00  	srli	s1, a2, 0x1
80205f44: 2a 89        	mv	s2, a0
80205f46: 63 dc b4 00  	bge	s1, a1, 0x80205f5e <.text+0x5f5e>
80205f4a: 37 05 00 40  	lui	a0, 0x40000
80205f4e: 26 95        	add	a0, a0, s1
80205f50: 63 4c 05 0a  	bltz	a0, 0x80206008 <.text+0x6008>
80205f54: 93 74 e6 ff  	andi	s1, a2, -0x2
80205f58: 63 c3 95 00  	blt	a1, s1, 0x80205f5e <.text+0x5f5e>
80205f5c: ae 84        	mv	s1, a1
80205f5e: 03 a4 89 00  	lw	s0, 0x8(s3)
80205f62: 63 43 94 00  	blt	s0, s1, 0x80205f68 <.text+0x5f68>
80205f66: a2 84        	mv	s1, s0
80205f68: 93 85 04 01  	addi	a1, s1, 0x10
80205f6c: 37 f5 20 80  	lui	a0, 0x8020f
80205f70: 13 05 c5 dc  	addi	a0, a0, -0x234
80205f74: 0d 46        	li	a2, 0x3
80205f76: 97 e0 ff ff  	auipc	ra, 0xffffe
80205f7a: e7 80 e0 91  	jalr	-0x6e2(ra)
80205f7e: 2a 8a        	mv	s4, a0
80205f80: 86 04        	slli	s1, s1, 0x1
80205f82: 00 c5        	sw	s0, 0x8(a0)
80205f84: 44 c5        	sw	s1, 0xc(a0)
80205f86: 41 05        	addi	a0, a0, 0x10
80205f88: 13 76 19 00  	andi	a2, s2, 0x1
80205f8c: 93 85 09 01  	addi	a1, s3, 0x10
80205f90: 0d ce        	beqz	a2, 0x80205fca <.text+0x5fca>
80205f92: 33 36 3a 01  	sltu	a2, s4, s3
80205f96: 13 46 f6 ff  	not	a2, a2
80205f9a: b3 86 85 00  	add	a3, a1, s0
80205f9e: b3 36 d5 00  	sltu	a3, a0, a3
80205fa2: 75 8e        	and	a2, a2, a3
80205fa4: 05 ce        	beqz	a2, 0x80205fdc <.text+0x5fdc>
80205fa6: 63 04 3a 05  	beq	s4, s3, 0x80205fee <.text+0x5fee>
80205faa: 31 c0        	beqz	s0, 0x80205fee <.text+0x5fee>
80205fac: 13 05 fa 00  	addi	a0, s4, 0xf
80205fb0: 93 85 f9 00  	addi	a1, s3, 0xf
80205fb4: 33 86 85 00  	add	a2, a1, s0
80205fb8: 03 46 06 00  	lbu	a2, 0x0(a2)
80205fbc: b3 06 85 00  	add	a3, a0, s0
80205fc0: 7d 14        	addi	s0, s0, -0x1
80205fc2: 23 80 c6 00  	sb	a2, 0x0(a3)
80205fc6: 7d f4        	bnez	s0, 0x80205fb4 <.text+0x5fb4>
80205fc8: 1d a0        	j	0x80205fee <.text+0x5fee>
80205fca: 05 c4        	beqz	s0, 0x80205ff2 <.text+0x5ff2>
80205fcc: 03 c6 05 00  	lbu	a2, 0x0(a1)
80205fd0: 23 00 c5 00  	sb	a2, 0x0(a0)
80205fd4: 7d 14        	addi	s0, s0, -0x1
80205fd6: 05 05        	addi	a0, a0, 0x1
80205fd8: 85 05        	addi	a1, a1, 0x1
80205fda: c5 bf        	j	0x80205fca <.text+0x5fca>
80205fdc: 09 c8        	beqz	s0, 0x80205fee <.text+0x5fee>
80205fde: 03 c6 05 00  	lbu	a2, 0x0(a1)
80205fe2: 23 00 c5 00  	sb	a2, 0x0(a0)
80205fe6: 7d 14        	addi	s0, s0, -0x1
80205fe8: 05 05        	addi	a0, a0, 0x1
80205fea: 85 05        	addi	a1, a1, 0x1
80205fec: 6d f8        	bnez	s0, 0x80205fde <.text+0x5fde>
80205fee: 23 a4 09 00  	sw	zero, 0x8(s3)
80205ff2: 4e 85        	mv	a0, s3
80205ff4: 97 e0 ff ff  	auipc	ra, 0xffffe
80205ff8: e7 80 80 8a  	jalr	-0x758(ra)
80205ffc: 52 85        	mv	a0, s4
80205ffe: 97 02 00 00  	auipc	t0, 0x0
80206002: e7 82 a2 44  	jalr	t0, 0x44a(t0) <.text+0x6448>
80206006: 82 80        	ret
80206008: 00 00        	unimp
8020600a: 17 e3 ff ff  	auipc	t1, 0xffffe
8020600e: 67 00 a3 ae  	jr	-0x516(t1)
80206012: 01 45        	li	a0, 0x0
80206014: 82 80        	ret
80206016: 97 00 00 00  	auipc	ra, 0x0
8020601a: e7 80 80 00  	jalr	0x8(ra) <.text+0x601e>
8020601e: 41 11        	addi	sp, sp, -0x10
80206020: 06 c6        	sw	ra, 0xc(sp)
80206022: 97 b0 ff ff  	auipc	ra, 0xffffb
80206026: e7 80 a0 a0  	jalr	-0x5f6(ra)
8020602a: 97 a0 ff ff  	auipc	ra, 0xffffa
8020602e: e7 80 c0 6d  	jalr	0x6dc(ra)
80206032: 97 b0 ff ff  	auipc	ra, 0xffffb
80206036: e7 80 40 aa  	jalr	-0x55c(ra)
8020603a: 97 a0 ff ff  	auipc	ra, 0xffffa
8020603e: e7 80 60 63  	jalr	0x636(ra)
80206042: 37 f5 20 80  	lui	a0, 0x8020f
80206046: 93 05 c5 95  	addi	a1, a0, -0x6a4
8020604a: 35 45        	li	a0, 0xd
8020604c: 37 86 00 d0  	lui	a2, 0xd0008
80206050: dd 46        	li	a3, 0x17
80206052: 97 00 00 00  	auipc	ra, 0x0
80206056: e7 80 e0 d9  	jalr	-0x262(ra) <.text+0x5df0>
8020605a: 17 b3 ff ff  	auipc	t1, 0xffffb
8020605e: 67 00 63 a5  	jr	-0x5aa(t1)
80206062: 17 03 00 00  	auipc	t1, 0x0
80206066: 67 00 83 00  	jr	0x8(t1) <.text+0x606a>
8020606a: 09 cd        	beqz	a0, 0x80206084 <.text+0x6084>
8020606c: 81 cd        	beqz	a1, 0x80206084 <.text+0x6084>
8020606e: 63 4c 06 00  	bltz	a2, 0x80206086 <.text+0x6086>
80206072: 09 ca        	beqz	a2, 0x80206084 <.text+0x6084>
80206074: 83 c6 05 00  	lbu	a3, 0x0(a1)
80206078: 23 00 d5 00  	sb	a3, 0x0(a0)
8020607c: 05 05        	addi	a0, a0, 0x1
8020607e: 7d 16        	addi	a2, a2, -0x1
80206080: 85 05        	addi	a1, a1, 0x1
80206082: 6d fa        	bnez	a2, 0x80206074 <.text+0x6074>
80206084: 82 80        	ret
80206086: 00 00        	unimp
80206088: 17 03 00 00  	auipc	t1, 0x0
8020608c: 67 00 83 00  	jr	0x8(t1) <.text+0x6090>
80206090: 29 cd        	beqz	a0, 0x802060ea <.text+0x60ea>
80206092: a1 cd        	beqz	a1, 0x802060ea <.text+0x60ea>
80206094: 63 f7 a5 02  	bgeu	a1, a0, 0x802060c2 <.text+0x60c2>
80206098: b3 86 c5 00  	add	a3, a1, a2
8020609c: 63 73 d5 02  	bgeu	a0, a3, 0x802060c2 <.text+0x60c2>
802060a0: 63 49 06 04  	bltz	a2, 0x802060f2 <.text+0x60f2>
802060a4: 21 c6        	beqz	a2, 0x802060ec <.text+0x60ec>
802060a6: b3 06 c5 00  	add	a3, a0, a2
802060aa: fd 16        	addi	a3, a3, -0x1
802060ac: fd 15        	addi	a1, a1, -0x1
802060ae: 33 87 c5 00  	add	a4, a1, a2
802060b2: 03 47 07 00  	lbu	a4, 0x0(a4)
802060b6: 23 80 e6 00  	sb	a4, 0x0(a3)
802060ba: 7d 16        	addi	a2, a2, -0x1
802060bc: fd 16        	addi	a3, a3, -0x1
802060be: 65 fa        	bnez	a2, 0x802060ae <.text+0x60ae>
802060c0: 2d a0        	j	0x802060ea <.text+0x60ea>
802060c2: 63 47 06 02  	bltz	a2, 0x802060f0 <.text+0x60f0>
802060c6: 15 c2        	beqz	a2, 0x802060ea <.text+0x60ea>
802060c8: 83 c6 05 00  	lbu	a3, 0x0(a1)
802060cc: 7d 16        	addi	a2, a2, -0x1
802060ce: 23 00 d5 00  	sb	a3, 0x0(a0)
802060d2: 01 ce        	beqz	a2, 0x802060ea <.text+0x60ea>
802060d4: 93 06 15 00  	addi	a3, a0, 0x1
802060d8: 85 05        	addi	a1, a1, 0x1
802060da: 03 c7 05 00  	lbu	a4, 0x0(a1)
802060de: 23 80 e6 00  	sb	a4, 0x0(a3)
802060e2: 7d 16        	addi	a2, a2, -0x1
802060e4: 85 06        	addi	a3, a3, 0x1
802060e6: 85 05        	addi	a1, a1, 0x1
802060e8: 6d fa        	bnez	a2, 0x802060da <.text+0x60da>
802060ea: 82 80        	ret
802060ec: 32 95        	add	a0, a0, a2
802060ee: 82 80        	ret
802060f0: 00 00        	unimp
802060f2: 00 00        	unimp
802060f4: 17 03 00 00  	auipc	t1, 0x0
802060f8: 67 00 83 00  	jr	0x8(t1) <.text+0x60fc>
802060fc: 41 11        	addi	sp, sp, -0x10
802060fe: 06 c6        	sw	ra, 0xc(sp)
80206100: 22 c4        	sw	s0, 0x8(sp)
80206102: 2a 84        	mv	s0, a0
80206104: 85 48        	li	a7, 0x1
80206106: 97 02 00 00  	auipc	t0, 0x0
8020610a: e7 82 e2 2e  	jalr	t0, 0x2ee(t0) <.text+0x63f4>
8020610e: 97 a0 ff ff  	auipc	ra, 0xffffa
80206112: e7 80 60 55  	jalr	0x556(ra)
80206116: 22 85        	mv	a0, s0
80206118: b2 40        	lw	ra, 0xc(sp)
8020611a: 22 44        	lw	s0, 0x8(sp)
8020611c: 41 01        	addi	sp, sp, 0x10
8020611e: 82 80        	ret
80206120: 17 03 00 00  	auipc	t1, 0x0
80206124: 67 00 83 00  	jr	0x8(t1) <.text+0x6128>
80206128: 93 06 00 02  	li	a3, 0x20
8020612c: 63 5b d6 00  	bge	a2, a3, 0x80206142 <.text+0x6142>
80206130: 05 ca        	beqz	a2, 0x80206160 <.text+0x6160>
80206132: 93 06 f0 fd  	li	a3, -0x21
80206136: 63 c7 c6 02  	blt	a3, a2, 0x80206164 <.text+0x6164>
8020613a: fd 85        	srai	a1, a1, 0x1f
8020613c: 63 5a 05 02  	bgez	a0, 0x80206170 <.text+0x6170>
80206140: b5 a8        	j	0x802061bc <.text+0x61bc>
80206142: 63 42 05 06  	bltz	a0, 0x802061a6 <.text+0x61a6>
80206146: 93 75 06 fe  	andi	a1, a2, -0x20
8020614a: 81 15        	addi	a1, a1, -0x20
8020614c: b3 35 b0 00  	snez	a1, a1
80206150: 33 15 c5 00  	sll	a0, a0, a2
80206154: fd 15        	addi	a1, a1, -0x1
80206156: b3 f6 a5 00  	and	a3, a1, a0
8020615a: 93 d5 f6 41  	srai	a1, a3, 0x1f
8020615e: 91 a0        	j	0x802061a2 <.text+0x61a2>
80206160: aa 86        	mv	a3, a0
80206162: 81 a0        	j	0x802061a2 <.text+0x61a2>
80206164: 63 43 06 04  	bltz	a2, 0x802061aa <.text+0x61aa>
80206168: b3 95 c5 00  	sll	a1, a1, a2
8020616c: 63 48 05 04  	bltz	a0, 0x802061bc <.text+0x61bc>
80206170: b3 26 c0 00  	sgtz	a3, a2
80206174: 13 07 00 02  	li	a4, 0x20
80206178: 11 8f        	sub	a4, a4, a2
8020617a: 93 27 07 02  	slti	a5, a4, 0x20
8020617e: 63 95 f6 02  	bne	a3, a5, 0x802061a8 <.text+0x61a8>
80206182: 81 46        	li	a3, 0x0
80206184: 93 37 07 02  	sltiu	a5, a4, 0x20
80206188: 33 57 e5 00  	srl	a4, a0, a4
8020618c: b3 07 f0 40  	neg	a5, a5
80206190: 7d 8f        	and	a4, a4, a5
80206192: 81 57        	li	a5, -0x20
80206194: d9 8d        	or	a1, a1, a4
80206196: 63 46 f6 00  	blt	a2, a5, 0x802061a2 <.text+0x61a2>
8020619a: 63 42 06 02  	bltz	a2, 0x802061be <.text+0x61be>
8020619e: b3 16 c5 00  	sll	a3, a0, a2
802061a2: 36 85        	mv	a0, a3
802061a4: 82 80        	ret
802061a6: 00 00        	unimp
802061a8: 00 00        	unimp
802061aa: 81 56        	li	a3, -0x20
802061ac: e3 f7 c6 f8  	bgeu	a3, a2, 0x8020613a <.text+0x613a>
802061b0: b3 06 c0 40  	neg	a3, a2
802061b4: b3 d5 d5 40  	sra	a1, a1, a3
802061b8: e3 5c 05 fa  	bgez	a0, 0x80206170 <.text+0x6170>
802061bc: 00 00        	unimp
802061be: 85 56        	li	a3, -0x1f
802061c0: 63 67 d6 00  	bltu	a2, a3, 0x802061ce <.text+0x61ce>
802061c4: 33 06 c0 40  	neg	a2, a2
802061c8: b3 56 c5 00  	srl	a3, a0, a2
802061cc: d9 bf        	j	0x802061a2 <.text+0x61a2>
802061ce: 81 46        	li	a3, 0x0
802061d0: c9 bf        	j	0x802061a2 <.text+0x61a2>
802061d2: 17 03 00 00  	auipc	t1, 0x0
802061d6: 67 00 83 00  	jr	0x8(t1) <.text+0x61da>
802061da: 41 11        	addi	sp, sp, -0x10
802061dc: 06 c6        	sw	ra, 0xc(sp)
802061de: 93 06 06 fc  	addi	a3, a2, -0x40
802061e2: 13 07 00 f8  	li	a4, -0x80
802061e6: 63 f5 e6 00  	bgeu	a3, a4, 0x802061f0 <.text+0x61f0>
802061ea: 01 45        	li	a0, 0x0
802061ec: 81 45        	li	a1, 0x0
802061ee: 39 a0        	j	0x802061fc <.text+0x61fc>
802061f0: 63 49 06 00  	bltz	a2, 0x80206202 <.text+0x6202>
802061f4: 97 00 00 00  	auipc	ra, 0x0
802061f8: e7 80 e0 fd  	jalr	-0x22(ra) <.text+0x61d2>
802061fc: b2 40        	lw	ra, 0xc(sp)
802061fe: 41 01        	addi	sp, sp, 0x10
80206200: 82 80        	ret
80206202: 93 06 10 fc  	li	a3, -0x3f
80206206: e3 62 d6 fe  	bltu	a2, a3, 0x802061ea <.text+0x61ea>
8020620a: 33 06 c0 40  	neg	a2, a2
8020620e: 97 00 00 00  	auipc	ra, 0x0
80206212: e7 80 20 f1  	jalr	-0xee(ra) <.text+0x6120>
80206216: dd b7        	j	0x802061fc <.text+0x61fc>
80206218: 17 03 00 00  	auipc	t1, 0x0
8020621c: 67 00 83 00  	jr	0x8(t1) <.text+0x6220>
80206220: 33 68 d6 00  	or	a6, a2, a3
80206224: 63 0f 08 04  	beqz	a6, 0x80206282 <.text+0x6282>
80206228: 2e 87        	mv	a4, a1
8020622a: 2a 83        	mv	t1, a0
8020622c: 63 8e d5 04  	beq	a1, a3, 0x80206288 <.text+0x6288>
80206230: 33 35 d7 00  	sltu	a0, a4, a3
80206234: 29 ed        	bnez	a0, 0x8020628e <.text+0x628e>
80206236: 81 45        	li	a1, 0x0
80206238: 33 38 c3 00  	sltu	a6, t1, a2
8020623c: b3 07 d7 40  	sub	a5, a4, a3
80206240: 33 88 07 41  	sub	a6, a5, a6
80206244: b3 08 c3 40  	sub	a7, t1, a2
80206248: 63 05 e8 00  	beq	a6, a4, 0x80206252 <.text+0x6252>
8020624c: 33 37 07 01  	sltu	a4, a4, a6
80206250: 19 a0        	j	0x80206256 <.text+0x6256>
80206252: 33 37 13 01  	sltu	a4, t1, a7
80206256: 1d ef        	bnez	a4, 0x80206294 <.text+0x6294>
80206258: 05 05        	addi	a0, a0, 0x1
8020625a: 13 37 15 00  	seqz	a4, a0
8020625e: ba 95        	add	a1, a1, a4
80206260: 33 67 b5 00  	or	a4, a0, a1
80206264: 0d cb        	beqz	a4, 0x80206296 <.text+0x6296>
80206266: 63 05 d8 00  	beq	a6, a3, 0x80206270 <.text+0x6270>
8020626a: 33 37 d8 00  	sltu	a4, a6, a3
8020626e: 19 a0        	j	0x80206274 <.text+0x6274>
80206270: 33 b7 c8 00  	sltu	a4, a7, a2
80206274: 93 42 17 00  	xori	t0, a4, 0x1
80206278: 46 83        	mv	t1, a7
8020627a: 42 87        	mv	a4, a6
8020627c: e3 9e 02 fa  	bnez	t0, 0x80206238 <.text+0x6238>
80206280: 82 80        	ret
80206282: 7d 55        	li	a0, -0x1
80206284: fd 55        	li	a1, -0x1
80206286: 82 80        	ret
80206288: 33 35 c3 00  	sltu	a0, t1, a2
8020628c: 4d d5        	beqz	a0, 0x80206236 <.text+0x6236>
8020628e: 01 45        	li	a0, 0x0
80206290: 81 45        	li	a1, 0x0
80206292: 82 80        	ret
80206294: 00 00        	unimp
80206296: 00 00        	unimp
80206298: 17 03 00 00  	auipc	t1, 0x0
8020629c: 67 00 83 00  	jr	0x8(t1) <.text+0x62a0>
802062a0: 33 68 d6 00  	or	a6, a2, a3
802062a4: 63 06 08 04  	beqz	a6, 0x802062f0 <.text+0x62f0>
802062a8: 2e 87        	mv	a4, a1
802062aa: aa 87        	mv	a5, a0
802062ac: 63 85 d5 04  	beq	a1, a3, 0x802062f6 <.text+0x62f6>
802062b0: 33 35 d7 00  	sltu	a0, a4, a3
802062b4: 21 e5        	bnez	a0, 0x802062fc <.text+0x62fc>
802062b6: 33 b5 c7 00  	sltu	a0, a5, a2
802062ba: b3 05 d7 40  	sub	a1, a4, a3
802062be: 89 8d        	sub	a1, a1, a0
802062c0: 33 85 c7 40  	sub	a0, a5, a2
802062c4: 63 85 e5 00  	beq	a1, a4, 0x802062ce <.text+0x62ce>
802062c8: 33 37 b7 00  	sltu	a4, a4, a1
802062cc: 19 a0        	j	0x802062d2 <.text+0x62d2>
802062ce: 33 b7 a7 00  	sltu	a4, a5, a0
802062d2: 05 eb        	bnez	a4, 0x80206302 <.text+0x6302>
802062d4: 63 85 d5 00  	beq	a1, a3, 0x802062de <.text+0x62de>
802062d8: 33 b7 d5 00  	sltu	a4, a1, a3
802062dc: 19 a0        	j	0x802062e2 <.text+0x62e2>
802062de: 33 37 c5 00  	sltu	a4, a0, a2
802062e2: 13 48 17 00  	xori	a6, a4, 0x1
802062e6: aa 87        	mv	a5, a0
802062e8: 2e 87        	mv	a4, a1
802062ea: e3 16 08 fc  	bnez	a6, 0x802062b6 <.text+0x62b6>
802062ee: 82 80        	ret
802062f0: 01 45        	li	a0, 0x0
802062f2: 81 45        	li	a1, 0x0
802062f4: 82 80        	ret
802062f6: 33 b5 c7 00  	sltu	a0, a5, a2
802062fa: 55 dd        	beqz	a0, 0x802062b6 <.text+0x62b6>
802062fc: 3e 85        	mv	a0, a5
802062fe: ba 85        	mv	a1, a4
80206300: 82 80        	ret
80206302: 00 00        	unimp
80206304: b6 40        	lw	ra, 0x4c(sp)
80206306: 26 44        	lw	s0, 0x48(sp)
80206308: 96 44        	lw	s1, 0x44(sp)
8020630a: 06 49        	lw	s2, 0x40(sp)
8020630c: f2 59        	lw	s3, 0x3c(sp)
8020630e: 62 5a        	lw	s4, 0x38(sp)
80206310: d2 5a        	lw	s5, 0x34(sp)
80206312: 42 5b        	lw	s6, 0x30(sp)
80206314: b2 5b        	lw	s7, 0x2c(sp)
80206316: 22 5c        	lw	s8, 0x28(sp)
80206318: 92 5c        	lw	s9, 0x24(sp)
8020631a: 02 5d        	lw	s10, 0x20(sp)
8020631c: f2 4d        	lw	s11, 0x1c(sp)
8020631e: 61 61        	addi	sp, sp, 0x50
80206320: 82 82        	jr	t0
80206322: 5d 71        	addi	sp, sp, -0x50
80206324: 86 c6        	sw	ra, 0x4c(sp)
80206326: a2 c4        	sw	s0, 0x48(sp)
80206328: a6 c2        	sw	s1, 0x44(sp)
8020632a: ca c0        	sw	s2, 0x40(sp)
8020632c: 4e de        	sw	s3, 0x3c(sp)
8020632e: 52 dc        	sw	s4, 0x38(sp)
80206330: 56 da        	sw	s5, 0x34(sp)
80206332: 5a d8        	sw	s6, 0x30(sp)
80206334: 5e d6        	sw	s7, 0x2c(sp)
80206336: 62 d4        	sw	s8, 0x28(sp)
80206338: 66 d2        	sw	s9, 0x24(sp)
8020633a: 6a d0        	sw	s10, 0x20(sp)
8020633c: 6e ce        	sw	s11, 0x1c(sp)
8020633e: 82 82        	jr	t0
80206340: 79 71        	addi	sp, sp, -0x30
80206342: 06 d6        	sw	ra, 0x2c(sp)
80206344: 22 d4        	sw	s0, 0x28(sp)
80206346: 26 d2        	sw	s1, 0x24(sp)
80206348: 4a d0        	sw	s2, 0x20(sp)
8020634a: 4e ce        	sw	s3, 0x1c(sp)
8020634c: 52 cc        	sw	s4, 0x18(sp)
8020634e: 56 ca        	sw	s5, 0x14(sp)
80206350: 5a c8        	sw	s6, 0x10(sp)
80206352: 5e c6        	sw	s7, 0xc(sp)
80206354: 62 c4        	sw	s8, 0x8(sp)
80206356: 82 82        	jr	t0
80206358: b2 50        	lw	ra, 0x2c(sp)
8020635a: 22 54        	lw	s0, 0x28(sp)
8020635c: 92 54        	lw	s1, 0x24(sp)
8020635e: 02 59        	lw	s2, 0x20(sp)
80206360: f2 49        	lw	s3, 0x1c(sp)
80206362: 62 4a        	lw	s4, 0x18(sp)
80206364: d2 4a        	lw	s5, 0x14(sp)
80206366: 42 4b        	lw	s6, 0x10(sp)
80206368: b2 4b        	lw	s7, 0xc(sp)
8020636a: 22 4c        	lw	s8, 0x8(sp)
8020636c: 45 61        	addi	sp, sp, 0x30
8020636e: 82 82        	jr	t0
80206370: 39 71        	addi	sp, sp, -0x40
80206372: 06 de        	sw	ra, 0x3c(sp)
80206374: 22 dc        	sw	s0, 0x38(sp)
80206376: 26 da        	sw	s1, 0x34(sp)
80206378: 4a d8        	sw	s2, 0x30(sp)
8020637a: 4e d6        	sw	s3, 0x2c(sp)
8020637c: 52 d4        	sw	s4, 0x28(sp)
8020637e: 56 d2        	sw	s5, 0x24(sp)
80206380: 5a d0        	sw	s6, 0x20(sp)
80206382: 5e ce        	sw	s7, 0x1c(sp)
80206384: 62 cc        	sw	s8, 0x18(sp)
80206386: 66 ca        	sw	s9, 0x14(sp)
80206388: 6a c8        	sw	s10, 0x10(sp)
8020638a: 6e c6        	sw	s11, 0xc(sp)
8020638c: 82 82        	jr	t0
8020638e: f2 50        	lw	ra, 0x3c(sp)
80206390: 62 54        	lw	s0, 0x38(sp)
80206392: d2 54        	lw	s1, 0x34(sp)
80206394: 42 59        	lw	s2, 0x30(sp)
80206396: b2 59        	lw	s3, 0x2c(sp)
80206398: 22 5a        	lw	s4, 0x28(sp)
8020639a: 92 5a        	lw	s5, 0x24(sp)
8020639c: 02 5b        	lw	s6, 0x20(sp)
8020639e: f2 4b        	lw	s7, 0x1c(sp)
802063a0: 62 4c        	lw	s8, 0x18(sp)
802063a2: d2 4c        	lw	s9, 0x14(sp)
802063a4: 42 4d        	lw	s10, 0x10(sp)
802063a6: b2 4d        	lw	s11, 0xc(sp)
802063a8: 21 61        	addi	sp, sp, 0x40
802063aa: 82 82        	jr	t0
802063ac: 1d 71        	addi	sp, sp, -0x60
802063ae: 86 ce        	sw	ra, 0x5c(sp)
802063b0: a2 cc        	sw	s0, 0x58(sp)
802063b2: a6 ca        	sw	s1, 0x54(sp)
802063b4: ca c8        	sw	s2, 0x50(sp)
802063b6: ce c6        	sw	s3, 0x4c(sp)
802063b8: d2 c4        	sw	s4, 0x48(sp)
802063ba: d6 c2        	sw	s5, 0x44(sp)
802063bc: da c0        	sw	s6, 0x40(sp)
802063be: 5e de        	sw	s7, 0x3c(sp)
802063c0: 62 dc        	sw	s8, 0x38(sp)
802063c2: 66 da        	sw	s9, 0x34(sp)
802063c4: 6a d8        	sw	s10, 0x30(sp)
802063c6: 82 82        	jr	t0
802063c8: f6 40        	lw	ra, 0x5c(sp)
802063ca: 66 44        	lw	s0, 0x58(sp)
802063cc: d6 44        	lw	s1, 0x54(sp)
802063ce: 46 49        	lw	s2, 0x50(sp)
802063d0: b6 49        	lw	s3, 0x4c(sp)
802063d2: 26 4a        	lw	s4, 0x48(sp)
802063d4: 96 4a        	lw	s5, 0x44(sp)
802063d6: 06 4b        	lw	s6, 0x40(sp)
802063d8: f2 5b        	lw	s7, 0x3c(sp)
802063da: 62 5c        	lw	s8, 0x38(sp)
802063dc: d2 5c        	lw	s9, 0x34(sp)
802063de: 42 5d        	lw	s10, 0x30(sp)
802063e0: 82 82        	jr	t0
802063e2: 4d 8d        	or	a0, a0, a1
802063e4: b7 85 80 80  	lui	a1, 0x80808
802063e8: 93 85 05 08  	addi	a1, a1, 0x80
802063ec: e9 8d        	and	a1, a1, a0
802063ee: 37 05 00 e0  	lui	a0, 0xe0000
802063f2: 82 82        	jr	t0
802063f4: 81 45        	li	a1, 0x0
802063f6: 01 46        	li	a2, 0x0
802063f8: 81 46        	li	a3, 0x0
802063fa: 01 47        	li	a4, 0x0
802063fc: 81 47        	li	a5, 0x0
802063fe: 01 48        	li	a6, 0x0
80206400: 82 82        	jr	t0
80206402: b3 05 55 01  	add	a1, a0, s5
80206406: 83 c5 05 00  	lbu	a1, 0x0(a1)
8020640a: 13 84 fa ff  	addi	s0, s5, -0x1
8020640e: 93 f5 05 0c  	andi	a1, a1, 0xc0
80206412: 93 85 05 f8  	addi	a1, a1, -0x80
80206416: a2 8a        	mv	s5, s0
80206418: 82 82        	jr	t0
8020641a: f2 50        	lw	ra, 0x3c(sp)
8020641c: 62 54        	lw	s0, 0x38(sp)
8020641e: d2 54        	lw	s1, 0x34(sp)
80206420: 42 59        	lw	s2, 0x30(sp)
80206422: b2 59        	lw	s3, 0x2c(sp)
80206424: 22 5a        	lw	s4, 0x28(sp)
80206426: 92 5a        	lw	s5, 0x24(sp)
80206428: 02 5b        	lw	s6, 0x20(sp)
8020642a: f2 4b        	lw	s7, 0x1c(sp)
8020642c: 62 4c        	lw	s8, 0x18(sp)
8020642e: 21 61        	addi	sp, sp, 0x40
80206430: 82 82        	jr	t0
80206432: 7d 85        	srai	a0, a0, 0x1f
80206434: a9 8d        	xor	a1, a1, a0
80206436: 13 d6 05 01  	srli	a2, a1, 0x10
8020643a: 42 05        	slli	a0, a0, 0x10
8020643c: 33 6c c5 00  	or	s8, a0, a2
80206440: c2 05        	slli	a1, a1, 0x10
80206442: 93 8a 45 00  	addi	s5, a1, 0x4
80206446: 82 82        	jr	t0
80206448: f2 40        	lw	ra, 0x1c(sp)
8020644a: 62 44        	lw	s0, 0x18(sp)
8020644c: d2 44        	lw	s1, 0x14(sp)
8020644e: 42 49        	lw	s2, 0x10(sp)
80206450: b2 49        	lw	s3, 0xc(sp)
80206452: 22 4a        	lw	s4, 0x8(sp)
80206454: 05 61        	addi	sp, sp, 0x20
80206456: 82 82        	jr	t0
80206458: 01 11        	addi	sp, sp, -0x20
8020645a: 06 ce        	sw	ra, 0x1c(sp)
8020645c: 22 cc        	sw	s0, 0x18(sp)
8020645e: 26 ca        	sw	s1, 0x14(sp)
80206460: 4a c8        	sw	s2, 0x10(sp)
80206462: 4e c6        	sw	s3, 0xc(sp)
80206464: 52 c4        	sw	s4, 0x8(sp)
80206466: 82 82        	jr	t0
