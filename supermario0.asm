;supermario0



B0_0000:		sei				; 78 
B0_0001:		cld				; b8 
B0_0002:		lda #$10		; a9 10
B0_0004:		sta $2000		; 8d 00 20
B0_0007:		ldx #$ff		; a2 ff
B0_0009:		txs				; 9a 
B0_000a:		lda $2002		; ad 02 20
B0_000d:		bpl B0_000a ; 10 fb
B0_000f:		lda $2002		; ad 02 20
B0_0012:		bpl B0_000f ; 10 fb
B0_0014:		ldy #$fe		; a0 fe
B0_0016:		ldx #$05		; a2 05
B0_0018:		lda $07d7, x	; bd d7 07
B0_001b:		cmp #$0a		; c9 0a
B0_001d:		bcs B0_002b ; b0 0c
B0_001f:		dex				; ca 
B0_0020:		bpl B0_0018 ; 10 f6
B0_0022:		lda $07ff		; ad ff 07
B0_0025:		cmp #$a5		; c9 a5
B0_0027:		bne B0_002b ; d0 02
B0_0029:		ldy #$d6		; a0 d6
B0_002b:		jsr $90cc		; 20 cc 90
B0_002e:		sta $4011		; 8d 11 40
B0_0031:		sta $0770		; 8d 70 07
B0_0034:		lda #$a5		; a9 a5
B0_0036:		sta $07ff		; 8d ff 07
B0_0039:		sta $07a7		; 8d a7 07
B0_003c:		lda #$0f		; a9 0f
B0_003e:		sta $4015		; 8d 15 40
B0_0041:		lda #$06		; a9 06
B0_0043:		sta $2001		; 8d 01 20
B0_0046:		jsr $8220		; 20 20 82
B0_0049:		jsr $8e19		; 20 19 8e
B0_004c:		inc $0774		; ee 74 07
B0_004f:		lda $0778		; ad 78 07
B0_0052:		ora #$80		; 09 80
B0_0054:		jsr $8eed		; 20 ed 8e
B0_0057:		jmp $8057		; 4c 57 80
B0_005a:		ora ($a4, x)	; 01 a4
B0_005c:		iny				; c8 
B0_005d:	.hex ec 10 00
B0_0060:		eor ($41, x)	; 41 41
B0_0062:		jmp $3c34		; 4c 34 3c
B0_0065:	.db $44
B0_0066:	.db $54
B0_0067:		pla				; 68 
B0_0068:	.db $7c
B0_0069:		tay				; a8 
B0_006a:	.db $bf
B0_006b:		dec $03ef, x	; de ef 03
B0_006e:		sty $8c8c		; 8c 8c 8c
B0_0071:		sta $0303		; 8d 03 03
B0_0074:	.db $03
B0_0075:		sta $8d8d		; 8d 8d 8d
B0_0078:		sta $8d8d		; 8d 8d 8d
B0_007b:		sta $8d8d		; 8d 8d 8d
B0_007e:	.hex 8d 8d 00
B0_0081:		rti				; 40 
B0_0082:		lda $0778		; ad 78 07
B0_0085:		and #$7f		; 29 7f
B0_0087:		sta $0778		; 8d 78 07
B0_008a:		and #$7e		; 29 7e
B0_008c:		sta $2000		; 8d 00 20
B0_008f:		lda $0779		; ad 79 07
B0_0092:		and #$e6		; 29 e6
B0_0094:		ldy $0774		; ac 74 07
B0_0097:		bne B0_009e ; d0 05
B0_0099:		lda $0779		; ad 79 07
B0_009c:		ora #$1e		; 09 1e
B0_009e:		sta $0779		; 8d 79 07
B0_00a1:		and #$e7		; 29 e7
B0_00a3:		sta $2001		; 8d 01 20
B0_00a6:		ldx $2002		; ae 02 20
B0_00a9:		lda #$00		; a9 00
B0_00ab:		jsr $8ee6		; 20 e6 8e
B0_00ae:		sta $2003		; 8d 03 20
B0_00b1:		lda #$02		; a9 02
B0_00b3:		sta $4014		; 8d 14 40
B0_00b6:		ldx $0773		; ae 73 07
B0_00b9:		lda $805a, x	; bd 5a 80
B0_00bc:		sta $00			; 85 00
B0_00be:		lda $806d, x	; bd 6d 80
B0_00c1:		sta $01			; 85 01
B0_00c3:		jsr $8edd		; 20 dd 8e
B0_00c6:		ldy #$00		; a0 00
B0_00c8:		ldx $0773		; ae 73 07
B0_00cb:		cpx #$06		; e0 06
B0_00cd:		bne B0_00d0 ; d0 01
B0_00cf:		iny				; c8 
B0_00d0:		ldx $8080, y	; be 80 80
B0_00d3:		lda #$00		; a9 00
B0_00d5:		sta $0300, x	; 9d 00 03
B0_00d8:		sta $0301, x	; 9d 01 03
B0_00db:		sta $0773		; 8d 73 07
B0_00de:		lda $0779		; ad 79 07
B0_00e1:		sta $2001		; 8d 01 20
B0_00e4:		jsr $f2d0		; 20 d0 f2
B0_00e7:		jsr $8e5c		; 20 5c 8e
B0_00ea:		jsr $8182		; 20 82 81
B0_00ed:		jsr $8f97		; 20 97 8f
B0_00f0:		lda $0776		; ad 76 07
B0_00f3:		lsr a			; 4a
B0_00f4:		bcs B0_011b ; b0 25
B0_00f6:		lda $0747		; ad 47 07
B0_00f9:		beq B0_0100 ; f0 05
B0_00fb:		dec $0747		; ce 47 07
B0_00fe:		bne B0_0119 ; d0 19
B0_0100:		ldx #$14		; a2 14
B0_0102:		dec $077f		; ce 7f 07
B0_0105:		bpl B0_010e ; 10 07
B0_0107:		lda #$14		; a9 14
B0_0109:		sta $077f		; 8d 7f 07
B0_010c:		ldx #$23		; a2 23
B0_010e:		lda $0780, x	; bd 80 07
B0_0111:		beq B0_0116 ; f0 03
B0_0113:		dec $0780, x	; de 80 07
B0_0116:		dex				; ca 
B0_0117:		bpl B0_010e ; 10 f5
B0_0119:		inc $09			; e6 09
B0_011b:		ldx #$00		; a2 00
B0_011d:		ldy #$07		; a0 07
B0_011f:		lda $07a7		; ad a7 07
B0_0122:		and #$02		; 29 02
B0_0124:		sta $00			; 85 00
B0_0126:		lda $07a8		; ad a8 07
B0_0129:		and #$02		; 29 02
B0_012b:		eor $00			; 45 00
B0_012d:		clc				; 18 
B0_012e:		beq B0_0131 ; f0 01
B0_0130:		sec				; 38 
B0_0131:		ror $07a7, x	; 7e a7 07
B0_0134:		inx				; e8 
B0_0135:		dey				; 88 
B0_0136:		bne B0_0131 ; d0 f9
B0_0138:		lda $0722		; ad 22 07
B0_013b:		beq B0_015c ; f0 1f
B0_013d:		lda $2002		; ad 02 20
B0_0140:		and #$40		; 29 40
B0_0142:		bne B0_013d ; d0 f9
B0_0144:		lda $0776		; ad 76 07
B0_0147:		lsr a			; 4a
B0_0148:		bcs B0_0150 ; b0 06
B0_014a:		jsr $8223		; 20 23 82
B0_014d:		jsr $81c6		; 20 c6 81
B0_0150:		lda $2002		; ad 02 20
B0_0153:		and #$40		; 29 40
B0_0155:		beq B0_0150 ; f0 f9
B0_0157:		ldy #$14		; a0 14
B0_0159:		dey				; 88 
B0_015a:		bne B0_0159 ; d0 fd
B0_015c:		lda $073f		; ad 3f 07
B0_015f:		sta $2005		; 8d 05 20
B0_0162:		lda $0740		; ad 40 07
B0_0165:		sta $2005		; 8d 05 20
B0_0168:		lda $0778		; ad 78 07
B0_016b:		pha				; 48 
B0_016c:		sta $2000		; 8d 00 20
B0_016f:		lda $0776		; ad 76 07
B0_0172:		lsr a			; 4a
B0_0173:		bcs B0_0178 ; b0 03
B0_0175:		jsr $8212		; 20 12 82
B0_0178:		lda $2002		; ad 02 20
B0_017b:		pla				; 68 
B0_017c:		ora #$80		; 09 80
B0_017e:		sta $2000		; 8d 00 20
B0_0181:		rti				; 40 
B0_0182:		lda $0770		; ad 70 07
B0_0185:		cmp #$02		; c9 02
B0_0187:		beq B0_0194 ; f0 0b
B0_0189:		cmp #$01		; c9 01
B0_018b:		bne B0_01c5 ; d0 38
B0_018d:		lda $0772		; ad 72 07
B0_0190:		cmp #$03		; c9 03
B0_0192:		bne B0_01c5 ; d0 31
B0_0194:		lda $0777		; ad 77 07
B0_0197:		beq B0_019d ; f0 04
B0_0199:		dec $0777		; ce 77 07
B0_019c:		rts				; 60 
B0_019d:		lda $06fc		; ad fc 06
B0_01a0:		and #$10		; 29 10
B0_01a2:		beq B0_01bd ; f0 19
B0_01a4:		lda $0776		; ad 76 07
B0_01a7:		and #$80		; 29 80
B0_01a9:		bne B0_01c5 ; d0 1a
B0_01ab:		lda #$2b		; a9 2b
B0_01ad:		sta $0777		; 8d 77 07
B0_01b0:		lda $0776		; ad 76 07
B0_01b3:		tay				; a8 
B0_01b4:		iny				; c8 
B0_01b5:		sty $fa			; 84 fa
B0_01b7:		eor #$01		; 49 01
B0_01b9:		ora #$80		; 09 80
B0_01bb:		bne B0_01c2 ; d0 05
B0_01bd:		lda $0776		; ad 76 07
B0_01c0:		and #$7f		; 29 7f
B0_01c2:		sta $0776		; 8d 76 07
B0_01c5:		rts				; 60 
B0_01c6:		ldy $074e		; ac 4e 07
B0_01c9:		lda #$28		; a9 28
B0_01cb:		sta $00			; 85 00
B0_01cd:		ldx #$0e		; a2 0e
B0_01cf:		lda $06e4, x	; bd e4 06
B0_01d2:		cmp $00			; c5 00
B0_01d4:		bcc B0_01e5 ; 90 0f
B0_01d6:		ldy $06e0		; ac e0 06
B0_01d9:		clc				; 18 
B0_01da:		adc $06e1, y	; 79 e1 06
B0_01dd:		bcc B0_01e2 ; 90 03
B0_01df:		clc				; 18 
B0_01e0:		adc $00			; 65 00
B0_01e2:		sta $06e4, x	; 9d e4 06
B0_01e5:		dex				; ca 
B0_01e6:		bpl B0_01cf ; 10 e7
B0_01e8:		ldx $06e0		; ae e0 06
B0_01eb:		inx				; e8 
B0_01ec:		cpx #$03		; e0 03
B0_01ee:		bne B0_01f2 ; d0 02
B0_01f0:		ldx #$00		; a2 00
B0_01f2:		stx $06e0		; 8e e0 06
B0_01f5:		ldx #$08		; a2 08
B0_01f7:		ldy #$02		; a0 02
B0_01f9:		lda $06e9, y	; b9 e9 06
B0_01fc:		sta $06f1, x	; 9d f1 06
B0_01ff:		clc				; 18 
B0_0200:		adc #$08		; 69 08
B0_0202:		sta $06f2, x	; 9d f2 06
B0_0205:		clc				; 18 
B0_0206:		adc #$08		; 69 08
B0_0208:		sta $06f3, x	; 9d f3 06
B0_020b:		dex				; ca 
B0_020c:		dex				; ca 
B0_020d:		dex				; ca 
B0_020e:		dey				; 88 
B0_020f:		bpl B0_01f9 ; 10 e8
B0_0211:		rts				; 60 
B0_0212:		lda $0770		; ad 70 07
B0_0215:		jsr $8e04		; 20 04 8e
B0_0218:		and ($82), y	; 31 82
B0_021a:	.db $dc
B0_021b:		ldx $838b		; ae 8b 83
B0_021e:		clc				; 18 
B0_021f:	.db $92
B0_0220:		ldy #$00		; a0 00
B0_0222:		bit $04a0		; 2c a0 04
B0_0225:		lda #$f8		; a9 f8
B0_0227:		sta $0200, y	; 99 00 02
B0_022a:		iny				; c8 
B0_022b:		iny				; c8 
B0_022c:		iny				; c8 
B0_022d:		iny				; c8 
B0_022e:		bne B0_0227 ; d0 f7
B0_0230:		rts				; 60 
B0_0231:		lda $0772		; ad 72 07
B0_0234:		jsr $8e04		; 20 04 8e
B0_0237:	.db $cf
B0_0238:	.db $8f
B0_0239:	.db $67
B0_023a:		sta $61			; 85 61
B0_023c:		bcc B0_0283 ; 90 45
B0_023e:	.db $82
B0_023f:	.db $04
B0_0240:		jsr $0173		; 20 73 01
B0_0243:		brk				; 00
B0_0244:		brk				; 00
B0_0245:		ldy #$00		; a0 00
B0_0247:		lda $06fc		; ad fc 06
B0_024a:		ora $06fd		; 0d fd 06
B0_024d:		cmp #$10		; c9 10
B0_024f:		beq B0_0255 ; f0 04
B0_0251:		cmp #$90		; c9 90
B0_0253:		bne B0_0258 ; d0 03
B0_0255:		jmp $82d8		; 4c d8 82
B0_0258:		cmp #$20		; c9 20
B0_025a:		beq B0_0276 ; f0 1a
B0_025c:		ldx $07a2		; ae a2 07
B0_025f:		bne B0_026c ; d0 0b
B0_0261:		sta $0780		; 8d 80 07
B0_0264:		jsr $836b		; 20 6b 83
B0_0267:		bcs B0_02c9 ; b0 60
B0_0269:		jmp $82c0		; 4c c0 82
B0_026c:		ldx $07fc		; ae fc 07
B0_026f:		beq B0_02bb ; f0 4a
B0_0271:		cmp #$40		; c9 40
B0_0273:		bne B0_02bb ; d0 46
B0_0275:		iny				; c8 
B0_0276:		lda $07a2		; ad a2 07
B0_0279:		beq B0_02c9 ; f0 4e
B0_027b:		lda #$18		; a9 18
B0_027d:		sta $07a2		; 8d a2 07
B0_0280:		lda $0780		; ad 80 07
B0_0283:		bne B0_02bb ; d0 36
B0_0285:		lda #$10		; a9 10
B0_0287:		sta $0780		; 8d 80 07
B0_028a:		cpy #$01		; c0 01
B0_028c:		beq B0_029c ; f0 0e
B0_028e:		lda $077a		; ad 7a 07
B0_0291:		eor #$01		; 49 01
B0_0293:		sta $077a		; 8d 7a 07
B0_0296:		jsr $8325		; 20 25 83
B0_0299:		jmp $82bb		; 4c bb 82
B0_029c:		ldx $076b		; ae 6b 07
B0_029f:		inx				; e8 
B0_02a0:		txa				; 8a 
B0_02a1:		and #$07		; 29 07
B0_02a3:		sta $076b		; 8d 6b 07
B0_02a6:		jsr $830e		; 20 0e 83
B0_02a9:		lda $823f, x	; bd 3f 82
B0_02ac:		sta $0300, x	; 9d 00 03
B0_02af:		inx				; e8 
B0_02b0:		cpx #$06		; e0 06
B0_02b2:		bmi B0_02a9 ; 30 f5
B0_02b4:		ldy $075f		; ac 5f 07
B0_02b7:		iny				; c8 
B0_02b8:		sty $0304		; 8c 04 03
B0_02bb:		lda #$00		; a9 00
B0_02bd:		sta $06fc		; 8d fc 06
B0_02c0:		jsr $aeea		; 20 ea ae
B0_02c3:		lda $0e			; a5 0e
B0_02c5:		cmp #$06		; c9 06
B0_02c7:		bne B0_030d ; d0 44
B0_02c9:		lda #$00		; a9 00
B0_02cb:		sta $0770		; 8d 70 07
B0_02ce:		sta $0772		; 8d 72 07
B0_02d1:		sta $0722		; 8d 22 07
B0_02d4:		inc $0774		; ee 74 07
B0_02d7:		rts				; 60 
B0_02d8:		ldy $07a2		; ac a2 07
B0_02db:		beq B0_02c9 ; f0 ec
B0_02dd:		asl a			; 0a
B0_02de:		bcc B0_02e6 ; 90 06
B0_02e0:		lda $07fd		; ad fd 07
B0_02e3:		jsr $830e		; 20 0e 83
B0_02e6:		jsr $9c03		; 20 03 9c
B0_02e9:		inc $075d		; ee 5d 07
B0_02ec:		inc $0764		; ee 64 07
B0_02ef:		inc $0757		; ee 57 07
B0_02f2:		inc $0770		; ee 70 07
B0_02f5:		lda $07fc		; ad fc 07
B0_02f8:		sta $076a		; 8d 6a 07
B0_02fb:		lda #$00		; a9 00
B0_02fd:		sta $0772		; 8d 72 07
B0_0300:		sta $07a2		; 8d a2 07
B0_0303:		ldx #$17		; a2 17
B0_0305:		lda #$00		; a9 00
B0_0307:		sta $07dd, x	; 9d dd 07
B0_030a:		dex				; ca 
B0_030b:		bpl B0_0307 ; 10 fa
B0_030d:		rts				; 60 
B0_030e:		sta $075f		; 8d 5f 07
B0_0311:		sta $0766		; 8d 66 07
B0_0314:		ldx #$00		; a2 00
B0_0316:		stx $0760		; 8e 60 07
B0_0319:		stx $0767		; 8e 67 07
B0_031c:		rts				; 60 
B0_031d:	.db $07
B0_031e:	.db $22
B0_031f:		eor #$83		; 49 83
B0_0321:		dec $2424		; ce 24 24
B0_0324:		brk				; 00
B0_0325:		ldy #$07		; a0 07
B0_0327:		lda $831d, y	; b9 1d 83
B0_032a:		sta $0300, y	; 99 00 03
B0_032d:		dey				; 88 
B0_032e:		bpl B0_0327 ; 10 f7
B0_0330:		lda $077a		; ad 7a 07
B0_0333:		beq B0_033f ; f0 0a
B0_0335:		lda #$24		; a9 24
B0_0337:		sta $0304		; 8d 04 03
B0_033a:		lda #$ce		; a9 ce
B0_033c:		sta $0306		; 8d 06 03
B0_033f:		rts				; 60 
B0_0340:		ora ($80, x)	; 01 80
B0_0342:	.db $02
B0_0343:		sta ($41, x)	; 81 41
B0_0345:	.db $80
B0_0346:		ora ($42, x)	; 01 42
B0_0348:	.db $c2
B0_0349:	.db $02
B0_034a:	.db $80
B0_034b:		eor ($c1, x)	; 41 c1
B0_034d:		eor ($c1, x)	; 41 c1
B0_034f:		ora ($c1, x)	; 01 c1
B0_0351:		ora ($02, x)	; 01 02
B0_0353:	.db $80
B0_0354:		brk				; 00
B0_0355:	.db $9b
B0_0356:		;removed
	.hex  10 18
B0_0358:		ora $2c			; 05 2c
B0_035a:		jsr $1524		; 20 24 15
B0_035d:	.db $5a
B0_035e:		bpl B0_0380 ; 10 20
B0_0360:		plp				; 28 
B0_0361:		bmi B0_0383 ; 30 20
B0_0363:		;removed
	.hex  10 80
B0_0365:		jsr $3030		; 20 30 30
B0_0368:		ora ($ff, x)	; 01 ff
B0_036a:		brk				; 00
B0_036b:		ldx $0717		; ae 17 07
B0_036e:		lda $0718		; ad 18 07
B0_0371:		bne B0_0380 ; d0 0d
B0_0373:		inx				; e8 
B0_0374:		inc $0717		; ee 17 07
B0_0377:		sec				; 38 
B0_0378:		lda $8354, x	; bd 54 83
B0_037b:		sta $0718		; 8d 18 07
B0_037e:		beq B0_038a ; f0 0a
B0_0380:		lda $833f, x	; bd 3f 83
B0_0383:		sta $06fc		; 8d fc 06
B0_0386:		dec $0718		; ce 18 07
B0_0389:		clc				; 18 
B0_038a:		rts				; 60 
B0_038b:		jsr $83a0		; 20 a0 83
B0_038e:		lda $0772		; ad 72 07
B0_0391:		beq B0_039a ; f0 07
B0_0393:		ldx #$00		; a2 00
B0_0395:		stx $08			; 86 08
B0_0397:		jsr $c047		; 20 47 c0
B0_039a:		jsr $f12a		; 20 2a f1
B0_039d:		jmp $eee9		; 4c e9 ee
B0_03a0:		lda $0772		; ad 72 07
B0_03a3:		jsr $8e04		; 20 04 8e
B0_03a6:		cpx $b0cf		; ec cf b0
B0_03a9:	.db $83
B0_03aa:		lda $f683, x	; bd 83 f6
B0_03ad:	.db $83
B0_03ae:		adc ($84, x)	; 61 84
B0_03b0:		ldx $071b		; ae 1b 07
B0_03b3:		inx				; e8 
B0_03b4:		stx $34			; 86 34
B0_03b6:		lda #$08		; a9 08
B0_03b8:		sta $fc			; 85 fc
B0_03ba:		jmp $874e		; 4c 4e 87
B0_03bd:		ldy #$00		; a0 00
B0_03bf:		sty $35			; 84 35
B0_03c1:		lda $6d			; a5 6d
B0_03c3:		cmp $34			; c5 34
B0_03c5:		bne B0_03cd ; d0 06
B0_03c7:		lda $86			; a5 86
B0_03c9:		cmp #$60		; c9 60
B0_03cb:		bcs B0_03d0 ; b0 03
B0_03cd:		inc $35			; e6 35
B0_03cf:		iny				; c8 
B0_03d0:		tya				; 98 
B0_03d1:		jsr $b0e6		; 20 e6 b0
B0_03d4:		lda $071a		; ad 1a 07
B0_03d7:		cmp $34			; c5 34
B0_03d9:		beq B0_03f1 ; f0 16
B0_03db:		lda $0768		; ad 68 07
B0_03de:		clc				; 18 
B0_03df:		adc #$80		; 69 80
B0_03e1:		sta $0768		; 8d 68 07
B0_03e4:		lda #$01		; a9 01
B0_03e6:		adc #$00		; 69 00
B0_03e8:		tay				; a8 
B0_03e9:		jsr $afc4		; 20 c4 af
B0_03ec:		jsr $af6f		; 20 6f af
B0_03ef:		inc $35			; e6 35
B0_03f1:		lda $35			; a5 35
B0_03f3:		beq B0_045d ; f0 68
B0_03f5:		rts				; 60 
B0_03f6:		lda $0749		; ad 49 07
B0_03f9:		bne B0_0443 ; d0 48
B0_03fb:		lda $0719		; ad 19 07
B0_03fe:		beq B0_0418 ; f0 18
B0_0400:		cmp #$09		; c9 09
B0_0402:		bcs B0_0443 ; b0 3f
B0_0404:		ldy $075f		; ac 5f 07
B0_0407:		cpy #$07		; c0 07
B0_0409:		bne B0_0414 ; d0 09
B0_040b:		cmp #$03		; c9 03
B0_040d:		bcc B0_0443 ; 90 34
B0_040f:		sbc #$01		; e9 01
B0_0411:		jmp $8418		; 4c 18 84
B0_0414:		cmp #$02		; c9 02
B0_0416:		bcc B0_0443 ; 90 2b
B0_0418:		tay				; a8 
B0_0419:		bne B0_0423 ; d0 08
B0_041b:		lda $0753		; ad 53 07
B0_041e:		beq B0_0434 ; f0 14
B0_0420:		iny				; c8 
B0_0421:		bne B0_0434 ; d0 11
B0_0423:		iny				; c8 
B0_0424:		lda $075f		; ad 5f 07
B0_0427:		cmp #$07		; c9 07
B0_0429:		beq B0_0434 ; f0 09
B0_042b:		dey				; 88 
B0_042c:		cpy #$04		; c0 04
B0_042e:		bcs B0_0456 ; b0 26
B0_0430:		cpy #$03		; c0 03
B0_0432:		bcs B0_0443 ; b0 0f
B0_0434:		cpy #$03		; c0 03
B0_0436:		bne B0_043c ; d0 04
B0_0438:		lda #$04		; a9 04
B0_043a:		sta $fc			; 85 fc
B0_043c:		tya				; 98 
B0_043d:		clc				; 18 
B0_043e:		adc #$0c		; 69 0c
B0_0440:		sta $0773		; 8d 73 07
B0_0443:		lda $0749		; ad 49 07
B0_0446:		clc				; 18 
B0_0447:		adc #$04		; 69 04
B0_0449:		sta $0749		; 8d 49 07
B0_044c:		lda $0719		; ad 19 07
B0_044f:		adc #$00		; 69 00
B0_0451:		sta $0719		; 8d 19 07
B0_0454:		cmp #$07		; c9 07
B0_0456:		bcc B0_0460 ; 90 08
B0_0458:		lda #$06		; a9 06
B0_045a:		sta $07a1		; 8d a1 07
B0_045d:		inc $0772		; ee 72 07
B0_0460:		rts				; 60 
B0_0461:		lda $07a1		; ad a1 07
B0_0464:		bne B0_0486 ; d0 20
B0_0466:		ldy $075f		; ac 5f 07
B0_0469:		cpy #$07		; c0 07
B0_046b:		bcs B0_0487 ; b0 1a
B0_046d:		lda #$00		; a9 00
B0_046f:		sta $0760		; 8d 60 07
B0_0472:		sta $075c		; 8d 5c 07
B0_0475:		sta $0772		; 8d 72 07
B0_0478:		inc $075f		; ee 5f 07
B0_047b:		jsr $9c03		; 20 03 9c
B0_047e:		inc $0757		; ee 57 07
B0_0481:		lda #$01		; a9 01
B0_0483:		sta $0770		; 8d 70 07
B0_0486:		rts				; 60 
B0_0487:		lda $06fc		; ad fc 06
B0_048a:		ora $06fd		; 0d fd 06
B0_048d:		and #$40		; 29 40
B0_048f:		beq B0_049e ; f0 0d
B0_0491:		lda #$01		; a9 01
B0_0493:		sta $07fc		; 8d fc 07
B0_0496:		lda #$ff		; a9 ff
B0_0498:		sta $075a		; 8d 5a 07
B0_049b:		jsr $9248		; 20 48 92
B0_049e:		rts				; 60 
B0_049f:	.db $ff
B0_04a0:	.db $ff
B0_04a1:		inc $fb, x		; f6 fb
B0_04a3:	.db $f7
B0_04a4:	.db $fb
B0_04a5:		sed				; f8 
B0_04a6:	.db $fb
B0_04a7:		sbc $fafb, y	; f9 fb fa
B0_04aa:	.db $fb
B0_04ab:		inc $50, x		; f6 50
B0_04ad:	.db $f7
B0_04ae:		;removed
	.hex  50 f8
B0_04b0:		bvc B0_04ab ; 50 f9
B0_04b2:		bvc B0_04ae ; 50 fa
B0_04b4:		;removed
	.hex  50 fd
B0_04b6:		inc $41ff, x	; fe ff 41
B0_04b9:	.db $42
B0_04ba:	.db $44
B0_04bb:		eor $48			; 45 48
B0_04bd:		and ($32), y	; 31 32
B0_04bf:	.db $34
B0_04c0:		and $38, x		; 35 38
B0_04c2:		brk				; 00
B0_04c3:		lda $0110, x	; bd 10 01
B0_04c6:		beq B0_0486 ; f0 be
B0_04c8:		cmp #$0b		; c9 0b
B0_04ca:		bcc B0_04d1 ; 90 05
B0_04cc:		lda #$0b		; a9 0b
B0_04ce:		sta $0110, x	; 9d 10 01
B0_04d1:		tay				; a8 
B0_04d2:		lda $012c, x	; bd 2c 01
B0_04d5:		bne B0_04db ; d0 04
B0_04d7:		sta $0110, x	; 9d 10 01
B0_04da:		rts				; 60 
B0_04db:		dec $012c, x	; de 2c 01
B0_04de:		cmp #$2b		; c9 2b
B0_04e0:		bne B0_0500 ; d0 1e
B0_04e2:		cpy #$0b		; c0 0b
B0_04e4:		bne B0_04ed ; d0 07
B0_04e6:		inc $075a		; ee 5a 07
B0_04e9:		lda #$40		; a9 40
B0_04eb:		sta $fe			; 85 fe
B0_04ed:		lda $84b7, y	; b9 b7 84
B0_04f0:		lsr a			; 4a
B0_04f1:		lsr a			; 4a
B0_04f2:		lsr a			; 4a
B0_04f3:		lsr a			; 4a
B0_04f4:		tax				; aa 
B0_04f5:		lda $84b7, y	; b9 b7 84
B0_04f8:		and #$0f		; 29 0f
B0_04fa:		sta $0134, x	; 9d 34 01
B0_04fd:		jsr $bc27		; 20 27 bc
B0_0500:		ldy $06e5, x	; bc e5 06
B0_0503:		lda $16, x		; b5 16
B0_0505:		cmp #$12		; c9 12
B0_0507:		beq B0_052b ; f0 22
B0_0509:		cmp #$0d		; c9 0d
B0_050b:		beq B0_052b ; f0 1e
B0_050d:		cmp #$05		; c9 05
B0_050f:		beq B0_0523 ; f0 12
B0_0511:		cmp #$0a		; c9 0a
B0_0513:		beq B0_052b ; f0 16
B0_0515:		cmp #$0b		; c9 0b
B0_0517:		beq B0_052b ; f0 12
B0_0519:		cmp #$09		; c9 09
B0_051b:		bcs B0_0523 ; b0 06
B0_051d:		lda $1e, x		; b5 1e
B0_051f:		cmp #$02		; c9 02
B0_0521:		bcs B0_052b ; b0 08
B0_0523:		ldx $03ee		; ae ee 03
B0_0526:		ldy $06ec, x	; bc ec 06
B0_0529:		ldx $08			; a6 08
B0_052b:		lda $011e, x	; bd 1e 01
B0_052e:		cmp #$18		; c9 18
B0_0530:		bcc B0_0537 ; 90 05
B0_0532:		sbc #$01		; e9 01
B0_0534:		sta $011e, x	; 9d 1e 01
B0_0537:		lda $011e, x	; bd 1e 01
B0_053a:		sbc #$08		; e9 08
B0_053c:		jsr $e5c1		; 20 c1 e5
B0_053f:		lda $0117, x	; bd 17 01
B0_0542:		sta $0203, y	; 99 03 02
B0_0545:		clc				; 18 
B0_0546:		adc #$08		; 69 08
B0_0548:		sta $0207, y	; 99 07 02
B0_054b:		lda #$02		; a9 02
B0_054d:		sta $0202, y	; 99 02 02
B0_0550:		sta $0206, y	; 99 06 02
B0_0553:		lda $0110, x	; bd 10 01
B0_0556:		asl a			; 0a
B0_0557:		tax				; aa 
B0_0558:		lda $849f, x	; bd 9f 84
B0_055b:		sta $0201, y	; 99 01 02
B0_055e:		lda $84a0, x	; bd a0 84
B0_0561:		sta $0205, y	; 99 05 02
B0_0564:		ldx $08			; a6 08
B0_0566:		rts				; 60 
B0_0567:		lda $073c		; ad 3c 07
B0_056a:		jsr $8e04		; 20 04 8e
B0_056d:	.db $8b
B0_056e:		sta $9b			; 85 9b
B0_0570:		sta $52			; 85 52
B0_0572:		stx $5a			; 86 5a
B0_0574:		stx $93			; 86 93
B0_0576:		stx $9d			; 86 9d
B0_0578:		dey				; 88 
B0_0579:		tay				; a8 
B0_057a:		stx $9d			; 86 9d
B0_057c:		dey				; 88 
B0_057d:		inc $86			; e6 86
B0_057f:	.db $bf
B0_0580:		sta $e3			; 85 e3
B0_0582:		sta $43			; 85 43
B0_0584:		stx $ff			; 86 ff
B0_0586:		stx $32			; 86 32
B0_0588:	.db $87
B0_0589:		eor #$87		; 49 87
B0_058b:		jsr $8220		; 20 20 82
B0_058e:		jsr $8e19		; 20 19 8e
B0_0591:		lda $0770		; ad 70 07
B0_0594:		beq B0_05c8 ; f0 32
B0_0596:		ldx #$03		; a2 03
B0_0598:		jmp $85c5		; 4c c5 85
B0_059b:		lda $0744		; ad 44 07
B0_059e:		pha				; 48 
B0_059f:		lda $0756		; ad 56 07
B0_05a2:		pha				; 48 
B0_05a3:		lda #$00		; a9 00
B0_05a5:		sta $0756		; 8d 56 07
B0_05a8:		lda #$02		; a9 02
B0_05aa:		sta $0744		; 8d 44 07
B0_05ad:		jsr $85f1		; 20 f1 85
B0_05b0:		pla				; 68 
B0_05b1:		sta $0756		; 8d 56 07
B0_05b4:		pla				; 68 
B0_05b5:		sta $0744		; 8d 44 07
B0_05b8:		jmp $8745		; 4c 45 87
B0_05bb:		ora ($02, x)	; 01 02
B0_05bd:	.db $03
B0_05be:	.db $04
B0_05bf:		ldy $074e		; ac 4e 07
B0_05c2:		ldx $85bb, y	; be bb 85
B0_05c5:		stx $0773		; 8e 73 07
B0_05c8:		jmp $8745		; 4c 45 87
B0_05cb:		brk				; 00
B0_05cc:		ora #$0a		; 09 0a
B0_05ce:	.db $04
B0_05cf:	.db $22
B0_05d0:	.db $22
B0_05d1:	.db $0f
B0_05d2:	.db $0f
B0_05d3:	.db $0f
B0_05d4:	.db $22
B0_05d5:	.db $0f
B0_05d6:	.db $0f
B0_05d7:	.db $22
B0_05d8:		asl $27, x		; 16 27
B0_05da:		clc				; 18 
B0_05db:	.db $22
B0_05dc:		;removed
	.hex  30 27
B0_05de:		ora $3722, y	; 19 22 37
B0_05e1:	.db $27
B0_05e2:		asl $ac, x		; 16 ac
B0_05e4:	.db $44
B0_05e5:	.db $07
B0_05e6:		beq B0_05ee ; f0 06
B0_05e8:		lda $85c7, y	; b9 c7 85
B0_05eb:		sta $0773		; 8d 73 07
B0_05ee:		inc $073c		; ee 3c 07
B0_05f1:		ldx $0300		; ae 00 03
B0_05f4:		ldy #$00		; a0 00
B0_05f6:		lda $0753		; ad 53 07
B0_05f9:		beq B0_05fd ; f0 02
B0_05fb:		ldy #$04		; a0 04
B0_05fd:		lda $0756		; ad 56 07
B0_0600:		cmp #$02		; c9 02
B0_0602:		bne B0_0606 ; d0 02
B0_0604:		ldy #$08		; a0 08
B0_0606:		lda #$03		; a9 03
B0_0608:		sta $00			; 85 00
B0_060a:		lda $85d7, y	; b9 d7 85
B0_060d:		sta $0304, x	; 9d 04 03
B0_0610:		iny				; c8 
B0_0611:		inx				; e8 
B0_0612:		dec $00			; c6 00
B0_0614:		bpl B0_060a ; 10 f4
B0_0616:		ldx $0300		; ae 00 03
B0_0619:		ldy $0744		; ac 44 07
B0_061c:		bne B0_0621 ; d0 03
B0_061e:		ldy $074e		; ac 4e 07
B0_0621:		lda $85cf, y	; b9 cf 85
B0_0624:		sta $0304, x	; 9d 04 03
B0_0627:		lda #$3f		; a9 3f
B0_0629:		sta $0301, x	; 9d 01 03
B0_062c:		lda #$10		; a9 10
B0_062e:		sta $0302, x	; 9d 02 03
B0_0631:		lda #$04		; a9 04
B0_0633:		sta $0303, x	; 9d 03 03
B0_0636:		lda #$00		; a9 00
B0_0638:		sta $0308, x	; 9d 08 03
B0_063b:		txa				; 8a 
B0_063c:		clc				; 18 
B0_063d:		adc #$07		; 69 07
B0_063f:		sta $0300		; 8d 00 03
B0_0642:		rts				; 60 
B0_0643:		lda $0733		; ad 33 07
B0_0646:		cmp #$01		; c9 01
B0_0648:		bne B0_064f ; d0 05
B0_064a:		lda #$0b		; a9 0b
B0_064c:		sta $0773		; 8d 73 07
B0_064f:		jmp $8745		; 4c 45 87
B0_0652:		lda #$00		; a9 00
B0_0654:		jsr $8808		; 20 08 88
B0_0657:		jmp $8745		; 4c 45 87
B0_065a:		jsr $bc30		; 20 30 bc
B0_065d:		ldx $0300		; ae 00 03
B0_0660:		lda #$20		; a9 20
B0_0662:		sta $0301, x	; 9d 01 03
B0_0665:		lda #$73		; a9 73
B0_0667:		sta $0302, x	; 9d 02 03
B0_066a:		lda #$03		; a9 03
B0_066c:		sta $0303, x	; 9d 03 03
B0_066f:		ldy $075f		; ac 5f 07
B0_0672:		iny				; c8 
B0_0673:		tya				; 98 
B0_0674:		sta $0304, x	; 9d 04 03
B0_0677:		lda #$28		; a9 28
B0_0679:		sta $0305, x	; 9d 05 03
B0_067c:		ldy $075c		; ac 5c 07
B0_067f:		iny				; c8 
B0_0680:		tya				; 98 
B0_0681:		sta $0306, x	; 9d 06 03
B0_0684:		lda #$00		; a9 00
B0_0686:		sta $0307, x	; 9d 07 03
B0_0689:		txa				; 8a 
B0_068a:		clc				; 18 
B0_068b:		adc #$06		; 69 06
B0_068d:		sta $0300		; 8d 00 03
B0_0690:		jmp $8745		; 4c 45 87
B0_0693:		lda $0759		; ad 59 07
B0_0696:		beq B0_06a2 ; f0 0a
B0_0698:		lda #$00		; a9 00
B0_069a:		sta $0759		; 8d 59 07
B0_069d:		lda #$02		; a9 02
B0_069f:		jmp $86c7		; 4c c7 86
B0_06a2:		inc $073c		; ee 3c 07
B0_06a5:		jmp $8745		; 4c 45 87
B0_06a8:		lda $0770		; ad 70 07
B0_06ab:		beq B0_06e0 ; f0 33
B0_06ad:		cmp #$03		; c9 03
B0_06af:		beq B0_06d3 ; f0 22
B0_06b1:		lda $0752		; ad 52 07
B0_06b4:		bne B0_06e0 ; d0 2a
B0_06b6:		ldy $074e		; ac 4e 07
B0_06b9:		cpy #$03		; c0 03
B0_06bb:		beq B0_06c2 ; f0 05
B0_06bd:		lda $0769		; ad 69 07
B0_06c0:		bne B0_06e0 ; d0 1e
B0_06c2:		jsr $efa4		; 20 a4 ef
B0_06c5:		lda #$01		; a9 01
B0_06c7:		jsr $8808		; 20 08 88
B0_06ca:		jsr $88a5		; 20 a5 88
B0_06cd:		lda #$00		; a9 00
B0_06cf:		sta $0774		; 8d 74 07
B0_06d2:		rts				; 60 
B0_06d3:		lda #$12		; a9 12
B0_06d5:		sta $07a0		; 8d a0 07
B0_06d8:		lda #$03		; a9 03
B0_06da:		jsr $8808		; 20 08 88
B0_06dd:		jmp $874e		; 4c 4e 87
B0_06e0:		lda #$08		; a9 08
B0_06e2:		sta $073c		; 8d 3c 07
B0_06e5:		rts				; 60 
B0_06e6:		inc $0774		; ee 74 07
B0_06e9:		jsr $92b0		; 20 b0 92
B0_06ec:		lda $071f		; ad 1f 07
B0_06ef:		bne B0_06e9 ; d0 f8
B0_06f1:		dec $071e		; ce 1e 07
B0_06f4:		bpl B0_06f9 ; 10 03
B0_06f6:		inc $073c		; ee 3c 07
B0_06f9:		lda #$06		; a9 06
B0_06fb:		sta $0773		; 8d 73 07
B0_06fe:		rts				; 60 
B0_06ff:		lda $0770		; ad 70 07
B0_0702:		bne B0_074e ; d0 4a
B0_0704:		lda #$1e		; a9 1e
B0_0706:		sta $2006		; 8d 06 20
B0_0709:		lda #$c0		; a9 c0
B0_070b:		sta $2006		; 8d 06 20
B0_070e:		lda #$03		; a9 03
B0_0710:		sta $01			; 85 01
B0_0712:		ldy #$00		; a0 00
B0_0714:		sty $00			; 84 00
B0_0716:		lda $2007		; ad 07 20
B0_0719:		lda $2007		; ad 07 20
B0_071c:		sta ($00), y	; 91 00
B0_071e:		iny				; c8 
B0_071f:		bne B0_0723 ; d0 02
B0_0721:		inc $01			; e6 01
B0_0723:		lda $01			; a5 01
B0_0725:		cmp #$04		; c9 04
B0_0727:		bne B0_0719 ; d0 f0
B0_0729:		cpy #$3a		; c0 3a
B0_072b:		bcc B0_0719 ; 90 ec
B0_072d:		lda #$05		; a9 05
B0_072f:		jmp $864c		; 4c 4c 86
B0_0732:		lda $0770		; ad 70 07
B0_0735:		bne B0_074e ; d0 17
B0_0737:		ldx #$00		; a2 00
B0_0739:		sta $0300, x	; 9d 00 03
B0_073c:		sta $0400, x	; 9d 00 04
B0_073f:		dex				; ca 
B0_0740:		bne B0_0739 ; d0 f7
B0_0742:		jsr $8325		; 20 25 83
B0_0745:		inc $073c		; ee 3c 07
B0_0748:		rts				; 60 
B0_0749:		lda #$fa		; a9 fa
B0_074b:		jsr $bc36		; 20 36 bc
B0_074e:		inc $0772		; ee 72 07
B0_0751:		rts				; 60 
B0_0752:		jsr $0543		; 20 43 05
B0_0755:		asl $0a, x		; 16 0a
B0_0757:	.db $1b
B0_0758:	.db $12
B0_0759:		clc				; 18 
B0_075a:		jsr $0b52		; 20 52 0b
B0_075d:		jsr $1b18		; 20 18 1b
B0_0760:		ora $0d, x		; 15 0d
B0_0762:		bit $24			; 24 24
B0_0764:		ora $1612, x	; 1d 12 16
B0_0767:		asl $6820		; 0e 20 68
B0_076a:		ora $00			; 05 00
B0_076c:		bit $24			; 24 24
B0_076e:		rol $2329		; 2e 29 23
B0_0771:		cpy #$7f		; c0 7f
B0_0773:		tax				; aa 
B0_0774:	.db $23
B0_0775:	.db $c2
B0_0776:		ora ($ea, x)	; 01 ea
B0_0778:	.db $ff
B0_0779:		and ($cd, x)	; 21 cd
B0_077b:	.db $07
B0_077c:		bit $24			; 24 24
B0_077e:		and #$24		; 29 24
B0_0780:		bit $24			; 24 24
B0_0782:		bit $21			; 24 21
B0_0784:	.db $4b
B0_0785:		ora #$20		; 09 20
B0_0787:		clc				; 18 
B0_0788:	.db $1b
B0_0789:		ora $0d, x		; 15 0d
B0_078b:		bit $24			; 24 24
B0_078d:		plp				; 28 
B0_078e:		bit $22			; 24 22
B0_0790:	.db $0c
B0_0791:	.db $47
B0_0792:		bit $23			; 24 23
B0_0794:	.db $dc
B0_0795:		ora ($ba, x)	; 01 ba
B0_0797:	.db $ff
B0_0798:		and ($cd, x)	; 21 cd
B0_079a:		ora $16			; 05 16
B0_079c:		asl a			; 0a
B0_079d:	.db $1b
B0_079e:	.db $12
B0_079f:		clc				; 18 
B0_07a0:	.db $22
B0_07a1:	.db $0c
B0_07a2:	.db $07
B0_07a3:		ora $1612, x	; 1d 12 16
B0_07a6:		asl $1e24		; 0e 24 1e
B0_07a9:		ora $21ff, y	; 19 ff 21
B0_07ac:		cmp $1605		; cd 05 16
B0_07af:		asl a			; 0a
B0_07b0:	.db $1b
B0_07b1:	.db $12
B0_07b2:		clc				; 18 
B0_07b3:	.db $22
B0_07b4:	.db $0b
B0_07b5:		ora #$10		; 09 10
B0_07b7:		asl a			; 0a
B0_07b8:		asl $0e, x		; 16 0e
B0_07ba:		bit $18			; 24 18
B0_07bc:	.db $1f
B0_07bd:		asl $ff1b		; 0e 1b ff
B0_07c0:		and $84			; 25 84
B0_07c2:		ora $20, x		; 15 20
B0_07c4:		asl $0c15		; 0e 15 0c
B0_07c7:		clc				; 18 
B0_07c8:		asl $0e, x		; 16 0e
B0_07ca:		bit $1d			; 24 1d
B0_07cc:		clc				; 18 
B0_07cd:		bit $20			; 24 20
B0_07cf:		asl a			; 0a
B0_07d0:	.db $1b
B0_07d1:		ora $2324, y	; 19 24 23
B0_07d4:		clc				; 18 
B0_07d5:	.db $17
B0_07d6:		asl $262b		; 0e 2b 26
B0_07d9:		and $01			; 25 01
B0_07db:		bit $26			; 24 26
B0_07dd:		and $2401		; 2d 01 24
B0_07e0:		rol $35			; 26 35
B0_07e2:		ora ($24, x)	; 01 24
B0_07e4:	.db $27
B0_07e5:		cmp $aa46, y	; d9 46 aa
B0_07e8:	.db $27
B0_07e9:		sbc ($45, x)	; e1 45
B0_07eb:		tax				; aa 
B0_07ec:	.db $ff
B0_07ed:		ora $1e, x		; 15 1e
B0_07ef:	.db $12
B0_07f0:		bpl B0_0804 ; 10 12
B0_07f2:	.db $04
B0_07f3:	.db $03
B0_07f4:	.db $02
B0_07f5:		brk				; 00
B0_07f6:		bit $05			; 24 05
B0_07f8:		bit $00			; 24 00
B0_07fa:		php				; 08 
B0_07fb:	.db $07
B0_07fc:		asl $00			; 06 00
B0_07fe:		brk				; 00
B0_07ff:		brk				; 00
B0_0800:	.db $27
B0_0801:	.db $27
B0_0802:		lsr $4e			; 46 4e
B0_0804:		eor $6e61, y	; 59 61 6e
B0_0807:		ror $0a48		; 6e 48 0a
B0_080a:		tay				; a8 
B0_080b:		cpy #$04		; c0 04
B0_080d:		bcc B0_081b ; 90 0c
B0_080f:		cpy #$08		; c0 08
B0_0811:		bcc B0_0815 ; 90 02
B0_0813:		ldy #$08		; a0 08
B0_0815:		lda $077a		; ad 7a 07
B0_0818:		bne B0_081b ; d0 01
B0_081a:		iny				; c8 
B0_081b:		ldx $87fe, y	; be fe 87
B0_081e:		ldy #$00		; a0 00
B0_0820:		lda $8752, x	; bd 52 87
B0_0823:		cmp #$ff		; c9 ff
B0_0825:		beq B0_082e ; f0 07
B0_0827:		sta $0301, y	; 99 01 03
B0_082a:		inx				; e8 
B0_082b:		iny				; c8 
B0_082c:		bne B0_0820 ; d0 f2
B0_082e:		lda #$00		; a9 00
B0_0830:		sta $0301, y	; 99 01 03
B0_0833:		pla				; 68 
B0_0834:		tax				; aa 
B0_0835:		cmp #$04		; c9 04
B0_0837:		bcs B0_0882 ; b0 49
B0_0839:		dex				; ca 
B0_083a:		bne B0_085f ; d0 23
B0_083c:		lda $075a		; ad 5a 07
B0_083f:		clc				; 18 
B0_0840:		adc #$01		; 69 01
B0_0842:		cmp #$0a		; c9 0a
B0_0844:		bcc B0_084d ; 90 07
B0_0846:		sbc #$0a		; e9 0a
B0_0848:		ldy #$9f		; a0 9f
B0_084a:		sty $0308		; 8c 08 03
B0_084d:		sta $0309		; 8d 09 03
B0_0850:		ldy $075f		; ac 5f 07
B0_0853:		iny				; c8 
B0_0854:		sty $0314		; 8c 14 03
B0_0857:		ldy $075c		; ac 5c 07
B0_085a:		iny				; c8 
B0_085b:		sty $0316		; 8c 16 03
B0_085e:		rts				; 60 
B0_085f:		lda $077a		; ad 7a 07
B0_0862:		beq B0_0881 ; f0 1d
B0_0864:		lda $0753		; ad 53 07
B0_0867:		dex				; ca 
B0_0868:		bne B0_0873 ; d0 09
B0_086a:		ldy $0770		; ac 70 07
B0_086d:		cpy #$03		; c0 03
B0_086f:		beq B0_0873 ; f0 02
B0_0871:		eor #$01		; 49 01
B0_0873:		lsr a			; 4a
B0_0874:		bcc B0_0881 ; 90 0b
B0_0876:		ldy #$04		; a0 04
B0_0878:		lda $87ed, y	; b9 ed 87
B0_087b:		sta $0304, y	; 99 04 03
B0_087e:		dey				; 88 
B0_087f:		bpl B0_0878 ; 10 f7
B0_0881:		rts				; 60 
B0_0882:		sbc #$04		; e9 04
B0_0884:		asl a			; 0a
B0_0885:		asl a			; 0a
B0_0886:		tax				; aa 
B0_0887:		ldy #$00		; a0 00
B0_0889:		lda $87f2, x	; bd f2 87
B0_088c:		sta $031c, y	; 99 1c 03
B0_088f:		inx				; e8 
B0_0890:		iny				; c8 
B0_0891:		iny				; c8 
B0_0892:		iny				; c8 
B0_0893:		iny				; c8 
B0_0894:		cpy #$0c		; c0 0c
B0_0896:		bcc B0_0889 ; 90 f1
B0_0898:		lda #$2c		; a9 2c
B0_089a:		jmp $863f		; 4c 3f 86
B0_089d:		lda $07a0		; ad a0 07
B0_08a0:		bne B0_08ad ; d0 0b
B0_08a2:		jsr $8220		; 20 20 82
B0_08a5:		lda #$07		; a9 07
B0_08a7:		sta $07a0		; 8d a0 07
B0_08aa:		inc $073c		; ee 3c 07
B0_08ad:		rts				; 60 
B0_08ae:		lda $0726		; ad 26 07
B0_08b1:		and #$01		; 29 01
B0_08b3:		sta $05			; 85 05
B0_08b5:		ldy $0340		; ac 40 03
B0_08b8:		sty $00			; 84 00
B0_08ba:		lda $0721		; ad 21 07
B0_08bd:		sta $0342, y	; 99 42 03
B0_08c0:		lda $0720		; ad 20 07
B0_08c3:		sta $0341, y	; 99 41 03
B0_08c6:		lda #$9a		; a9 9a
B0_08c8:		sta $0343, y	; 99 43 03
B0_08cb:		lda #$00		; a9 00
B0_08cd:		sta $04			; 85 04
B0_08cf:		tax				; aa 
B0_08d0:		stx $01			; 86 01
B0_08d2:		lda $06a1, x	; bd a1 06
B0_08d5:		and #$c0		; 29 c0
B0_08d7:		sta $03			; 85 03
B0_08d9:		asl a			; 0a
B0_08da:		rol a			; 2a
B0_08db:		rol a			; 2a
B0_08dc:		tay				; a8 
B0_08dd:		lda $8b08, y	; b9 08 8b
B0_08e0:		sta $06			; 85 06
B0_08e2:		lda $8b0c, y	; b9 0c 8b
B0_08e5:		sta $07			; 85 07
B0_08e7:		lda $06a1, x	; bd a1 06
B0_08ea:		asl a			; 0a
B0_08eb:		asl a			; 0a
B0_08ec:		sta $02			; 85 02
B0_08ee:		lda $071f		; ad 1f 07
B0_08f1:		and #$01		; 29 01
B0_08f3:		eor #$01		; 49 01
B0_08f5:		asl a			; 0a
B0_08f6:		adc $02			; 65 02
B0_08f8:		tay				; a8 
B0_08f9:		ldx $00			; a6 00
B0_08fb:		lda ($06), y	; b1 06
B0_08fd:		sta $0344, x	; 9d 44 03
B0_0900:		iny				; c8 
B0_0901:		lda ($06), y	; b1 06
B0_0903:		sta $0345, x	; 9d 45 03
B0_0906:		ldy $04			; a4 04
B0_0908:		lda $05			; a5 05
B0_090a:		bne B0_091a ; d0 0e
B0_090c:		lda $01			; a5 01
B0_090e:		lsr a			; 4a
B0_090f:		bcs B0_092a ; b0 19
B0_0911:		rol $03			; 26 03
B0_0913:		rol $03			; 26 03
B0_0915:		rol $03			; 26 03
B0_0917:		jmp $8930		; 4c 30 89
B0_091a:		lda $01			; a5 01
B0_091c:		lsr a			; 4a
B0_091d:		bcs B0_092e ; b0 0f
B0_091f:		lsr $03			; 46 03
B0_0921:		lsr $03			; 46 03
B0_0923:		lsr $03			; 46 03
B0_0925:		lsr $03			; 46 03
B0_0927:		jmp $8930		; 4c 30 89
B0_092a:		lsr $03			; 46 03
B0_092c:		lsr $03			; 46 03
B0_092e:		inc $04			; e6 04
B0_0930:		lda $03f9, y	; b9 f9 03
B0_0933:		ora $03			; 05 03
B0_0935:		sta $03f9, y	; 99 f9 03
B0_0938:		inc $00			; e6 00
B0_093a:		inc $00			; e6 00
B0_093c:		ldx $01			; a6 01
B0_093e:		inx				; e8 
B0_093f:		cpx #$0d		; e0 0d
B0_0941:		bcc B0_08d0 ; 90 8d
B0_0943:		ldy $00			; a4 00
B0_0945:		iny				; c8 
B0_0946:		iny				; c8 
B0_0947:		iny				; c8 
B0_0948:		lda #$00		; a9 00
B0_094a:		sta $0341, y	; 99 41 03
B0_094d:		sty $0340		; 8c 40 03
B0_0950:		inc $0721		; ee 21 07
B0_0953:		lda $0721		; ad 21 07
B0_0956:		and #$1f		; 29 1f
B0_0958:		bne B0_0967 ; d0 0d
B0_095a:		lda #$80		; a9 80
B0_095c:		sta $0721		; 8d 21 07
B0_095f:		lda $0720		; ad 20 07
B0_0962:		eor #$04		; 49 04
B0_0964:		sta $0720		; 8d 20 07
B0_0967:		jmp $89bd		; 4c bd 89
B0_096a:		lda $0721		; ad 21 07
B0_096d:		and #$1f		; 29 1f
B0_096f:		sec				; 38 
B0_0970:		sbc #$04		; e9 04
B0_0972:		and #$1f		; 29 1f
B0_0974:		sta $01			; 85 01
B0_0976:		lda $0720		; ad 20 07
B0_0979:		bcs B0_097d ; b0 02
B0_097b:		eor #$04		; 49 04
B0_097d:		and #$04		; 29 04
B0_097f:		ora #$23		; 09 23
B0_0981:		sta $00			; 85 00
B0_0983:		lda $01			; a5 01
B0_0985:		lsr a			; 4a
B0_0986:		lsr a			; 4a
B0_0987:		adc #$c0		; 69 c0
B0_0989:		sta $01			; 85 01
B0_098b:		ldx #$00		; a2 00
B0_098d:		ldy $0340		; ac 40 03
B0_0990:		lda $00			; a5 00
B0_0992:		sta $0341, y	; 99 41 03
B0_0995:		lda $01			; a5 01
B0_0997:		clc				; 18 
B0_0998:		adc #$08		; 69 08
B0_099a:		sta $0342, y	; 99 42 03
B0_099d:		sta $01			; 85 01
B0_099f:		lda $03f9, x	; bd f9 03
B0_09a2:		sta $0344, y	; 99 44 03
B0_09a5:		lda #$01		; a9 01
B0_09a7:		sta $0343, y	; 99 43 03
B0_09aa:		lsr a			; 4a
B0_09ab:		sta $03f9, x	; 9d f9 03
B0_09ae:		iny				; c8 
B0_09af:		iny				; c8 
B0_09b0:		iny				; c8 
B0_09b1:		iny				; c8 
B0_09b2:		inx				; e8 
B0_09b3:		cpx #$07		; e0 07
B0_09b5:		bcc B0_0990 ; 90 d9
B0_09b7:		sta $0341, y	; 99 41 03
B0_09ba:		sty $0340		; 8c 40 03
B0_09bd:		lda #$06		; a9 06
B0_09bf:		sta $0773		; 8d 73 07
B0_09c2:		rts				; 60 
B0_09c3:	.db $27
B0_09c4:	.db $27
B0_09c5:	.db $27
B0_09c6:	.db $17
B0_09c7:	.db $07
B0_09c8:	.db $17
B0_09c9:	.db $3f
B0_09ca:	.db $0c
B0_09cb:	.db $04
B0_09cc:	.db $ff
B0_09cd:	.db $ff
B0_09ce:	.db $ff
B0_09cf:	.db $ff
B0_09d0:		brk				; 00
B0_09d1:	.db $0f
B0_09d2:	.db $07
B0_09d3:	.db $12
B0_09d4:	.db $0f
B0_09d5:	.db $0f
B0_09d6:	.db $07
B0_09d7:	.db $17
B0_09d8:	.db $0f
B0_09d9:	.db $0f
B0_09da:	.db $07
B0_09db:	.db $17
B0_09dc:	.db $1c
B0_09dd:	.db $0f
B0_09de:	.db $07
B0_09df:	.db $17
B0_09e0:		brk				; 00
B0_09e1:		lda $09			; a5 09
B0_09e3:		and #$07		; 29 07
B0_09e5:		bne B0_0a38 ; d0 51
B0_09e7:		ldx $0300		; ae 00 03
B0_09ea:		cpx #$31		; e0 31
B0_09ec:		bcs B0_0a38 ; b0 4a
B0_09ee:		tay				; a8 
B0_09ef:		lda $89c9, y	; b9 c9 89
B0_09f2:		sta $0301, x	; 9d 01 03
B0_09f5:		inx				; e8 
B0_09f6:		iny				; c8 
B0_09f7:		cpy #$08		; c0 08
B0_09f9:		bcc B0_09ef ; 90 f4
B0_09fb:		ldx $0300		; ae 00 03
B0_09fe:		lda #$03		; a9 03
B0_0a00:		sta $00			; 85 00
B0_0a02:		lda $074e		; ad 4e 07
B0_0a05:		asl a			; 0a
B0_0a06:		asl a			; 0a
B0_0a07:		tay				; a8 
B0_0a08:		lda $89d1, y	; b9 d1 89
B0_0a0b:		sta $0304, x	; 9d 04 03
B0_0a0e:		iny				; c8 
B0_0a0f:		inx				; e8 
B0_0a10:		dec $00			; c6 00
B0_0a12:		bpl B0_0a08 ; 10 f4
B0_0a14:		ldx $0300		; ae 00 03
B0_0a17:		ldy $06d4		; ac d4 06
B0_0a1a:		lda $89c3, y	; b9 c3 89
B0_0a1d:		sta $0305, x	; 9d 05 03
B0_0a20:		lda $0300		; ad 00 03
B0_0a23:		clc				; 18 
B0_0a24:		adc #$07		; 69 07
B0_0a26:		sta $0300		; 8d 00 03
B0_0a29:		inc $06d4		; ee d4 06
B0_0a2c:		lda $06d4		; ad d4 06
B0_0a2f:		cmp #$06		; c9 06
B0_0a31:		bcc B0_0a38 ; 90 05
B0_0a33:		lda #$00		; a9 00
B0_0a35:		sta $06d4		; 8d d4 06
B0_0a38:		rts				; 60 
B0_0a39:		eor $45			; 45 45
B0_0a3b:	.db $47
B0_0a3c:	.db $47
B0_0a3d:	.db $47
B0_0a3e:	.db $47
B0_0a3f:	.db $47
B0_0a40:	.db $47
B0_0a41:	.db $57
B0_0a42:		cli				; 58 
B0_0a43:		eor $245a, y	; 59 5a 24
B0_0a46:		bit $24			; 24 24
B0_0a48:		bit $26			; 24 26
B0_0a4a:		rol $26			; 26 26
B0_0a4c:		rol $a0			; 26 a0
B0_0a4e:		eor ($a9, x)	; 41 a9
B0_0a50:	.db $03
B0_0a51:		ldx $074e		; ae 4e 07
B0_0a54:		bne B0_0a58 ; d0 02
B0_0a56:		lda #$04		; a9 04
B0_0a58:		jsr $8a97		; 20 97 8a
B0_0a5b:		lda #$06		; a9 06
B0_0a5d:		sta $0773		; 8d 73 07
B0_0a60:		rts				; 60 
B0_0a61:		jsr $8a6d		; 20 6d 8a
B0_0a64:		inc $03f0		; ee f0 03
B0_0a67:		dec $03ec, x	; de ec 03
B0_0a6a:		rts				; 60 
B0_0a6b:		lda #$00		; a9 00
B0_0a6d:		ldy #$03		; a0 03
B0_0a6f:		cmp #$00		; c9 00
B0_0a71:		beq B0_0a87 ; f0 14
B0_0a73:		ldy #$00		; a0 00
B0_0a75:		cmp #$58		; c9 58
B0_0a77:		beq B0_0a87 ; f0 0e
B0_0a79:		cmp #$51		; c9 51
B0_0a7b:		beq B0_0a87 ; f0 0a
B0_0a7d:		iny				; c8 
B0_0a7e:		cmp #$5d		; c9 5d
B0_0a80:		beq B0_0a87 ; f0 05
B0_0a82:		cmp #$52		; c9 52
B0_0a84:		beq B0_0a87 ; f0 01
B0_0a86:		iny				; c8 
B0_0a87:		tya				; 98 
B0_0a88:		ldy $0300		; ac 00 03
B0_0a8b:		iny				; c8 
B0_0a8c:		jsr $8a97		; 20 97 8a
B0_0a8f:		dey				; 88 
B0_0a90:		tya				; 98 
B0_0a91:		clc				; 18 
B0_0a92:		adc #$0a		; 69 0a
B0_0a94:		jmp $863f		; 4c 3f 86
B0_0a97:		stx $00			; 86 00
B0_0a99:		sty $01			; 84 01
B0_0a9b:		asl a			; 0a
B0_0a9c:		asl a			; 0a
B0_0a9d:		tax				; aa 
B0_0a9e:		ldy #$20		; a0 20
B0_0aa0:		lda $06			; a5 06
B0_0aa2:		cmp #$d0		; c9 d0
B0_0aa4:		bcc B0_0aa8 ; 90 02
B0_0aa6:		ldy #$24		; a0 24
B0_0aa8:		sty $03			; 84 03
B0_0aaa:		and #$0f		; 29 0f
B0_0aac:		asl a			; 0a
B0_0aad:		sta $04			; 85 04
B0_0aaf:		lda #$00		; a9 00
B0_0ab1:		sta $05			; 85 05
B0_0ab3:		lda $02			; a5 02
B0_0ab5:		clc				; 18 
B0_0ab6:		adc #$20		; 69 20
B0_0ab8:		asl a			; 0a
B0_0ab9:		rol $05			; 26 05
B0_0abb:		asl a			; 0a
B0_0abc:		rol $05			; 26 05
B0_0abe:		adc $04			; 65 04
B0_0ac0:		sta $04			; 85 04
B0_0ac2:		lda $05			; a5 05
B0_0ac4:		adc #$00		; 69 00
B0_0ac6:		clc				; 18 
B0_0ac7:		adc $03			; 65 03
B0_0ac9:		sta $05			; 85 05
B0_0acb:		ldy $01			; a4 01
B0_0acd:		lda $8a39, x	; bd 39 8a
B0_0ad0:		sta $0303, y	; 99 03 03
B0_0ad3:		lda $8a3a, x	; bd 3a 8a
B0_0ad6:		sta $0304, y	; 99 04 03
B0_0ad9:		lda $8a3b, x	; bd 3b 8a
B0_0adc:		sta $0308, y	; 99 08 03
B0_0adf:		lda $8a3c, x	; bd 3c 8a
B0_0ae2:		sta $0309, y	; 99 09 03
B0_0ae5:		lda $04			; a5 04
B0_0ae7:		sta $0301, y	; 99 01 03
B0_0aea:		clc				; 18 
B0_0aeb:		adc #$20		; 69 20
B0_0aed:		sta $0306, y	; 99 06 03
B0_0af0:		lda $05			; a5 05
B0_0af2:		sta $0300, y	; 99 00 03
B0_0af5:		sta $0305, y	; 99 05 03
B0_0af8:		lda #$02		; a9 02
B0_0afa:		sta $0302, y	; 99 02 03
B0_0afd:		sta $0307, y	; 99 07 03
B0_0b00:		lda #$00		; a9 00
B0_0b02:		sta $030a, y	; 99 0a 03
B0_0b05:		ldx $00			; a6 00
B0_0b07:		rts				; 60 
B0_0b08:		bpl B0_0ab6 ; 10 ac
B0_0b0a:	.db $64
B0_0b0b:		sty $8b8b		; 8c 8b 8b
B0_0b0e:		sty $248c		; 8c 8c 24
B0_0b11:		bit $24			; 24 24
B0_0b13:		bit $27			; 24 27
B0_0b15:	.db $27
B0_0b16:	.db $27
B0_0b17:	.db $27
B0_0b18:		bit $24			; 24 24
B0_0b1a:		bit $35			; 24 35
B0_0b1c:		rol $25, x		; 36 25
B0_0b1e:	.db $37
B0_0b1f:		and $24			; 25 24
B0_0b21:		sec				; 38 
B0_0b22:		bit $24			; 24 24
B0_0b24:		bit $30			; 24 30
B0_0b26:		;removed
	.hex  30 26
B0_0b28:		rol $26			; 26 26
B0_0b2a:	.db $34
B0_0b2b:		rol $24			; 26 24
B0_0b2d:		and ($24), y	; 31 24
B0_0b2f:	.db $32
B0_0b30:	.db $33
B0_0b31:		rol $24			; 26 24
B0_0b33:	.db $33
B0_0b34:	.db $34
B0_0b35:		rol $26			; 26 26
B0_0b37:		rol $26			; 26 26
B0_0b39:		rol $26			; 26 26
B0_0b3b:		rol $24			; 26 24
B0_0b3d:		cpy #$24		; c0 24
B0_0b3f:		cpy #$24		; c0 24
B0_0b41:	.db $7f
B0_0b42:	.db $7f
B0_0b43:		bit $b8			; 24 b8
B0_0b45:		tsx				; ba 
B0_0b46:		lda $b8bb, y	; b9 bb b8
B0_0b49:		ldy $bdb9, x	; bc b9 bd
B0_0b4c:		tsx				; ba 
B0_0b4d:		ldy $bdbb, x	; bc bb bd
B0_0b50:		rts				; 60 
B0_0b51:	.db $64
B0_0b52:		adc ($65, x)	; 61 65
B0_0b54:	.db $62
B0_0b55:		ror $63			; 66 63
B0_0b57:	.db $67
B0_0b58:		rts				; 60 
B0_0b59:	.db $64
B0_0b5a:		adc ($65, x)	; 61 65
B0_0b5c:	.db $62
B0_0b5d:		ror $63			; 66 63
B0_0b5f:	.db $67
B0_0b60:		pla				; 68 
B0_0b61:		pla				; 68 
B0_0b62:		adc #$69		; 69 69
B0_0b64:		rol $26			; 26 26
B0_0b66:		ror a			; 6a
B0_0b67:		ror a			; 6a
B0_0b68:	.db $4b
B0_0b69:		jmp $4e4d		; 4c 4d 4e
B0_0b6c:		eor $4d4f		; 4d 4f 4d
B0_0b6f:	.db $4f
B0_0b70:		eor $504e		; 4d 4e 50
B0_0b73:		eor ($6b), y	; 51 6b
B0_0b75:		;removed
	.hex  70 2c
B0_0b77:		and $716c		; 2d 6c 71
B0_0b7a:		adc $6e72		; 6d 72 6e
B0_0b7d:	.db $73
B0_0b7e:	.db $6f
B0_0b7f:	.db $74
B0_0b80:		stx $8a			; 86 8a
B0_0b82:	.db $87
B0_0b83:	.db $8b
B0_0b84:		dey				; 88 
B0_0b85:		sty $8c88		; 8c 88 8c
B0_0b88:	.db $89
B0_0b89:		sta $6969		; 8d 69 69
B0_0b8c:		stx $8f91		; 8e 91 8f
B0_0b8f:	.db $92
B0_0b90:		rol $93			; 26 93
B0_0b92:		rol $93			; 26 93
B0_0b94:		bcc B0_0b2a ; 90 94
B0_0b96:		adc #$69		; 69 69
B0_0b98:		ldy $e9			; a4 e9
B0_0b9a:		nop				; ea 
B0_0b9b:	.db $eb
B0_0b9c:		bit $24			; 24 24
B0_0b9e:		bit $24			; 24 24
B0_0ba0:		bit $2f			; 24 2f
B0_0ba2:		bit $3d			; 24 3d
B0_0ba4:		ldx #$a2		; a2 a2
B0_0ba6:	.db $a3
B0_0ba7:	.db $a3
B0_0ba8:		bit $24			; 24 24
B0_0baa:		bit $24			; 24 24
B0_0bac:		ldx #$a2		; a2 a2
B0_0bae:	.db $a3
B0_0baf:	.db $a3
B0_0bb0:		sta $9924, y	; 99 24 99
B0_0bb3:		bit $24			; 24 24
B0_0bb5:		ldx #$3e		; a2 3e
B0_0bb7:	.db $3f
B0_0bb8:	.db $5b
B0_0bb9:	.db $5c
B0_0bba:		bit $a3			; 24 a3
B0_0bbc:		bit $24			; 24 24
B0_0bbe:		bit $24			; 24 24
B0_0bc0:		sta $9e47, x	; 9d 47 9e
B0_0bc3:	.db $47
B0_0bc4:	.db $47
B0_0bc5:	.db $47
B0_0bc6:	.db $27
B0_0bc7:	.db $27
B0_0bc8:	.db $47
B0_0bc9:	.db $47
B0_0bca:	.db $47
B0_0bcb:	.db $47
B0_0bcc:	.db $27
B0_0bcd:	.db $27
B0_0bce:	.db $47
B0_0bcf:	.db $47
B0_0bd0:		lda #$47		; a9 47
B0_0bd2:		tax				; aa 
B0_0bd3:	.db $47
B0_0bd4:	.db $9b
B0_0bd5:	.db $27
B0_0bd6:	.db $9c
B0_0bd7:	.db $27
B0_0bd8:	.db $27
B0_0bd9:	.db $27
B0_0bda:	.db $27
B0_0bdb:	.db $27
B0_0bdc:	.db $52
B0_0bdd:	.db $52
B0_0bde:	.db $52
B0_0bdf:	.db $52
B0_0be0:	.db $80
B0_0be1:		ldy #$81		; a0 81
B0_0be3:		lda ($be, x)	; a1 be
B0_0be5:		ldx $bfbf, y	; be bf bf
B0_0be8:		adc $ba, x		; 75 ba
B0_0bea:		ror $bb, x		; 76 bb
B0_0bec:		tsx				; ba 
B0_0bed:		tsx				; ba 
B0_0bee:	.db $bb
B0_0bef:	.db $bb
B0_0bf0:		eor $47			; 45 47
B0_0bf2:		eor $47			; 45 47
B0_0bf4:	.db $47
B0_0bf5:	.db $47
B0_0bf6:	.db $47
B0_0bf7:	.db $47
B0_0bf8:		eor $47			; 45 47
B0_0bfa:		eor $47			; 45 47
B0_0bfc:		ldy $b6, x		; b4 b6
B0_0bfe:		lda $b7, x		; b5 b7
B0_0c00:		eor $47			; 45 47
B0_0c02:		eor $47			; 45 47
B0_0c04:		eor $47			; 45 47
B0_0c06:		eor $47			; 45 47
B0_0c08:		eor $47			; 45 47
B0_0c0a:		eor $47			; 45 47
B0_0c0c:		eor $47			; 45 47
B0_0c0e:		eor $47			; 45 47
B0_0c10:		eor $47			; 45 47
B0_0c12:		eor $47			; 45 47
B0_0c14:	.db $47
B0_0c15:	.db $47
B0_0c16:	.db $47
B0_0c17:	.db $47
B0_0c18:	.db $47
B0_0c19:	.db $47
B0_0c1a:	.db $47
B0_0c1b:	.db $47
B0_0c1c:	.db $47
B0_0c1d:	.db $47
B0_0c1e:	.db $47
B0_0c1f:	.db $47
B0_0c20:	.db $47
B0_0c21:	.db $47
B0_0c22:	.db $47
B0_0c23:	.db $47
B0_0c24:	.db $47
B0_0c25:	.db $47
B0_0c26:	.db $47
B0_0c27:	.db $47
B0_0c28:		bit $24			; 24 24
B0_0c2a:		bit $24			; 24 24
B0_0c2c:		bit $24			; 24 24
B0_0c2e:		bit $24			; 24 24
B0_0c30:	.db $ab
B0_0c31:		ldy $aead		; ac ad ae
B0_0c34:		eor $5d5e, x	; 5d 5e 5d
B0_0c37:		lsr $24c1, x	; 5e c1 24
B0_0c3a:		cmp ($24, x)	; c1 24
B0_0c3c:		dec $c8			; c6 c8
B0_0c3e:	.db $c7
B0_0c3f:		cmp #$ca		; c9 ca
B0_0c41:		cpy $cdcb		; cc cb cd
B0_0c44:		rol a			; 2a
B0_0c45:		rol a			; 2a
B0_0c46:		rti				; 40 
B0_0c47:		rti				; 40 
B0_0c48:		bit $24			; 24 24
B0_0c4a:		bit $24			; 24 24
B0_0c4c:		bit $47			; 24 47
B0_0c4e:		bit $47			; 24 47
B0_0c50:	.db $82
B0_0c51:	.db $83
B0_0c52:		sty $85			; 84 85
B0_0c54:		bit $47			; 24 47
B0_0c56:		bit $47			; 24 47
B0_0c58:		stx $8a			; 86 8a
B0_0c5a:	.db $87
B0_0c5b:	.db $8b
B0_0c5c:		stx $8f91		; 8e 91 8f
B0_0c5f:	.db $92
B0_0c60:		bit $2f			; 24 2f
B0_0c62:		bit $3d			; 24 3d
B0_0c64:		bit $24			; 24 24
B0_0c66:		bit $35			; 24 35
B0_0c68:		rol $25, x		; 36 25
B0_0c6a:	.db $37
B0_0c6b:		and $24			; 25 24
B0_0c6d:		sec				; 38 
B0_0c6e:		bit $24			; 24 24
B0_0c70:		bit $24			; 24 24
B0_0c72:		and $3a24, y	; 39 24 3a
B0_0c75:		bit $3b			; 24 3b
B0_0c77:		bit $3c			; 24 3c
B0_0c79:		bit $24			; 24 24
B0_0c7b:		bit $41			; 24 41
B0_0c7d:		rol $41			; 26 41
B0_0c7f:		rol $26			; 26 26
B0_0c81:		rol $26			; 26 26
B0_0c83:		rol $b0			; 26 b0
B0_0c85:		lda ($b2), y	; b1 b2
B0_0c87:	.db $b3
B0_0c88:	.db $77
B0_0c89:		adc $7977, y	; 79 77 79
B0_0c8c:	.db $53
B0_0c8d:		eor $54, x		; 55 54
B0_0c8f:		lsr $53, x		; 56 53
B0_0c91:		eor $54, x		; 55 54
B0_0c93:		lsr $a5, x		; 56 a5
B0_0c95:	.db $a7
B0_0c96:		ldx $a8			; a6 a8
B0_0c98:	.db $c2
B0_0c99:		cpy $c3			; c4 c3
B0_0c9b:		cmp $57			; c5 57
B0_0c9d:		eor $5a58, y	; 59 58 5a
B0_0ca0:	.db $7b
B0_0ca1:		adc $7e7c, x	; 7d 7c 7e
B0_0ca4:	.db $3f
B0_0ca5:		brk				; 00
B0_0ca6:		jsr $150f		; 20 0f 15
B0_0ca9:	.db $12
B0_0caa:		and $0f			; 25 0f
B0_0cac:	.db $3a
B0_0cad:	.db $1a
B0_0cae:	.db $0f
B0_0caf:	.db $0f
B0_0cb0:		bmi B0_0cc4 ; 30 12
B0_0cb2:	.db $0f
B0_0cb3:	.db $0f
B0_0cb4:	.db $27
B0_0cb5:	.db $12
B0_0cb6:	.db $0f
B0_0cb7:	.db $22
B0_0cb8:		asl $27, x		; 16 27
B0_0cba:		clc				; 18 
B0_0cbb:	.db $0f
B0_0cbc:		bpl B0_0cee ; 10 30
B0_0cbe:	.db $27
B0_0cbf:	.db $0f
B0_0cc0:		asl $30, x		; 16 30
B0_0cc2:	.db $27
B0_0cc3:	.db $0f
B0_0cc4:	.db $0f
B0_0cc5:		bmi B0_0cd7 ; 30 10
B0_0cc7:		brk				; 00
B0_0cc8:	.db $3f
B0_0cc9:		brk				; 00
B0_0cca:		jsr $290f		; 20 0f 29
B0_0ccd:	.db $1a
B0_0cce:	.db $0f
B0_0ccf:	.db $0f
B0_0cd0:		rol $17, x		; 36 17
B0_0cd2:	.db $0f
B0_0cd3:	.db $0f
B0_0cd4:		bmi B0_0cf7 ; 30 21
B0_0cd6:	.db $0f
B0_0cd7:	.db $0f
B0_0cd8:	.db $27
B0_0cd9:	.db $17
B0_0cda:	.db $0f
B0_0cdb:	.db $0f
B0_0cdc:		asl $27, x		; 16 27
B0_0cde:		clc				; 18 
B0_0cdf:	.db $0f
B0_0ce0:	.db $1a
B0_0ce1:		bmi B0_0d0a ; 30 27
B0_0ce3:	.db $0f
B0_0ce4:		asl $30, x		; 16 30
B0_0ce6:	.db $27
B0_0ce7:	.db $0f
B0_0ce8:	.db $0f
B0_0ce9:		rol $17, x		; 36 17
B0_0ceb:		brk				; 00
B0_0cec:	.db $3f
B0_0ced:		brk				; 00
B0_0cee:		jsr $290f		; 20 0f 29
B0_0cf1:	.db $1a
B0_0cf2:		ora #$0f		; 09 0f
B0_0cf4:	.db $3c
B0_0cf5:	.db $1c
B0_0cf6:	.db $0f
B0_0cf7:	.db $0f
B0_0cf8:		bmi B0_0d1b ; 30 21
B0_0cfa:	.db $1c
B0_0cfb:	.db $0f
B0_0cfc:	.db $27
B0_0cfd:	.db $17
B0_0cfe:	.db $1c
B0_0cff:	.db $0f
B0_0d00:		asl $27, x		; 16 27
B0_0d02:		clc				; 18 
B0_0d03:	.db $0f
B0_0d04:	.db $1c
B0_0d05:		rol $17, x		; 36 17
B0_0d07:	.db $0f
B0_0d08:		asl $30, x		; 16 30
B0_0d0a:	.db $27
B0_0d0b:	.db $0f
B0_0d0c:	.db $0c
B0_0d0d:	.db $3c
B0_0d0e:	.db $1c
B0_0d0f:		brk				; 00
B0_0d10:	.db $3f
B0_0d11:		brk				; 00
B0_0d12:		jsr $300f		; 20 0f 30
B0_0d15:		bpl B0_0d17 ; 10 00
B0_0d17:	.db $0f
B0_0d18:		;removed
	.hex  30 10
B0_0d1a:		brk				; 00
B0_0d1b:	.db $0f
B0_0d1c:		bmi B0_0d34 ; 30 16
B0_0d1e:		brk				; 00
B0_0d1f:	.db $0f
B0_0d20:	.db $27
B0_0d21:	.db $17
B0_0d22:		brk				; 00
B0_0d23:	.db $0f
B0_0d24:		asl $27, x		; 16 27
B0_0d26:		clc				; 18 
B0_0d27:	.db $0f
B0_0d28:	.db $1c
B0_0d29:		rol $17, x		; 36 17
B0_0d2b:	.db $0f
B0_0d2c:		asl $30, x		; 16 30
B0_0d2e:	.db $27
B0_0d2f:	.db $0f
B0_0d30:		brk				; 00
B0_0d31:		;removed
	.hex  30 10
B0_0d33:		brk				; 00
B0_0d34:	.db $3f
B0_0d35:		brk				; 00
B0_0d36:	.db $04
B0_0d37:	.db $22
B0_0d38:		bmi B0_0d3a ; 30 00
B0_0d3a:		bpl B0_0d3c ; 10 00
B0_0d3c:	.db $3f
B0_0d3d:		brk				; 00
B0_0d3e:	.db $04
B0_0d3f:	.db $0f
B0_0d40:		bmi B0_0d42 ; 30 00
B0_0d42:		bpl B0_0d44 ; 10 00
B0_0d44:	.db $3f
B0_0d45:		brk				; 00
B0_0d46:	.db $04
B0_0d47:	.db $22
B0_0d48:	.db $27
B0_0d49:		asl $0f, x		; 16 0f
B0_0d4b:		brk				; 00
B0_0d4c:	.db $3f
B0_0d4d:	.db $14
B0_0d4e:	.db $04
B0_0d4f:	.db $0f
B0_0d50:	.db $1a
B0_0d51:		bmi B0_0d7a ; 30 27
B0_0d53:		brk				; 00
B0_0d54:		and $48			; 25 48
B0_0d56:		;removed
	.hex  10 1d
B0_0d58:		ora ($0a), y	; 11 0a
B0_0d5a:	.db $17
B0_0d5b:	.db $14
B0_0d5c:		bit $22			; 24 22
B0_0d5e:		clc				; 18 
B0_0d5f:		asl $1624, x	; 1e 24 16
B0_0d62:		asl a			; 0a
B0_0d63:	.db $1b
B0_0d64:	.db $12
B0_0d65:		clc				; 18 
B0_0d66:	.db $2b
B0_0d67:		brk				; 00
B0_0d68:		and $48			; 25 48
B0_0d6a:		;removed
	.hex  10 1d
B0_0d6c:		ora ($0a), y	; 11 0a
B0_0d6e:	.db $17
B0_0d6f:	.db $14
B0_0d70:		bit $22			; 24 22
B0_0d72:		clc				; 18 
B0_0d73:		asl $1524, x	; 1e 24 15
B0_0d76:		asl $1012, x	; 1e 12 10
B0_0d79:	.db $12
B0_0d7a:	.db $2b
B0_0d7b:		brk				; 00
B0_0d7c:		and $c5			; 25 c5
B0_0d7e:		asl $0b, x		; 16 0b
B0_0d80:		asl $241d, x	; 1e 1d 24
B0_0d83:		clc				; 18 
B0_0d84:		asl $241b, x	; 1e 1b 24
B0_0d87:		ora $121b, y	; 19 1b 12
B0_0d8a:	.db $17
B0_0d8b:	.db $0c
B0_0d8c:		asl $1c1c		; 0e 1c 1c
B0_0d8f:		bit $12			; 24 12
B0_0d91:	.db $1c
B0_0d92:		bit $12			; 24 12
B0_0d94:	.db $17
B0_0d95:		rol $05			; 26 05
B0_0d97:	.db $0f
B0_0d98:		asl a			; 0a
B0_0d99:	.db $17
B0_0d9a:		clc				; 18 
B0_0d9b:		ora $0e11, x	; 1d 11 0e
B0_0d9e:	.db $1b
B0_0d9f:		bit $0c			; 24 0c
B0_0da1:		asl a			; 0a
B0_0da2:	.db $1c
B0_0da3:		ora $0e15, x	; 1d 15 0e
B0_0da6:	.db $2b
B0_0da7:		brk				; 00
B0_0da8:		and $a7			; 25 a7
B0_0daa:	.db $13
B0_0dab:	.db $22
B0_0dac:		clc				; 18 
B0_0dad:		asl $241b, x	; 1e 1b 24
B0_0db0:	.db $1a
B0_0db1:		asl $1c0e, x	; 1e 0e 1c
B0_0db4:		ora $1224, x	; 1d 24 12
B0_0db7:	.db $1c
B0_0db8:		bit $18			; 24 18
B0_0dba:	.db $1f
B0_0dbb:		asl $af1b		; 0e 1b af
B0_0dbe:		brk				; 00
B0_0dbf:		and $e3			; 25 e3
B0_0dc1:	.db $1b
B0_0dc2:		jsr $240e		; 20 0e 24
B0_0dc5:		ora $0e1b, y	; 19 1b 0e
B0_0dc8:	.db $1c
B0_0dc9:		asl $1d17		; 0e 17 1d
B0_0dcc:		bit $22			; 24 22
B0_0dce:		clc				; 18 
B0_0dcf:		asl $0a24, x	; 1e 24 0a
B0_0dd2:		bit $17			; 24 17
B0_0dd4:		asl $2420		; 0e 20 24
B0_0dd7:	.db $1a
B0_0dd8:		asl $1c0e, x	; 1e 0e 1c
B0_0ddb:	.hex 1d af 00
B0_0dde:		rol $4a			; 26 4a
B0_0de0:		ora $1e19		; 0d 19 1e
B0_0de3:	.db $1c
B0_0de4:		ora ($24), y	; 11 24
B0_0de6:	.db $0b
B0_0de7:		asl $1d1d, x	; 1e 1d 1d
B0_0dea:		clc				; 18 
B0_0deb:	.db $17
B0_0dec:		bit $0b			; 24 0b
B0_0dee:		brk				; 00
B0_0def:		rol $88			; 26 88
B0_0df1:		ora ($1d), y	; 11 1d
B0_0df3:		clc				; 18 
B0_0df4:		bit $1c			; 24 1c
B0_0df6:		asl $0e15		; 0e 15 0e
B0_0df9:	.db $0c
B0_0dfa:		ora $0a24, x	; 1d 24 0a
B0_0dfd:		bit $20			; 24 20
B0_0dff:		clc				; 18 
B0_0e00:	.db $1b
B0_0e01:		ora $0d, x		; 15 0d
B0_0e03:		brk				; 00
B0_0e04:		asl a			; 0a
B0_0e05:		tay				; a8 
B0_0e06:		pla				; 68 
B0_0e07:		sta $04			; 85 04
B0_0e09:		pla				; 68 
B0_0e0a:		sta $05			; 85 05
B0_0e0c:		iny				; c8 
B0_0e0d:		lda ($04), y	; b1 04
B0_0e0f:		sta $06			; 85 06
B0_0e11:		iny				; c8 
B0_0e12:		lda ($04), y	; b1 04
B0_0e14:		sta $07			; 85 07
B0_0e16:	.hex 6c 06 00
B0_0e19:		lda $2002		; ad 02 20
B0_0e1c:		lda $0778		; ad 78 07
B0_0e1f:		ora #$10		; 09 10
B0_0e21:		and #$f0		; 29 f0
B0_0e23:		jsr $8eed		; 20 ed 8e
B0_0e26:		lda #$24		; a9 24
B0_0e28:		jsr $8e2d		; 20 2d 8e
B0_0e2b:		lda #$20		; a9 20
B0_0e2d:		sta $2006		; 8d 06 20
B0_0e30:		lda #$00		; a9 00
B0_0e32:		sta $2006		; 8d 06 20
B0_0e35:		ldx #$04		; a2 04
B0_0e37:		ldy #$c0		; a0 c0
B0_0e39:		lda #$24		; a9 24
B0_0e3b:		sta $2007		; 8d 07 20
B0_0e3e:		dey				; 88 
B0_0e3f:		bne B0_0e3b ; d0 fa
B0_0e41:		dex				; ca 
B0_0e42:		bne B0_0e3b ; d0 f7
B0_0e44:		ldy #$40		; a0 40
B0_0e46:		txa				; 8a 
B0_0e47:		sta $0300		; 8d 00 03
B0_0e4a:		sta $0301		; 8d 01 03
B0_0e4d:		sta $2007		; 8d 07 20
B0_0e50:		dey				; 88 
B0_0e51:		bne B0_0e4d ; d0 fa
B0_0e53:		sta $073f		; 8d 3f 07
B0_0e56:		sta $0740		; 8d 40 07
B0_0e59:		jmp $8ee6		; 4c e6 8e
B0_0e5c:		lda #$01		; a9 01
B0_0e5e:		sta $4016		; 8d 16 40
B0_0e61:		lsr a			; 4a
B0_0e62:		tax				; aa 
B0_0e63:		sta $4016		; 8d 16 40
B0_0e66:		jsr $8e6a		; 20 6a 8e
B0_0e69:		inx				; e8 
B0_0e6a:		ldy #$08		; a0 08
B0_0e6c:		pha				; 48 
B0_0e6d:		lda $4016, x	; bd 16 40
B0_0e70:		sta $00			; 85 00
B0_0e72:		lsr a			; 4a
B0_0e73:		ora $00			; 05 00
B0_0e75:		lsr a			; 4a
B0_0e76:		pla				; 68 
B0_0e77:		rol a			; 2a
B0_0e78:		dey				; 88 
B0_0e79:		bne B0_0e6c ; d0 f1
B0_0e7b:		sta $06fc, x	; 9d fc 06
B0_0e7e:		pha				; 48 
B0_0e7f:		and #$30		; 29 30
B0_0e81:		and $074a, x	; 3d 4a 07
B0_0e84:		beq B0_0e8d ; f0 07
B0_0e86:		pla				; 68 
B0_0e87:		and #$cf		; 29 cf
B0_0e89:		sta $06fc, x	; 9d fc 06
B0_0e8c:		rts				; 60 
B0_0e8d:		pla				; 68 
B0_0e8e:		sta $074a, x	; 9d 4a 07
B0_0e91:		rts				; 60 
B0_0e92:		sta $2006		; 8d 06 20
B0_0e95:		iny				; c8 
B0_0e96:		lda ($00), y	; b1 00
B0_0e98:		sta $2006		; 8d 06 20
B0_0e9b:		iny				; c8 
B0_0e9c:		lda ($00), y	; b1 00
B0_0e9e:		asl a			; 0a
B0_0e9f:		pha				; 48 
B0_0ea0:		lda $0778		; ad 78 07
B0_0ea3:		ora #$04		; 09 04
B0_0ea5:		bcs B0_0ea9 ; b0 02
B0_0ea7:		and #$fb		; 29 fb
B0_0ea9:		jsr $8eed		; 20 ed 8e
B0_0eac:		pla				; 68 
B0_0ead:		asl a			; 0a
B0_0eae:		bcc B0_0eb3 ; 90 03
B0_0eb0:		ora #$02		; 09 02
B0_0eb2:		iny				; c8 
B0_0eb3:		lsr a			; 4a
B0_0eb4:		lsr a			; 4a
B0_0eb5:		tax				; aa 
B0_0eb6:		bcs B0_0eb9 ; b0 01
B0_0eb8:		iny				; c8 
B0_0eb9:		lda ($00), y	; b1 00
B0_0ebb:		sta $2007		; 8d 07 20
B0_0ebe:		dex				; ca 
B0_0ebf:		bne B0_0eb6 ; d0 f5
B0_0ec1:		sec				; 38 
B0_0ec2:		tya				; 98 
B0_0ec3:		adc $00			; 65 00
B0_0ec5:		sta $00			; 85 00
B0_0ec7:		lda #$00		; a9 00
B0_0ec9:		adc $01			; 65 01
B0_0ecb:		sta $01			; 85 01
B0_0ecd:		lda #$3f		; a9 3f
B0_0ecf:		sta $2006		; 8d 06 20
B0_0ed2:		lda #$00		; a9 00
B0_0ed4:		sta $2006		; 8d 06 20
B0_0ed7:		sta $2006		; 8d 06 20
B0_0eda:		sta $2006		; 8d 06 20
B0_0edd:		ldx $2002		; ae 02 20
B0_0ee0:		ldy #$00		; a0 00
B0_0ee2:		lda ($00), y	; b1 00
B0_0ee4:		bne B0_0e92 ; d0 ac
B0_0ee6:		sta $2005		; 8d 05 20
B0_0ee9:		sta $2005		; 8d 05 20
B0_0eec:		rts				; 60 
B0_0eed:		sta $2000		; 8d 00 20
B0_0ef0:		sta $0778		; 8d 78 07
B0_0ef3:		rts				; 60 
B0_0ef4:		beq B0_0efc ; f0 06
B0_0ef6:	.db $62
B0_0ef7:		asl $62			; 06 62
B0_0ef9:		asl $6d			; 06 6d
B0_0efb:	.db $02
B0_0efc:		adc $7a02		; 6d 02 7a
B0_0eff:	.db $03
B0_0f00:		asl $0c			; 06 0c
B0_0f02:	.db $12
B0_0f03:		clc				; 18 
B0_0f04:		asl $8524, x	; 1e 24 85
B0_0f07:		brk				; 00
B0_0f08:		jsr $8f11		; 20 11 8f
B0_0f0b:		lda $00			; a5 00
B0_0f0d:		lsr a			; 4a
B0_0f0e:		lsr a			; 4a
B0_0f0f:		lsr a			; 4a
B0_0f10:		lsr a			; 4a
B0_0f11:		clc				; 18 
B0_0f12:		adc #$01		; 69 01
B0_0f14:		and #$0f		; 29 0f
B0_0f16:		cmp #$06		; c9 06
B0_0f18:		bcs B0_0f5e ; b0 44
B0_0f1a:		pha				; 48 
B0_0f1b:		asl a			; 0a
B0_0f1c:		tay				; a8 
B0_0f1d:		ldx $0300		; ae 00 03
B0_0f20:		lda #$20		; a9 20
B0_0f22:		cpy #$00		; c0 00
B0_0f24:		bne B0_0f28 ; d0 02
B0_0f26:		lda #$22		; a9 22
B0_0f28:		sta $0301, x	; 9d 01 03
B0_0f2b:		lda $8ef4, y	; b9 f4 8e
B0_0f2e:		sta $0302, x	; 9d 02 03
B0_0f31:		lda $8ef5, y	; b9 f5 8e
B0_0f34:		sta $0303, x	; 9d 03 03
B0_0f37:		sta $03			; 85 03
B0_0f39:		stx $02			; 86 02
B0_0f3b:		pla				; 68 
B0_0f3c:		tax				; aa 
B0_0f3d:		lda $8f00, x	; bd 00 8f
B0_0f40:		sec				; 38 
B0_0f41:		sbc $8ef5, y	; f9 f5 8e
B0_0f44:		tay				; a8 
B0_0f45:		ldx $02			; a6 02
B0_0f47:		lda $07d7, y	; b9 d7 07
B0_0f4a:		sta $0304, x	; 9d 04 03
B0_0f4d:		inx				; e8 
B0_0f4e:		iny				; c8 
B0_0f4f:		dec $03			; c6 03
B0_0f51:		bne B0_0f47 ; d0 f4
B0_0f53:		lda #$00		; a9 00
B0_0f55:		sta $0304, x	; 9d 04 03
B0_0f58:		inx				; e8 
B0_0f59:		inx				; e8 
B0_0f5a:		inx				; e8 
B0_0f5b:		stx $0300		; 8e 00 03
B0_0f5e:		rts				; 60 
B0_0f5f:		lda $0770		; ad 70 07
B0_0f62:		cmp #$00		; c9 00
B0_0f64:		beq B0_0f7c ; f0 16
B0_0f66:		ldx #$05		; a2 05
B0_0f68:		lda $0134, x	; bd 34 01
B0_0f6b:		clc				; 18 
B0_0f6c:		adc $07d7, y	; 79 d7 07
B0_0f6f:		bmi B0_0f87 ; 30 16
B0_0f71:		cmp #$0a		; c9 0a
B0_0f73:		bcs B0_0f8e ; b0 19
B0_0f75:		sta $07d7, y	; 99 d7 07
B0_0f78:		dey				; 88 
B0_0f79:		dex				; ca 
B0_0f7a:		bpl B0_0f68 ; 10 ec
B0_0f7c:		lda #$00		; a9 00
B0_0f7e:		ldx #$06		; a2 06
B0_0f80:		sta $0133, x	; 9d 33 01
B0_0f83:		dex				; ca 
B0_0f84:		bpl B0_0f80 ; 10 fa
B0_0f86:		rts				; 60 
B0_0f87:		dec $0133, x	; de 33 01
B0_0f8a:		lda #$09		; a9 09
B0_0f8c:		bne B0_0f75 ; d0 e7
B0_0f8e:		sec				; 38 
B0_0f8f:		sbc #$0a		; e9 0a
B0_0f91:		inc $0133, x	; fe 33 01
B0_0f94:		jmp $8f75		; 4c 75 8f
B0_0f97:		ldx #$05		; a2 05
B0_0f99:		jsr $8f9e		; 20 9e 8f
B0_0f9c:		ldx #$0b		; a2 0b
B0_0f9e:		ldy #$05		; a0 05
B0_0fa0:		sec				; 38 
B0_0fa1:		lda $07dd, x	; bd dd 07
B0_0fa4:		sbc $07d7, y	; f9 d7 07
B0_0fa7:		dex				; ca 
B0_0fa8:		dey				; 88 
B0_0fa9:		bpl B0_0fa1 ; 10 f6
B0_0fab:		bcc B0_0fbb ; 90 0e
B0_0fad:		inx				; e8 
B0_0fae:		iny				; c8 
B0_0faf:		lda $07dd, x	; bd dd 07
B0_0fb2:		sta $07d7, y	; 99 d7 07
B0_0fb5:		inx				; e8 
B0_0fb6:		iny				; c8 
B0_0fb7:		cpy #$06		; c0 06
B0_0fb9:		bcc B0_0faf ; 90 f4
B0_0fbb:		rts				; 60 
B0_0fbc:	.db $04
B0_0fbd:		bmi B0_1007 ; 30 48
B0_0fbf:		rts				; 60 
B0_0fc0:		sei				; 78 
B0_0fc1:		bcc B0_0f6b ; 90 a8
B0_0fc3:		cpy #$d8		; c0 d8
B0_0fc5:		inx				; e8 
B0_0fc6:		bit $f8			; 24 f8
B0_0fc8:	.db $fc
B0_0fc9:		plp				; 28 
B0_0fca:		bit $ff18		; 2c 18 ff
B0_0fcd:	.db $23
B0_0fce:		cli				; 58 
B0_0fcf:		ldy #$6f		; a0 6f
B0_0fd1:		jsr $90cc		; 20 cc 90
B0_0fd4:		ldy #$1f		; a0 1f
B0_0fd6:		sta $07b0, y	; 99 b0 07
B0_0fd9:		dey				; 88 
B0_0fda:		bpl B0_0fd6 ; 10 fa
B0_0fdc:		lda #$18		; a9 18
B0_0fde:		sta $07a2		; 8d a2 07
B0_0fe1:		jsr $9c03		; 20 03 9c
B0_0fe4:		ldy #$4b		; a0 4b
B0_0fe6:		jsr $90cc		; 20 cc 90
B0_0fe9:		ldx #$21		; a2 21
B0_0feb:		lda #$00		; a9 00
B0_0fed:		sta $0780, x	; 9d 80 07
B0_0ff0:		dex				; ca 
B0_0ff1:		bpl B0_0fed ; 10 fa
B0_0ff3:		lda $075b		; ad 5b 07
B0_0ff6:		ldy $0752		; ac 52 07
B0_0ff9:		beq B0_0ffe ; f0 03
B0_0ffb:		lda $0751		; ad 51 07
B0_0ffe:		sta $071a		; 8d 1a 07
B0_1001:		sta $0725		; 8d 25 07
B0_1004:		sta $0728		; 8d 28 07
B0_1007:		jsr $b038		; 20 38 b0
B0_100a:		ldy #$20		; a0 20
B0_100c:		and #$01		; 29 01
B0_100e:		beq B0_1012 ; f0 02
B0_1010:		ldy #$24		; a0 24
B0_1012:		sty $0720		; 8c 20 07
B0_1015:		ldy #$80		; a0 80
B0_1017:		sty $0721		; 8c 21 07
B0_101a:		asl a			; 0a
B0_101b:		asl a			; 0a
B0_101c:		asl a			; 0a
B0_101d:		asl a			; 0a
B0_101e:		sta $06a0		; 8d a0 06
B0_1021:		dec $0730		; ce 30 07
B0_1024:		dec $0731		; ce 31 07
B0_1027:		dec $0732		; ce 32 07
B0_102a:		lda #$0b		; a9 0b
B0_102c:		sta $071e		; 8d 1e 07
B0_102f:		jsr $9c22		; 20 22 9c
B0_1032:		lda $076a		; ad 6a 07
B0_1035:		bne B0_1047 ; d0 10
B0_1037:		lda $075f		; ad 5f 07
B0_103a:		cmp #$04		; c9 04
B0_103c:		bcc B0_104a ; 90 0c
B0_103e:		bne B0_1047 ; d0 07
B0_1040:		lda $075c		; ad 5c 07
B0_1043:		cmp #$02		; c9 02
B0_1045:		bcc B0_104a ; 90 03
B0_1047:		inc $06cc		; ee cc 06
B0_104a:		lda $075b		; ad 5b 07
B0_104d:		beq B0_1054 ; f0 05
B0_104f:		lda #$02		; a9 02
B0_1051:		sta $0710		; 8d 10 07
B0_1054:		lda #$80		; a9 80
B0_1056:		sta $fb			; 85 fb
B0_1058:		lda #$01		; a9 01
B0_105a:		sta $0774		; 8d 74 07
B0_105d:		inc $0772		; ee 72 07
B0_1060:		rts				; 60 
B0_1061:		lda #$01		; a9 01
B0_1063:		sta $0757		; 8d 57 07
B0_1066:		sta $0754		; 8d 54 07
B0_1069:		lda #$02		; a9 02
B0_106b:		sta $075a		; 8d 5a 07
B0_106e:		sta $0761		; 8d 61 07
B0_1071:		lda #$00		; a9 00
B0_1073:		sta $0774		; 8d 74 07
B0_1076:		tay				; a8 
B0_1077:		sta $0300, y	; 99 00 03
B0_107a:		iny				; c8 
B0_107b:		bne B0_1077 ; d0 fa
B0_107d:		sta $0759		; 8d 59 07
B0_1080:		sta $0769		; 8d 69 07
B0_1083:		sta $0728		; 8d 28 07
B0_1086:		lda #$ff		; a9 ff
B0_1088:		sta $03a0		; 8d a0 03
B0_108b:		lda $071a		; ad 1a 07
B0_108e:		lsr $0778		; 4e 78 07
B0_1091:		and #$01		; 29 01
B0_1093:		ror a			; 6a
B0_1094:		rol $0778		; 2e 78 07
B0_1097:		jsr $90ed		; 20 ed 90
B0_109a:		lda #$38		; a9 38
B0_109c:		sta $06e3		; 8d e3 06
B0_109f:		lda #$48		; a9 48
B0_10a1:		sta $06e2		; 8d e2 06
B0_10a4:		lda #$58		; a9 58
B0_10a6:		sta $06e1		; 8d e1 06
B0_10a9:		ldx #$0e		; a2 0e
B0_10ab:		lda $8fbc, x	; bd bc 8f
B0_10ae:		sta $06e4, x	; 9d e4 06
B0_10b1:		dex				; ca 
B0_10b2:		bpl B0_10ab ; 10 f7
B0_10b4:		ldy #$03		; a0 03
B0_10b6:		lda $8fcb, y	; b9 cb 8f
B0_10b9:		sta $0200, y	; 99 00 02
B0_10bc:		dey				; 88 
B0_10bd:		bpl B0_10b6 ; 10 f7
B0_10bf:		jsr $92af		; 20 af 92
B0_10c2:		jsr $92aa		; 20 aa 92
B0_10c5:		inc $0722		; ee 22 07
B0_10c8:		inc $0772		; ee 72 07
B0_10cb:		rts				; 60 
B0_10cc:		ldx #$07		; a2 07
B0_10ce:		lda #$00		; a9 00
B0_10d0:		sta $06			; 85 06
B0_10d2:		stx $07			; 86 07
B0_10d4:		cpx #$01		; e0 01
B0_10d6:		bne B0_10dc ; d0 04
B0_10d8:		cpy #$60		; c0 60
B0_10da:		bcs B0_10de ; b0 02
B0_10dc:		sta ($06), y	; 91 06
B0_10de:		dey				; 88 
B0_10df:		cpy #$ff		; c0 ff
B0_10e1:		bne B0_10d4 ; d0 f1
B0_10e3:		dex				; ca 
B0_10e4:		bpl B0_10d2 ; 10 ec
B0_10e6:		rts				; 60 
B0_10e7:	.db $02
B0_10e8:		ora ($04, x)	; 01 04
B0_10ea:		php				; 08 
B0_10eb:		;removed
	.hex  10 20
B0_10ed:		lda $0770		; ad 70 07
B0_10f0:		beq B0_1115 ; f0 23
B0_10f2:		lda $0752		; ad 52 07
B0_10f5:		cmp #$02		; c9 02
B0_10f7:		beq B0_1106 ; f0 0d
B0_10f9:		ldy #$05		; a0 05
B0_10fb:		lda $0710		; ad 10 07
B0_10fe:		cmp #$06		; c9 06
B0_1100:		beq B0_1110 ; f0 0e
B0_1102:		cmp #$07		; c9 07
B0_1104:		beq B0_1110 ; f0 0a
B0_1106:		ldy $074e		; ac 4e 07
B0_1109:		lda $0743		; ad 43 07
B0_110c:		beq B0_1110 ; f0 02
B0_110e:		ldy #$04		; a0 04
B0_1110:		lda $90e7, y	; b9 e7 90
B0_1113:		sta $fb			; 85 fb
B0_1115:		rts				; 60 
B0_1116:		plp				; 28 
B0_1117:		clc				; 18 
B0_1118:		sec				; 38 
B0_1119:		plp				; 28 
B0_111a:		php				; 08 
B0_111b:		brk				; 00
B0_111c:		brk				; 00
B0_111d:		jsr $50b0		; 20 b0 50
B0_1120:		brk				; 00
B0_1121:		brk				; 00
B0_1122:		bcs B0_10d4 ; b0 b0
B0_1124:		beq B0_1126 ; f0 00
B0_1126:	.hex 20 00 00
B0_1129:		brk				; 00
B0_112a:		brk				; 00
B0_112b:		brk				; 00
B0_112c:		brk				; 00
B0_112d:		jsr $0304		; 20 04 03
B0_1130:	.db $02
B0_1131:		lda $071a		; ad 1a 07
B0_1134:		sta $6d			; 85 6d
B0_1136:		lda #$28		; a9 28
B0_1138:		sta $070a		; 8d 0a 07
B0_113b:		lda #$01		; a9 01
B0_113d:		sta $33			; 85 33
B0_113f:		sta $b5			; 85 b5
B0_1141:		lda #$00		; a9 00
B0_1143:		sta $1d			; 85 1d
B0_1145:		dec $0490		; ce 90 04
B0_1148:		ldy #$00		; a0 00
B0_114a:		sty $075b		; 8c 5b 07
B0_114d:		lda $074e		; ad 4e 07
B0_1150:		bne B0_1153 ; d0 01
B0_1152:		iny				; c8 
B0_1153:		sty $0704		; 8c 04 07
B0_1156:		ldx $0710		; ae 10 07
B0_1159:		ldy $0752		; ac 52 07
B0_115c:		beq B0_1165 ; f0 07
B0_115e:		cpy #$01		; c0 01
B0_1160:		beq B0_1165 ; f0 03
B0_1162:		ldx $9118, y	; be 18 91
B0_1165:		lda $9116, y	; b9 16 91
B0_1168:		sta $86			; 85 86
B0_116a:		lda $911c, x	; bd 1c 91
B0_116d:		sta $ce			; 85 ce
B0_116f:		lda $9125, x	; bd 25 91
B0_1172:		sta $03c4		; 8d c4 03
B0_1175:		jsr $85f1		; 20 f1 85
B0_1178:		ldy $0715		; ac 15 07
B0_117b:		beq B0_1197 ; f0 1a
B0_117d:		lda $0757		; ad 57 07
B0_1180:		beq B0_1197 ; f0 15
B0_1182:		lda $912d, y	; b9 2d 91
B0_1185:		sta $07f8		; 8d f8 07
B0_1188:		lda #$01		; a9 01
B0_118a:		sta $07fa		; 8d fa 07
B0_118d:		lsr a			; 4a
B0_118e:		sta $07f9		; 8d f9 07
B0_1191:		sta $0757		; 8d 57 07
B0_1194:		sta $079f		; 8d 9f 07
B0_1197:		ldy $0758		; ac 58 07
B0_119a:		beq B0_11b0 ; f0 14
B0_119c:		lda #$03		; a9 03
B0_119e:		sta $1d			; 85 1d
B0_11a0:		ldx #$00		; a2 00
B0_11a2:		jsr $bd84		; 20 84 bd
B0_11a5:		lda #$f0		; a9 f0
B0_11a7:		sta $d7			; 85 d7
B0_11a9:		ldx #$05		; a2 05
B0_11ab:		ldy #$00		; a0 00
B0_11ad:		jsr $b91e		; 20 1e b9
B0_11b0:		ldy $074e		; ac 4e 07
B0_11b3:		bne B0_11b8 ; d0 03
B0_11b5:		jsr $b70b		; 20 0b b7
B0_11b8:		lda #$07		; a9 07
B0_11ba:		sta $0e			; 85 0e
B0_11bc:		rts				; 60 
B0_11bd:		lsr $40, x		; 56 40
B0_11bf:		adc $70			; 65 70
B0_11c1:		ror $40			; 66 40
B0_11c3:		ror $40			; 66 40
B0_11c5:		ror $40			; 66 40
B0_11c7:		ror $60			; 66 60
B0_11c9:		adc $70			; 65 70
B0_11cb:		brk				; 00
B0_11cc:		brk				; 00
B0_11cd:		inc $0774		; ee 74 07
B0_11d0:		lda #$00		; a9 00
B0_11d2:		sta $0722		; 8d 22 07
B0_11d5:		lda #$80		; a9 80
B0_11d7:		sta $fc			; 85 fc
B0_11d9:		dec $075a		; ce 5a 07
B0_11dc:		bpl B0_11e9 ; 10 0b
B0_11de:		lda #$00		; a9 00
B0_11e0:		sta $0772		; 8d 72 07
B0_11e3:		lda #$03		; a9 03
B0_11e5:		sta $0770		; 8d 70 07
B0_11e8:		rts				; 60 
B0_11e9:		lda $075f		; ad 5f 07
B0_11ec:		asl a			; 0a
B0_11ed:		tax				; aa 
B0_11ee:		lda $075c		; ad 5c 07
B0_11f1:		and #$02		; 29 02
B0_11f3:		beq B0_11f6 ; f0 01
B0_11f5:		inx				; e8 
B0_11f6:		ldy $91bd, x	; bc bd 91
B0_11f9:		lda $075c		; ad 5c 07
B0_11fc:		lsr a			; 4a
B0_11fd:		tya				; 98 
B0_11fe:		bcs B0_1204 ; b0 04
B0_1200:		lsr a			; 4a
B0_1201:		lsr a			; 4a
B0_1202:		lsr a			; 4a
B0_1203:		lsr a			; 4a
B0_1204:		and #$0f		; 29 0f
B0_1206:		cmp $071a		; cd 1a 07
B0_1209:		beq B0_120f ; f0 04
B0_120b:		bcc B0_120f ; 90 02
B0_120d:		lda #$00		; a9 00
B0_120f:		sta $075b		; 8d 5b 07
B0_1212:		jsr $9282		; 20 82 92
B0_1215:		jmp $9264		; 4c 64 92
B0_1218:		lda $0772		; ad 72 07
B0_121b:		jsr $8e04		; 20 04 8e
B0_121e:		bit $92			; 24 92
B0_1220:	.db $67
B0_1221:		sta $37			; 85 37
B0_1223:	.db $92
B0_1224:		lda #$00		; a9 00
B0_1226:		sta $073c		; 8d 3c 07
B0_1229:		sta $0722		; 8d 22 07
B0_122c:		lda #$02		; a9 02
B0_122e:		sta $fc			; 85 fc
B0_1230:		inc $0774		; ee 74 07
B0_1233:		inc $0772		; ee 72 07
B0_1236:		rts				; 60 
B0_1237:		lda #$00		; a9 00
B0_1239:		sta $0774		; 8d 74 07
B0_123c:		lda $06fc		; ad fc 06
B0_123f:		and #$10		; 29 10
B0_1241:		bne B0_1248 ; d0 05
B0_1243:		lda $07a0		; ad a0 07
B0_1246:		bne B0_1281 ; d0 39
B0_1248:		lda #$80		; a9 80
B0_124a:		sta $fc			; 85 fc
B0_124c:		jsr $9282		; 20 82 92
B0_124f:		bcc B0_1264 ; 90 13
B0_1251:		lda $075f		; ad 5f 07
B0_1254:		sta $07fd		; 8d fd 07
B0_1257:		lda #$00		; a9 00
B0_1259:		asl a			; 0a
B0_125a:		sta $0772		; 8d 72 07
B0_125d:		sta $07a0		; 8d a0 07
B0_1260:		sta $0770		; 8d 70 07
B0_1263:		rts				; 60 
B0_1264:		jsr $9c03		; 20 03 9c
B0_1267:		lda #$01		; a9 01
B0_1269:		sta $0754		; 8d 54 07
B0_126c:		inc $0757		; ee 57 07
B0_126f:		lda #$00		; a9 00
B0_1271:		sta $0747		; 8d 47 07
B0_1274:		sta $0756		; 8d 56 07
B0_1277:		sta $0e			; 85 0e
B0_1279:		sta $0772		; 8d 72 07
B0_127c:		lda #$01		; a9 01
B0_127e:		sta $0770		; 8d 70 07
B0_1281:		rts				; 60 
B0_1282:		sec				; 38 
B0_1283:		lda $077a		; ad 7a 07
B0_1286:		beq B0_12a9 ; f0 21
B0_1288:		lda $0761		; ad 61 07
B0_128b:		bmi B0_12a9 ; 30 1c
B0_128d:		lda $0753		; ad 53 07
B0_1290:		eor #$01		; 49 01
B0_1292:		sta $0753		; 8d 53 07
B0_1295:		ldx #$06		; a2 06
B0_1297:		lda $075a, x	; bd 5a 07
B0_129a:		pha				; 48 
B0_129b:		lda $0761, x	; bd 61 07
B0_129e:		sta $075a, x	; 9d 5a 07
B0_12a1:		pla				; 68 
B0_12a2:		sta $0761, x	; 9d 61 07
B0_12a5:		dex				; ca 
B0_12a6:		bpl B0_1297 ; 10 ef
B0_12a8:		clc				; 18 
B0_12a9:		rts				; 60 
B0_12aa:		lda #$ff		; a9 ff
B0_12ac:		sta $06c9		; 8d c9 06
B0_12af:		rts				; 60 
B0_12b0:		ldy $071f		; ac 1f 07
B0_12b3:		bne B0_12ba ; d0 05
B0_12b5:		ldy #$08		; a0 08
B0_12b7:		sty $071f		; 8c 1f 07
B0_12ba:		dey				; 88 
B0_12bb:		tya				; 98 
B0_12bc:		jsr $92c8		; 20 c8 92
B0_12bf:		dec $071f		; ce 1f 07
B0_12c2:		bne B0_12c7 ; d0 03
B0_12c4:		jsr $896a		; 20 6a 89
B0_12c7:		rts				; 60 
B0_12c8:		jsr $8e04		; 20 04 8e
B0_12cb:	.db $db
B0_12cc:	.db $92
B0_12cd:		ldx $ae88		; ae 88 ae
B0_12d0:		dey				; 88 
B0_12d1:	.db $fc
B0_12d2:	.db $93
B0_12d3:	.db $db
B0_12d4:	.db $92
B0_12d5:		ldx $ae88		; ae 88 ae
B0_12d8:		dey				; 88 
B0_12d9:	.db $fc
B0_12da:	.db $93
B0_12db:		inc $0726		; ee 26 07
B0_12de:		lda $0726		; ad 26 07
B0_12e1:		and #$0f		; 29 0f
B0_12e3:		bne B0_12eb ; d0 06
B0_12e5:		sta $0726		; 8d 26 07
B0_12e8:		inc $0725		; ee 25 07
B0_12eb:		inc $06a0		; ee a0 06
B0_12ee:		lda $06a0		; ad a0 06
B0_12f1:		and #$1f		; 29 1f
B0_12f3:		sta $06a0		; 8d a0 06
B0_12f6:		rts				; 60 
B0_12f7:		brk				; 00
B0_12f8:		bmi B0_135a ; 30 60
B0_12fa:	.db $93
B0_12fb:		brk				; 00
B0_12fc:		brk				; 00
B0_12fd:		ora ($12), y	; 11 12
B0_12ff:	.db $12
B0_1300:	.db $13
B0_1301:		brk				; 00
B0_1302:		brk				; 00
B0_1303:		eor ($52), y	; 51 52
B0_1305:	.db $53
B0_1306:		brk				; 00
B0_1307:		brk				; 00
B0_1308:		brk				; 00
B0_1309:		brk				; 00
B0_130a:		brk				; 00
B0_130b:		brk				; 00
B0_130c:		ora ($02, x)	; 01 02
B0_130e:	.db $02
B0_130f:	.db $03
B0_1310:		brk				; 00
B0_1311:		brk				; 00
B0_1312:		brk				; 00
B0_1313:		brk				; 00
B0_1314:		brk				; 00
B0_1315:		brk				; 00
B0_1316:		sta ($92), y	; 91 92
B0_1318:	.db $93
B0_1319:		brk				; 00
B0_131a:		brk				; 00
B0_131b:		brk				; 00
B0_131c:		brk				; 00
B0_131d:		eor ($52), y	; 51 52
B0_131f:	.db $53
B0_1320:		eor ($42, x)	; 41 42
B0_1322:	.db $43
B0_1323:		brk				; 00
B0_1324:		brk				; 00
B0_1325:		brk				; 00
B0_1326:		brk				; 00
B0_1327:		brk				; 00
B0_1328:		sta ($92), y	; 91 92
B0_132a:	.db $97
B0_132b:	.db $87
B0_132c:		dey				; 88 
B0_132d:	.db $89
B0_132e:	.hex 99 00 00
B0_1331:		brk				; 00
B0_1332:		ora ($12), y	; 11 12
B0_1334:	.db $13
B0_1335:		ldy $a5			; a4 a5
B0_1337:		lda $a5			; a5 a5
B0_1339:		ldx $97			; a6 97
B0_133b:		tya				; 98 
B0_133c:		sta $0201, y	; 99 01 02
B0_133f:	.db $03
B0_1340:		brk				; 00
B0_1341:		ldy $a5			; a4 a5
B0_1343:		ldx $00			; a6 00
B0_1345:		ora ($12), y	; 11 12
B0_1347:	.db $12
B0_1348:	.db $12
B0_1349:	.db $13
B0_134a:		brk				; 00
B0_134b:		brk				; 00
B0_134c:		brk				; 00
B0_134d:		brk				; 00
B0_134e:		ora ($02, x)	; 01 02
B0_1350:	.db $02
B0_1351:	.db $03
B0_1352:		brk				; 00
B0_1353:		ldy $a5			; a4 a5
B0_1355:		lda $a6			; a5 a6
B0_1357:		brk				; 00
B0_1358:		brk				; 00
B0_1359:		brk				; 00
B0_135a:		ora ($12), y	; 11 12
B0_135c:	.db $12
B0_135d:	.db $13
B0_135e:		brk				; 00
B0_135f:		brk				; 00
B0_1360:		brk				; 00
B0_1361:		brk				; 00
B0_1362:		brk				; 00
B0_1363:		brk				; 00
B0_1364:		brk				; 00
B0_1365:	.db $9c
B0_1366:		brk				; 00
B0_1367:	.db $8b
B0_1368:		tax				; aa 
B0_1369:		tax				; aa 
B0_136a:		tax				; aa 
B0_136b:		tax				; aa 
B0_136c:		ora ($12), y	; 11 12
B0_136e:	.db $13
B0_136f:	.db $8b
B0_1370:		brk				; 00
B0_1371:	.db $9c
B0_1372:	.db $9c
B0_1373:		brk				; 00
B0_1374:		brk				; 00
B0_1375:		ora ($02, x)	; 01 02
B0_1377:	.db $03
B0_1378:		ora ($12), y	; 11 12
B0_137a:	.db $12
B0_137b:	.db $13
B0_137c:		brk				; 00
B0_137d:		brk				; 00
B0_137e:		brk				; 00
B0_137f:		brk				; 00
B0_1380:		tax				; aa 
B0_1381:		tax				; aa 
B0_1382:	.db $9c
B0_1383:		tax				; aa 
B0_1384:		brk				; 00
B0_1385:	.db $8b
B0_1386:		brk				; 00
B0_1387:		ora ($02, x)	; 01 02
B0_1389:	.db $03
B0_138a:	.db $80
B0_138b:	.db $83
B0_138c:		brk				; 00
B0_138d:		sta ($84, x)	; 81 84
B0_138f:		brk				; 00
B0_1390:	.db $82
B0_1391:		sta $00			; 85 00
B0_1393:	.db $02
B0_1394:		brk				; 00
B0_1395:		brk				; 00
B0_1396:	.db $03
B0_1397:		brk				; 00
B0_1398:		brk				; 00
B0_1399:	.db $04
B0_139a:		brk				; 00
B0_139b:		brk				; 00
B0_139c:		brk				; 00
B0_139d:		ora $06			; 05 06
B0_139f:	.db $07
B0_13a0:		asl $0a			; 06 0a
B0_13a2:		brk				; 00
B0_13a3:		php				; 08 
B0_13a4:		ora #$4d		; 09 4d
B0_13a6:		brk				; 00
B0_13a7:		brk				; 00
B0_13a8:		ora $4e0f		; 0d 0f 4e
B0_13ab:		asl $4e4e		; 0e 4e 4e
B0_13ae:		brk				; 00
B0_13af:		ora $861a		; 0d 1a 86
B0_13b2:	.db $87
B0_13b3:	.db $87
B0_13b4:	.db $87
B0_13b5:	.db $87
B0_13b6:	.db $87
B0_13b7:	.db $87
B0_13b8:	.db $87
B0_13b9:	.db $87
B0_13ba:	.db $87
B0_13bb:	.db $87
B0_13bc:		adc #$69		; 69 69
B0_13be:		brk				; 00
B0_13bf:		brk				; 00
B0_13c0:		brk				; 00
B0_13c1:		brk				; 00
B0_13c2:		brk				; 00
B0_13c3:		eor $47			; 45 47
B0_13c5:	.db $47
B0_13c6:	.db $47
B0_13c7:	.db $47
B0_13c8:	.db $47
B0_13c9:		brk				; 00
B0_13ca:		brk				; 00
B0_13cb:		brk				; 00
B0_13cc:		brk				; 00
B0_13cd:		brk				; 00
B0_13ce:		brk				; 00
B0_13cf:		brk				; 00
B0_13d0:		brk				; 00
B0_13d1:		brk				; 00
B0_13d2:		brk				; 00
B0_13d3:		brk				; 00
B0_13d4:		brk				; 00
B0_13d5:		brk				; 00
B0_13d6:		stx $87			; 86 87
B0_13d8:		adc #$54		; 69 54
B0_13da:	.db $52
B0_13db:	.db $62
B0_13dc:		brk				; 00
B0_13dd:		brk				; 00
B0_13de:		brk				; 00
B0_13df:		clc				; 18 
B0_13e0:		ora ($18, x)	; 01 18
B0_13e2:	.db $07
B0_13e3:		clc				; 18 
B0_13e4:	.db $0f
B0_13e5:		clc				; 18 
B0_13e6:	.db $ff
B0_13e7:		clc				; 18 
B0_13e8:		ora ($1f, x)	; 01 1f
B0_13ea:	.db $07
B0_13eb:	.db $1f
B0_13ec:	.db $0f
B0_13ed:	.db $1f
B0_13ee:		sta ($1f, x)	; 81 1f
B0_13f0:		ora ($00, x)	; 01 00
B0_13f2:	.db $8f
B0_13f3:	.db $1f
B0_13f4:		sbc ($1f), y	; f1 1f
B0_13f6:		sbc $f118, y	; f9 18 f1
B0_13f9:		clc				; 18 
B0_13fa:	.db $ff
B0_13fb:	.db $1f
B0_13fc:		lda $0728		; ad 28 07
B0_13ff:		beq B0_1404 ; f0 03
B0_1401:		jsr $9508		; 20 08 95
B0_1404:		ldx #$0c		; a2 0c
B0_1406:		lda #$00		; a9 00
B0_1408:		sta $06a1, x	; 9d a1 06
B0_140b:		dex				; ca 
B0_140c:		bpl B0_1408 ; 10 fa
B0_140e:		ldy $0742		; ac 42 07
B0_1411:		beq B0_1455 ; f0 42
B0_1413:		lda $0725		; ad 25 07
B0_1416:		cmp #$03		; c9 03
B0_1418:		bmi B0_141f ; 30 05
B0_141a:		sec				; 38 
B0_141b:		sbc #$03		; e9 03
B0_141d:		bpl B0_1416 ; 10 f7
B0_141f:		asl a			; 0a
B0_1420:		asl a			; 0a
B0_1421:		asl a			; 0a
B0_1422:		asl a			; 0a
B0_1423:		adc $92f6, y	; 79 f6 92
B0_1426:		adc $0726		; 6d 26 07
B0_1429:		tax				; aa 
B0_142a:		lda $92fa, x	; bd fa 92
B0_142d:		beq B0_1455 ; f0 26
B0_142f:		pha				; 48 
B0_1430:		and #$0f		; 29 0f
B0_1432:		sec				; 38 
B0_1433:		sbc #$01		; e9 01
B0_1435:		sta $00			; 85 00
B0_1437:		asl a			; 0a
B0_1438:		adc $00			; 65 00
B0_143a:		tax				; aa 
B0_143b:		pla				; 68 
B0_143c:		lsr a			; 4a
B0_143d:		lsr a			; 4a
B0_143e:		lsr a			; 4a
B0_143f:		lsr a			; 4a
B0_1440:		tay				; a8 
B0_1441:		lda #$03		; a9 03
B0_1443:		sta $00			; 85 00
B0_1445:		lda $938a, x	; bd 8a 93
B0_1448:		sta $06a1, y	; 99 a1 06
B0_144b:		inx				; e8 
B0_144c:		iny				; c8 
B0_144d:		cpy #$0b		; c0 0b
B0_144f:		beq B0_1455 ; f0 04
B0_1451:		dec $00			; c6 00
B0_1453:		bne B0_1445 ; d0 f0
B0_1455:		ldx $0741		; ae 41 07
B0_1458:		beq B0_146d ; f0 13
B0_145a:		ldy $93ad, x	; bc ad 93
B0_145d:		ldx #$00		; a2 00
B0_145f:		lda $93b1, y	; b9 b1 93
B0_1462:		beq B0_1467 ; f0 03
B0_1464:		sta $06a1, x	; 9d a1 06
B0_1467:		iny				; c8 
B0_1468:		inx				; e8 
B0_1469:		cpx #$0d		; e0 0d
B0_146b:		bne B0_145f ; d0 f2
B0_146d:		ldy $074e		; ac 4e 07
B0_1470:		bne B0_147e ; d0 0c
B0_1472:		lda $075f		; ad 5f 07
B0_1475:		cmp #$07		; c9 07
B0_1477:		bne B0_147e ; d0 05
B0_1479:		lda #$62		; a9 62
B0_147b:		jmp $9488		; 4c 88 94
B0_147e:		lda $93d8, y	; b9 d8 93
B0_1481:		ldy $0743		; ac 43 07
B0_1484:		beq B0_1488 ; f0 02
B0_1486:		lda #$88		; a9 88
B0_1488:		sta $07			; 85 07
B0_148a:		ldx #$00		; a2 00
B0_148c:		lda $0727		; ad 27 07
B0_148f:		asl a			; 0a
B0_1490:		tay				; a8 
B0_1491:		lda $93dc, y	; b9 dc 93
B0_1494:		sta $00			; 85 00
B0_1496:		iny				; c8 
B0_1497:		sty $01			; 84 01
B0_1499:		lda $0743		; ad 43 07
B0_149c:		beq B0_14a8 ; f0 0a
B0_149e:		cpx #$00		; e0 00
B0_14a0:		beq B0_14a8 ; f0 06
B0_14a2:		lda $00			; a5 00
B0_14a4:		and #$08		; 29 08
B0_14a6:		sta $00			; 85 00
B0_14a8:		ldy #$00		; a0 00
B0_14aa:		lda $c68a, y	; b9 8a c6
B0_14ad:		bit $00			; 24 00
B0_14af:		beq B0_14b6 ; f0 05
B0_14b1:		lda $07			; a5 07
B0_14b3:		sta $06a1, x	; 9d a1 06
B0_14b6:		inx				; e8 
B0_14b7:		cpx #$0d		; e0 0d
B0_14b9:		beq B0_14d3 ; f0 18
B0_14bb:		lda $074e		; ad 4e 07
B0_14be:		cmp #$02		; c9 02
B0_14c0:		bne B0_14ca ; d0 08
B0_14c2:		cpx #$0b		; e0 0b
B0_14c4:		bne B0_14ca ; d0 04
B0_14c6:		lda #$54		; a9 54
B0_14c8:		sta $07			; 85 07
B0_14ca:		iny				; c8 
B0_14cb:		cpy #$08		; c0 08
B0_14cd:		bne B0_14aa ; d0 db
B0_14cf:		ldy $01			; a4 01
B0_14d1:		bne B0_1491 ; d0 be
B0_14d3:		jsr $9508		; 20 08 95
B0_14d6:		lda $06a0		; ad a0 06
B0_14d9:		jsr $9be1		; 20 e1 9b
B0_14dc:		ldx #$00		; a2 00
B0_14de:		ldy #$00		; a0 00
B0_14e0:		sty $00			; 84 00
B0_14e2:		lda $06a1, x	; bd a1 06
B0_14e5:		and #$c0		; 29 c0
B0_14e7:		asl a			; 0a
B0_14e8:		rol a			; 2a
B0_14e9:		rol a			; 2a
B0_14ea:		tay				; a8 
B0_14eb:		lda $06a1, x	; bd a1 06
B0_14ee:		cmp $9504, y	; d9 04 95
B0_14f1:		bcs B0_14f5 ; b0 02
B0_14f3:		lda #$00		; a9 00
B0_14f5:		ldy $00			; a4 00
B0_14f7:		sta ($06), y	; 91 06
B0_14f9:		tya				; 98 
B0_14fa:		clc				; 18 
B0_14fb:		adc #$10		; 69 10
B0_14fd:		tay				; a8 
B0_14fe:		inx				; e8 
B0_14ff:		cpx #$0d		; e0 0d
B0_1501:		bcc B0_14e0 ; 90 dd
B0_1503:		rts				; 60 
B0_1504:		;removed
	.hex  10 51
B0_1506:		dey				; 88 
B0_1507:		cpy #$a2		; c0 a2
B0_1509:	.db $02
B0_150a:		stx $08			; 86 08
B0_150c:		lda #$00		; a9 00
B0_150e:		sta $0729		; 8d 29 07
B0_1511:		ldy $072c		; ac 2c 07
B0_1514:		lda ($e7), y	; b1 e7
B0_1516:		cmp #$fd		; c9 fd
B0_1518:		beq B0_1565 ; f0 4b
B0_151a:		lda $0730, x	; bd 30 07
B0_151d:		bpl B0_1565 ; 10 46
B0_151f:		iny				; c8 
B0_1520:		lda ($e7), y	; b1 e7
B0_1522:		asl a			; 0a
B0_1523:		bcc B0_1530 ; 90 0b
B0_1525:		lda $072b		; ad 2b 07
B0_1528:		bne B0_1530 ; d0 06
B0_152a:		inc $072b		; ee 2b 07
B0_152d:		inc $072a		; ee 2a 07
B0_1530:		dey				; 88 
B0_1531:		lda ($e7), y	; b1 e7
B0_1533:		and #$0f		; 29 0f
B0_1535:		cmp #$0d		; c9 0d
B0_1537:		bne B0_1554 ; d0 1b
B0_1539:		iny				; c8 
B0_153a:		lda ($e7), y	; b1 e7
B0_153c:		dey				; 88 
B0_153d:		and #$40		; 29 40
B0_153f:		bne B0_155d ; d0 1c
B0_1541:		lda $072b		; ad 2b 07
B0_1544:		bne B0_155d ; d0 17
B0_1546:		iny				; c8 
B0_1547:		lda ($e7), y	; b1 e7
B0_1549:		and #$1f		; 29 1f
B0_154b:		sta $072a		; 8d 2a 07
B0_154e:		inc $072b		; ee 2b 07
B0_1551:		jmp $956e		; 4c 6e 95
B0_1554:		cmp #$0e		; c9 0e
B0_1556:		bne B0_155d ; d0 05
B0_1558:		lda $0728		; ad 28 07
B0_155b:		bne B0_1565 ; d0 08
B0_155d:		lda $072a		; ad 2a 07
B0_1560:		cmp $0725		; cd 25 07
B0_1563:		bcc B0_156b ; 90 06
B0_1565:		jsr $9595		; 20 95 95
B0_1568:		jmp $9571		; 4c 71 95
B0_156b:		inc $0729		; ee 29 07
B0_156e:		jsr $9589		; 20 89 95
B0_1571:		ldx $08			; a6 08
B0_1573:		lda $0730, x	; bd 30 07
B0_1576:		bmi B0_157b ; 30 03
B0_1578:		dec $0730, x	; de 30 07
B0_157b:		dex				; ca 
B0_157c:		bpl B0_150a ; 10 8c
B0_157e:		lda $0729		; ad 29 07
B0_1581:		;removed
	.hex  d0 85
B0_1583:		lda $0728		; ad 28 07
B0_1586:		;removed
	.hex  d0 80
B0_1588:		rts				; 60 
B0_1589:		inc $072c		; ee 2c 07
B0_158c:		inc $072c		; ee 2c 07
B0_158f:		lda #$00		; a9 00
B0_1591:		sta $072b		; 8d 2b 07
B0_1594:		rts				; 60 
B0_1595:		lda $0730, x	; bd 30 07
B0_1598:		bmi B0_159d ; 30 03
B0_159a:		ldy $072d, x	; bc 2d 07
B0_159d:		ldx #$10		; a2 10
B0_159f:		lda ($e7), y	; b1 e7
B0_15a1:		cmp #$fd		; c9 fd
B0_15a3:		beq B0_1588 ; f0 e3
B0_15a5:		and #$0f		; 29 0f
B0_15a7:		cmp #$0f		; c9 0f
B0_15a9:		beq B0_15b3 ; f0 08
B0_15ab:		ldx #$08		; a2 08
B0_15ad:		cmp #$0c		; c9 0c
B0_15af:		beq B0_15b3 ; f0 02
B0_15b1:		ldx #$00		; a2 00
B0_15b3:		stx $07			; 86 07
B0_15b5:		ldx $08			; a6 08
B0_15b7:		cmp #$0e		; c9 0e
B0_15b9:		bne B0_15c3 ; d0 08
B0_15bb:		lda #$00		; a9 00
B0_15bd:		sta $07			; 85 07
B0_15bf:		lda #$2e		; a9 2e
B0_15c1:		bne B0_1616 ; d0 53
B0_15c3:		cmp #$0d		; c9 0d
B0_15c5:		bne B0_15e2 ; d0 1b
B0_15c7:		lda #$22		; a9 22
B0_15c9:		sta $07			; 85 07
B0_15cb:		iny				; c8 
B0_15cc:		lda ($e7), y	; b1 e7
B0_15ce:		and #$40		; 29 40
B0_15d0:		beq B0_1635 ; f0 63
B0_15d2:		lda ($e7), y	; b1 e7
B0_15d4:		and #$7f		; 29 7f
B0_15d6:		cmp #$4b		; c9 4b
B0_15d8:		bne B0_15dd ; d0 03
B0_15da:		inc $0745		; ee 45 07
B0_15dd:		and #$3f		; 29 3f
B0_15df:		jmp $9616		; 4c 16 96
B0_15e2:		cmp #$0c		; c9 0c
B0_15e4:		bcs B0_160d ; b0 27
B0_15e6:		iny				; c8 
B0_15e7:		lda ($e7), y	; b1 e7
B0_15e9:		and #$70		; 29 70
B0_15eb:		bne B0_15f8 ; d0 0b
B0_15ed:		lda #$16		; a9 16
B0_15ef:		sta $07			; 85 07
B0_15f1:		lda ($e7), y	; b1 e7
B0_15f3:		and #$0f		; 29 0f
B0_15f5:		jmp $9616		; 4c 16 96
B0_15f8:		sta $00			; 85 00
B0_15fa:		cmp #$70		; c9 70
B0_15fc:		bne B0_1608 ; d0 0a
B0_15fe:		lda ($e7), y	; b1 e7
B0_1600:		and #$08		; 29 08
B0_1602:		beq B0_1608 ; f0 04
B0_1604:		lda #$00		; a9 00
B0_1606:		sta $00			; 85 00
B0_1608:		lda $00			; a5 00
B0_160a:		jmp $9612		; 4c 12 96
B0_160d:		iny				; c8 
B0_160e:		lda ($e7), y	; b1 e7
B0_1610:		and #$70		; 29 70
B0_1612:		lsr a			; 4a
B0_1613:		lsr a			; 4a
B0_1614:		lsr a			; 4a
B0_1615:		lsr a			; 4a
B0_1616:		sta $00			; 85 00
B0_1618:		lda $0730, x	; bd 30 07
B0_161b:		bpl B0_165f ; 10 42
B0_161d:		lda $072a		; ad 2a 07
B0_1620:		cmp $0725		; cd 25 07
B0_1623:		beq B0_1636 ; f0 11
B0_1625:		ldy $072c		; ac 2c 07
B0_1628:		lda ($e7), y	; b1 e7
B0_162a:		and #$0f		; 29 0f
B0_162c:		cmp #$0e		; c9 0e
B0_162e:		bne B0_1635 ; d0 05
B0_1630:		lda $0728		; ad 28 07
B0_1633:		bne B0_1656 ; d0 21
B0_1635:		rts				; 60 
B0_1636:		lda $0728		; ad 28 07
B0_1639:		beq B0_1646 ; f0 0b
B0_163b:		lda #$00		; a9 00
B0_163d:		sta $0728		; 8d 28 07
B0_1640:		sta $0729		; 8d 29 07
B0_1643:		sta $08			; 85 08
B0_1645:		rts				; 60 
B0_1646:		ldy $072c		; ac 2c 07
B0_1649:		lda ($e7), y	; b1 e7
B0_164b:		and #$f0		; 29 f0
B0_164d:		lsr a			; 4a
B0_164e:		lsr a			; 4a
B0_164f:		lsr a			; 4a
B0_1650:		lsr a			; 4a
B0_1651:		cmp $0726		; cd 26 07
B0_1654:		bne B0_1635 ; d0 df
B0_1656:		lda $072c		; ad 2c 07
B0_1659:		sta $072d, x	; 9d 2d 07
B0_165c:		jsr $9589		; 20 89 95
B0_165f:		lda $00			; a5 00
B0_1661:		clc				; 18 
B0_1662:		adc $07			; 65 07
B0_1664:		jsr $8e04		; 20 04 8e
B0_1667:		sbc $98			; e5 98
B0_1669:		rti				; 40 
B0_166a:	.db $97
B0_166b:		rol $3e9a		; 2e 9a 3e
B0_166e:		txs				; 9a 
B0_166f:	.db $f2
B0_1670:		sta $9a50, y	; 99 50 9a
B0_1673:		eor $e59a, y	; 59 9a e5
B0_1676:		tya				; 98 
B0_1677:		eor ($9b, x)	; 41 9b
B0_1679:		tsx				; ba 
B0_167a:	.db $97
B0_167b:		adc $7c99, y	; 79 99 7c
B0_167e:		sta $997f, y	; 99 7f 99
B0_1681:	.db $57
B0_1682:		sta $9968, y	; 99 68 99
B0_1685:	.db $6b
B0_1686:		sta $99d0, y	; 99 d0 99
B0_1689:	.db $d7
B0_168a:		sta $9806, y	; 99 06 98
B0_168d:	.db $b7
B0_168e:		txs				; 9a 
B0_168f:	.db $ab
B0_1690:		tya				; 98 
B0_1691:		sty $99, x		; 94 99
B0_1693:		asl $0e9b		; 0e 9b 0e
B0_1696:	.db $9b
B0_1697:		asl $019b		; 0e 9b 01
B0_169a:	.db $9b
B0_169b:		ora $199b, y	; 19 9b 19
B0_169e:	.db $9b
B0_169f:		ora $149b, y	; 19 9b 14
B0_16a2:	.db $9b
B0_16a3:		ora $6f9b, y	; 19 9b 6f
B0_16a6:		tya				; 98 
B0_16a7:		ora $d39a, y	; 19 9a d3
B0_16aa:		txs				; 9a 
B0_16ab:	.db $82
B0_16ac:		tya				; 98 
B0_16ad:	.db $9e
B0_16ae:		sta $9a09, y	; 99 09 9a
B0_16b1:		asl $019a		; 0e 9a 01
B0_16b4:		txs				; 9a 
B0_16b5:	.db $f2
B0_16b6:		stx $0d, y		; 96 0d
B0_16b8:	.db $97
B0_16b9:		ora $2b97		; 0d 97 2b
B0_16bc:	.db $97
B0_16bd:	.db $2b
B0_16be:	.db $97
B0_16bf:	.db $2b
B0_16c0:	.db $97
B0_16c1:		eor $96			; 45 96
B0_16c3:		cmp $96			; c5 96
B0_16c5:		ldy $072d, x	; bc 2d 07
B0_16c8:		iny				; c8 
B0_16c9:		lda ($e7), y	; b1 e7
B0_16cb:		pha				; 48 
B0_16cc:		and #$40		; 29 40
B0_16ce:		bne B0_16e2 ; d0 12
B0_16d0:		pla				; 68 
B0_16d1:		pha				; 48 
B0_16d2:		and #$0f		; 29 0f
B0_16d4:		sta $0727		; 8d 27 07
B0_16d7:		pla				; 68 
B0_16d8:		and #$30		; 29 30
B0_16da:		lsr a			; 4a
B0_16db:		lsr a			; 4a
B0_16dc:		lsr a			; 4a
B0_16dd:		lsr a			; 4a
B0_16de:		sta $0742		; 8d 42 07
B0_16e1:		rts				; 60 
B0_16e2:		pla				; 68 
B0_16e3:		and #$07		; 29 07
B0_16e5:		cmp #$04		; c9 04
B0_16e7:		bcc B0_16ee ; 90 05
B0_16e9:		sta $0744		; 8d 44 07
B0_16ec:		lda #$00		; a9 00
B0_16ee:		sta $0741		; 8d 41 07
B0_16f1:		rts				; 60 
B0_16f2:		ldx #$04		; a2 04
B0_16f4:		lda $075f		; ad 5f 07
B0_16f7:		beq B0_1701 ; f0 08
B0_16f9:		inx				; e8 
B0_16fa:		ldy $074e		; ac 4e 07
B0_16fd:		dey				; 88 
B0_16fe:		bne B0_1701 ; d0 01
B0_1700:		inx				; e8 
B0_1701:		txa				; 8a 
B0_1702:		sta $06d6		; 8d d6 06
B0_1705:		jsr $8808		; 20 08 88
B0_1708:		lda #$0d		; a9 0d
B0_170a:		jsr $9716		; 20 16 97
B0_170d:		lda $0723		; ad 23 07
B0_1710:		eor #$01		; 49 01
B0_1712:		sta $0723		; 8d 23 07
B0_1715:		rts				; 60 
B0_1716:		sta $00			; 85 00
B0_1718:		lda #$00		; a9 00
B0_171a:		ldx #$04		; a2 04
B0_171c:		ldy $16, x		; b4 16
B0_171e:		cpy $00			; c4 00
B0_1720:		bne B0_1724 ; d0 02
B0_1722:		sta $0f, x		; 95 0f
B0_1724:		dex				; ca 
B0_1725:		bpl B0_171c ; 10 f5
B0_1727:		rts				; 60 
B0_1728:	.db $14
B0_1729:	.db $17
B0_172a:		clc				; 18 
B0_172b:		ldx $00			; a6 00
B0_172d:		lda $9720, x	; bd 20 97
B0_1730:		ldy #$05		; a0 05
B0_1732:		dey				; 88 
B0_1733:		bmi B0_173c ; 30 07
B0_1735:	.hex d9 16 00
B0_1738:		bne B0_1732 ; d0 f8
B0_173a:		lda #$00		; a9 00
B0_173c:		sta $06cd		; 8d cd 06
B0_173f:		rts				; 60 
B0_1740:		lda $0733		; ad 33 07
B0_1743:		jsr $8e04		; 20 04 8e
B0_1746:		jmp $7897		; 4c 97 78
B0_1749:	.db $97
B0_174a:		adc #$9a		; 69 9a
B0_174c:		jsr $9bbb		; 20 bb 9b
B0_174f:		lda $0730, x	; bd 30 07
B0_1752:		beq B0_1773 ; f0 1f
B0_1754:		bpl B0_1767 ; 10 11
B0_1756:		tya				; 98 
B0_1757:		sta $0730, x	; 9d 30 07
B0_175a:		lda $0725		; ad 25 07
B0_175d:		ora $0726		; 0d 26 07
B0_1760:		beq B0_1767 ; f0 05
B0_1762:		lda #$16		; a9 16
B0_1764:		jmp $97b0		; 4c b0 97
B0_1767:		ldx $07			; a6 07
B0_1769:		lda #$17		; a9 17
B0_176b:		sta $06a1, x	; 9d a1 06
B0_176e:		lda #$4c		; a9 4c
B0_1770:		jmp $97aa		; 4c aa 97
B0_1773:		lda #$18		; a9 18
B0_1775:		jmp $97b0		; 4c b0 97
B0_1778:		jsr $9bac		; 20 ac 9b
B0_177b:		sty $06			; 84 06
B0_177d:		bcc B0_178b ; 90 0c
B0_177f:		lda $0730, x	; bd 30 07
B0_1782:		lsr a			; 4a
B0_1783:		sta $0736, x	; 9d 36 07
B0_1786:		lda #$19		; a9 19
B0_1788:		jmp $97b0		; 4c b0 97
B0_178b:		lda #$1b		; a9 1b
B0_178d:		ldy $0730, x	; bc 30 07
B0_1790:		beq B0_17b0 ; f0 1e
B0_1792:		lda $0736, x	; bd 36 07
B0_1795:		sta $06			; 85 06
B0_1797:		ldx $07			; a6 07
B0_1799:		lda #$1a		; a9 1a
B0_179b:		sta $06a1, x	; 9d a1 06
B0_179e:		cpy $06			; c4 06
B0_17a0:		bne B0_17ce ; d0 2c
B0_17a2:		inx				; e8 
B0_17a3:		lda #$4f		; a9 4f
B0_17a5:		sta $06a1, x	; 9d a1 06
B0_17a8:		lda #$50		; a9 50
B0_17aa:		inx				; e8 
B0_17ab:		ldy #$0f		; a0 0f
B0_17ad:		jmp $9b7d		; 4c 7d 9b
B0_17b0:		ldx $07			; a6 07
B0_17b2:		ldy #$00		; a0 00
B0_17b4:		jmp $9b7d		; 4c 7d 9b
B0_17b7:	.db $42
B0_17b8:		eor ($43, x)	; 41 43
B0_17ba:		jsr $9bac		; 20 ac 9b
B0_17bd:		ldy #$00		; a0 00
B0_17bf:		bcs B0_17c8 ; b0 07
B0_17c1:		iny				; c8 
B0_17c2:		lda $0730, x	; bd 30 07
B0_17c5:		bne B0_17c8 ; d0 01
B0_17c7:		iny				; c8 
B0_17c8:		lda $97b7, y	; b9 b7 97
B0_17cb:		sta $06a1		; 8d a1 06
B0_17ce:		rts				; 60 
B0_17cf:		brk				; 00
B0_17d0:		eor $45			; 45 45
B0_17d2:		eor $00			; 45 00
B0_17d4:		brk				; 00
B0_17d5:		pha				; 48 
B0_17d6:	.db $47
B0_17d7:		lsr $00			; 46 00
B0_17d9:		eor $49			; 45 49
B0_17db:		eor #$49		; 49 49
B0_17dd:		eor $47			; 45 47
B0_17df:	.db $47
B0_17e0:		lsr a			; 4a
B0_17e1:	.db $47
B0_17e2:	.db $47
B0_17e3:	.db $47
B0_17e4:	.db $47
B0_17e5:	.db $4b
B0_17e6:	.db $47
B0_17e7:	.db $47
B0_17e8:		eor #$49		; 49 49
B0_17ea:		eor #$49		; 49 49
B0_17ec:		eor #$47		; 49 47
B0_17ee:		lsr a			; 4a
B0_17ef:	.db $47
B0_17f0:		lsr a			; 4a
B0_17f1:	.db $47
B0_17f2:	.db $47
B0_17f3:	.db $4b
B0_17f4:	.db $47
B0_17f5:	.db $4b
B0_17f6:	.db $47
B0_17f7:	.db $47
B0_17f8:	.db $47
B0_17f9:	.db $47
B0_17fa:	.db $47
B0_17fb:	.db $47
B0_17fc:		lsr a			; 4a
B0_17fd:	.db $47
B0_17fe:		lsr a			; 4a
B0_17ff:	.db $47
B0_1800:		lsr a			; 4a
B0_1801:	.db $4b
B0_1802:	.db $47
B0_1803:	.db $4b
B0_1804:	.db $47
B0_1805:	.db $4b
B0_1806:		jsr $9bbb		; 20 bb 9b
B0_1809:		sty $07			; 84 07
B0_180b:		ldy #$04		; a0 04
B0_180d:		jsr $9baf		; 20 af 9b
B0_1810:		txa				; 8a 
B0_1811:		pha				; 48 
B0_1812:		ldy $0730, x	; bc 30 07
B0_1815:		ldx $07			; a6 07
B0_1817:		lda #$0b		; a9 0b
B0_1819:		sta $06			; 85 06
B0_181b:		lda $97cf, y	; b9 cf 97
B0_181e:		sta $06a1, x	; 9d a1 06
B0_1821:		inx				; e8 
B0_1822:		lda $06			; a5 06
B0_1824:		beq B0_182d ; f0 07
B0_1826:		iny				; c8 
B0_1827:		iny				; c8 
B0_1828:		iny				; c8 
B0_1829:		iny				; c8 
B0_182a:		iny				; c8 
B0_182b:		dec $06			; c6 06
B0_182d:		cpx #$0b		; e0 0b
B0_182f:		bne B0_181b ; d0 ea
B0_1831:		pla				; 68 
B0_1832:		tax				; aa 
B0_1833:		lda $0725		; ad 25 07
B0_1836:		beq B0_186e ; f0 36
B0_1838:		lda $0730, x	; bd 30 07
B0_183b:		cmp #$01		; c9 01
B0_183d:		beq B0_1869 ; f0 2a
B0_183f:		ldy $07			; a4 07
B0_1841:		bne B0_1847 ; d0 04
B0_1843:		cmp #$03		; c9 03
B0_1845:		beq B0_1869 ; f0 22
B0_1847:		cmp #$02		; c9 02
B0_1849:		bne B0_186e ; d0 23
B0_184b:		jsr $9bcb		; 20 cb 9b
B0_184e:		pha				; 48 
B0_184f:		jsr $994a		; 20 4a 99
B0_1852:		pla				; 68 
B0_1853:		sta $87, x		; 95 87
B0_1855:		lda $0725		; ad 25 07
B0_1858:		sta $6e, x		; 95 6e
B0_185a:		lda #$01		; a9 01
B0_185c:		sta $b6, x		; 95 b6
B0_185e:		sta $0f, x		; 95 0f
B0_1860:		lda #$90		; a9 90
B0_1862:		sta $cf, x		; 95 cf
B0_1864:		lda #$31		; a9 31
B0_1866:		sta $16, x		; 95 16
B0_1868:		rts				; 60 
B0_1869:		ldy #$52		; a0 52
B0_186b:		sty $06ab		; 8c ab 06
B0_186e:		rts				; 60 
B0_186f:		jsr $9bbb		; 20 bb 9b
B0_1872:		ldy $0730, x	; bc 30 07
B0_1875:		ldx $07			; a6 07
B0_1877:		lda #$6b		; a9 6b
B0_1879:		sta $06a1, x	; 9d a1 06
B0_187c:		lda #$6c		; a9 6c
B0_187e:		sta $06a2, x	; 9d a2 06
B0_1881:		rts				; 60 
B0_1882:		ldy #$03		; a0 03
B0_1884:		jsr $9baf		; 20 af 9b
B0_1887:		ldy #$0a		; a0 0a
B0_1889:		jsr $98b3		; 20 b3 98
B0_188c:		bcs B0_189e ; b0 10
B0_188e:		ldx #$06		; a2 06
B0_1890:		lda #$00		; a9 00
B0_1892:		sta $06a1, x	; 9d a1 06
B0_1895:		dex				; ca 
B0_1896:		bpl B0_1890 ; 10 f8
B0_1898:		lda $98dd, y	; b9 dd 98
B0_189b:		sta $06a8		; 8d a8 06
B0_189e:		rts				; 60 
B0_189f:		ora $14, x		; 15 14
B0_18a1:		brk				; 00
B0_18a2:		brk				; 00
B0_18a3:		ora $1e, x		; 15 1e
B0_18a5:		ora $151c, x	; 1d 1c 15
B0_18a8:		and ($20, x)	; 21 20
B0_18aa:	.db $1f
B0_18ab:		ldy #$03		; a0 03
B0_18ad:		jsr $9baf		; 20 af 9b
B0_18b0:		jsr $9bbb		; 20 bb 9b
B0_18b3:		dey				; 88 
B0_18b4:		dey				; 88 
B0_18b5:		sty $05			; 84 05
B0_18b7:		ldy $0730, x	; bc 30 07
B0_18ba:		sty $06			; 84 06
B0_18bc:		ldx $05			; a6 05
B0_18be:		inx				; e8 
B0_18bf:		lda $989f, y	; b9 9f 98
B0_18c2:		cmp #$00		; c9 00
B0_18c4:		beq B0_18ce ; f0 08
B0_18c6:		ldx #$00		; a2 00
B0_18c8:		ldy $05			; a4 05
B0_18ca:		jsr $9b7d		; 20 7d 9b
B0_18cd:		clc				; 18 
B0_18ce:		ldy $06			; a4 06
B0_18d0:		lda $98a3, y	; b9 a3 98
B0_18d3:		sta $06a1, x	; 9d a1 06
B0_18d6:		lda $98a7, y	; b9 a7 98
B0_18d9:		sta $06a2, x	; 9d a2 06
B0_18dc:		rts				; 60 
B0_18dd:		ora ($10), y	; 11 10
B0_18df:		ora $14, x		; 15 14
B0_18e1:	.db $13
B0_18e2:	.db $12
B0_18e3:		ora $14, x		; 15 14
B0_18e5:		jsr $9939		; 20 39 99
B0_18e8:		lda $00			; a5 00
B0_18ea:		beq B0_18f0 ; f0 04
B0_18ec:		iny				; c8 
B0_18ed:		iny				; c8 
B0_18ee:		iny				; c8 
B0_18ef:		iny				; c8 
B0_18f0:		tya				; 98 
B0_18f1:		pha				; 48 
B0_18f2:		lda $0760		; ad 60 07
B0_18f5:		ora $075f		; 0d 5f 07
B0_18f8:		beq B0_1925 ; f0 2b
B0_18fa:		ldy $0730, x	; bc 30 07
B0_18fd:		beq B0_1925 ; f0 26
B0_18ff:		jsr $994a		; 20 4a 99
B0_1902:		bcs B0_1925 ; b0 21
B0_1904:		jsr $9bcb		; 20 cb 9b
B0_1907:		clc				; 18 
B0_1908:		adc #$08		; 69 08
B0_190a:		sta $87, x		; 95 87
B0_190c:		lda $0725		; ad 25 07
B0_190f:		adc #$00		; 69 00
B0_1911:		sta $6e, x		; 95 6e
B0_1913:		lda #$01		; a9 01
B0_1915:		sta $b6, x		; 95 b6
B0_1917:		sta $0f, x		; 95 0f
B0_1919:		jsr $9bd3		; 20 d3 9b
B0_191c:		sta $cf, x		; 95 cf
B0_191e:		lda #$0d		; a9 0d
B0_1920:		sta $16, x		; 95 16
B0_1922:		jsr $c787		; 20 87 c7
B0_1925:		pla				; 68 
B0_1926:		tay				; a8 
B0_1927:		ldx $07			; a6 07
B0_1929:		lda $98dd, y	; b9 dd 98
B0_192c:		sta $06a1, x	; 9d a1 06
B0_192f:		inx				; e8 
B0_1930:		lda $98df, y	; b9 df 98
B0_1933:		ldy $06			; a4 06
B0_1935:		dey				; 88 
B0_1936:		jmp $9b7d		; 4c 7d 9b
B0_1939:		ldy #$01		; a0 01
B0_193b:		jsr $9baf		; 20 af 9b
B0_193e:		jsr $9bbb		; 20 bb 9b
B0_1941:		tya				; 98 
B0_1942:		and #$07		; 29 07
B0_1944:		sta $06			; 85 06
B0_1946:		ldy $0730, x	; bc 30 07
B0_1949:		rts				; 60 
B0_194a:		ldx #$00		; a2 00
B0_194c:		clc				; 18 
B0_194d:		lda $0f, x		; b5 0f
B0_194f:		beq B0_1956 ; f0 05
B0_1951:		inx				; e8 
B0_1952:		cpx #$05		; e0 05
B0_1954:		bne B0_194c ; d0 f6
B0_1956:		rts				; 60 
B0_1957:		jsr $9bac		; 20 ac 9b
B0_195a:		lda #$86		; a9 86
B0_195c:		sta $06ab		; 8d ab 06
B0_195f:		ldx #$0b		; a2 0b
B0_1961:		ldy #$01		; a0 01
B0_1963:		lda #$87		; a9 87
B0_1965:		jmp $9b7d		; 4c 7d 9b
B0_1968:		lda #$03		; a9 03
B0_196a:		bit $07a9		; 2c a9 07
B0_196d:		pha				; 48 
B0_196e:		jsr $9bac		; 20 ac 9b
B0_1971:		pla				; 68 
B0_1972:		tax				; aa 
B0_1973:		lda #$c0		; a9 c0
B0_1975:		sta $06a1, x	; 9d a1 06
B0_1978:		rts				; 60 
B0_1979:		lda #$06		; a9 06
B0_197b:		bit $07a9		; 2c a9 07
B0_197e:		bit $09a9		; 2c a9 09
B0_1981:		pha				; 48 
B0_1982:		jsr $9bac		; 20 ac 9b
B0_1985:		pla				; 68 
B0_1986:		tax				; aa 
B0_1987:		lda #$0b		; a9 0b
B0_1989:		sta $06a1, x	; 9d a1 06
B0_198c:		inx				; e8 
B0_198d:		ldy #$00		; a0 00
B0_198f:		lda #$63		; a9 63
B0_1991:		jmp $9b7d		; 4c 7d 9b
B0_1994:		jsr $9bbb		; 20 bb 9b
B0_1997:		ldx #$02		; a2 02
B0_1999:		lda #$6d		; a9 6d
B0_199b:		jmp $9b7d		; 4c 7d 9b
B0_199e:		lda #$24		; a9 24
B0_19a0:		sta $06a1		; 8d a1 06
B0_19a3:		ldx #$01		; a2 01
B0_19a5:		ldy #$08		; a0 08
B0_19a7:		lda #$25		; a9 25
B0_19a9:		jsr $9b7d		; 20 7d 9b
B0_19ac:		lda #$61		; a9 61
B0_19ae:		sta $06ab		; 8d ab 06
B0_19b1:		jsr $9bcb		; 20 cb 9b
B0_19b4:		sec				; 38 
B0_19b5:		sbc #$08		; e9 08
B0_19b7:		sta $8c			; 85 8c
B0_19b9:		lda $0725		; ad 25 07
B0_19bc:		sbc #$00		; e9 00
B0_19be:		sta $73			; 85 73
B0_19c0:		lda #$30		; a9 30
B0_19c2:		sta $d4			; 85 d4
B0_19c4:		lda #$b0		; a9 b0
B0_19c6:		sta $010d		; 8d 0d 01
B0_19c9:		lda #$30		; a9 30
B0_19cb:		sta $1b			; 85 1b
B0_19cd:		inc $14			; e6 14
B0_19cf:		rts				; 60 
B0_19d0:		ldx #$00		; a2 00
B0_19d2:		ldy #$0f		; a0 0f
B0_19d4:		jmp $99e9		; 4c e9 99
B0_19d7:		txa				; 8a 
B0_19d8:		pha				; 48 
B0_19d9:		ldx #$01		; a2 01
B0_19db:		ldy #$0f		; a0 0f
B0_19dd:		lda #$44		; a9 44
B0_19df:		jsr $9b7d		; 20 7d 9b
B0_19e2:		pla				; 68 
B0_19e3:		tax				; aa 
B0_19e4:		jsr $9bbb		; 20 bb 9b
B0_19e7:		ldx #$01		; a2 01
B0_19e9:		lda #$40		; a9 40
B0_19eb:		jmp $9b7d		; 4c 7d 9b
B0_19ee:	.db $c3
B0_19ef:	.db $c2
B0_19f0:	.db $c2
B0_19f1:	.db $c2
B0_19f2:		ldy $074e		; ac 4e 07
B0_19f5:		lda $99ee, y	; b9 ee 99
B0_19f8:		jmp $9a44		; 4c 44 9a
B0_19fb:		asl $07			; 06 07
B0_19fd:		php				; 08 
B0_19fe:		cmp $0c			; c5 0c
B0_1a00:	.db $89
B0_1a01:		ldy #$0c		; a0 0c
B0_1a03:		jsr $9baf		; 20 af 9b
B0_1a06:		jmp $9a0e		; 4c 0e 9a
B0_1a09:		lda #$08		; a9 08
B0_1a0b:		sta $0773		; 8d 73 07
B0_1a0e:		ldy $00			; a4 00
B0_1a10:		ldx $99f9, y	; be f9 99
B0_1a13:		lda $99fc, y	; b9 fc 99
B0_1a16:		jmp $9a20		; 4c 20 9a
B0_1a19:		jsr $9bbb		; 20 bb 9b
B0_1a1c:		ldx $07			; a6 07
B0_1a1e:		lda #$c4		; a9 c4
B0_1a20:		ldy #$00		; a0 00
B0_1a22:		jmp $9b7d		; 4c 7d 9b
B0_1a25:		adc #$61		; 69 61
B0_1a27:		adc ($62, x)	; 61 62
B0_1a29:	.db $22
B0_1a2a:		eor ($52), y	; 51 52
B0_1a2c:	.db $52
B0_1a2d:		dey				; 88 
B0_1a2e:		ldy $074e		; ac 4e 07
B0_1a31:		lda $0743		; ad 43 07
B0_1a34:		beq B0_1a38 ; f0 02
B0_1a36:		ldy #$04		; a0 04
B0_1a38:		lda $9a29, y	; b9 29 9a
B0_1a3b:		jmp $9a44		; 4c 44 9a
B0_1a3e:		ldy $074e		; ac 4e 07
B0_1a41:		lda $9a25, y	; b9 25 9a
B0_1a44:		pha				; 48 
B0_1a45:		jsr $9bac		; 20 ac 9b
B0_1a48:		ldx $07			; a6 07
B0_1a4a:		ldy #$00		; a0 00
B0_1a4c:		pla				; 68 
B0_1a4d:		jmp $9b7d		; 4c 7d 9b
B0_1a50:		ldy $074e		; ac 4e 07
B0_1a53:		lda $9a29, y	; b9 29 9a
B0_1a56:		jmp $9a5f		; 4c 5f 9a
B0_1a59:		ldy $074e		; ac 4e 07
B0_1a5c:		lda $9a25, y	; b9 25 9a
B0_1a5f:		pha				; 48 
B0_1a60:		jsr $9bbb		; 20 bb 9b
B0_1a63:		pla				; 68 
B0_1a64:		ldx $07			; a6 07
B0_1a66:		jmp $9b7d		; 4c 7d 9b
B0_1a69:		jsr $9bbb		; 20 bb 9b
B0_1a6c:		ldx $07			; a6 07
B0_1a6e:		lda #$64		; a9 64
B0_1a70:		sta $06a1, x	; 9d a1 06
B0_1a73:		inx				; e8 
B0_1a74:		dey				; 88 
B0_1a75:		bmi B0_1a85 ; 30 0e
B0_1a77:		lda #$65		; a9 65
B0_1a79:		sta $06a1, x	; 9d a1 06
B0_1a7c:		inx				; e8 
B0_1a7d:		dey				; 88 
B0_1a7e:		bmi B0_1a85 ; 30 05
B0_1a80:		lda #$66		; a9 66
B0_1a82:		jsr $9b7d		; 20 7d 9b
B0_1a85:		ldx $046a		; ae 6a 04
B0_1a88:		jsr $9bd3		; 20 d3 9b
B0_1a8b:		sta $0477, x	; 9d 77 04
B0_1a8e:		lda $0725		; ad 25 07
B0_1a91:		sta $046b, x	; 9d 6b 04
B0_1a94:		jsr $9bcb		; 20 cb 9b
B0_1a97:		sta $0471, x	; 9d 71 04
B0_1a9a:		inx				; e8 
B0_1a9b:		cpx #$06		; e0 06
B0_1a9d:		bcc B0_1aa1 ; 90 02
B0_1a9f:		ldx #$00		; a2 00
B0_1aa1:		stx $046a		; 8e 6a 04
B0_1aa4:		rts				; 60 
B0_1aa5:	.db $07
B0_1aa6:	.db $07
B0_1aa7:		asl $05			; 06 05
B0_1aa9:	.db $04
B0_1aaa:	.db $03
B0_1aab:	.db $02
B0_1aac:		ora ($00, x)	; 01 00
B0_1aae:	.db $03
B0_1aaf:	.db $03
B0_1ab0:	.db $04
B0_1ab1:		ora $06			; 05 06
B0_1ab3:	.db $07
B0_1ab4:		php				; 08 
B0_1ab5:		ora #$0a		; 09 0a
B0_1ab7:		jsr $9bac		; 20 ac 9b
B0_1aba:		bcc B0_1ac1 ; 90 05
B0_1abc:		lda #$09		; a9 09
B0_1abe:		sta $0734		; 8d 34 07
B0_1ac1:		dec $0734		; ce 34 07
B0_1ac4:		ldy $0734		; ac 34 07
B0_1ac7:		ldx $9aae, y	; be ae 9a
B0_1aca:		lda $9aa5, y	; b9 a5 9a
B0_1acd:		tay				; a8 
B0_1ace:		lda #$61		; a9 61
B0_1ad0:		jmp $9b7d		; 4c 7d 9b
B0_1ad3:		jsr $9bbb		; 20 bb 9b
B0_1ad6:		jsr $994a		; 20 4a 99
B0_1ad9:		jsr $9bcb		; 20 cb 9b
B0_1adc:		sta $87, x		; 95 87
B0_1ade:		lda $0725		; ad 25 07
B0_1ae1:		sta $6e, x		; 95 6e
B0_1ae3:		jsr $9bd3		; 20 d3 9b
B0_1ae6:		sta $cf, x		; 95 cf
B0_1ae8:		sta $58, x		; 95 58
B0_1aea:		lda #$32		; a9 32
B0_1aec:		sta $16, x		; 95 16
B0_1aee:		ldy #$01		; a0 01
B0_1af0:		sty $b6, x		; 94 b6
B0_1af2:		inc $0f, x		; f6 0f
B0_1af4:		ldx $07			; a6 07
B0_1af6:		lda #$67		; a9 67
B0_1af8:		sta $06a1, x	; 9d a1 06
B0_1afb:		lda #$68		; a9 68
B0_1afd:		sta $06a2, x	; 9d a2 06
B0_1b00:		rts				; 60 
B0_1b01:		lda $075d		; ad 5d 07
B0_1b04:		beq B0_1b3c ; f0 36
B0_1b06:		lda #$00		; a9 00
B0_1b08:		sta $075d		; 8d 5d 07
B0_1b0b:		jmp $9b19		; 4c 19 9b
B0_1b0e:		jsr $9b36		; 20 36 9b
B0_1b11:		jmp $9b2c		; 4c 2c 9b
B0_1b14:		lda #$00		; a9 00
B0_1b16:		sta $06bc		; 8d bc 06
B0_1b19:		jsr $9b36		; 20 36 9b
B0_1b1c:		sty $07			; 84 07
B0_1b1e:		lda #$00		; a9 00
B0_1b20:		ldy $074e		; ac 4e 07
B0_1b23:		dey				; 88 
B0_1b24:		beq B0_1b28 ; f0 02
B0_1b26:		lda #$05		; a9 05
B0_1b28:		clc				; 18 
B0_1b29:		adc $07			; 65 07
B0_1b2b:		tay				; a8 
B0_1b2c:		lda $bde8, y	; b9 e8 bd
B0_1b2f:		pha				; 48 
B0_1b30:		jsr $9bbb		; 20 bb 9b
B0_1b33:		jmp $9a48		; 4c 48 9a
B0_1b36:		lda $00			; a5 00
B0_1b38:		sec				; 38 
B0_1b39:		sbc #$00		; e9 00
B0_1b3b:		tay				; a8 
B0_1b3c:		rts				; 60 
B0_1b3d:	.db $87
B0_1b3e:		brk				; 00
B0_1b3f:		brk				; 00
B0_1b40:		brk				; 00
B0_1b41:		jsr $9bac		; 20 ac 9b
B0_1b44:		bcc B0_1b73 ; 90 2d
B0_1b46:		lda $074e		; ad 4e 07
B0_1b49:		bne B0_1b73 ; d0 28
B0_1b4b:		ldx $046a		; ae 6a 04
B0_1b4e:		jsr $9bcb		; 20 cb 9b
B0_1b51:		sec				; 38 
B0_1b52:		sbc #$10		; e9 10
B0_1b54:		sta $0471, x	; 9d 71 04
B0_1b57:		lda $0725		; ad 25 07
B0_1b5a:		sbc #$00		; e9 00
B0_1b5c:		sta $046b, x	; 9d 6b 04
B0_1b5f:		iny				; c8 
B0_1b60:		iny				; c8 
B0_1b61:		tya				; 98 
B0_1b62:		asl a			; 0a
B0_1b63:		asl a			; 0a
B0_1b64:		asl a			; 0a
B0_1b65:		asl a			; 0a
B0_1b66:		sta $0477, x	; 9d 77 04
B0_1b69:		inx				; e8 
B0_1b6a:		cpx #$05		; e0 05
B0_1b6c:		bcc B0_1b70 ; 90 02
B0_1b6e:		ldx #$00		; a2 00
B0_1b70:		stx $046a		; 8e 6a 04
B0_1b73:		ldx $074e		; ae 4e 07
B0_1b76:		lda $9b3d, x	; bd 3d 9b
B0_1b79:		ldx #$08		; a2 08
B0_1b7b:		ldy #$0f		; a0 0f
B0_1b7d:		sty $0735		; 8c 35 07
B0_1b80:		ldy $06a1, x	; bc a1 06
B0_1b83:		beq B0_1b9d ; f0 18
B0_1b85:		cpy #$17		; c0 17
B0_1b87:		beq B0_1ba0 ; f0 17
B0_1b89:		cpy #$1a		; c0 1a
B0_1b8b:		beq B0_1ba0 ; f0 13
B0_1b8d:		cpy #$c0		; c0 c0
B0_1b8f:		beq B0_1b9d ; f0 0c
B0_1b91:		cpy #$c0		; c0 c0
B0_1b93:		bcs B0_1ba0 ; b0 0b
B0_1b95:		cpy #$54		; c0 54
B0_1b97:		bne B0_1b9d ; d0 04
B0_1b99:		cmp #$50		; c9 50
B0_1b9b:		beq B0_1ba0 ; f0 03
B0_1b9d:		sta $06a1, x	; 9d a1 06
B0_1ba0:		inx				; e8 
B0_1ba1:		cpx #$0d		; e0 0d
B0_1ba3:		bcs B0_1bab ; b0 06
B0_1ba5:		ldy $0735		; ac 35 07
B0_1ba8:		dey				; 88 
B0_1ba9:		bpl B0_1b7d ; 10 d2
B0_1bab:		rts				; 60 
B0_1bac:		jsr $9bbb		; 20 bb 9b
B0_1baf:		lda $0730, x	; bd 30 07
B0_1bb2:		clc				; 18 
B0_1bb3:		bpl B0_1bba ; 10 05
B0_1bb5:		tya				; 98 
B0_1bb6:		sta $0730, x	; 9d 30 07
B0_1bb9:		sec				; 38 
B0_1bba:		rts				; 60 
B0_1bbb:		ldy $072d, x	; bc 2d 07
B0_1bbe:		lda ($e7), y	; b1 e7
B0_1bc0:		and #$0f		; 29 0f
B0_1bc2:		sta $07			; 85 07
B0_1bc4:		iny				; c8 
B0_1bc5:		lda ($e7), y	; b1 e7
B0_1bc7:		and #$0f		; 29 0f
B0_1bc9:		tay				; a8 
B0_1bca:		rts				; 60 
B0_1bcb:		lda $0726		; ad 26 07
B0_1bce:		asl a			; 0a
B0_1bcf:		asl a			; 0a
B0_1bd0:		asl a			; 0a
B0_1bd1:		asl a			; 0a
B0_1bd2:		rts				; 60 
B0_1bd3:		lda $07			; a5 07
B0_1bd5:		asl a			; 0a
B0_1bd6:		asl a			; 0a
B0_1bd7:		asl a			; 0a
B0_1bd8:		asl a			; 0a
B0_1bd9:		clc				; 18 
B0_1bda:		adc #$20		; 69 20
B0_1bdc:		rts				; 60 
B0_1bdd:		brk				; 00
B0_1bde:		bne B0_1be5 ; d0 05
B0_1be0:		ora $48			; 05 48
B0_1be2:		lsr a			; 4a
B0_1be3:		lsr a			; 4a
B0_1be4:		lsr a			; 4a
B0_1be5:		lsr a			; 4a
B0_1be6:		tay				; a8 
B0_1be7:		lda $9bdf, y	; b9 df 9b
B0_1bea:		sta $07			; 85 07
B0_1bec:		pla				; 68 
B0_1bed:		and #$0f		; 29 0f
B0_1bef:		clc				; 18 
B0_1bf0:		adc $9bdd, y	; 79 dd 9b
B0_1bf3:		sta $06			; 85 06
B0_1bf5:		rts				; 60 
B0_1bf6:	.db $ff
B0_1bf7:	.db $ff
B0_1bf8:	.db $12
B0_1bf9:		rol $0e, x		; 36 0e
B0_1bfb:		asl $320e		; 0e 0e 32
B0_1bfe:	.db $32
B0_1bff:	.db $32
B0_1c00:		asl a			; 0a
B0_1c01:		rol $40			; 26 40
B0_1c03:		jsr $9c13		; 20 13 9c
B0_1c06:		sta $0750		; 8d 50 07
B0_1c09:		and #$60		; 29 60
B0_1c0b:		asl a			; 0a
B0_1c0c:		rol a			; 2a
B0_1c0d:		rol a			; 2a
B0_1c0e:		rol a			; 2a
B0_1c0f:		sta $074e		; 8d 4e 07
B0_1c12:		rts				; 60 
B0_1c13:		ldy $075f		; ac 5f 07
B0_1c16:		lda $9cb4, y	; b9 b4 9c
B0_1c19:		clc				; 18 
B0_1c1a:		adc $0760		; 6d 60 07
B0_1c1d:		tay				; a8 
B0_1c1e:		lda $9cbc, y	; b9 bc 9c
B0_1c21:		rts				; 60 
B0_1c22:		lda $0750		; ad 50 07
B0_1c25:		jsr $9c09		; 20 09 9c
B0_1c28:		tay				; a8 
B0_1c29:		lda $0750		; ad 50 07
B0_1c2c:		and #$1f		; 29 1f
B0_1c2e:		sta $074f		; 8d 4f 07
B0_1c31:		lda $9ce0, y	; b9 e0 9c
B0_1c34:		clc				; 18 
B0_1c35:		adc $074f		; 6d 4f 07
B0_1c38:		tay				; a8 
B0_1c39:		lda $9ce4, y	; b9 e4 9c
B0_1c3c:		sta $e9			; 85 e9
B0_1c3e:		lda $9d06, y	; b9 06 9d
B0_1c41:		sta $ea			; 85 ea
B0_1c43:		ldy $074e		; ac 4e 07
B0_1c46:		lda $9d28, y	; b9 28 9d
B0_1c49:		clc				; 18 
B0_1c4a:		adc $074f		; 6d 4f 07
B0_1c4d:		tay				; a8 
B0_1c4e:		lda $9d2c, y	; b9 2c 9d
B0_1c51:		sta $e7			; 85 e7
B0_1c53:		lda $9d4e, y	; b9 4e 9d
B0_1c56:		sta $e8			; 85 e8
B0_1c58:		ldy #$00		; a0 00
B0_1c5a:		lda ($e7), y	; b1 e7
B0_1c5c:		pha				; 48 
B0_1c5d:		and #$07		; 29 07
B0_1c5f:		cmp #$04		; c9 04
B0_1c61:		bcc B0_1c68 ; 90 05
B0_1c63:		sta $0744		; 8d 44 07
B0_1c66:		lda #$00		; a9 00
B0_1c68:		sta $0741		; 8d 41 07
B0_1c6b:		pla				; 68 
B0_1c6c:		pha				; 48 
B0_1c6d:		and #$38		; 29 38
B0_1c6f:		lsr a			; 4a
B0_1c70:		lsr a			; 4a
B0_1c71:		lsr a			; 4a
B0_1c72:		sta $0710		; 8d 10 07
B0_1c75:		pla				; 68 
B0_1c76:		and #$c0		; 29 c0
B0_1c78:		clc				; 18 
B0_1c79:		rol a			; 2a
B0_1c7a:		rol a			; 2a
B0_1c7b:		rol a			; 2a
B0_1c7c:		sta $0715		; 8d 15 07
B0_1c7f:		iny				; c8 
B0_1c80:		lda ($e7), y	; b1 e7
B0_1c82:		pha				; 48 
B0_1c83:		and #$0f		; 29 0f
B0_1c85:		sta $0727		; 8d 27 07
B0_1c88:		pla				; 68 
B0_1c89:		pha				; 48 
B0_1c8a:		and #$30		; 29 30
B0_1c8c:		lsr a			; 4a
B0_1c8d:		lsr a			; 4a
B0_1c8e:		lsr a			; 4a
B0_1c8f:		lsr a			; 4a
B0_1c90:		sta $0742		; 8d 42 07
B0_1c93:		pla				; 68 
B0_1c94:		and #$c0		; 29 c0
B0_1c96:		clc				; 18 
B0_1c97:		rol a			; 2a
B0_1c98:		rol a			; 2a
B0_1c99:		rol a			; 2a
B0_1c9a:		cmp #$03		; c9 03
B0_1c9c:		bne B0_1ca3 ; d0 05
B0_1c9e:		sta $0743		; 8d 43 07
B0_1ca1:		lda #$00		; a9 00
B0_1ca3:		sta $0733		; 8d 33 07
B0_1ca6:		lda $e7			; a5 e7
B0_1ca8:		clc				; 18 
B0_1ca9:		adc #$02		; 69 02
B0_1cab:		sta $e7			; 85 e7
B0_1cad:		lda $e8			; a5 e8
B0_1caf:		adc #$00		; 69 00
B0_1cb1:		sta $e8			; 85 e8
B0_1cb3:		rts				; 60 
B0_1cb4:		brk				; 00
B0_1cb5:		ora $0a			; 05 0a
B0_1cb7:		asl $1713		; 0e 13 17
B0_1cba:	.db $1b
B0_1cbb:		jsr $2925		; 20 25 29
B0_1cbe:		cpy #$26		; c0 26
B0_1cc0:		rts				; 60 
B0_1cc1:		plp				; 28 
B0_1cc2:		and #$01		; 29 01
B0_1cc4:	.db $27
B0_1cc5:	.db $62
B0_1cc6:		bit $35			; 24 35
B0_1cc8:		jsr $2263		; 20 63 22
B0_1ccb:		and #$41		; 29 41
B0_1ccd:		bit $2a61		; 2c 61 2a
B0_1cd0:		and ($26), y	; 31 26
B0_1cd2:	.db $62
B0_1cd3:		rol $2d23		; 2e 23 2d
B0_1cd6:		rts				; 60 
B0_1cd7:	.db $33
B0_1cd8:		and #$01		; 29 01
B0_1cda:	.db $27
B0_1cdb:	.db $64
B0_1cdc:		bmi B0_1d10 ; 30 32
B0_1cde:		and ($65, x)	; 21 65
B0_1ce0:	.db $1f
B0_1ce1:		asl $1c			; 06 1c
B0_1ce3:		brk				; 00
B0_1ce4:		;removed
	.hex  70 97
B0_1ce6:		;removed
	.hex  b0 df
B0_1ce8:		asl a			; 0a
B0_1ce9:	.db $1f
B0_1cea:		eor $9b7e, y	; 59 7e 9b
B0_1ced:		lda #$d0		; a9 d0
B0_1cef:		ora ($1f, x)	; 01 1f
B0_1cf1:	.db $3c
B0_1cf2:		eor ($7b), y	; 51 7b
B0_1cf4:	.db $7c
B0_1cf5:		ldy #$a9		; a0 a9
B0_1cf7:		dec $faf1		; ce f1 fa
B0_1cfa:	.db $fb
B0_1cfb:		and $60, x		; 35 60
B0_1cfd:		stx $b3aa		; 8e aa b3
B0_1d00:		cld				; b8 
B0_1d01:		ora $33			; 05 33
B0_1d03:		rts				; 60 
B0_1d04:		adc ($9b), y	; 71 9b
B0_1d06:		sta $9d9d, x	; 9d 9d 9d
B0_1d09:		sta $9e9e, x	; 9d 9e 9e
B0_1d0c:	.db $9e
B0_1d0d:	.db $9e
B0_1d0e:	.db $9e
B0_1d0f:	.db $9e
B0_1d10:	.db $9e
B0_1d11:	.db $9f
B0_1d12:	.db $9f
B0_1d13:	.db $9f
B0_1d14:	.db $9f
B0_1d15:	.db $9f
B0_1d16:	.db $9f
B0_1d17:	.db $9f
B0_1d18:	.db $9f
B0_1d19:	.db $9f
B0_1d1a:	.db $9f
B0_1d1b:	.db $9f
B0_1d1c:	.db $9f
B0_1d1d:		ldy #$a0		; a0 a0
B0_1d1f:		ldy #$a0		; a0 a0
B0_1d21:		ldy #$a0		; a0 a0
B0_1d23:		lda ($a1, x)	; a1 a1
B0_1d25:		lda ($a1, x)	; a1 a1
B0_1d27:		lda ($00, x)	; a1 00
B0_1d29:	.db $03
B0_1d2a:		ora $061c, y	; 19 1c 06
B0_1d2d:		eor $c0			; 45 c0
B0_1d2f:	.db $6b
B0_1d30:		dec $8a37		; ce 37 8a
B0_1d33:		ora $f38e, y	; 19 8e f3
B0_1d36:		pha				; 48 
B0_1d37:		cmp $3b32		; cd 32 3b
B0_1d3a:	.db $7a
B0_1d3b:	.db $8f
B0_1d3c:		inc $5b, x		; f6 5b
B0_1d3e:		dec $92ff		; ce ff 92
B0_1d41:		ora $7e			; 05 7e
B0_1d43:	.db $d7
B0_1d44:	.db $02
B0_1d45:		and $d8, x		; 35 d8
B0_1d47:		adc $10af, y	; 79 af 10
B0_1d4a:	.db $8f
B0_1d4b:	.db $02
B0_1d4c:	.db $6f
B0_1d4d:	.db $fa
B0_1d4e:		ldx $aeae		; ae ae ae
B0_1d51:		ldy $a4			; a4 a4
B0_1d53:		lda $a5			; a5 a5
B0_1d55:		ldx $a6			; a6 a6
B0_1d57:		ldx $a7			; a6 a7
B0_1d59:	.db $a7
B0_1d5a:		tay				; a8 
B0_1d5b:		tay				; a8 
B0_1d5c:		tay				; a8 
B0_1d5d:		tay				; a8 
B0_1d5e:		tay				; a8 
B0_1d5f:		lda #$a9		; a9 a9
B0_1d61:		lda #$aa		; a9 aa
B0_1d63:	.db $ab
B0_1d64:	.db $ab
B0_1d65:	.db $ab
B0_1d66:		ldy $acac		; ac ac ac
B0_1d69:		lda $a2a1		; ad a1 a2
B0_1d6c:		ldx #$a3		; a2 a3
B0_1d6e:	.db $a3
B0_1d6f:	.db $a3
B0_1d70:		ror $dd, x		; 76 dd
B0_1d72:	.db $bb
B0_1d73:		jmp $1dea		; 4c ea 1d
B0_1d76:	.db $1b
B0_1d77:		cpy $5d56		; cc 56 5d
B0_1d7a:		asl $9d, x		; 16 9d
B0_1d7c:		dec $1d			; c6 1d
B0_1d7e:		rol $9d, x		; 36 9d
B0_1d80:		cmp #$1d		; c9 1d
B0_1d82:	.db $04
B0_1d83:	.db $db
B0_1d84:		eor #$1d		; 49 1d
B0_1d86:		sty $1b			; 84 1b
B0_1d88:		cmp #$5d		; c9 5d
B0_1d8a:		dey				; 88 
B0_1d8b:		sta $0f, x		; 95 0f
B0_1d8d:		php				; 08 
B0_1d8e:		bmi B0_1ddc ; 30 4c
B0_1d90:		sei				; 78 
B0_1d91:		and $28a6		; 2d a6 28
B0_1d94:		bcc B0_1d4b ; 90 b5
B0_1d96:	.db $ff
B0_1d97:	.db $0f
B0_1d98:	.db $03
B0_1d99:		lsr $1b, x		; 56 1b
B0_1d9b:		cmp #$1b		; c9 1b
B0_1d9d:	.db $0f
B0_1d9e:	.db $07
B0_1d9f:		rol $1b, x		; 36 1b
B0_1da1:		tax				; aa 
B0_1da2:	.db $1b
B0_1da3:		pha				; 48 
B0_1da4:		sta $0f, x		; 95 0f
B0_1da6:		asl a			; 0a
B0_1da7:		rol a			; 2a
B0_1da8:	.db $1b
B0_1da9:	.db $5b
B0_1daa:	.db $0c
B0_1dab:		sei				; 78 
B0_1dac:		and $b590		; 2d 90 b5
B0_1daf:	.db $ff
B0_1db0:	.db $0b
B0_1db1:		sty $4c4b		; 8c 4b 4c
B0_1db4:	.db $77
B0_1db5:	.db $5f
B0_1db6:	.db $eb
B0_1db7:	.db $0c
B0_1db8:		lda $19db, x	; bd db 19
B0_1dbb:		sta $1d75, x	; 9d 75 1d
B0_1dbe:		adc $d95b, x	; 7d 5b d9
B0_1dc1:		ora $dd3d, x	; 1d 3d dd
B0_1dc4:		sta $261d, y	; 99 1d 26
B0_1dc7:		sta $2b5a, x	; 9d 5a 2b
B0_1dca:		txa				; 8a 
B0_1dcb:		bit $1bca		; 2c ca 1b
B0_1dce:		jsr $7b95		; 20 95 7b
B0_1dd1:	.db $5c
B0_1dd2:	.db $db
B0_1dd3:		jmp $cc1b		; 4c 1b cc
B0_1dd6:	.db $3b
B0_1dd7:		cpy $2d78		; cc 78 2d
B0_1dda:		ldx $28			; a6 28
B0_1ddc:		;removed
	.hex  90 b5
B0_1dde:	.db $ff
B0_1ddf:	.db $0b
B0_1de0:		sty $1d3b		; 8c 3b 1d
B0_1de3:	.db $8b
B0_1de4:		ora $0cab, x	; 1d ab 0c
B0_1de7:	.db $db
B0_1de8:		ora $030f, x	; 1d 0f 03
B0_1deb:		adc $1d			; 65 1d
B0_1ded:	.db $6b
B0_1dee:	.db $1b
B0_1def:		ora $9d			; 05 9d
B0_1df1:	.db $0b
B0_1df2:	.db $1b
B0_1df3:		ora $9b			; 05 9b
B0_1df5:	.db $0b
B0_1df6:		ora $0c8b, x	; 1d 8b 0c
B0_1df9:	.db $1b
B0_1dfa:		sty $1570		; 8c 70 15
B0_1dfd:	.db $7b
B0_1dfe:	.db $0c
B0_1dff:	.db $db
B0_1e00:	.db $0c
B0_1e01:	.db $0f
B0_1e02:		php				; 08 
B0_1e03:		sei				; 78 
B0_1e04:		and $28a6		; 2d a6 28
B0_1e07:		bcc B0_1dbe ; 90 b5
B0_1e09:	.db $ff
B0_1e0a:	.db $27
B0_1e0b:		lda #$4b		; a9 4b
B0_1e0d:	.db $0c
B0_1e0e:		pla				; 68 
B0_1e0f:		and #$0f		; 29 0f
B0_1e11:		asl $77			; 06 77
B0_1e13:	.db $1b
B0_1e14:	.db $0f
B0_1e15:	.db $0b
B0_1e16:		rts				; 60 
B0_1e17:		ora $4b, x		; 15 4b
B0_1e19:		sty $2d78		; 8c 78 2d
B0_1e1c:		bcc B0_1dd3 ; 90 b5
B0_1e1e:	.db $ff
B0_1e1f:	.db $0f
B0_1e20:	.db $03
B0_1e21:		stx $e165		; 8e 65 e1
B0_1e24:	.db $bb
B0_1e25:		sec				; 38 
B0_1e26:		adc $3ea8		; 6d a8 3e
B0_1e29:		sbc $e7			; e5 e7
B0_1e2b:	.db $0f
B0_1e2c:		php				; 08 
B0_1e2d:	.db $0b
B0_1e2e:	.db $02
B0_1e2f:	.db $2b
B0_1e30:	.db $02
B0_1e31:		lsr $e165, x	; 5e 65 e1
B0_1e34:	.db $bb
B0_1e35:		asl $0edb		; 0e db 0e
B0_1e38:	.db $bb
B0_1e39:		stx $0edb		; 8e db 0e
B0_1e3c:		inc $ec65, x	; fe 65 ec
B0_1e3f:	.db $0f
B0_1e40:		ora $654e		; 0d 4e 65
B0_1e43:		sbc ($0f, x)	; e1 0f
B0_1e45:		asl $024e		; 0e 4e 02
B0_1e48:		cpx #$0f		; e0 0f
B0_1e4a:		bpl B0_1e4a ; 10 fe
B0_1e4c:		sbc $e1			; e5 e1
B0_1e4e:	.db $1b
B0_1e4f:		sta $7b			; 85 7b
B0_1e51:	.db $0c
B0_1e52:	.db $5b
B0_1e53:		sta $78, x		; 95 78
B0_1e55:		and $b590		; 2d 90 b5
B0_1e58:	.db $ff
B0_1e59:		lda $86			; a5 86
B0_1e5b:		cpx $28			; e4 28
B0_1e5d:		clc				; 18 
B0_1e5e:		tay				; a8 
B0_1e5f:		eor $83			; 45 83
B0_1e61:		adc #$03		; 69 03
B0_1e63:		dec $29			; c6 29
B0_1e65:	.db $9b
B0_1e66:	.db $83
B0_1e67:		asl $a4, x		; 16 a4
B0_1e69:		dey				; 88 
B0_1e6a:		bit $e9			; 24 e9
B0_1e6c:		plp				; 28 
B0_1e6d:		ora $a8			; 05 a8
B0_1e6f:	.db $7b
B0_1e70:		plp				; 28 
B0_1e71:		bit $8f			; 24 8f
B0_1e73:		iny				; c8 
B0_1e74:	.db $03
B0_1e75:		inx				; e8 
B0_1e76:	.db $03
B0_1e77:		lsr $a8			; 46 a8
B0_1e79:		sta $24			; 85 24
B0_1e7b:		iny				; c8 
B0_1e7c:		bit $ff			; 24 ff
B0_1e7e:	.db $eb
B0_1e7f:		stx $030f		; 8e 0f 03
B0_1e82:	.db $fb
B0_1e83:		ora $17			; 05 17
B0_1e85:		sta $db			; 85 db
B0_1e87:		stx $070f		; 8e 0f 07
B0_1e8a:	.db $57
B0_1e8b:		ora $7b			; 05 7b
B0_1e8d:		ora $9b			; 05 9b
B0_1e8f:	.db $80
B0_1e90:	.db $2b
B0_1e91:		sta $fb			; 85 fb
B0_1e93:		ora $0f			; 05 0f
B0_1e95:	.db $0b
B0_1e96:	.db $1b
B0_1e97:		ora $9b			; 05 9b
B0_1e99:		ora $ff			; 05 ff
B0_1e9b:		rol $66c2		; 2e c2 66
B0_1e9e:	.db $e2
B0_1e9f:		ora ($0f), y	; 11 0f
B0_1ea1:	.db $07
B0_1ea2:	.db $02
B0_1ea3:		ora ($0f), y	; 11 0f
B0_1ea5:	.db $0c
B0_1ea6:	.db $12
B0_1ea7:		ora ($ff), y	; 11 ff
B0_1ea9:		asl $a8c2		; 0e c2 a8
B0_1eac:	.db $ab
B0_1ead:		brk				; 00
B0_1eae:	.db $bb
B0_1eaf:		stx $826b		; 8e 6b 82
B0_1eb2:		dec $a000, x	; de 00 a0
B0_1eb5:	.db $33
B0_1eb6:		stx $43			; 86 43
B0_1eb8:		asl $3e			; 06 3e
B0_1eba:		ldy $a0, x		; b4 a0
B0_1ebc:	.db $cb
B0_1ebd:	.db $02
B0_1ebe:	.db $0f
B0_1ebf:	.db $07
B0_1ec0:		ror $a642, x	; 7e 42 a6
B0_1ec3:	.db $83
B0_1ec4:	.db $02
B0_1ec5:	.db $0f
B0_1ec6:		asl a			; 0a
B0_1ec7:	.db $3b
B0_1ec8:	.db $02
B0_1ec9:	.db $cb
B0_1eca:	.db $37
B0_1ecb:	.db $0f
B0_1ecc:	.db $0c
B0_1ecd:	.db $e3
B0_1ece:		asl $9bff		; 0e ff 9b
B0_1ed1:		stx $0eca		; 8e ca 0e
B0_1ed4:		inc $4442		; ee 42 44
B0_1ed7:	.db $5b
B0_1ed8:		stx $80			; 86 80
B0_1eda:		clv				; b8 
B0_1edb:	.db $1b
B0_1edc:	.db $80
B0_1edd:		bvc B0_1e99 ; 50 ba
B0_1edf:		;removed
	.hex  10 b7
B0_1ee1:	.db $5b
B0_1ee2:		brk				; 00
B0_1ee3:	.db $17
B0_1ee4:		sta $4b			; 85 4b
B0_1ee6:		ora $fe			; 05 fe
B0_1ee8:	.db $34
B0_1ee9:		rti				; 40 
B0_1eea:	.db $b7
B0_1eeb:		stx $c6			; 86 c6
B0_1eed:		asl $5b			; 06 5b
B0_1eef:	.db $80
B0_1ef0:	.db $83
B0_1ef1:		brk				; 00
B0_1ef2:		bne B0_1f2c ; d0 38
B0_1ef4:	.db $5b
B0_1ef5:		stx $0e8a		; 8e 8a 0e
B0_1ef8:		ldx $00			; a6 00
B0_1efa:	.db $bb
B0_1efb:		asl $80c5		; 0e c5 80
B0_1efe:	.db $f3
B0_1eff:		brk				; 00
B0_1f00:	.db $ff
B0_1f01:	.hex 1e c2 00
B0_1f04:	.db $6b
B0_1f05:		asl $8b			; 06 8b
B0_1f07:		stx $63			; 86 63
B0_1f09:	.db $b7
B0_1f0a:	.db $0f
B0_1f0b:		ora $03			; 05 03
B0_1f0d:		asl $23			; 06 23
B0_1f0f:		asl $4b			; 06 4b
B0_1f11:	.db $b7
B0_1f12:	.db $bb
B0_1f13:		brk				; 00
B0_1f14:	.db $5b
B0_1f15:	.db $b7
B0_1f16:	.db $fb
B0_1f17:	.db $37
B0_1f18:	.db $3b
B0_1f19:	.db $b7
B0_1f1a:	.db $0f
B0_1f1b:	.db $0b
B0_1f1c:	.db $1b
B0_1f1d:	.db $37
B0_1f1e:	.db $ff
B0_1f1f:	.db $2b
B0_1f20:	.db $d7
B0_1f21:	.db $e3
B0_1f22:	.db $03
B0_1f23:	.db $c2
B0_1f24:		stx $e2			; 86 e2
B0_1f26:		asl $76			; 06 76
B0_1f28:		lda $a3			; a5 a3
B0_1f2a:	.db $8f
B0_1f2b:	.db $03
B0_1f2c:		stx $2b			; 86 2b
B0_1f2e:	.db $57
B0_1f2f:		pla				; 68 
B0_1f30:		plp				; 28 
B0_1f31:		sbc #$28		; e9 28
B0_1f33:		sbc $83			; e5 83
B0_1f35:		bit $8f			; 24 8f
B0_1f37:		rol $a8, x		; 36 a8
B0_1f39:	.db $5b
B0_1f3a:	.db $03
B0_1f3b:	.db $ff
B0_1f3c:	.db $0f
B0_1f3d:	.db $02
B0_1f3e:		sei				; 78 
B0_1f3f:		rti				; 40 
B0_1f40:		pha				; 48 
B0_1f41:		dec $c3f8		; ce f8 c3
B0_1f44:		sed				; f8 
B0_1f45:	.db $c3
B0_1f46:	.db $0f
B0_1f47:	.db $07
B0_1f48:	.db $7b
B0_1f49:	.db $43
B0_1f4a:		dec $d0			; c6 d0
B0_1f4c:	.db $0f
B0_1f4d:		txa				; 8a 
B0_1f4e:		iny				; c8 
B0_1f4f:		;removed
	.hex  50 ff
B0_1f51:		sta $86			; 85 86
B0_1f53:	.db $0b
B0_1f54:	.db $80
B0_1f55:	.db $1b
B0_1f56:		brk				; 00
B0_1f57:	.db $db
B0_1f58:	.db $37
B0_1f59:	.db $77
B0_1f5a:	.db $80
B0_1f5b:	.db $eb
B0_1f5c:	.db $37
B0_1f5d:		inc $202b, x	; fe 2b 20
B0_1f60:	.db $2b
B0_1f61:	.db $80
B0_1f62:	.db $7b
B0_1f63:		sec				; 38 
B0_1f64:	.db $ab
B0_1f65:		clv				; b8 
B0_1f66:	.db $77
B0_1f67:		stx $fe			; 86 fe
B0_1f69:	.db $42
B0_1f6a:		jsr $8649		; 20 49 86
B0_1f6d:	.db $8b
B0_1f6e:		asl $9b			; 06 9b
B0_1f70:	.db $80
B0_1f71:	.db $7b
B0_1f72:		stx $b75b		; 8e 5b b7
B0_1f75:	.db $9b
B0_1f76:		asl $0ebb		; 0e bb 0e
B0_1f79:	.db $9b
B0_1f7a:	.db $80
B0_1f7b:	.db $ff
B0_1f7c:	.db $0b
B0_1f7d:	.db $80
B0_1f7e:		rts				; 60 
B0_1f7f:		sec				; 38 
B0_1f80:		bpl B0_1f3a ; 10 b8
B0_1f82:		cpy #$3b		; c0 3b
B0_1f84:	.db $db
B0_1f85:		stx $b840		; 8e 40 b8
B0_1f88:		beq B0_1fc2 ; f0 38
B0_1f8a:	.db $7b
B0_1f8b:		stx $b8a0		; 8e a0 b8
B0_1f8e:		cpy #$b8		; c0 b8
B0_1f90:	.db $fb
B0_1f91:		brk				; 00
B0_1f92:		ldy #$b8		; a0 b8
B0_1f94:		bmi B0_1f51 ; 30 bb
B0_1f96:		inc $8842		; ee 42 88
B0_1f99:	.db $0f
B0_1f9a:	.db $0b
B0_1f9b:	.db $2b
B0_1f9c:		asl $0e67		; 0e 67 0e
B0_1f9f:	.db $ff
B0_1fa0:		asl a			; 0a
B0_1fa1:		tax				; aa 
B0_1fa2:		asl $2a28		; 0e 28 2a
B0_1fa5:		asl $8831		; 0e 31 88
B0_1fa8:	.db $ff
B0_1fa9:	.db $c7
B0_1faa:	.db $83
B0_1fab:	.db $d7
B0_1fac:	.db $03
B0_1fad:	.db $42
B0_1fae:	.db $8f
B0_1faf:	.db $7a
B0_1fb0:	.db $03
B0_1fb1:		ora $a4			; 05 a4
B0_1fb3:		sei				; 78 
B0_1fb4:		bit $a6			; 24 a6
B0_1fb6:		and $e4			; 25 e4
B0_1fb8:		and $4b			; 25 4b
B0_1fba:	.db $83
B0_1fbb:	.db $e3
B0_1fbc:	.db $03
B0_1fbd:		ora $a4			; 05 a4
B0_1fbf:	.db $89
B0_1fc0:		bit $b5			; 24 b5
B0_1fc2:		bit $09			; 24 09
B0_1fc4:		ldy $65			; a4 65
B0_1fc6:		bit $c9			; 24 c9
B0_1fc8:		bit $0f			; 24 0f
B0_1fca:		php				; 08 
B0_1fcb:		sta $25			; 85 25
B0_1fcd:	.db $ff
B0_1fce:		cmp $b5a5		; cd a5 b5
B0_1fd1:		tay				; a8 
B0_1fd2:	.db $07
B0_1fd3:		tay				; a8 
B0_1fd4:		ror $28, x		; 76 28
B0_1fd6:		cpy $6525		; cc 25 65
B0_1fd9:		ldy $a9			; a4 a9
B0_1fdb:		bit $e5			; 24 e5
B0_1fdd:		bit $19			; 24 19
B0_1fdf:		ldy $0f			; a4 0f
B0_1fe1:	.db $07
B0_1fe2:		sta $28, x		; 95 28
B0_1fe4:		inc $24			; e6 24
B0_1fe6:		ora $d7a4, y	; 19 a4 d7
B0_1fe9:		and #$16		; 29 16
B0_1feb:		lda #$58		; a9 58
B0_1fed:		and #$97		; 29 97
B0_1fef:		and #$ff		; 29 ff
B0_1ff1:	.db $0f
B0_1ff2:	.db $02
B0_1ff3:	.db $02
B0_1ff4:		ora ($0f), y	; 11 0f
B0_1ff6:	.db $07
B0_1ff7:	.db $02
B0_1ff8:		ora ($ff), y	; 11 ff
B0_1ffa:	.db $ff
B0_1ffb:	.db $2b
B0_1ffc:	.db $82
B0_1ffd:	.db $ab
B0_1ffe:		sec				; 38 
B0_1fff:		dec $e242, x	; de 42 e2
B0_2002:	.db $1b
B0_2003:		clv				; b8 
B0_2004:	.db $eb
B0_2005:	.db $3b
B0_2006:	.db $db
B0_2007:	.db $80
B0_2008:	.db $8b
B0_2009:		clv				; b8 
B0_200a:	.db $1b
B0_200b:	.db $82
B0_200c:	.db $fb
B0_200d:		clv				; b8 
B0_200e:	.db $7b
B0_200f:	.db $80
B0_2010:	.db $fb
B0_2011:	.db $3c
B0_2012:	.db $5b
B0_2013:		ldy $b87b, x	; bc 7b b8
B0_2016:	.db $1b
B0_2017:		stx $0ecb		; 8e cb 0e
B0_201a:	.db $1b
B0_201b:		stx $0d0f		; 8e 0f 0d
B0_201e:	.db $2b
B0_201f:	.db $3b
B0_2020:	.db $bb
B0_2021:		clv				; b8 
B0_2022:	.db $eb
B0_2023:	.db $82
B0_2024:	.db $4b
B0_2025:		clv				; b8 
B0_2026:	.db $bb
B0_2027:		sec				; 38 
B0_2028:	.db $3b
B0_2029:	.db $b7
B0_202a:	.db $bb
B0_202b:	.db $02
B0_202c:	.db $0f
B0_202d:	.db $13
B0_202e:	.db $1b
B0_202f:		brk				; 00
B0_2030:	.db $cb
B0_2031:	.db $80
B0_2032:	.db $6b
B0_2033:		ldy $7bff, x	; bc ff 7b
B0_2036:	.db $80
B0_2037:		ldx $8000		; ae 00 80
B0_203a:	.db $8b
B0_203b:		stx $05e8		; 8e e8 05
B0_203e:		sbc $1786, y	; f9 86 17
B0_2041:		stx $16			; 86 16
B0_2043:		sta $4e			; 85 4e
B0_2045:	.db $2b
B0_2046:	.db $80
B0_2047:	.db $ab
B0_2048:		stx $8587		; 8e 87 85
B0_204b:	.db $c3
B0_204c:		ora $8b			; 05 8b
B0_204e:	.db $82
B0_204f:	.db $9b
B0_2050:	.db $02
B0_2051:	.db $ab
B0_2052:	.db $02
B0_2053:	.db $bb
B0_2054:		stx $cb			; 86 cb
B0_2056:		asl $d3			; 06 d3
B0_2058:	.db $03
B0_2059:	.db $3b
B0_205a:		stx $0e6b		; 8e 6b 0e
B0_205d:	.db $a7
B0_205e:		stx $29ff		; 8e ff 29
B0_2061:		stx $1152		; 8e 52 11
B0_2064:	.db $83
B0_2065:		asl $030f		; 0e 0f 03
B0_2068:	.db $9b
B0_2069:		asl $8e2b		; 0e 2b 8e
B0_206c:	.db $5b
B0_206d:		asl $8ecb		; 0e cb 8e
B0_2070:	.db $fb
B0_2071:		asl $82fb		; 0e fb 82
B0_2074:	.db $9b
B0_2075:	.db $82
B0_2076:	.db $bb
B0_2077:	.db $02
B0_2078:		inc $e842, x	; fe 42 e8
B0_207b:	.db $bb
B0_207c:		stx $0a0f		; 8e 0f 0a
B0_207f:	.db $ab
B0_2080:		asl $0ecb		; 0e cb 0e
B0_2083:		sbc $880e, y	; f9 0e 88
B0_2086:		stx $a6			; 86 a6
B0_2088:		asl $db			; 06 db
B0_208a:	.db $02
B0_208b:		ldx $8e, y		; b6 8e
B0_208d:	.db $ff
B0_208e:	.db $ab
B0_208f:		dec $42de		; ce de 42
B0_2092:		cpy #$cb		; c0 cb
B0_2094:		dec $8e5b		; ce 5b 8e
B0_2097:	.db $1b
B0_2098:		dec $854b		; ce 4b 85
B0_209b:	.db $67
B0_209c:		eor $0f			; 45 0f
B0_209e:	.db $07
B0_209f:	.db $2b
B0_20a0:		brk				; 00
B0_20a1:	.db $7b
B0_20a2:		sta $97			; 85 97
B0_20a4:		ora $0f			; 05 0f
B0_20a6:		asl a			; 0a
B0_20a7:	.db $92
B0_20a8:	.db $02
B0_20a9:	.db $ff
B0_20aa:		asl a			; 0a
B0_20ab:		tax				; aa 
B0_20ac:		asl $4a24		; 0e 24 4a
B0_20af:		asl $aa23, x	; 1e 23 aa
B0_20b2:	.db $ff
B0_20b3:	.db $1b
B0_20b4:	.db $80
B0_20b5:	.db $bb
B0_20b6:		sec				; 38 
B0_20b7:	.db $4b
B0_20b8:		ldy $3beb, x	; bc eb 3b
B0_20bb:	.db $0f
B0_20bc:	.db $04
B0_20bd:	.db $2b
B0_20be:		brk				; 00
B0_20bf:	.db $ab
B0_20c0:		sec				; 38 
B0_20c1:	.db $eb
B0_20c2:		brk				; 00
B0_20c3:	.db $cb
B0_20c4:		stx $80fb		; 8e fb 80
B0_20c7:	.db $ab
B0_20c8:		clv				; b8 
B0_20c9:	.db $6b
B0_20ca:	.db $80
B0_20cb:	.db $fb
B0_20cc:	.db $3c
B0_20cd:	.db $9b
B0_20ce:	.db $bb
B0_20cf:	.db $5b
B0_20d0:	.hex bc fb 00
B0_20d3:	.db $6b
B0_20d4:		clv				; b8 
B0_20d5:	.db $fb
B0_20d6:		sec				; 38 
B0_20d7:	.db $ff
B0_20d8:	.db $0b
B0_20d9:		stx $1a			; 86 1a
B0_20db:		asl $db			; 06 db
B0_20dd:		asl $de			; 06 de
B0_20df:	.db $c2
B0_20e0:	.db $02
B0_20e1:		beq B0_211e ; f0 3b
B0_20e3:	.db $bb
B0_20e4:	.db $80
B0_20e5:	.db $eb
B0_20e6:		asl $0b			; 06 0b
B0_20e8:		stx $93			; 86 93
B0_20ea:		asl $f0			; 06 f0
B0_20ec:		and $060f, y	; 39 0f 06
B0_20ef:		rts				; 60 
B0_20f0:		clv				; b8 
B0_20f1:	.db $1b
B0_20f2:		stx $a0			; 86 a0
B0_20f4:		lda $27b7, y	; b9 b7 27
B0_20f7:		lda $2b27, x	; bd 27 2b
B0_20fa:	.db $83
B0_20fb:		lda ($26, x)	; a1 26
B0_20fd:		lda #$26		; a9 26
B0_20ff:		inc $0b25		; ee 25 0b
B0_2102:	.db $27
B0_2103:		ldy $ff, x		; b4 ff
B0_2105:	.db $0f
B0_2106:	.db $02
B0_2107:		asl $602f, x	; 1e 2f 60
B0_210a:		cpx #$3a		; e0 3a
B0_210c:		lda $a7			; a5 a7
B0_210e:	.db $db
B0_210f:	.db $80
B0_2110:	.db $3b
B0_2111:	.db $82
B0_2112:	.db $8b
B0_2113:	.db $02
B0_2114:		inc $6842, x	; fe 42 68
B0_2117:		bvs B0_20d4 ; 70 bb
B0_2119:		and $a7			; 25 a7
B0_211b:		bit $b227		; 2c 27 b2
B0_211e:		rol $b9			; 26 b9
B0_2120:		rol $9b			; 26 9b
B0_2122:	.db $80
B0_2123:		tay				; a8 
B0_2124:	.db $82
B0_2125:		lda $27, x		; b5 27
B0_2127:		ldy $b027, x	; bc 27 b0
B0_212a:	.db $bb
B0_212b:	.db $3b
B0_212c:	.db $82
B0_212d:	.db $87
B0_212e:	.db $34
B0_212f:		inc $6b25		; ee 25 6b
B0_2132:	.db $ff
B0_2133:		asl $0aa5, x	; 1e a5 0a
B0_2136:		rol $2728		; 2e 28 27
B0_2139:		rol $c733		; 2e 33 c7
B0_213c:	.db $0f
B0_213d:	.db $03
B0_213e:		asl $0740, x	; 1e 40 07
B0_2141:		rol $e730		; 2e 30 e7
B0_2144:	.db $0f
B0_2145:		ora $1e			; 05 1e
B0_2147:		bit $44			; 24 44
B0_2149:	.db $0f
B0_214a:	.db $07
B0_214b:		asl $6a22, x	; 1e 22 6a
B0_214e:		rol $ab23		; 2e 23 ab
B0_2151:	.db $0f
B0_2152:		ora #$1e		; 09 1e
B0_2154:		eor ($68, x)	; 41 68
B0_2156:		asl $8a2a, x	; 1e 2a 8a
B0_2159:		rol $a223		; 2e 23 a2
B0_215c:		rol $ea32		; 2e 32 ea
B0_215f:	.db $ff
B0_2160:	.db $3b
B0_2161:	.db $87
B0_2162:		ror $27			; 66 27
B0_2164:		cpy $ee27		; cc 27 ee
B0_2167:		and ($87), y	; 31 87
B0_2169:		inc $a723		; ee 23 a7
B0_216c:	.db $3b
B0_216d:	.db $87
B0_216e:	.db $db
B0_216f:	.db $07
B0_2170:	.db $ff
B0_2171:	.db $0f
B0_2172:		ora ($2e, x)	; 01 2e
B0_2174:		and $2b			; 25 2b
B0_2176:		rol $4b25		; 2e 25 4b
B0_2179:		lsr $cb25		; 4e 25 cb
B0_217c:	.db $6b
B0_217d:	.db $07
B0_217e:	.db $97
B0_217f:	.db $47
B0_2180:		sbc #$87		; e9 87
B0_2182:	.db $47
B0_2183:	.db $c7
B0_2184:	.db $7a
B0_2185:	.db $07
B0_2186:		dec $c7, x		; d6 c7
B0_2188:		sei				; 78 
B0_2189:	.db $07
B0_218a:		sec				; 38 
B0_218b:	.db $87
B0_218c:	.db $ab
B0_218d:	.db $47
B0_218e:	.db $e3
B0_218f:	.db $07
B0_2190:	.db $9b
B0_2191:	.db $87
B0_2192:	.db $0f
B0_2193:		ora #$68		; 09 68
B0_2195:	.db $47
B0_2196:	.db $db
B0_2197:	.db $c7
B0_2198:	.db $3b
B0_2199:	.db $c7
B0_219a:	.db $ff
B0_219b:	.db $47
B0_219c:	.db $9b
B0_219d:	.db $cb
B0_219e:	.db $07
B0_219f:	.db $fa
B0_21a0:		ora $9b86, x	; 1d 86 9b
B0_21a3:	.db $3a
B0_21a4:	.db $87
B0_21a5:		lsr $07, x		; 56 07
B0_21a7:		dey				; 88 
B0_21a8:	.db $1b
B0_21a9:	.db $07
B0_21aa:		sta $652e, x	; 9d 2e 65
B0_21ad:		;removed
	.hex  f0 ff
B0_21af:	.db $9b
B0_21b0:	.db $07
B0_21b1:		ora $32			; 05 32
B0_21b3:		asl $33			; 06 33
B0_21b5:	.db $07
B0_21b6:	.db $34
B0_21b7:		dec $dc03		; ce 03 dc
B0_21ba:		eor ($ee), y	; 51 ee
B0_21bc:	.db $07
B0_21bd:	.db $73
B0_21be:		cpx #$74		; e0 74
B0_21c0:		asl a			; 0a
B0_21c1:		ror $9e06, x	; 7e 06 9e
B0_21c4:		asl a			; 0a
B0_21c5:		dec $e406		; ce 06 e4
B0_21c8:		brk				; 00
B0_21c9:		inx				; e8 
B0_21ca:		asl a			; 0a
B0_21cb:		inc $2e0a, x	; fe 0a 2e
B0_21ce:	.db $89
B0_21cf:		lsr $540b		; 4e 0b 54
B0_21d2:		asl a			; 0a
B0_21d3:	.db $14
B0_21d4:		txa				; 8a 
B0_21d5:		cpy $0a			; c4 0a
B0_21d7:	.db $34
B0_21d8:		txa				; 8a 
B0_21d9:		ror $c706, x	; 7e 06 c7
B0_21dc:		asl a			; 0a
B0_21dd:		ora ($e0, x)	; 01 e0
B0_21df:	.db $02
B0_21e0:		asl a			; 0a
B0_21e1:	.db $47
B0_21e2:		asl a			; 0a
B0_21e3:		sta ($60, x)	; 81 60
B0_21e5:	.db $82
B0_21e6:		asl a			; 0a
B0_21e7:	.db $c7
B0_21e8:		asl a			; 0a
B0_21e9:		asl $7e87		; 0e 87 7e
B0_21ec:	.db $02
B0_21ed:	.db $a7
B0_21ee:	.db $02
B0_21ef:	.db $b3
B0_21f0:	.db $02
B0_21f1:	.db $d7
B0_21f2:	.db $02
B0_21f3:	.db $e3
B0_21f4:	.db $02
B0_21f5:	.db $07
B0_21f6:	.db $82
B0_21f7:	.db $13
B0_21f8:	.db $02
B0_21f9:		rol $7e06, x	; 3e 06 7e
B0_21fc:	.db $02
B0_21fd:		ldx $fe07		; ae 07 fe
B0_2200:		asl a			; 0a
B0_2201:		ora $cdc4		; 0d c4 cd
B0_2204:	.db $43
B0_2205:		dec $de09		; ce 09 de
B0_2208:	.db $0b
B0_2209:		cmp $fe42, x	; dd 42 fe
B0_220c:	.db $02
B0_220d:		eor $fdc7, x	; 5d c7 fd
B0_2210:	.db $5b
B0_2211:	.db $07
B0_2212:		ora $32			; 05 32
B0_2214:		asl $33			; 06 33
B0_2216:	.db $07
B0_2217:	.db $34
B0_2218:		lsr $680a, x	; 5e 0a 68
B0_221b:	.db $64
B0_221c:		tya				; 98 
B0_221d:	.db $64
B0_221e:		tay				; a8 
B0_221f:	.db $64
B0_2220:		dec $fe06		; ce 06 fe
B0_2223:	.db $02
B0_2224:		ora $1e01		; 0d 01 1e
B0_2227:		asl $027e		; 0e 7e 02
B0_222a:		sty $63, x		; 94 63
B0_222c:		ldy $63, x		; b4 63
B0_222e:	.db $d4
B0_222f:	.db $63
B0_2230:	.db $f4
B0_2231:	.db $63
B0_2232:	.db $14
B0_2233:	.db $e3
B0_2234:		rol $5e0e		; 2e 0e 5e
B0_2237:	.db $02
B0_2238:	.db $64
B0_2239:		and $88, x		; 35 88
B0_223b:	.db $72
B0_223c:		ldx $0d0e, y	; be 0e 0d
B0_223f:	.db $04
B0_2240:		ldx $ce02		; ae 02 ce
B0_2243:		php				; 08 
B0_2244:		cmp $fe4b		; cd 4b fe
B0_2247:	.db $02
B0_2248:		ora $6805		; 0d 05 68
B0_224b:		and ($7e), y	; 31 7e
B0_224d:		asl a			; 0a
B0_224e:		stx $31, y		; 96 31
B0_2250:		lda #$63		; a9 63
B0_2252:		tay				; a8 
B0_2253:	.db $33
B0_2254:		cmp $30, x		; d5 30
B0_2256:		inc $e602		; ee 02 e6
B0_2259:	.db $62
B0_225a:	.db $f4
B0_225b:		adc ($04, x)	; 61 04
B0_225d:		lda ($08), y	; b1 08
B0_225f:	.db $3f
B0_2260:	.db $44
B0_2261:	.db $33
B0_2262:		sty $63, x		; 94 63
B0_2264:		ldy $31			; a4 31
B0_2266:		cpx $31			; e4 31
B0_2268:	.db $04
B0_2269:	.db $bf
B0_226a:		php				; 08 
B0_226b:	.db $3f
B0_226c:	.db $04
B0_226d:	.db $bf
B0_226e:		php				; 08 
B0_226f:	.db $3f
B0_2270:		cmp $034b		; cd 4b 03
B0_2273:		cpx $0e			; e4 0e
B0_2275:	.db $03
B0_2276:		rol $7e01		; 2e 01 7e
B0_2279:		asl $be			; 06 be
B0_227b:	.db $02
B0_227c:		dec $fe06, x	; de 06 fe
B0_227f:		asl a			; 0a
B0_2280:		ora $cdc4		; 0d c4 cd
B0_2283:	.db $43
B0_2284:		dec $de09		; ce 09 de
B0_2287:	.db $0b
B0_2288:		cmp $fe42, x	; dd 42 fe
B0_228b:	.db $02
B0_228c:		eor $fdc7, x	; 5d c7 fd
B0_228f:	.db $9b
B0_2290:	.db $07
B0_2291:		ora $32			; 05 32
B0_2293:		asl $33			; 06 33
B0_2295:	.db $07
B0_2296:	.db $34
B0_2297:		inc $2700, x	; fe 00 27
B0_229a:		lda ($65), y	; b1 65
B0_229c:	.db $32
B0_229d:		adc $0a, x		; 75 0a
B0_229f:		adc ($00), y	; 71 00
B0_22a1:	.db $b7
B0_22a2:		and ($08), y	; 31 08
B0_22a4:		cpx $18			; e4 18
B0_22a6:	.db $64
B0_22a7:		asl $5704, x	; 1e 04 57
B0_22aa:	.db $3b
B0_22ab:	.db $bb
B0_22ac:		asl a			; 0a
B0_22ad:	.db $17
B0_22ae:		txa				; 8a 
B0_22af:	.db $27
B0_22b0:	.db $3a
B0_22b1:	.db $73
B0_22b2:		asl a			; 0a
B0_22b3:	.db $7b
B0_22b4:		asl a			; 0a
B0_22b5:	.db $d7
B0_22b6:		asl a			; 0a
B0_22b7:	.db $e7
B0_22b8:	.db $3a
B0_22b9:	.db $3b
B0_22ba:		txa				; 8a 
B0_22bb:	.db $97
B0_22bc:		asl a			; 0a
B0_22bd:		inc $2408, x	; fe 08 24
B0_22c0:		txa				; 8a 
B0_22c1:		rol $3e00		; 2e 00 3e
B0_22c4:		rti				; 40 
B0_22c5:		sec				; 38 
B0_22c6:	.db $64
B0_22c7:	.db $6f
B0_22c8:		brk				; 00
B0_22c9:	.db $9f
B0_22ca:		brk				; 00
B0_22cb:		ldx $c843, y	; be 43 c8
B0_22ce:		asl a			; 0a
B0_22cf:		cmp #$63		; c9 63
B0_22d1:		dec $fe07		; ce 07 fe
B0_22d4:	.db $07
B0_22d5:		rol $6681		; 2e 81 66
B0_22d8:	.db $42
B0_22d9:		ror a			; 6a
B0_22da:	.db $42
B0_22db:		adc $be0a, y	; 79 0a be
B0_22de:		brk				; 00
B0_22df:		iny				; c8 
B0_22e0:	.db $64
B0_22e1:		sed				; f8 
B0_22e2:	.db $64
B0_22e3:		php				; 08 
B0_22e4:		cpx $2e			; e4 2e
B0_22e6:	.db $07
B0_22e7:		ror $9e03, x	; 7e 03 9e
B0_22ea:	.db $07
B0_22eb:		ldx $de03, y	; be 03 de
B0_22ee:	.db $07
B0_22ef:		inc $030a, x	; fe 0a 03
B0_22f2:		lda $0d			; a5 0d
B0_22f4:	.db $44
B0_22f5:		cmp $ce43		; cd 43 ce
B0_22f8:		ora #$dd		; 09 dd
B0_22fa:	.db $42
B0_22fb:		dec $fe0b, x	; de 0b fe
B0_22fe:	.db $02
B0_22ff:		eor $fdc7, x	; 5d c7 fd
B0_2302:	.db $9b
B0_2303:	.db $07
B0_2304:		ora $32			; 05 32
B0_2306:		asl $33			; 06 33
B0_2308:	.db $07
B0_2309:	.db $34
B0_230a:		inc $0c06, x	; fe 06 0c
B0_230d:		sta ($39, x)	; 81 39
B0_230f:		asl a			; 0a
B0_2310:	.db $5c
B0_2311:		ora ($89, x)	; 01 89
B0_2313:		asl a			; 0a
B0_2314:		ldy $d901		; ac 01 d9
B0_2317:		asl a			; 0a
B0_2318:	.db $fc
B0_2319:		ora ($2e, x)	; 01 2e
B0_231b:	.db $83
B0_231c:	.db $a7
B0_231d:		ora ($b7, x)	; 01 b7
B0_231f:		brk				; 00
B0_2320:	.db $c7
B0_2321:		ora ($de, x)	; 01 de
B0_2323:		asl a			; 0a
B0_2324:		inc $4e02, x	; fe 02 4e
B0_2327:	.db $83
B0_2328:	.db $5a
B0_2329:	.db $32
B0_232a:	.db $63
B0_232b:		asl a			; 0a
B0_232c:		adc #$0a		; 69 0a
B0_232e:		ror $ee02, x	; 7e 02 ee
B0_2331:	.db $03
B0_2332:	.db $fa
B0_2333:	.db $32
B0_2334:	.db $03
B0_2335:		txa				; 8a 
B0_2336:		ora #$0a		; 09 0a
B0_2338:		asl $ee02, x	; 1e 02 ee
B0_233b:	.db $03
B0_233c:	.db $fa
B0_233d:	.db $32
B0_233e:	.db $03
B0_233f:		txa				; 8a 
B0_2340:		ora #$0a		; 09 0a
B0_2342:	.db $14
B0_2343:	.db $42
B0_2344:		asl $7e02, x	; 1e 02 7e
B0_2347:		asl a			; 0a
B0_2348:	.db $9e
B0_2349:	.db $07
B0_234a:		inc $2e0a, x	; fe 0a 2e
B0_234d:		stx $5e			; 86 5e
B0_234f:		asl a			; 0a
B0_2350:		stx $be06		; 8e 06 be
B0_2353:		asl a			; 0a
B0_2354:		inc $3e07		; ee 07 3e
B0_2357:	.db $83
B0_2358:		lsr $fe07, x	; 5e 07 fe
B0_235b:		asl a			; 0a
B0_235c:		ora $41c4		; 0d c4 41
B0_235f:	.db $52
B0_2360:		eor ($52), y	; 51 52
B0_2362:		cmp $ce43		; cd 43 ce
B0_2365:		ora #$de		; 09 de
B0_2367:	.db $0b
B0_2368:		cmp $fe42, x	; dd 42 fe
B0_236b:	.db $02
B0_236c:		eor $fdc7, x	; 5d c7 fd
B0_236f:	.db $5b
B0_2370:	.db $07
B0_2371:		ora $32			; 05 32
B0_2373:		asl $33			; 06 33
B0_2375:	.db $07
B0_2376:	.db $34
B0_2377:		inc $ae0a, x	; fe 0a ae
B0_237a:		stx $be			; 86 be
B0_237c:	.db $07
B0_237d:		inc $0d02, x	; fe 02 0d
B0_2380:	.db $02
B0_2381:	.db $27
B0_2382:	.db $32
B0_2383:		lsr $61			; 46 61
B0_2385:		eor $62, x		; 55 62
B0_2387:		lsr $1e0e, x	; 5e 0e 1e
B0_238a:	.db $82
B0_238b:		pla				; 68 
B0_238c:	.db $3c
B0_238d:	.db $74
B0_238e:	.db $3a
B0_238f:		adc $5e4b, x	; 7d 4b 5e
B0_2392:		stx $4b7d		; 8e 7d 4b
B0_2395:		ror $8482, x	; 7e 82 84
B0_2398:	.db $62
B0_2399:		sty $61, x		; 94 61
B0_239b:		ldy $31			; a4 31
B0_239d:		lda $ce4b, x	; bd 4b ce
B0_23a0:		asl $fe			; 06 fe
B0_23a2:	.db $02
B0_23a3:		ora $3406		; 0d 06 34
B0_23a6:		and ($3e), y	; 31 3e
B0_23a8:		asl a			; 0a
B0_23a9:	.db $64
B0_23aa:	.db $32
B0_23ab:		adc $0a, x		; 75 0a
B0_23ad:	.db $7b
B0_23ae:		adc ($a4, x)	; 61 a4
B0_23b0:	.db $33
B0_23b1:		ldx $de02		; ae 02 de
B0_23b4:		asl $823e		; 0e 3e 82
B0_23b7:	.db $64
B0_23b8:	.db $32
B0_23b9:		sei				; 78 
B0_23ba:	.db $32
B0_23bb:		ldy $36, x		; b4 36
B0_23bd:		iny				; c8 
B0_23be:		rol $dd, x		; 36 dd
B0_23c0:	.db $4b
B0_23c1:	.db $44
B0_23c2:	.db $b2
B0_23c3:		cli				; 58 
B0_23c4:	.db $32
B0_23c5:		sty $63, x		; 94 63
B0_23c7:		ldy $3e			; a4 3e
B0_23c9:		tsx				; ba 
B0_23ca:		bmi B0_2395 ; 30 c9
B0_23cc:		adc ($ce, x)	; 61 ce
B0_23ce:		asl $dd			; 06 dd
B0_23d0:	.db $4b
B0_23d1:		dec $dd86		; ce 86 dd
B0_23d4:	.db $4b
B0_23d5:		inc $2e02, x	; fe 02 2e
B0_23d8:		stx $5e			; 86 5e
B0_23da:	.db $02
B0_23db:		ror $fe06, x	; 7e 06 fe
B0_23de:	.db $02
B0_23df:		asl $3e86, x	; 1e 86 3e
B0_23e2:	.db $02
B0_23e3:		lsr $7e06, x	; 5e 06 7e
B0_23e6:	.db $02
B0_23e7:	.db $9e
B0_23e8:		asl $fe			; 06 fe
B0_23ea:		asl a			; 0a
B0_23eb:		ora $cdc4		; 0d c4 cd
B0_23ee:	.db $43
B0_23ef:		dec $de09		; ce 09 de
B0_23f2:	.db $0b
B0_23f3:		cmp $fe42, x	; dd 42 fe
B0_23f6:	.db $02
B0_23f7:		eor $fdc7, x	; 5d c7 fd
B0_23fa:	.db $5b
B0_23fb:		asl $05			; 06 05
B0_23fd:	.db $32
B0_23fe:		asl $33			; 06 33
B0_2400:	.db $07
B0_2401:	.db $34
B0_2402:		lsr $ae0a, x	; 5e 0a ae
B0_2405:	.db $02
B0_2406:		ora $3901		; 0d 01 39
B0_2409:	.db $73
B0_240a:		ora $3903		; 0d 03 39
B0_240d:	.db $7b
B0_240e:		eor $de4b		; 4d 4b de
B0_2411:		asl $1e			; 06 1e
B0_2413:		txa				; 8a 
B0_2414:		ldx $c406		; ae 06 c4
B0_2417:	.db $33
B0_2418:		asl $fe, x		; 16 fe
B0_241a:		lda $77			; a5 77
B0_241c:		inc $fe02, x	; fe 02 fe
B0_241f:	.db $82
B0_2420:		ora $3907		; 0d 07 39
B0_2423:	.db $73
B0_2424:		tay				; a8 
B0_2425:	.db $74
B0_2426:		sbc $494b		; ed4b 49
B0_2429:	.db $fb
B0_242a:		inx				; e8 
B0_242b:	.db $74
B0_242c:		inc $2e0a, x	; fe 0a 2e
B0_242f:	.db $82
B0_2430:	.db $67
B0_2431:	.db $02
B0_2432:		sty $7a			; 84 7a
B0_2434:	.db $87
B0_2435:		and ($0d), y	; 31 0d
B0_2437:	.db $0b
B0_2438:		inc $0d02, x	; fe 02 0d
B0_243b:	.db $0c
B0_243c:		and $5e73, y	; 39 73 5e
B0_243f:		asl $c6			; 06 c6
B0_2441:		ror $45, x		; 76 45
B0_2443:	.db $ff
B0_2444:		ldx $dd0a, y	; be 0a dd
B0_2447:		pha				; 48 
B0_2448:		inc $3d06, x	; fe 06 3d
B0_244b:	.db $cb
B0_244c:		lsr $7e			; 46 7e
B0_244e:		lda $fe4a		; ad 4a fe
B0_2451:	.db $82
B0_2452:		and $a9f3, y	; 39 f3 a9
B0_2455:	.db $7b
B0_2456:		lsr $9e8a		; 4e 8a 9e
B0_2459:	.db $07
B0_245a:		inc $0d0a, x	; fe 0a 0d
B0_245d:		cpy $cd			; c4 cd
B0_245f:	.db $43
B0_2460:		dec $de09		; ce 09 de
B0_2463:	.db $0b
B0_2464:		cmp $fe42, x	; dd 42 fe
B0_2467:	.db $02
B0_2468:		eor $fdc7, x	; 5d c7 fd
B0_246b:		sty $11, x		; 94 11
B0_246d:	.db $0f
B0_246e:		rol $fe			; 26 fe
B0_2470:		;removed
	.hex  10 28
B0_2472:		sty $65, x		; 94 65
B0_2474:		ora $eb, x		; 15 eb
B0_2476:	.db $12
B0_2477:	.db $fa
B0_2478:		eor ($4a, x)	; 41 4a
B0_247a:		stx $54, y		; 96 54
B0_247c:		rti				; 40 
B0_247d:		ldy $42			; a4 42
B0_247f:	.db $b7
B0_2480:	.db $13
B0_2481:		sbc #$19		; e9 19
B0_2483:		sbc $15, x		; f5 15
B0_2485:		ora ($80), y	; 11 80
B0_2487:	.db $47
B0_2488:	.db $42
B0_2489:		adc ($13), y	; 71 13
B0_248b:	.db $80
B0_248c:		eor ($15, x)	; 41 15
B0_248e:	.db $92
B0_248f:	.db $1b
B0_2490:	.db $1f
B0_2491:		bit $40			; 24 40
B0_2493:		eor $12, x		; 55 12
B0_2495:	.db $64
B0_2496:		rti				; 40 
B0_2497:		sta $12, x		; 95 12
B0_2499:		ldy $40			; a4 40
B0_249b:	.db $d2
B0_249c:	.db $12
B0_249d:		sbc ($40, x)	; e1 40
B0_249f:	.db $13
B0_24a0:		cpy #$2c		; c0 2c
B0_24a2:	.db $17
B0_24a3:	.db $2f
B0_24a4:	.db $12
B0_24a5:		eor #$13		; 49 13
B0_24a7:	.db $83
B0_24a8:		rti				; 40 
B0_24a9:	.db $9f
B0_24aa:	.db $14
B0_24ab:	.db $a3
B0_24ac:		rti				; 40 
B0_24ad:	.db $17
B0_24ae:	.db $92
B0_24af:	.db $83
B0_24b0:	.db $13
B0_24b1:	.db $92
B0_24b2:		eor ($b9, x)	; 41 b9
B0_24b4:	.db $14
B0_24b5:		cmp $12			; c5 12
B0_24b7:		iny				; c8 
B0_24b8:		rti				; 40 
B0_24b9:	.db $d4
B0_24ba:		rti				; 40 
B0_24bb:	.db $4b
B0_24bc:	.db $92
B0_24bd:		sei				; 78 
B0_24be:	.db $1b
B0_24bf:	.db $9c
B0_24c0:		sty $9f, x		; 94 9f
B0_24c2:		ora ($df), y	; 11 df
B0_24c4:	.db $14
B0_24c5:		inc $7d11, x	; fe 11 7d
B0_24c8:		cmp ($9e, x)	; c1 9e
B0_24ca:	.db $42
B0_24cb:	.db $cf
B0_24cc:		jsr $90fd		; 20 fd 90
B0_24cf:		lda ($0f), y	; b1 0f
B0_24d1:		rol $29			; 26 29
B0_24d3:		sta ($7e), y	; 91 7e
B0_24d5:	.db $42
B0_24d6:		inc $2840, x	; fe 40 28
B0_24d9:	.db $92
B0_24da:		lsr $2e42		; 4e 42 2e
B0_24dd:		cpy #$57		; c0 57
B0_24df:	.db $73
B0_24e0:	.db $c3
B0_24e1:		and $c7			; 25 c7
B0_24e3:	.db $27
B0_24e4:	.db $23
B0_24e5:		sty $33			; 84 33
B0_24e7:		jsr $015c		; 20 5c 01
B0_24ea:	.db $77
B0_24eb:	.db $63
B0_24ec:		dey				; 88 
B0_24ed:	.db $62
B0_24ee:		sta $aa61, y	; 99 61 aa
B0_24f1:		rts				; 60 
B0_24f2:		ldy $ee01, x	; bc 01 ee
B0_24f5:	.db $42
B0_24f6:		lsr $69c0		; 4e c0 69
B0_24f9:		ora ($7e), y	; 11 7e
B0_24fb:	.db $42
B0_24fc:		dec $f840, x	; de 40 f8
B0_24ff:	.db $62
B0_2500:		asl $aec2		; 0e c2 ae
B0_2503:		rti				; 40 
B0_2504:	.db $d7
B0_2505:	.db $63
B0_2506:	.db $e7
B0_2507:	.db $63
B0_2508:	.db $33
B0_2509:	.db $a7
B0_250a:	.db $37
B0_250b:	.db $27
B0_250c:	.db $43
B0_250d:	.db $04
B0_250e:		cpy $e701		; cc 01 e7
B0_2511:	.db $73
B0_2512:	.db $0c
B0_2513:		sta ($3e, x)	; 81 3e
B0_2515:	.db $42
B0_2516:		ora $5e0a		; 0d 0a 5e
B0_2519:		rti				; 40 
B0_251a:		dey				; 88 
B0_251b:	.db $72
B0_251c:		ldx $e742, y	; be 42 e7
B0_251f:	.db $87
B0_2520:		inc $3940, x	; fe 40 39
B0_2523:		sbc ($4e, x)	; e1 4e
B0_2525:		brk				; 00
B0_2526:		adc #$60		; 69 60
B0_2528:	.db $87
B0_2529:		rts				; 60 
B0_252a:		lda $60			; a5 60
B0_252c:	.db $c3
B0_252d:		and ($fe), y	; 31 fe
B0_252f:		and ($6d), y	; 31 6d
B0_2531:		cmp ($be, x)	; c1 be
B0_2533:	.db $42
B0_2534:	.db $ef
B0_2535:		jsr $52fd		; 20 fd 52
B0_2538:		and ($0f, x)	; 21 0f
B0_253a:		jsr $406e		; 20 6e 40
B0_253d:		cli				; 58 
B0_253e:	.db $f2
B0_253f:	.db $93
B0_2540:		ora ($97, x)	; 01 97
B0_2542:		brk				; 00
B0_2543:	.db $0c
B0_2544:		sta ($97, x)	; 81 97
B0_2546:		rti				; 40 
B0_2547:		ldx $41			; a6 41
B0_2549:	.db $c7
B0_254a:		rti				; 40 
B0_254b:		ora $0304		; 0d 04 03
B0_254e:		ora ($07, x)	; 01 07
B0_2550:		ora ($23, x)	; 01 23
B0_2552:		ora ($27, x)	; 01 27
B0_2554:		ora ($ec, x)	; 01 ec
B0_2556:	.db $03
B0_2557:		ldy $c3f3		; ac f3 c3
B0_255a:	.db $03
B0_255b:		sei				; 78 
B0_255c:	.db $e2
B0_255d:		sty $43, x		; 94 43
B0_255f:	.db $47
B0_2560:	.db $f3
B0_2561:	.db $74
B0_2562:	.db $43
B0_2563:	.db $47
B0_2564:	.db $fb
B0_2565:	.db $74
B0_2566:	.db $43
B0_2567:		bit $4cf1		; 2c f1 4c
B0_256a:	.db $63
B0_256b:	.db $47
B0_256c:		brk				; 00
B0_256d:	.db $57
B0_256e:		and ($5c, x)	; 21 5c
B0_2570:		ora ($7c, x)	; 01 7c
B0_2572:	.db $72
B0_2573:		and $ecf1, y	; 39 f1 ec
B0_2576:	.db $02
B0_2577:		jmp $d881		; 4c 81 d8
B0_257a:	.db $62
B0_257b:		cpx $0d01		; ec 01 0d
B0_257e:		ora $380f		; 0d 0f 38
B0_2581:	.db $c7
B0_2582:	.db $07
B0_2583:		sbc $1d4a		; ed4a 1d
B0_2586:		cmp ($5f, x)	; c1 5f
B0_2588:		rol $fd			; 26 fd
B0_258a:	.db $54
B0_258b:		and ($0f, x)	; 21 0f
B0_258d:		rol $a7			; 26 a7
B0_258f:	.db $22
B0_2590:	.db $37
B0_2591:	.db $fb
B0_2592:	.db $73
B0_2593:		jsr $0783		; 20 83 07
B0_2596:	.db $87
B0_2597:	.db $02
B0_2598:	.db $93
B0_2599:		jsr $73c7		; 20 c7 73
B0_259c:	.db $04
B0_259d:		sbc ($06), y	; f1 06
B0_259f:		and ($39), y	; 31 39
B0_25a1:		adc ($59), y	; 71 59
B0_25a3:		adc ($e7), y	; 71 e7
B0_25a5:	.db $73
B0_25a6:	.db $37
B0_25a7:		ldy #$47		; a0 47
B0_25a9:	.db $04
B0_25aa:		stx $7c			; 86 7c
B0_25ac:		sbc $71			; e5 71
B0_25ae:	.db $e7
B0_25af:		and ($33), y	; 31 33
B0_25b1:		ldy $39			; a4 39
B0_25b3:		adc ($a9), y	; 71 a9
B0_25b5:		adc ($d3), y	; 71 d3
B0_25b7:	.db $23
B0_25b8:		php				; 08 
B0_25b9:	.db $f2
B0_25ba:	.db $13
B0_25bb:		ora $27			; 05 27
B0_25bd:	.db $02
B0_25be:		eor #$71		; 49 71
B0_25c0:		adc $75, x		; 75 75
B0_25c2:		inx				; e8 
B0_25c3:	.db $72
B0_25c4:	.db $67
B0_25c5:	.db $f3
B0_25c6:		sta $e771, y	; 99 71 e7
B0_25c9:		jsr $72f4		; 20 f4 72
B0_25cc:	.db $f7
B0_25cd:		and ($17), y	; 31 17
B0_25cf:		ldy #$33		; a0 33
B0_25d1:		jsr $7139		; 20 39 71
B0_25d4:	.db $73
B0_25d5:		plp				; 28 
B0_25d6:		ldy $3905, x	; bc 05 39
B0_25d9:		sbc ($79), y	; f1 79
B0_25db:		adc ($a6), y	; 71 a6
B0_25dd:		and ($c3, x)	; 21 c3
B0_25df:		asl $d3			; 06 d3
B0_25e1:	.hex 20 dc 00
B0_25e4:	.db $fc
B0_25e5:		brk				; 00
B0_25e6:	.db $07
B0_25e7:		ldx #$13		; a2 13
B0_25e9:		and ($5f, x)	; 21 5f
B0_25eb:	.db $32
B0_25ec:		sty $9800		; 8c 00 98
B0_25ef:	.db $7a
B0_25f0:	.db $c7
B0_25f1:	.db $63
B0_25f2:		cmp $0361, y	; d9 61 03
B0_25f5:		ldx #$07		; a2 07
B0_25f7:	.db $22
B0_25f8:	.db $74
B0_25f9:	.db $72
B0_25fa:	.db $77
B0_25fb:		and ($e7), y	; 31 e7
B0_25fd:	.db $73
B0_25fe:		and $58f1, y	; 39 f1 58
B0_2601:	.db $72
B0_2602:	.db $77
B0_2603:	.db $73
B0_2604:		cld				; b8 
B0_2605:	.db $72
B0_2606:	.db $7f
B0_2607:		lda ($97), y	; b1 97
B0_2609:	.db $73
B0_260a:		ldx $64, y		; b6 64
B0_260c:		cmp $65			; c5 65
B0_260e:	.db $d4
B0_260f:		ror $e3			; 66 e3
B0_2611:	.db $67
B0_2612:	.db $f3
B0_2613:	.db $67
B0_2614:		sta $cfc1		; 8d c1 cf
B0_2617:		rol $fd			; 26 fd
B0_2619:	.db $52
B0_261a:		and ($0f), y	; 31 0f
B0_261c:		jsr $666e		; 20 6e 66
B0_261f:	.db $07
B0_2620:		sta ($36, x)	; 81 36
B0_2622:		ora ($66, x)	; 01 66
B0_2624:		brk				; 00
B0_2625:	.db $a7
B0_2626:	.db $22
B0_2627:		php				; 08 
B0_2628:	.db $f2
B0_2629:	.db $67
B0_262a:	.db $7b
B0_262b:	.db $dc
B0_262c:	.db $02
B0_262d:		tya				; 98 
B0_262e:	.db $f2
B0_262f:	.db $d7
B0_2630:		jsr $f139		; 20 39 f1
B0_2633:	.db $9f
B0_2634:	.db $33
B0_2635:	.db $dc
B0_2636:	.db $27
B0_2637:	.db $dc
B0_2638:	.db $57
B0_2639:	.db $23
B0_263a:	.db $83
B0_263b:	.db $57
B0_263c:	.db $63
B0_263d:		jmp ($8751)		; 6c 51 87
B0_2640:	.db $63
B0_2641:		sta $a361, y	; 99 61 a3
B0_2644:		asl $b3			; 06 b3
B0_2646:		and ($77, x)	; 21 77
B0_2648:	.db $f3
B0_2649:	.db $f3
B0_264a:		and ($f7, x)	; 21 f7
B0_264c:		rol a			; 2a
B0_264d:	.db $13
B0_264e:		sta ($23, x)	; 81 23
B0_2650:	.db $22
B0_2651:	.db $53
B0_2652:		brk				; 00
B0_2653:	.db $63
B0_2654:	.db $22
B0_2655:		sbc #$0b		; e9 0b
B0_2657:	.db $0c
B0_2658:	.db $83
B0_2659:	.db $13
B0_265a:		and ($16, x)	; 21 16
B0_265c:	.db $22
B0_265d:	.db $33
B0_265e:		ora $8f			; 05 8f
B0_2660:		and $ec, x		; 35 ec
B0_2662:		ora ($63, x)	; 01 63
B0_2664:		ldy #$67		; a0 67
B0_2666:		jsr $0173		; 20 73 01
B0_2669:	.db $77
B0_266a:		ora ($83, x)	; 01 83
B0_266c:		jsr $2087		; 20 87 20
B0_266f:	.db $b3
B0_2670:		jsr $20b7		; 20 b7 20
B0_2673:	.db $c3
B0_2674:		ora ($c7, x)	; 01 c7
B0_2676:		brk				; 00
B0_2677:	.db $d3
B0_2678:		jsr $20d7		; 20 d7 20
B0_267b:	.db $67
B0_267c:		ldy #$77		; a0 77
B0_267e:	.db $07
B0_267f:	.db $87
B0_2680:	.db $22
B0_2681:		inx				; e8 
B0_2682:	.db $62
B0_2683:		sbc $65, x		; f5 65
B0_2685:	.db $1c
B0_2686:	.db $82
B0_2687:	.db $7f
B0_2688:		sec				; 38 
B0_2689:		sta $cfc1		; 8d c1 cf
B0_268c:		rol $fd			; 26 fd
B0_268e:		bvc B0_26b1 ; 50 21
B0_2690:	.db $07
B0_2691:		sta ($47, x)	; 81 47
B0_2693:		bit $57			; 24 57
B0_2695:		brk				; 00
B0_2696:	.db $63
B0_2697:		ora ($77, x)	; 01 77
B0_2699:		ora ($c9, x)	; 01 c9
B0_269b:		adc ($68), y	; 71 68
B0_269d:	.db $f2
B0_269e:	.db $e7
B0_269f:	.db $73
B0_26a0:	.db $97
B0_26a1:	.db $fb
B0_26a2:		asl $83			; 06 83
B0_26a4:	.db $5c
B0_26a5:		ora ($d7, x)	; 01 d7
B0_26a7:	.db $22
B0_26a8:	.db $e7
B0_26a9:		brk				; 00
B0_26aa:	.db $03
B0_26ab:	.db $a7
B0_26ac:		jmp ($b302)		; 6c 02 b3
B0_26af:	.db $22
B0_26b0:	.db $e3
B0_26b1:		ora ($e7, x)	; 01 e7
B0_26b3:	.db $07
B0_26b4:	.db $47
B0_26b5:		ldy #$57		; a0 57
B0_26b7:		asl $a7			; 06 a7
B0_26b9:		ora ($d3, x)	; 01 d3
B0_26bb:		brk				; 00
B0_26bc:	.db $d7
B0_26bd:		ora ($07, x)	; 01 07
B0_26bf:		sta ($67, x)	; 81 67
B0_26c1:		jsr $2293		; 20 93 22
B0_26c4:	.db $03
B0_26c5:	.db $a3
B0_26c6:	.db $1c
B0_26c7:		adc ($17, x)	; 61 17
B0_26c9:		and ($6f, x)	; 21 6f
B0_26cb:	.db $33
B0_26cc:	.db $c7
B0_26cd:	.db $63
B0_26ce:		cld				; b8 
B0_26cf:	.db $62
B0_26d0:		sbc #$61		; e9 61
B0_26d2:	.db $fa
B0_26d3:		rts				; 60 
B0_26d4:	.db $4f
B0_26d5:	.db $b3
B0_26d6:	.db $87
B0_26d7:	.db $63
B0_26d8:	.db $9c
B0_26d9:		ora ($b7, x)	; 01 b7
B0_26db:	.db $63
B0_26dc:		iny				; c8 
B0_26dd:	.db $62
B0_26de:		cmp $ea61, y	; d9 61 ea
B0_26e1:		rts				; 60 
B0_26e2:		and $87f1, y	; 39 f1 87
B0_26e5:		and ($a7, x)	; 21 a7
B0_26e7:		ora ($b7, x)	; 01 b7
B0_26e9:		jsr $f139		; 20 39 f1
B0_26ec:	.db $5f
B0_26ed:		sec				; 38 
B0_26ee:		adc $afc1		; 6d c1 af
B0_26f1:		rol $fd			; 26 fd
B0_26f3:		bcc B0_2706 ; 90 11
B0_26f5:	.db $0f
B0_26f6:		rol $fe			; 26 fe
B0_26f8:		bpl B0_2724 ; 10 2a
B0_26fa:	.db $93
B0_26fb:	.db $87
B0_26fc:	.db $17
B0_26fd:	.db $a3
B0_26fe:	.db $14
B0_26ff:	.db $b2
B0_2700:	.db $42
B0_2701:		asl a			; 0a
B0_2702:	.db $92
B0_2703:		ora $3640, y	; 19 40 36
B0_2706:	.db $14
B0_2707:		;removed
	.hex  50 41
B0_2709:	.db $82
B0_270a:		asl $2b, x		; 16 2b
B0_270c:	.db $93
B0_270d:		bit $41			; 24 41
B0_270f:	.db $bb
B0_2710:	.db $14
B0_2711:		clv				; b8 
B0_2712:		brk				; 00
B0_2713:	.db $c2
B0_2714:	.db $43
B0_2715:	.db $c3
B0_2716:	.db $13
B0_2717:	.db $1b
B0_2718:		sty $67, x		; 94 67
B0_271a:	.db $12
B0_271b:		cpy $15			; c4 15
B0_271d:	.db $53
B0_271e:		cmp ($d2, x)	; c1 d2
B0_2720:		eor ($12, x)	; 41 12
B0_2722:		cmp ($29, x)	; c1 29
B0_2724:	.db $13
B0_2725:		sta $17			; 85 17
B0_2727:	.db $1b
B0_2728:	.db $92
B0_2729:	.db $1a
B0_272a:	.db $42
B0_272b:	.db $47
B0_272c:	.db $13
B0_272d:	.db $83
B0_272e:		eor ($a7, x)	; 41 a7
B0_2730:	.db $13
B0_2731:		asl $a791		; 0e 91 a7
B0_2734:	.db $63
B0_2735:	.db $b7
B0_2736:	.db $63
B0_2737:		cmp $65			; c5 65
B0_2739:		cmp $65, x		; d5 65
B0_273b:		cmp $e34a, x	; dd 4a e3
B0_273e:	.db $67
B0_273f:	.db $f3
B0_2740:	.db $67
B0_2741:		sta $aec1		; 8d c1 ae
B0_2744:	.db $42
B0_2745:	.db $df
B0_2746:		jsr $90fd		; 20 fd 90
B0_2749:		ora ($0f), y	; 11 0f
B0_274b:		rol $6e			; 26 6e
B0_274d:		;removed
	.hex  10 8b
B0_274f:	.db $17
B0_2750:	.db $af
B0_2751:	.db $32
B0_2752:		cld				; b8 
B0_2753:	.db $62
B0_2754:		inx				; e8 
B0_2755:	.db $62
B0_2756:	.db $fc
B0_2757:	.db $3f
B0_2758:		lda $f8c8		; ad c8 f8
B0_275b:	.db $64
B0_275c:	.db $0c
B0_275d:		ldx $4343, y	; be 43 43
B0_2760:		sed				; f8 
B0_2761:	.db $64
B0_2762:	.db $0c
B0_2763:	.db $bf
B0_2764:	.db $73
B0_2765:		rti				; 40 
B0_2766:		sty $40			; 84 40
B0_2768:	.db $93
B0_2769:		rti				; 40 
B0_276a:		ldy $40			; a4 40
B0_276c:	.db $b3
B0_276d:		rti				; 40 
B0_276e:		sed				; f8 
B0_276f:	.db $64
B0_2770:		pha				; 48 
B0_2771:		cpx $5c			; e4 5c
B0_2773:		and $4083, y	; 39 83 40
B0_2776:	.db $92
B0_2777:		eor ($b3, x)	; 41 b3
B0_2779:		rti				; 40 
B0_277a:		sed				; f8 
B0_277b:	.db $64
B0_277c:		pha				; 48 
B0_277d:		cpx $5c			; e4 5c
B0_277f:		and $64f8, y	; 39 f8 64
B0_2782:	.db $13
B0_2783:	.db $c2
B0_2784:	.db $37
B0_2785:		adc $4c			; 65 4c
B0_2787:		bit $63			; 24 63
B0_2789:		brk				; 00
B0_278a:	.db $97
B0_278b:		adc $c3			; 65 c3
B0_278d:	.db $42
B0_278e:	.db $0b
B0_278f:	.db $97
B0_2790:		ldy $f832		; ac 32 f8
B0_2793:	.db $64
B0_2794:	.db $0c
B0_2795:		ldx $4553, y	; be 53 45
B0_2798:		sta $f848, x	; 9d 48 f8
B0_279b:	.db $64
B0_279c:		rol a			; 2a
B0_279d:	.db $e2
B0_279e:	.db $3c
B0_279f:	.db $47
B0_27a0:		lsr $43, x		; 56 43
B0_27a2:		tsx				; ba 
B0_27a3:	.db $62
B0_27a4:		sed				; f8 
B0_27a5:	.db $64
B0_27a6:	.db $0c
B0_27a7:	.db $b7
B0_27a8:		dey				; 88 
B0_27a9:	.db $64
B0_27aa:		ldy $d431, x	; bc 31 d4
B0_27ad:		eor $fc			; 45 fc
B0_27af:		and ($3c), y	; 31 3c
B0_27b1:		lda ($78), y	; b1 78
B0_27b3:	.db $64
B0_27b4:		sty $0b38		; 8c 38 0b
B0_27b7:	.db $9c
B0_27b8:	.db $1a
B0_27b9:	.db $33
B0_27ba:		clc				; 18 
B0_27bb:		adc ($28, x)	; 61 28
B0_27bd:		adc ($39, x)	; 61 39
B0_27bf:		rts				; 60 
B0_27c0:		eor $ee4a, x	; 5d 4a ee
B0_27c3:		ora ($0f), y	; 11 0f
B0_27c5:		clv				; b8 
B0_27c6:		ora $3ec1, x	; 1d c1 3e
B0_27c9:	.db $42
B0_27ca:	.db $6f
B0_27cb:		jsr $52fd		; 20 fd 52
B0_27ce:		and ($0f), y	; 31 0f
B0_27d0:		jsr $406e		; 20 6e 40
B0_27d3:	.db $f7
B0_27d4:		jsr $8407		; 20 07 84
B0_27d7:	.db $17
B0_27d8:		jsr $344f		; 20 4f 34
B0_27db:	.db $c3
B0_27dc:	.db $03
B0_27dd:	.db $c7
B0_27de:	.db $02
B0_27df:	.db $d3
B0_27e0:	.db $22
B0_27e1:	.db $27
B0_27e2:	.db $e3
B0_27e3:		and $e761, y	; 39 61 e7
B0_27e6:	.db $73
B0_27e7:	.db $5c
B0_27e8:		cpx $57			; e4 57
B0_27ea:		brk				; 00
B0_27eb:		jmp ($4773)		; 6c 73 47
B0_27ee:		ldy #$53		; a0 53
B0_27f0:		asl $63			; 06 63
B0_27f2:	.db $22
B0_27f3:	.db $a7
B0_27f4:	.db $73
B0_27f5:	.db $fc
B0_27f6:	.db $73
B0_27f7:	.db $13
B0_27f8:		lda ($33, x)	; a1 33
B0_27fa:		ora $43			; 05 43
B0_27fc:		and ($5c, x)	; 21 5c
B0_27fe:	.db $72
B0_27ff:	.db $c3
B0_2800:	.db $23
B0_2801:		cpy $7703		; cc 03 77
B0_2804:	.db $fb
B0_2805:		ldy $3902		; ac 02 39
B0_2808:		sbc ($a7), y	; f1 a7
B0_280a:	.db $73
B0_280b:	.db $d3
B0_280c:	.db $04
B0_280d:		inx				; e8 
B0_280e:	.db $72
B0_280f:	.db $e3
B0_2810:	.db $22
B0_2811:		rol $f4			; 26 f4
B0_2813:		ldy $8c02, x	; bc 02 8c
B0_2816:		sta ($a8, x)	; 81 a8
B0_2818:	.db $62
B0_2819:	.db $17
B0_281a:	.db $87
B0_281b:	.db $43
B0_281c:		bit $a7			; 24 a7
B0_281e:		ora ($c3, x)	; 01 c3
B0_2820:	.db $04
B0_2821:		php				; 08 
B0_2822:	.db $f2
B0_2823:	.db $97
B0_2824:		and ($a3, x)	; 21 a3
B0_2826:	.db $02
B0_2827:		cmp #$0b		; c9 0b
B0_2829:		sbc ($69, x)	; e1 69
B0_282b:		sbc ($69), y	; f1 69
B0_282d:		sta $cfc1		; 8d c1 cf
B0_2830:		rol $fd			; 26 fd
B0_2832:		sec				; 38 
B0_2833:		ora ($0f), y	; 11 0f
B0_2835:		rol $ad			; 26 ad
B0_2837:		rti				; 40 
B0_2838:		and $fdc7, x	; 3d c7 fd
B0_283b:		sta $b1, x		; 95 b1
B0_283d:	.db $0f
B0_283e:		rol $0d			; 26 0d
B0_2840:	.db $02
B0_2841:		iny				; c8 
B0_2842:	.db $72
B0_2843:	.db $1c
B0_2844:		sta ($38, x)	; 81 38
B0_2846:	.db $72
B0_2847:		ora $9705		; 0d 05 97
B0_284a:	.db $34
B0_284b:		tya				; 98 
B0_284c:	.db $62
B0_284d:	.db $a3
B0_284e:		jsr $06b3		; 20 b3 06
B0_2851:	.db $c3
B0_2852:		jsr $03cc		; 20 cc 03
B0_2855:		sbc $2c91, y	; f9 91 2c
B0_2858:		sta ($48, x)	; 81 48
B0_285a:	.db $62
B0_285b:		ora $3709		; 0d 09 37
B0_285e:	.db $63
B0_285f:	.db $47
B0_2860:	.db $03
B0_2861:	.db $57
B0_2862:		and ($8c, x)	; 21 8c
B0_2864:	.db $02
B0_2865:		cmp $79			; c5 79
B0_2867:	.db $c7
B0_2868:		and ($f9), y	; 31 f9
B0_286a:		ora ($39), y	; 11 39
B0_286c:		sbc ($a9), y	; f1 a9
B0_286e:		ora ($6f), y	; 11 6f
B0_2870:		ldy $d3, x		; b4 d3
B0_2872:		adc $e3			; 65 e3
B0_2874:		adc $7d			; 65 7d
B0_2876:		cmp ($bf, x)	; c1 bf
B0_2878:		rol $fd			; 26 fd
B0_287a:		brk				; 00
B0_287b:		cmp ($4c, x)	; c1 4c
B0_287d:		brk				; 00
B0_287e:	.db $f4
B0_287f:	.db $4f
B0_2880:		ora $0202		; 0d 02 02
B0_2883:	.db $42
B0_2884:	.db $43
B0_2885:	.db $4f
B0_2886:	.db $52
B0_2887:	.db $c2
B0_2888:		dec $5a00, x	; de 00 5a
B0_288b:	.db $c2
B0_288c:		eor $fdc7		; 4d c7 fd
B0_288f:		bcc B0_28e2 ; 90 51
B0_2891:	.db $0f
B0_2892:		rol $ee			; 26 ee
B0_2894:		bpl B0_28a1 ; 10 0b
B0_2896:		sty $33, x		; 94 33
B0_2898:	.db $14
B0_2899:	.db $42
B0_289a:	.db $42
B0_289b:	.db $77
B0_289c:		asl $86, x		; 16 86
B0_289e:	.db $44
B0_289f:	.db $02
B0_28a0:	.db $92
B0_28a1:		lsr a			; 4a
B0_28a2:		asl $69, x		; 16 69
B0_28a4:	.db $42
B0_28a5:	.db $73
B0_28a6:	.db $14
B0_28a7:		bcs B0_28a9 ; b0 00
B0_28a9:	.db $c7
B0_28aa:	.db $12
B0_28ab:		ora $c0			; 05 c0
B0_28ad:	.db $1c
B0_28ae:	.db $17
B0_28af:	.db $1f
B0_28b0:		ora ($36), y	; 11 36
B0_28b2:	.db $12
B0_28b3:	.db $8f
B0_28b4:	.db $14
B0_28b5:		sta ($40), y	; 91 40
B0_28b7:	.db $1b
B0_28b8:		sty $35, x		; 94 35
B0_28ba:	.db $12
B0_28bb:	.db $34
B0_28bc:	.db $42
B0_28bd:		rts				; 60 
B0_28be:	.db $42
B0_28bf:		adc ($12, x)	; 61 12
B0_28c1:	.db $87
B0_28c2:	.db $12
B0_28c3:		stx $40, y		; 96 40
B0_28c5:	.db $a3
B0_28c6:	.db $14
B0_28c7:	.db $1c
B0_28c8:		tya				; 98 
B0_28c9:	.db $1f
B0_28ca:		ora ($47), y	; 11 47
B0_28cc:	.db $12
B0_28cd:	.db $9f
B0_28ce:		ora $cc, x		; 15 cc
B0_28d0:		ora $cf, x		; 15 cf
B0_28d2:		ora ($05), y	; 11 05
B0_28d4:		cpy #$1f		; c0 1f
B0_28d6:		ora $39, x		; 15 39
B0_28d8:	.db $12
B0_28d9:	.db $7c
B0_28da:		asl $7f, x		; 16 7f
B0_28dc:		ora ($82), y	; 11 82
B0_28de:		rti				; 40 
B0_28df:		tya				; 98 
B0_28e0:	.db $12
B0_28e1:	.db $df
B0_28e2:		ora $16, x		; 15 16
B0_28e4:		cpy $17			; c4 17
B0_28e6:	.db $14
B0_28e7:	.db $54
B0_28e8:	.db $12
B0_28e9:	.db $9b
B0_28ea:		asl $28, x		; 16 28
B0_28ec:		sty $ce, x		; 94 ce
B0_28ee:		ora ($3d, x)	; 01 3d
B0_28f0:		cmp ($5e, x)	; c1 5e
B0_28f2:	.db $42
B0_28f3:	.db $8f
B0_28f4:		jsr $97fd		; 20 fd 97
B0_28f7:		ora ($0f), y	; 11 0f
B0_28f9:		rol $fe			; 26 fe
B0_28fb:		bpl B0_2928 ; 10 2b
B0_28fd:	.db $92
B0_28fe:	.db $57
B0_28ff:	.db $12
B0_2900:	.db $8b
B0_2901:	.db $12
B0_2902:		cpy #$41		; c0 41
B0_2904:	.db $f7
B0_2905:	.db $13
B0_2906:	.db $5b
B0_2907:	.db $92
B0_2908:		adc #$0b		; 69 0b
B0_290a:	.db $bb
B0_290b:	.db $12
B0_290c:	.db $b2
B0_290d:		lsr $19			; 46 19
B0_290f:	.db $93
B0_2910:		adc ($00), y	; 71 00
B0_2912:	.db $17
B0_2913:		sty $7c, x		; 94 7c
B0_2915:	.db $14
B0_2916:	.db $7f
B0_2917:		ora ($93), y	; 11 93
B0_2919:		eor ($bf, x)	; 41 bf
B0_291b:		ora $fc, x		; 15 fc
B0_291d:	.db $13
B0_291e:	.db $ff
B0_291f:		ora ($2f), y	; 11 2f
B0_2921:		sta $50, x		; 95 50
B0_2923:	.db $42
B0_2924:		eor ($12), y	; 51 12
B0_2926:		cli				; 58 
B0_2927:	.db $14
B0_2928:		ldx $12			; a6 12
B0_292a:	.db $db
B0_292b:	.db $12
B0_292c:	.db $1b
B0_292d:	.db $93
B0_292e:		lsr $43			; 46 43
B0_2930:	.db $7b
B0_2931:	.db $12
B0_2932:		sta $b749		; 8d 49 b7
B0_2935:	.db $14
B0_2936:	.db $1b
B0_2937:		sty $49, x		; 94 49
B0_2939:	.db $0b
B0_293a:	.db $bb
B0_293b:	.db $12
B0_293c:	.db $fc
B0_293d:	.db $13
B0_293e:	.db $ff
B0_293f:	.db $12
B0_2940:	.db $03
B0_2941:		cmp ($2f, x)	; c1 2f
B0_2943:		ora $43, x		; 15 43
B0_2945:	.db $12
B0_2946:	.db $4b
B0_2947:	.db $13
B0_2948:	.db $77
B0_2949:	.db $13
B0_294a:		sta $154a, x	; 9d 4a 15
B0_294d:		cmp ($a1, x)	; c1 a1
B0_294f:		eor ($c3, x)	; 41 c3
B0_2951:	.db $12
B0_2952:		inc $7d01, x	; fe 01 7d
B0_2955:		cmp ($9e, x)	; c1 9e
B0_2957:	.db $42
B0_2958:	.db $cf
B0_2959:		jsr $52fd		; 20 fd 52
B0_295c:		and ($0f, x)	; 21 0f
B0_295e:		jsr $446e		; 20 6e 44
B0_2961:	.db $0c
B0_2962:		sbc ($4c), y	; f1 4c
B0_2964:		ora ($aa, x)	; 01 aa
B0_2966:		and $d9, x		; 35 d9
B0_2968:	.db $34
B0_2969:		inc $0820		; ee 20 08
B0_296c:	.db $b3
B0_296d:	.db $37
B0_296e:	.db $32
B0_296f:	.db $43
B0_2970:	.db $04
B0_2971:		lsr $5321		; 4e 21 53
B0_2974:		jsr $017c		; 20 7c 01
B0_2977:	.db $97
B0_2978:		and ($b7, x)	; 21 b7
B0_297a:	.db $07
B0_297b:	.db $9c
B0_297c:		sta ($e7, x)	; 81 e7
B0_297e:	.db $42
B0_297f:	.db $5f
B0_2980:	.db $b3
B0_2981:	.db $97
B0_2982:	.db $63
B0_2983:		ldy $c502		; ac 02 c5
B0_2986:		eor ($49, x)	; 41 49
B0_2988:		cpx #$58		; e0 58
B0_298a:		adc ($76, x)	; 61 76
B0_298c:	.db $64
B0_298d:		sta $65			; 85 65
B0_298f:		sty $66, x		; 94 66
B0_2991:		ldy $22			; a4 22
B0_2993:		ldx $03			; a6 03
B0_2995:		iny				; c8 
B0_2996:	.db $22
B0_2997:	.db $dc
B0_2998:	.db $02
B0_2999:		pla				; 68 
B0_299a:	.db $f2
B0_299b:		stx $42, y		; 96 42
B0_299d:	.db $13
B0_299e:	.db $82
B0_299f:	.db $17
B0_29a0:	.db $02
B0_29a1:	.db $af
B0_29a2:	.db $34
B0_29a3:		inc $21, x		; f6 21
B0_29a5:	.db $fc
B0_29a6:		asl $26			; 06 26
B0_29a8:	.db $80
B0_29a9:		rol a			; 2a
B0_29aa:		bit $36			; 24 36
B0_29ac:		ora ($8c, x)	; 01 8c
B0_29ae:		brk				; 00
B0_29af:	.db $ff
B0_29b0:		and $4e, x		; 35 4e
B0_29b2:		ldy #$55		; a0 55
B0_29b4:		and ($77, x)	; 21 77
B0_29b6:		jsr $0787		; 20 87 07
B0_29b9:	.db $89
B0_29ba:	.db $22
B0_29bb:		ldx $4c21		; ae 21 4c
B0_29be:	.db $82
B0_29bf:	.db $9f
B0_29c0:	.db $34
B0_29c1:		cpx $0301		; ec 01 03
B0_29c4:	.db $e7
B0_29c5:	.db $13
B0_29c6:	.db $67
B0_29c7:		sta $ad4a		; 8d 4a ad
B0_29ca:		eor ($0f, x)	; 41 0f
B0_29cc:		ldx $fd			; a6 fd
B0_29ce:		bpl B0_2a21 ; 10 51
B0_29d0:		jmp $c700		; 4c 00 c7
B0_29d3:	.db $12
B0_29d4:		dec $42			; c6 42
B0_29d6:	.db $03
B0_29d7:	.db $92
B0_29d8:	.db $02
B0_29d9:	.db $42
B0_29da:		and #$12		; 29 12
B0_29dc:	.db $63
B0_29dd:	.db $12
B0_29de:	.db $62
B0_29df:	.db $42
B0_29e0:		adc #$14		; 69 14
B0_29e2:		lda $12			; a5 12
B0_29e4:		ldy $42			; a4 42
B0_29e6:	.db $e2
B0_29e7:	.db $14
B0_29e8:		sbc ($44, x)	; e1 44
B0_29ea:		sed				; f8 
B0_29eb:		asl $37, x		; 16 37
B0_29ed:		cmp ($8f, x)	; c1 8f
B0_29ef:		sec				; 38 
B0_29f0:	.db $02
B0_29f1:	.db $bb
B0_29f2:		plp				; 28 
B0_29f3:	.db $7a
B0_29f4:		pla				; 68 
B0_29f5:	.db $7a
B0_29f6:		tay				; a8 
B0_29f7:	.db $7a
B0_29f8:		cpx #$6a		; e0 6a
B0_29fa:		;removed
	.hex  f0 6a
B0_29fc:		adc $fdc5		; 6d c5 fd
B0_29ff:	.db $92
B0_2a00:		and ($0f), y	; 31 0f
B0_2a02:		jsr $406e		; 20 6e 40
B0_2a05:		ora $3702		; 0d 02 37
B0_2a08:	.db $73
B0_2a09:		cpx $0c00		; ec 00 0c
B0_2a0c:	.db $80
B0_2a0d:	.db $3c
B0_2a0e:		brk				; 00
B0_2a0f:		jmp ($9c00)		; 6c 00 9c
B0_2a12:		brk				; 00
B0_2a13:		asl $c0			; 06 c0
B0_2a15:	.db $c7
B0_2a16:	.db $73
B0_2a17:		asl $83			; 06 83
B0_2a19:		plp				; 28 
B0_2a1a:	.db $72
B0_2a1b:		stx $40, y		; 96 40
B0_2a1d:	.db $e7
B0_2a1e:	.db $73
B0_2a1f:		rol $c0			; 26 c0
B0_2a21:	.db $87
B0_2a22:	.db $7b
B0_2a23:	.db $d2
B0_2a24:		eor ($39, x)	; 41 39
B0_2a26:		sbc ($c8), y	; f1 c8
B0_2a28:	.db $f2
B0_2a29:	.db $97
B0_2a2a:	.db $e3
B0_2a2b:	.db $a3
B0_2a2c:	.db $23
B0_2a2d:	.db $e7
B0_2a2e:	.db $02
B0_2a2f:	.db $e3
B0_2a30:	.db $07
B0_2a31:	.db $f3
B0_2a32:	.db $22
B0_2a33:	.db $37
B0_2a34:	.db $e3
B0_2a35:	.db $9c
B0_2a36:		brk				; 00
B0_2a37:		ldy $ec00, x	; bc 00 ec
B0_2a3a:		brk				; 00
B0_2a3b:	.db $0c
B0_2a3c:	.db $80
B0_2a3d:	.db $3c
B0_2a3e:		brk				; 00
B0_2a3f:		stx $21			; 86 21
B0_2a41:		ldx $06			; a6 06
B0_2a43:		ldx $24, y		; b6 24
B0_2a45:	.db $5c
B0_2a46:	.db $80
B0_2a47:	.db $7c
B0_2a48:		brk				; 00
B0_2a49:	.db $9c
B0_2a4a:		brk				; 00
B0_2a4b:		and #$e1		; 29 e1
B0_2a4d:	.db $dc
B0_2a4e:		ora $f6			; 05 f6
B0_2a50:		eor ($dc, x)	; 41 dc
B0_2a52:	.db $80
B0_2a53:		inx				; e8 
B0_2a54:	.db $72
B0_2a55:	.db $0c
B0_2a56:		sta ($27, x)	; 81 27
B0_2a58:	.db $73
B0_2a59:		jmp $6601		; 4c 01 66
B0_2a5c:	.db $74
B0_2a5d:		ora $3f11		; 0d 11 3f
B0_2a60:		and $b6, x		; 35 b6
B0_2a62:		eor ($2c, x)	; 41 2c
B0_2a64:	.db $82
B0_2a65:		rol $40, x		; 36 40
B0_2a67:	.db $7c
B0_2a68:	.db $02
B0_2a69:		stx $40			; 86 40
B0_2a6b:		sbc $3961, y	; f9 61 39
B0_2a6e:		sbc ($ac, x)	; e1 ac
B0_2a70:	.db $04
B0_2a71:		dec $41			; c6 41
B0_2a73:	.db $0c
B0_2a74:	.db $83
B0_2a75:		asl $41, x		; 16 41
B0_2a77:		dey				; 88 
B0_2a78:	.db $f2
B0_2a79:		and $7cf1, y	; 39 f1 7c
B0_2a7c:		brk				; 00
B0_2a7d:	.db $89
B0_2a7e:		adc ($9c, x)	; 61 9c
B0_2a80:		brk				; 00
B0_2a81:	.db $a7
B0_2a82:	.db $63
B0_2a83:		ldy $c500, x	; bc 00 c5
B0_2a86:		adc $dc			; 65 dc
B0_2a88:		brk				; 00
B0_2a89:	.db $e3
B0_2a8a:	.db $67
B0_2a8b:	.db $f3
B0_2a8c:	.db $67
B0_2a8d:		sta $cfc1		; 8d c1 cf
B0_2a90:		rol $fd			; 26 fd
B0_2a92:		eor $b1, x		; 55 b1
B0_2a94:	.db $0f
B0_2a95:		rol $cf			; 26 cf
B0_2a97:	.db $33
B0_2a98:	.db $07
B0_2a99:	.db $b2
B0_2a9a:		ora $11, x		; 15 11
B0_2a9c:	.db $52
B0_2a9d:	.db $42
B0_2a9e:		sta $ac0b, y	; 99 0b ac
B0_2aa1:	.db $02
B0_2aa2:	.db $d3
B0_2aa3:		bit $d6			; 24 d6
B0_2aa5:	.db $42
B0_2aa6:	.db $d7
B0_2aa7:		and $23			; 25 23
B0_2aa9:		sty $cf			; 84 cf
B0_2aab:	.db $33
B0_2aac:	.db $07
B0_2aad:	.db $e3
B0_2aae:		ora $7861, y	; 19 61 78
B0_2ab1:	.db $7a
B0_2ab2:	.db $ef
B0_2ab3:	.db $33
B0_2ab4:		bit $4681		; 2c 81 46
B0_2ab7:	.db $64
B0_2ab8:		eor $65, x		; 55 65
B0_2aba:		adc $65			; 65 65
B0_2abc:		cpx $4774		; ec 74 47
B0_2abf:	.db $82
B0_2ac0:	.db $53
B0_2ac1:		ora $63			; 05 63
B0_2ac3:		and ($62, x)	; 21 62
B0_2ac5:		eor ($96, x)	; 41 96
B0_2ac7:	.db $22
B0_2ac8:		txs				; 9a 
B0_2ac9:		eor ($cc, x)	; 41 cc
B0_2acb:	.db $03
B0_2acc:		lda $3991, y	; b9 91 39
B0_2acf:		sbc ($63), y	; f1 63
B0_2ad1:		rol $67			; 26 67
B0_2ad3:	.db $27
B0_2ad4:	.db $d3
B0_2ad5:		asl $fc			; 06 fc
B0_2ad7:		ora ($18, x)	; 01 18
B0_2ad9:	.db $e2
B0_2ada:		cmp $e907, y	; d9 07 e9
B0_2add:	.db $04
B0_2ade:	.db $0c
B0_2adf:		stx $37			; 86 37
B0_2ae1:	.db $22
B0_2ae2:	.db $93
B0_2ae3:		bit $87			; 24 87
B0_2ae5:		sty $ac			; 84 ac
B0_2ae7:	.db $02
B0_2ae8:	.db $c2
B0_2ae9:		eor ($c3, x)	; 41 c3
B0_2aeb:	.db $23
B0_2aec:		cmp $fc71, y	; d9 71 fc
B0_2aef:		ora ($7f, x)	; 01 7f
B0_2af1:		lda ($9c), y	; b1 9c
B0_2af3:		brk				; 00
B0_2af4:	.db $a7
B0_2af5:	.db $63
B0_2af6:		ldx $64, y		; b6 64
B0_2af8:		cpy $d400		; cc 00 d4
B0_2afb:		ror $e3			; 66 e3
B0_2afd:	.db $67
B0_2afe:	.db $f3
B0_2aff:	.db $67
B0_2b00:		sta $cfc1		; 8d c1 cf
B0_2b03:		rol $fd			; 26 fd
B0_2b05:		bvc B0_2ab8 ; 50 b1
B0_2b07:	.db $0f
B0_2b08:		rol $fc			; 26 fc
B0_2b0a:		brk				; 00
B0_2b0b:	.db $1f
B0_2b0c:	.db $b3
B0_2b0d:	.db $5c
B0_2b0e:		brk				; 00
B0_2b0f:		adc $65			; 65 65
B0_2b11:	.db $74
B0_2b12:		ror $83			; 66 83
B0_2b14:	.db $67
B0_2b15:	.db $93
B0_2b16:	.db $67
B0_2b17:	.db $dc
B0_2b18:	.db $73
B0_2b19:		jmp $b380		; 4c 80 b3
B0_2b1c:		jsr $0bc9		; 20 c9 0b
B0_2b1f:	.db $c3
B0_2b20:		php				; 08 
B0_2b21:	.db $d3
B0_2b22:	.db $2f
B0_2b23:	.db $dc
B0_2b24:		brk				; 00
B0_2b25:		bit $4c80		; 2c 80 4c
B0_2b28:		brk				; 00
B0_2b29:		sty $d300		; 8c 00 d3
B0_2b2c:		rol $4aed		; 2e ed 4a
B0_2b2f:	.db $fc
B0_2b30:		brk				; 00
B0_2b31:	.db $d7
B0_2b32:		lda ($ec, x)	; a1 ec
B0_2b34:		ora ($4c, x)	; 01 4c
B0_2b36:	.db $80
B0_2b37:		eor $d811, y	; 59 11 d8
B0_2b3a:		ora ($da), y	; 11 da
B0_2b3c:		;removed
	.hex  10 37
B0_2b3e:		ldy #$47		; a0 47
B0_2b40:	.db $04
B0_2b41:		sta $e711, y	; 99 11 e7
B0_2b44:		and ($3a, x)	; 21 3a
B0_2b46:		bcc B0_2baf ; 90 67
B0_2b48:		jsr $1076		; 20 76 10
B0_2b4b:	.db $77
B0_2b4c:		rts				; 60 
B0_2b4d:	.db $87
B0_2b4e:	.db $07
B0_2b4f:		cld				; b8 
B0_2b50:	.db $12
B0_2b51:		and $acf1, y	; 39 f1 ac
B0_2b54:		brk				; 00
B0_2b55:		sbc #$71		; e9 71
B0_2b57:	.db $0c
B0_2b58:	.db $80
B0_2b59:		bit $4c00		; 2c 00 4c
B0_2b5c:		ora $c7			; 05 c7
B0_2b5e:	.db $7b
B0_2b5f:		and $ecf1, y	; 39 f1 ec
B0_2b62:		brk				; 00
B0_2b63:		sbc $0c11, y	; f9 11 0c
B0_2b66:	.db $82
B0_2b67:	.db $6f
B0_2b68:	.db $34
B0_2b69:		sed				; f8 
B0_2b6a:		ora ($fa), y	; 11 fa
B0_2b6c:		bpl B0_2bed ; 10 7f
B0_2b6e:	.db $b2
B0_2b6f:		ldy $b600		; ac 00 b6
B0_2b72:	.db $64
B0_2b73:		cpy $e301		; cc 01 e3
B0_2b76:	.db $67
B0_2b77:	.db $f3
B0_2b78:	.db $67
B0_2b79:		sta $cfc1		; 8d c1 cf
B0_2b7c:		rol $fd			; 26 fd
B0_2b7e:	.db $52
B0_2b7f:		lda ($0f), y	; b1 0f
B0_2b81:		jsr $456e		; 20 6e 45
B0_2b84:		and $b391, y	; 39 91 b3
B0_2b87:	.db $04
B0_2b88:	.db $c3
B0_2b89:		and ($c8, x)	; 21 c8
B0_2b8b:		ora ($ca), y	; 11 ca
B0_2b8d:		;removed
	.hex  10 49
B0_2b8f:		sta ($7c), y	; 91 7c
B0_2b91:	.db $73
B0_2b92:		inx				; e8 
B0_2b93:	.db $12
B0_2b94:		dey				; 88 
B0_2b95:		sta ($8a), y	; 91 8a
B0_2b97:		;removed
	.hex  10 e7
B0_2b99:		and ($05, x)	; 21 05
B0_2b9b:		sta ($07), y	; 91 07
B0_2b9d:		;removed
	.hex  30 17
B0_2b9f:	.db $07
B0_2ba0:	.db $27
B0_2ba1:		jsr $1149		; 20 49 11
B0_2ba4:	.db $9c
B0_2ba5:		ora ($c8, x)	; 01 c8
B0_2ba7:	.db $72
B0_2ba8:	.db $23
B0_2ba9:		ldx $27			; a6 27
B0_2bab:		rol $d3			; 26 d3
B0_2bad:	.db $03
B0_2bae:		cld				; b8 
B0_2baf:	.db $7a
B0_2bb0:	.db $89
B0_2bb1:		sta ($d8), y	; 91 d8
B0_2bb3:	.db $72
B0_2bb4:		and $a9f1, y	; 39 f1 a9
B0_2bb7:		ora ($09), y	; 11 09
B0_2bb9:		sbc ($63), y	; f1 63
B0_2bbb:		bit $67			; 24 67
B0_2bbd:		bit $d8			; 24 d8
B0_2bbf:	.db $62
B0_2bc0:		plp				; 28 
B0_2bc1:		sta ($2a), y	; 91 2a
B0_2bc3:		bpl B0_2c1b ; 10 56
B0_2bc5:		and ($70, x)	; 21 70
B0_2bc7:	.db $04
B0_2bc8:		adc $8c0b, y	; 79 0b 8c
B0_2bcb:		brk				; 00
B0_2bcc:		sty $21, x		; 94 21
B0_2bce:	.db $9f
B0_2bcf:		and $2f, x		; 35 2f
B0_2bd1:		clv				; b8 
B0_2bd2:		and $7fc1, x	; 3d c1 7f
B0_2bd5:		rol $fd			; 26 fd
B0_2bd7:		asl $c1			; 06 c1
B0_2bd9:		jmp $f400		; 4c 00 f4
B0_2bdc:	.db $4f
B0_2bdd:		ora $0602		; 0d 02 06
B0_2be0:		jsr $4f24		; 20 24 4f
B0_2be3:		and $a0, x		; 35 a0
B0_2be5:		rol $20, x		; 36 20
B0_2be7:	.db $53
B0_2be8:		lsr $d5			; 46 d5
B0_2bea:		jsr $20d6		; 20 d6 20
B0_2bed:	.db $34
B0_2bee:		lda ($73, x)	; a1 73
B0_2bf0:		eor #$74		; 49 74
B0_2bf2:		jsr $2094		; 20 94 20
B0_2bf5:		ldy $20, x		; b4 20
B0_2bf7:	.db $d4
B0_2bf8:		jsr $20f4		; 20 f4 20
B0_2bfb:		rol $5980		; 2e 80 59
B0_2bfe:	.db $42
B0_2bff:		eor $fdc7		; 4d c7 fd
B0_2c02:		stx $31, y		; 96 31
B0_2c04:	.db $0f
B0_2c05:		rol $0d			; 26 0d
B0_2c07:	.db $03
B0_2c08:	.db $1a
B0_2c09:		rts				; 60 
B0_2c0a:	.db $77
B0_2c0b:	.db $42
B0_2c0c:		cpy $00			; c4 00
B0_2c0e:		iny				; c8 
B0_2c0f:	.db $62
B0_2c10:		lda $d3e1, y	; b9 e1 d3
B0_2c13:		asl $d7			; 06 d7
B0_2c15:	.db $07
B0_2c16:		sbc $0c61, y	; f9 61 0c
B0_2c19:		sta ($4e, x)	; 81 4e
B0_2c1b:		lda ($8e), y	; b1 8e
B0_2c1d:		lda ($bc), y	; b1 bc
B0_2c1f:		ora ($e4, x)	; 01 e4
B0_2c21:		bvc B0_2c0c ; 50 e9
B0_2c23:		adc ($0c, x)	; 61 0c
B0_2c25:		sta ($0d, x)	; 81 0d
B0_2c27:		asl a			; 0a
B0_2c28:		sty $43			; 84 43
B0_2c2a:		tya				; 98 
B0_2c2b:	.db $72
B0_2c2c:		ora $0f0c		; 0d 0c 0f
B0_2c2f:		sec				; 38 
B0_2c30:		ora $5fc1, x	; 1d c1 5f
B0_2c33:		rol $fd			; 26 fd
B0_2c35:		pha				; 48 
B0_2c36:	.db $0f
B0_2c37:		asl $5e01		; 0e 01 5e
B0_2c3a:	.db $02
B0_2c3b:	.db $a7
B0_2c3c:		brk				; 00
B0_2c3d:		ldy $1a73, x	; bc 73 1a
B0_2c40:		cpx #$39		; e0 39
B0_2c42:		adc ($58, x)	; 61 58
B0_2c44:	.db $62
B0_2c45:	.db $77
B0_2c46:	.db $63
B0_2c47:	.db $97
B0_2c48:	.db $63
B0_2c49:		clv				; b8 
B0_2c4a:	.db $62
B0_2c4b:		dec $07, x		; d6 07
B0_2c4d:		sed				; f8 
B0_2c4e:	.db $62
B0_2c4f:		ora $75e1, y	; 19 e1 75
B0_2c52:	.db $52
B0_2c53:		stx $40			; 86 40
B0_2c55:	.db $87
B0_2c56:		bvc B0_2bed ; 50 95
B0_2c58:	.db $52
B0_2c59:	.db $93
B0_2c5a:	.db $43
B0_2c5b:		lda $21			; a5 21
B0_2c5d:		cmp $52			; c5 52
B0_2c5f:		dec $40, x		; d6 40
B0_2c61:	.db $d7
B0_2c62:		jsr $06e5		; 20 e5 06
B0_2c65:		inc $51			; e6 51
B0_2c67:		rol $5e8d, x	; 3e 8d 5e
B0_2c6a:	.db $03
B0_2c6b:	.db $67
B0_2c6c:	.db $52
B0_2c6d:	.db $77
B0_2c6e:	.db $52
B0_2c6f:		ror $9e02, x	; 7e 02 9e
B0_2c72:	.db $03
B0_2c73:		ldx $43			; a6 43
B0_2c75:	.db $a7
B0_2c76:	.db $23
B0_2c77:		dec $fe05, x	; de 05 fe
B0_2c7a:	.db $02
B0_2c7b:		asl $3383, x	; 1e 83 33
B0_2c7e:	.db $54
B0_2c7f:		lsr $40			; 46 40
B0_2c81:	.db $47
B0_2c82:		and ($56, x)	; 21 56
B0_2c84:	.db $04
B0_2c85:		lsr $8302, x	; 5e 02 83
B0_2c88:	.db $54
B0_2c89:	.db $93
B0_2c8a:	.db $52
B0_2c8b:		stx $07, y		; 96 07
B0_2c8d:	.db $97
B0_2c8e:		bvc B0_2c4e ; 50 be
B0_2c90:	.db $03
B0_2c91:	.db $c7
B0_2c92:	.db $23
B0_2c93:		inc $0c02, x	; fe 02 0c
B0_2c96:	.db $82
B0_2c97:	.db $43
B0_2c98:		eor $45			; 45 45
B0_2c9a:		bit $46			; 24 46
B0_2c9c:		bit $90			; 24 90
B0_2c9e:		php				; 08 
B0_2c9f:		sta $51, x		; 95 51
B0_2ca1:		sei				; 78 
B0_2ca2:	.db $fa
B0_2ca3:	.db $d7
B0_2ca4:	.db $73
B0_2ca5:		and $8cf1, y	; 39 f1 8c
B0_2ca8:		ora ($a8, x)	; 01 a8
B0_2caa:	.db $52
B0_2cab:		clv				; b8 
B0_2cac:	.db $52
B0_2cad:		cpy $5f01		; cc 01 5f
B0_2cb0:	.db $b3
B0_2cb1:	.db $97
B0_2cb2:	.db $63
B0_2cb3:	.db $9e
B0_2cb4:		brk				; 00
B0_2cb5:		asl $1681		; 0e 81 16
B0_2cb8:		bit $66			; 24 66
B0_2cba:	.db $04
B0_2cbb:		stx $fe00		; 8e 00 fe
B0_2cbe:		ora ($08, x)	; 01 08
B0_2cc0:	.db $d2
B0_2cc1:		asl $6f06		; 0e 06 6f
B0_2cc4:	.db $47
B0_2cc5:	.db $9e
B0_2cc6:	.db $0f
B0_2cc7:		asl $2d82		; 0e 82 2d
B0_2cca:	.db $47
B0_2ccb:		plp				; 28 
B0_2ccc:	.db $7a
B0_2ccd:		pla				; 68 
B0_2cce:	.db $7a
B0_2ccf:		tay				; a8 
B0_2cd0:	.db $7a
B0_2cd1:		ldx $de01		; ae 01 de
B0_2cd4:	.db $0f
B0_2cd5:		adc $fdc5		; 6d c5 fd
B0_2cd8:		pha				; 48 
B0_2cd9:	.db $0f
B0_2cda:		asl $5e01		; 0e 01 5e
B0_2cdd:	.db $02
B0_2cde:		ldy $fc01, x	; bc 01 fc
B0_2ce1:		ora ($2c, x)	; 01 2c
B0_2ce3:	.db $82
B0_2ce4:		eor ($52, x)	; 41 52
B0_2ce6:		lsr $6704		; 4e 04 67
B0_2ce9:		and $68			; 25 68
B0_2ceb:		bit $69			; 24 69
B0_2ced:		bit $ba			; 24 ba
B0_2cef:	.db $42
B0_2cf0:	.db $c7
B0_2cf1:	.db $04
B0_2cf2:		dec $b20b, x	; de 0b b2
B0_2cf5:	.db $87
B0_2cf6:		inc $2c02, x	; fe 02 2c
B0_2cf9:		sbc ($2c, x)	; e1 2c
B0_2cfb:		adc ($67), y	; 71 67
B0_2cfd:		ora ($77, x)	; 01 77
B0_2cff:		brk				; 00
B0_2d00:	.db $87
B0_2d01:		ora ($8e, x)	; 01 8e
B0_2d03:		brk				; 00
B0_2d04:		inc $f601		; ee 01 f6
B0_2d07:	.db $02
B0_2d08:	.db $03
B0_2d09:		sta $05			; 85 05
B0_2d0b:	.db $02
B0_2d0c:	.db $13
B0_2d0d:		and ($16, x)	; 21 16
B0_2d0f:	.db $02
B0_2d10:	.db $27
B0_2d11:	.db $02
B0_2d12:		rol $8802		; 2e 02 88
B0_2d15:	.db $72
B0_2d16:	.db $c7
B0_2d17:		jsr $07d7		; 20 d7 07
B0_2d1a:		cpx $76			; e4 76
B0_2d1c:	.db $07
B0_2d1d:		ldy #$17		; a0 17
B0_2d1f:		asl $48			; 06 48
B0_2d21:	.db $7a
B0_2d22:		ror $20, x		; 76 20
B0_2d24:		tya				; 98 
B0_2d25:	.db $72
B0_2d26:		adc $88e1, y	; 79 e1 88
B0_2d29:	.db $62
B0_2d2a:	.db $9c
B0_2d2b:		ora ($b7, x)	; 01 b7
B0_2d2d:	.db $73
B0_2d2e:	.db $dc
B0_2d2f:		ora ($f8, x)	; 01 f8
B0_2d31:	.db $62
B0_2d32:		inc $0801, x	; fe 01 08
B0_2d35:	.db $e2
B0_2d36:		asl $6e00		; 0e 00 6e
B0_2d39:	.db $02
B0_2d3a:	.db $73
B0_2d3b:		jsr $2377		; 20 77 23
B0_2d3e:	.db $83
B0_2d3f:	.db $04
B0_2d40:	.db $93
B0_2d41:	.hex 20 ae 00
B0_2d44:		inc $0e0a, x	; fe 0a 0e
B0_2d47:	.db $82
B0_2d48:		and $a871, y	; 39 71 a8
B0_2d4b:	.db $72
B0_2d4c:	.db $e7
B0_2d4d:	.db $73
B0_2d4e:	.db $0c
B0_2d4f:		sta ($8f, x)	; 81 8f
B0_2d51:	.db $32
B0_2d52:		ldx $fe00		; ae 00 fe
B0_2d55:	.db $04
B0_2d56:	.db $04
B0_2d57:		cmp ($17), y	; d1 17
B0_2d59:	.db $04
B0_2d5a:		rol $49			; 26 49
B0_2d5c:	.db $27
B0_2d5d:		and #$df		; 29 df
B0_2d5f:	.db $33
B0_2d60:		inc $4402, x	; fe 02 44
B0_2d63:		inc $7c, x		; f6 7c
B0_2d65:		ora ($8e, x)	; 01 8e
B0_2d67:		asl $bf			; 06 bf
B0_2d69:	.db $47
B0_2d6a:		inc $4d0f		; ee 0f 4d
B0_2d6d:	.db $c7
B0_2d6e:		asl $6882		; 0e 82 68
B0_2d71:	.db $7a
B0_2d72:		ldx $de01		; ae 01 de
B0_2d75:	.db $0f
B0_2d76:		adc $fdc5		; 6d c5 fd
B0_2d79:		pha				; 48 
B0_2d7a:		ora ($0e, x)	; 01 0e
B0_2d7c:		ora ($00, x)	; 01 00
B0_2d7e:	.db $5a
B0_2d7f:		rol $4506, x	; 3e 06 45
B0_2d82:		lsr $47			; 46 47
B0_2d84:		lsr $53			; 46 53
B0_2d86:	.db $44
B0_2d87:		ldx $df01		; ae 01 df
B0_2d8a:		lsr a			; 4a
B0_2d8b:		eor $0ec7		; 4d c7 0e
B0_2d8e:		sta ($00, x)	; 81 00
B0_2d90:	.db $5a
B0_2d91:		rol $3704		; 2e 04 37
B0_2d94:		plp				; 28 
B0_2d95:	.db $3a
B0_2d96:		pha				; 48 
B0_2d97:		lsr $47			; 46 47
B0_2d99:	.db $c7
B0_2d9a:	.db $07
B0_2d9b:		dec $df0f		; ce 0f df
B0_2d9e:		lsr a			; 4a
B0_2d9f:		eor $0ec7		; 4d c7 0e
B0_2da2:		sta ($00, x)	; 81 00
B0_2da4:	.db $5a
B0_2da5:	.db $33
B0_2da6:	.db $53
B0_2da7:	.db $43
B0_2da8:		eor ($46), y	; 51 46
B0_2daa:		rti				; 40 
B0_2dab:	.db $47
B0_2dac:		bvc B0_2e01 ; 50 53
B0_2dae:	.db $04
B0_2daf:		eor $40, x		; 55 40
B0_2db1:		lsr $50, x		; 56 50
B0_2db3:	.db $62
B0_2db4:	.db $43
B0_2db5:	.db $64
B0_2db6:		rti				; 40 
B0_2db7:		adc $50			; 65 50
B0_2db9:		adc ($41), y	; 71 41
B0_2dbb:	.db $73
B0_2dbc:		eor ($83), y	; 51 83
B0_2dbe:		eor ($94), y	; 51 94
B0_2dc0:		rti				; 40 
B0_2dc1:		sta $50, x		; 95 50
B0_2dc3:	.db $a3
B0_2dc4:		;removed
	.hex  50 a5
B0_2dc6:		rti				; 40 
B0_2dc7:		ldx $50			; a6 50
B0_2dc9:	.db $b3
B0_2dca:		eor ($b6), y	; 51 b6
B0_2dcc:		rti				; 40 
B0_2dcd:	.db $b7
B0_2dce:		;removed
	.hex  50 c3
B0_2dd0:	.db $53
B0_2dd1:	.db $df
B0_2dd2:		lsr a			; 4a
B0_2dd3:		eor $0ec7		; 4d c7 0e
B0_2dd6:		sta ($00, x)	; 81 00
B0_2dd8:	.db $5a
B0_2dd9:		rol $3602		; 2e 02 36
B0_2ddc:	.db $47
B0_2ddd:	.db $37
B0_2dde:	.db $52
B0_2ddf:	.db $3a
B0_2de0:		eor #$47		; 49 47
B0_2de2:		and $a7			; 25 a7
B0_2de4:	.db $52
B0_2de5:	.db $d7
B0_2de6:	.db $04
B0_2de7:	.db $df
B0_2de8:		lsr a			; 4a
B0_2de9:		eor $0ec7		; 4d c7 0e
B0_2dec:		sta ($00, x)	; 81 00
B0_2dee:	.db $5a
B0_2def:		rol $4402, x	; 3e 02 44
B0_2df2:		eor ($53), y	; 51 53
B0_2df4:	.db $44
B0_2df5:	.db $54
B0_2df6:	.db $44
B0_2df7:		eor $24, x		; 55 24
B0_2df9:		lda ($54, x)	; a1 54
B0_2dfb:		ldx $b401		; ae 01 b4
B0_2dfe:		and ($df, x)	; 21 df
B0_2e00:		lsr a			; 4a
B0_2e01:		sbc $07			; e5 07
B0_2e03:		eor $fdc7		; 4d c7 fd
B0_2e06:		eor ($01, x)	; 41 01
B0_2e08:		ldy $34, x		; b4 34
B0_2e0a:		iny				; c8 
B0_2e0b:	.db $52
B0_2e0c:	.db $f2
B0_2e0d:		eor ($47), y	; 51 47
B0_2e0f:	.db $d3
B0_2e10:		jmp ($6503)		; 6c 03 65
B0_2e13:		eor #$9e		; 49 9e
B0_2e15:	.db $07
B0_2e16:		ldx $cc01, y	; be 01 cc
B0_2e19:	.db $03
B0_2e1a:		inc $0d07, x	; fe 07 0d
B0_2e1d:		cmp #$1e		; c9 1e
B0_2e1f:		ora ($6c, x)	; 01 6c
B0_2e21:		ora ($62, x)	; 01 62
B0_2e23:		and $63, x		; 35 63
B0_2e25:	.db $53
B0_2e26:		txa				; 8a 
B0_2e27:		eor ($ac, x)	; 41 ac
B0_2e29:		ora ($b3, x)	; 01 b3
B0_2e2b:	.db $53
B0_2e2c:		sbc #$51		; e9 51
B0_2e2e:		rol $c3			; 26 c3
B0_2e30:	.db $27
B0_2e31:	.db $33
B0_2e32:	.db $63
B0_2e33:	.db $43
B0_2e34:	.db $64
B0_2e35:	.db $33
B0_2e36:		tsx				; ba 
B0_2e37:		rts				; 60 
B0_2e38:		cmp #$61		; c9 61
B0_2e3a:		dec $e50b		; ce 0b e5
B0_2e3d:		ora #$ee		; 09 ee
B0_2e3f:	.db $0f
B0_2e40:		adc $7dca, x	; 7d ca 7d
B0_2e43:	.db $47
B0_2e44:		sbc $0141, x	; fd 41 01
B0_2e47:		clv				; b8 
B0_2e48:	.db $52
B0_2e49:		nop				; ea 
B0_2e4a:		eor ($27, x)	; 41 27
B0_2e4c:	.db $b2
B0_2e4d:	.db $b3
B0_2e4e:	.db $42
B0_2e4f:		asl $d4, x		; 16 d4
B0_2e51:		lsr a			; 4a
B0_2e52:	.db $42
B0_2e53:		lda $51			; a5 51
B0_2e55:	.db $a7
B0_2e56:		and ($27), y	; 31 27
B0_2e58:	.db $d3
B0_2e59:		php				; 08 
B0_2e5a:	.db $e2
B0_2e5b:		asl $64, x		; 16 64
B0_2e5d:		bit $3804		; 2c 04 38
B0_2e60:	.db $42
B0_2e61:		ror $64, x		; 76 64
B0_2e63:		dey				; 88 
B0_2e64:	.db $62
B0_2e65:		dec $fe07, x	; de 07 fe
B0_2e68:		ora ($0d, x)	; 01 0d
B0_2e6a:		cmp #$23		; c9 23
B0_2e6c:	.db $32
B0_2e6d:		and ($51), y	; 31 51
B0_2e6f:		tya				; 98 
B0_2e70:	.db $52
B0_2e71:		ora $59c9		; 0d c9 59
B0_2e74:	.db $42
B0_2e75:	.db $63
B0_2e76:	.db $53
B0_2e77:	.db $67
B0_2e78:		and ($14), y	; 31 14
B0_2e7a:	.db $c2
B0_2e7b:		rol $31, x		; 36 31
B0_2e7d:	.db $87
B0_2e7e:	.db $53
B0_2e7f:	.db $17
B0_2e80:	.db $e3
B0_2e81:		and #$61		; 29 61
B0_2e83:		bmi B0_2ee7 ; 30 62
B0_2e85:	.db $3c
B0_2e86:		php				; 08 
B0_2e87:	.db $42
B0_2e88:	.db $37
B0_2e89:		eor $6a40, y	; 59 40 6a
B0_2e8c:	.db $42
B0_2e8d:		sta $c940, y	; 99 40 c9
B0_2e90:		adc ($d7, x)	; 61 d7
B0_2e92:	.db $63
B0_2e93:		and $58d1, y	; 39 d1 58
B0_2e96:	.db $52
B0_2e97:	.db $c3
B0_2e98:	.db $67
B0_2e99:	.db $d3
B0_2e9a:		and ($dc), y	; 31 dc
B0_2e9c:		asl $f7			; 06 f7
B0_2e9e:	.db $42
B0_2e9f:	.db $fa
B0_2ea0:	.db $42
B0_2ea1:	.db $23
B0_2ea2:		lda ($43), y	; b1 43
B0_2ea4:	.db $67
B0_2ea5:	.db $c3
B0_2ea6:	.db $34
B0_2ea7:	.db $c7
B0_2ea8:	.db $34
B0_2ea9:		cmp ($51), y	; d1 51
B0_2eab:	.db $43
B0_2eac:	.db $b3
B0_2ead:	.db $47
B0_2eae:	.db $33
B0_2eaf:		txs				; 9a 
B0_2eb0:		bmi B0_2e5b ; 30 a9
B0_2eb2:		adc ($b8, x)	; 61 b8
B0_2eb4:	.db $62
B0_2eb5:		ldx $d50b, y	; be 0b d5
B0_2eb8:		ora #$de		; 09 de
B0_2eba:	.db $0f
B0_2ebb:		ora $7dca		; 0d ca 7d
B0_2ebe:	.db $47
B0_2ebf:		sbc $0f49, x	; fd 49 0f
B0_2ec2:		asl $3901, x	; 1e 01 39
B0_2ec5:	.db $73
B0_2ec6:		lsr $ae07, x	; 5e 07 ae
B0_2ec9:	.db $0b
B0_2eca:		asl $6e82, x	; 1e 82 6e
B0_2ecd:		dey				; 88 
B0_2ece:	.db $9e
B0_2ecf:	.db $02
B0_2ed0:		ora $2e04		; 0d 04 2e
B0_2ed3:	.db $0b
B0_2ed4:		eor $09			; 45 09
B0_2ed6:		lsr $ed0f		; 4e 0f ed
B0_2ed9:	.db $47
B0_2eda:		sbc $adff, x	; fd ff ad
B0_2edd:	.db $72
B0_2ede:	.db $07
B0_2edf:		jsr $8e04		; 20 04 8e
B0_2ee2:		cpx $8f			; e4 8f
B0_2ee4:	.db $67
B0_2ee5:		sta $71			; 85 71
B0_2ee7:		bcc B0_2ed3 ; 90 ea
B0_2ee9:		ldx $53ae		; ae ae 53
B0_2eec:	.db $07
B0_2eed:		lda $06fc, x	; bd fc 06
B0_2ef0:		sta $06fc		; 8d fc 06
B0_2ef3:		jsr $b04a		; 20 4a b0
B0_2ef6:		lda $0772		; ad 72 07
B0_2ef9:		cmp #$03		; c9 03
B0_2efb:		bcs B0_2efe ; b0 01
B0_2efd:		rts				; 60 
B0_2efe:		jsr $b624		; 20 24 b6
B0_2f01:		ldx #$00		; a2 00
B0_2f03:		stx $08			; 86 08
B0_2f05:		jsr $c047		; 20 47 c0
B0_2f08:		jsr $84c3		; 20 c3 84
B0_2f0b:		inx				; e8 
B0_2f0c:		cpx #$06		; e0 06
B0_2f0e:		bne B0_2f03 ; d0 f3
B0_2f10:		jsr $f180		; 20 80 f1
B0_2f13:		jsr $f12a		; 20 2a f1
B0_2f16:		jsr $eee9		; 20 e9 ee
B0_2f19:		jsr $bed4		; 20 d4 be
B0_2f1c:		ldx #$01		; a2 01
B0_2f1e:		stx $08			; 86 08
B0_2f20:		jsr $be70		; 20 70 be
B0_2f23:		dex				; ca 
B0_2f24:		stx $08			; 86 08
B0_2f26:		jsr $be70		; 20 70 be
B0_2f29:		jsr $bb96		; 20 96 bb
B0_2f2c:		jsr $b9bc		; 20 bc b9
B0_2f2f:		jsr $b7b8		; 20 b8 b7
B0_2f32:		jsr $b855		; 20 55 b8
B0_2f35:		jsr $b74f		; 20 4f b7
B0_2f38:		jsr $89e1		; 20 e1 89
B0_2f3b:		lda $b5			; a5 b5
B0_2f3d:		cmp #$02		; c9 02
B0_2f3f:		bpl B0_2f52 ; 10 11
B0_2f41:		lda $079f		; ad 9f 07
B0_2f44:		beq B0_2f64 ; f0 1e
B0_2f46:		cmp #$04		; c9 04
B0_2f48:		bne B0_2f52 ; d0 08
B0_2f4a:		lda $077f		; ad 7f 07
B0_2f4d:		bne B0_2f52 ; d0 03
B0_2f4f:		jsr $90ed		; 20 ed 90
B0_2f52:		ldy $079f		; ac 9f 07
B0_2f55:		lda $09			; a5 09
B0_2f57:		cpy #$08		; c0 08
B0_2f59:		bcs B0_2f5d ; b0 02
B0_2f5b:		lsr a			; 4a
B0_2f5c:		lsr a			; 4a
B0_2f5d:		lsr a			; 4a
B0_2f5e:		jsr $b288		; 20 88 b2
B0_2f61:		jmp $af67		; 4c 67 af
B0_2f64:		jsr $b29a		; 20 9a b2
B0_2f67:		lda $0a			; a5 0a
B0_2f69:		sta $0d			; 85 0d
B0_2f6b:		lda #$00		; a9 00
B0_2f6d:		sta $0c			; 85 0c
B0_2f6f:		lda $0773		; ad 73 07
B0_2f72:		cmp #$06		; c9 06
B0_2f74:		beq B0_2f92 ; f0 1c
B0_2f76:		lda $071f		; ad 1f 07
B0_2f79:		bne B0_2f8f ; d0 14
B0_2f7b:		lda $073d		; ad 3d 07
B0_2f7e:		cmp #$20		; c9 20
B0_2f80:		bmi B0_2f92 ; 30 10
B0_2f82:		lda $073d		; ad 3d 07
B0_2f85:		sbc #$20		; e9 20
B0_2f87:		sta $073d		; 8d 3d 07
B0_2f8a:		lda #$00		; a9 00
B0_2f8c:		sta $0340		; 8d 40 03
B0_2f8f:		jsr $92b0		; 20 b0 92
B0_2f92:		rts				; 60 
B0_2f93:		lda $06ff		; ad ff 06
B0_2f96:		clc				; 18 
B0_2f97:		adc $03a1		; 6d a1 03
B0_2f9a:		sta $06ff		; 8d ff 06
B0_2f9d:		lda $0723		; ad 23 07
B0_2fa0:		bne B0_2ffb ; d0 59
B0_2fa2:		lda $0755		; ad 55 07
B0_2fa5:		cmp #$50		; c9 50
B0_2fa7:		bcc B0_2ffb ; 90 52
B0_2fa9:		lda $0785		; ad 85 07
B0_2fac:		bne B0_2ffb ; d0 4d
B0_2fae:		ldy $06ff		; ac ff 06
B0_2fb1:		dey				; 88 
B0_2fb2:		bmi B0_2ffb ; 30 47
B0_2fb4:		iny				; c8 
B0_2fb5:		cpy #$02		; c0 02
B0_2fb7:		bcc B0_2fba ; 90 01
B0_2fb9:		dey				; 88 
B0_2fba:		lda $0755		; ad 55 07
B0_2fbd:		cmp #$70		; c9 70
B0_2fbf:		bcc B0_2fc4 ; 90 03
B0_2fc1:		ldy $06ff		; ac ff 06
B0_2fc4:		tya				; 98 
B0_2fc5:		sta $0775		; 8d 75 07
B0_2fc8:		clc				; 18 
B0_2fc9:		adc $073d		; 6d 3d 07
B0_2fcc:		sta $073d		; 8d 3d 07
B0_2fcf:		tya				; 98 
B0_2fd0:		clc				; 18 
B0_2fd1:		adc $071c		; 6d 1c 07
B0_2fd4:		sta $071c		; 8d 1c 07
B0_2fd7:		sta $073f		; 8d 3f 07
B0_2fda:		lda $071a		; ad 1a 07
B0_2fdd:		adc #$00		; 69 00
B0_2fdf:		sta $071a		; 8d 1a 07
B0_2fe2:		and #$01		; 29 01
B0_2fe4:		sta $00			; 85 00
B0_2fe6:		lda $0778		; ad 78 07
B0_2fe9:		and #$fe		; 29 fe
B0_2feb:		ora $00			; 05 00
B0_2fed:		sta $0778		; 8d 78 07
B0_2ff0:		jsr $b038		; 20 38 b0
B0_2ff3:		lda #$08		; a9 08
B0_2ff5:		sta $0795		; 8d 95 07
B0_2ff8:		jmp $b000		; 4c 00 b0
B0_2ffb:		lda #$00		; a9 00
B0_2ffd:		sta $0775		; 8d 75 07
B0_3000:		ldx #$00		; a2 00
B0_3002:		jsr $f1f6		; 20 f6 f1
B0_3005:		sta $00			; 85 00
B0_3007:		ldy #$00		; a0 00
B0_3009:		asl a			; 0a
B0_300a:		bcs B0_3013 ; b0 07
B0_300c:		iny				; c8 
B0_300d:		lda $00			; a5 00
B0_300f:		and #$20		; 29 20
B0_3011:		beq B0_302e ; f0 1b
B0_3013:		lda $071c, y	; b9 1c 07
B0_3016:		sec				; 38 
B0_3017:		sbc $b034, y	; f9 34 b0
B0_301a:		sta $86			; 85 86
B0_301c:		lda $071a, y	; b9 1a 07
B0_301f:		sbc #$00		; e9 00
B0_3021:		sta $6d			; 85 6d
B0_3023:		lda $0c			; a5 0c
B0_3025:		cmp $b036, y	; d9 36 b0
B0_3028:		beq B0_302e ; f0 04
B0_302a:		lda #$00		; a9 00
B0_302c:		sta $57			; 85 57
B0_302e:		lda #$00		; a9 00
B0_3030:		sta $03a1		; 8d a1 03
B0_3033:		rts				; 60 
B0_3034:		brk				; 00
B0_3035:		bpl B0_3038 ; 10 01
B0_3037:	.db $02
B0_3038:		lda $071c		; ad 1c 07
B0_303b:		clc				; 18 
B0_303c:		adc #$ff		; 69 ff
B0_303e:		sta $071d		; 8d 1d 07
B0_3041:		lda $071a		; ad 1a 07
B0_3044:		adc #$00		; 69 00
B0_3046:		sta $071b		; 8d 1b 07
B0_3049:		rts				; 60 
B0_304a:		lda $0e			; a5 0e
B0_304c:		jsr $8e04		; 20 04 8e
B0_304f:		and ($91), y	; 31 91
B0_3051:	.db $c7
B0_3052:		lda ($06), y	; b1 06
B0_3054:	.db $b2
B0_3055:		sbc $b1			; e5 b1
B0_3057:		ldy $b2			; a4 b2
B0_3059:		dex				; ca 
B0_305a:	.db $b2
B0_305b:		cmp $6991		; cd 91 69
B0_305e:		bcs B0_3049 ; b0 e9
B0_3060:		bcs B0_3095 ; b0 33
B0_3062:	.db $b2
B0_3063:		eor $b2			; 45 b2
B0_3065:		adc #$b2		; 69 b2
B0_3067:		adc $adb2, x	; 7d b2 ad
B0_306a:	.db $52
B0_306b:	.db $07
B0_306c:		cmp #$02		; c9 02
B0_306e:		beq B0_309b ; f0 2b
B0_3070:		lda #$00		; a9 00
B0_3072:		ldy $ce			; a4 ce
B0_3074:		cpy #$30		; c0 30
B0_3076:		bcc B0_30e6 ; 90 6e
B0_3078:		lda $0710		; ad 10 07
B0_307b:		cmp #$06		; c9 06
B0_307d:		beq B0_3083 ; f0 04
B0_307f:		cmp #$07		; c9 07
B0_3081:		bne B0_30d3 ; d0 50
B0_3083:		lda $03c4		; ad c4 03
B0_3086:		bne B0_308d ; d0 05
B0_3088:		lda #$01		; a9 01
B0_308a:		jmp $b0e6		; 4c e6 b0
B0_308d:		jsr $b21f		; 20 1f b2
B0_3090:		dec $06de		; ce de 06
B0_3093:		bne B0_30e5 ; d0 50
B0_3095:		inc $0769		; ee 69 07
B0_3098:		jmp $b315		; 4c 15 b3
B0_309b:		lda $0758		; ad 58 07
B0_309e:		bne B0_30ac ; d0 0c
B0_30a0:		lda #$ff		; a9 ff
B0_30a2:		jsr $b200		; 20 00 b2
B0_30a5:		lda $ce			; a5 ce
B0_30a7:		cmp #$91		; c9 91
B0_30a9:		bcc B0_30d3 ; 90 28
B0_30ab:		rts				; 60 
B0_30ac:		lda $0399		; ad 99 03
B0_30af:		cmp #$60		; c9 60
B0_30b1:		bne B0_30e5 ; d0 32
B0_30b3:		lda $ce			; a5 ce
B0_30b5:		cmp #$99		; c9 99
B0_30b7:		ldy #$00		; a0 00
B0_30b9:		lda #$01		; a9 01
B0_30bb:		bcc B0_30c7 ; 90 0a
B0_30bd:		lda #$03		; a9 03
B0_30bf:		sta $1d			; 85 1d
B0_30c1:		iny				; c8 
B0_30c2:		lda #$08		; a9 08
B0_30c4:		sta $05b4		; 8d b4 05
B0_30c7:		sty $0716		; 8c 16 07
B0_30ca:		jsr $b0e6		; 20 e6 b0
B0_30cd:		lda $86			; a5 86
B0_30cf:		cmp #$48		; c9 48
B0_30d1:		bcc B0_30e5 ; 90 12
B0_30d3:		lda #$08		; a9 08
B0_30d5:		sta $0e			; 85 0e
B0_30d7:		lda #$01		; a9 01
B0_30d9:		sta $33			; 85 33
B0_30db:		lsr a			; 4a
B0_30dc:		sta $0752		; 8d 52 07
B0_30df:		sta $0716		; 8d 16 07
B0_30e2:		sta $0758		; 8d 58 07
B0_30e5:		rts				; 60 
B0_30e6:		sta $06fc		; 8d fc 06
B0_30e9:		lda $0e			; a5 0e
B0_30eb:		cmp #$0b		; c9 0b
B0_30ed:		beq B0_312b ; f0 3c
B0_30ef:		lda $074e		; ad 4e 07
B0_30f2:		bne B0_3104 ; d0 10
B0_30f4:		ldy $b5			; a4 b5
B0_30f6:		dey				; 88 
B0_30f7:		bne B0_30ff ; d0 06
B0_30f9:		lda $ce			; a5 ce
B0_30fb:		cmp #$d0		; c9 d0
B0_30fd:		bcc B0_3104 ; 90 05
B0_30ff:		lda #$00		; a9 00
B0_3101:		sta $06fc		; 8d fc 06
B0_3104:		lda $06fc		; ad fc 06
B0_3107:		and #$c0		; 29 c0
B0_3109:		sta $0a			; 85 0a
B0_310b:		lda $06fc		; ad fc 06
B0_310e:		and #$03		; 29 03
B0_3110:		sta $0c			; 85 0c
B0_3112:		lda $06fc		; ad fc 06
B0_3115:		and #$0c		; 29 0c
B0_3117:		sta $0b			; 85 0b
B0_3119:		and #$04		; 29 04
B0_311b:		beq B0_312b ; f0 0e
B0_311d:		lda $1d			; a5 1d
B0_311f:		bne B0_312b ; d0 0a
B0_3121:		ldy $0c			; a4 0c
B0_3123:		beq B0_312b ; f0 06
B0_3125:		lda #$00		; a9 00
B0_3127:		sta $0c			; 85 0c
B0_3129:		sta $0b			; 85 0b
B0_312b:		jsr $b329		; 20 29 b3
B0_312e:		ldy #$01		; a0 01
B0_3130:		lda $0754		; ad 54 07
B0_3133:		bne B0_313e ; d0 09
B0_3135:		ldy #$00		; a0 00
B0_3137:		lda $0714		; ad 14 07
B0_313a:		beq B0_313e ; f0 02
B0_313c:		ldy #$02		; a0 02
B0_313e:		sty $0499		; 8c 99 04
B0_3141:		lda #$01		; a9 01
B0_3143:		ldy $57			; a4 57
B0_3145:		beq B0_314c ; f0 05
B0_3147:		bpl B0_314a ; 10 01
B0_3149:		asl a			; 0a
B0_314a:		sta $45			; 85 45
B0_314c:		jsr $af93		; 20 93 af
B0_314f:		jsr $f180		; 20 80 f1
B0_3152:		jsr $f12a		; 20 2a f1
B0_3155:		ldx #$00		; a2 00
B0_3157:		jsr $e29c		; 20 9c e2
B0_315a:		jsr $dc64		; 20 64 dc
B0_315d:		lda $ce			; a5 ce
B0_315f:		cmp #$40		; c9 40
B0_3161:		bcc B0_3179 ; 90 16
B0_3163:		lda $0e			; a5 0e
B0_3165:		cmp #$05		; c9 05
B0_3167:		beq B0_3179 ; f0 10
B0_3169:		cmp #$07		; c9 07
B0_316b:		beq B0_3179 ; f0 0c
B0_316d:		cmp #$04		; c9 04
B0_316f:		bcc B0_3179 ; 90 08
B0_3171:		lda $03c4		; ad c4 03
B0_3174:		and #$df		; 29 df
B0_3176:		sta $03c4		; 8d c4 03
B0_3179:		lda $b5			; a5 b5
B0_317b:		cmp #$02		; c9 02
B0_317d:		bmi B0_31ba ; 30 3b
B0_317f:		ldx #$01		; a2 01
B0_3181:		stx $0723		; 8e 23 07
B0_3184:		ldy #$04		; a0 04
B0_3186:		sty $07			; 84 07
B0_3188:		ldx #$00		; a2 00
B0_318a:		ldy $0759		; ac 59 07
B0_318d:		bne B0_3194 ; d0 05
B0_318f:		ldy $0743		; ac 43 07
B0_3192:		bne B0_31aa ; d0 16
B0_3194:		inx				; e8 
B0_3195:		ldy $0e			; a4 0e
B0_3197:		cpy #$0b		; c0 0b
B0_3199:		beq B0_31aa ; f0 0f
B0_319b:		ldy $0712		; ac 12 07
B0_319e:		bne B0_31a6 ; d0 06
B0_31a0:		iny				; c8 
B0_31a1:		sty $fc			; 84 fc
B0_31a3:		sty $0712		; 8c 12 07
B0_31a6:		ldy #$06		; a0 06
B0_31a8:		sty $07			; 84 07
B0_31aa:		cmp $07			; c5 07
B0_31ac:		bmi B0_31ba ; 30 0c
B0_31ae:		dex				; ca 
B0_31af:		bmi B0_31bb ; 30 0a
B0_31b1:		ldy $07b1		; ac b1 07
B0_31b4:		bne B0_31ba ; d0 04
B0_31b6:		lda #$06		; a9 06
B0_31b8:		sta $0e			; 85 0e
B0_31ba:		rts				; 60 
B0_31bb:		lda #$00		; a9 00
B0_31bd:		sta $0758		; 8d 58 07
B0_31c0:		jsr $b1dd		; 20 dd b1
B0_31c3:		inc $0752		; ee 52 07
B0_31c6:		rts				; 60 
B0_31c7:		lda $b5			; a5 b5
B0_31c9:		bne B0_31d1 ; d0 06
B0_31cb:		lda $ce			; a5 ce
B0_31cd:		cmp #$e4		; c9 e4
B0_31cf:		bcc B0_31dd ; 90 0c
B0_31d1:		lda #$08		; a9 08
B0_31d3:		sta $0758		; 8d 58 07
B0_31d6:		ldy #$03		; a0 03
B0_31d8:		sty $1d			; 84 1d
B0_31da:		jmp $b0e6		; 4c e6 b0
B0_31dd:		lda #$02		; a9 02
B0_31df:		sta $0752		; 8d 52 07
B0_31e2:		jmp $b213		; 4c 13 b2
B0_31e5:		lda #$01		; a9 01
B0_31e7:		jsr $b200		; 20 00 b2
B0_31ea:		jsr $af93		; 20 93 af
B0_31ed:		ldy #$00		; a0 00
B0_31ef:		lda $06d6		; ad d6 06
B0_31f2:		bne B0_320b ; d0 17
B0_31f4:		iny				; c8 
B0_31f5:		lda $074e		; ad 4e 07
B0_31f8:		cmp #$03		; c9 03
B0_31fa:		bne B0_320b ; d0 0f
B0_31fc:		iny				; c8 
B0_31fd:		jmp $b20b		; 4c 0b b2
B0_3200:		clc				; 18 
B0_3201:		adc $ce			; 65 ce
B0_3203:		sta $ce			; 85 ce
B0_3205:		rts				; 60 
B0_3206:		jsr $b21f		; 20 1f b2
B0_3209:		ldy #$02		; a0 02
B0_320b:		dec $06de		; ce de 06
B0_320e:		bne B0_321e ; d0 0e
B0_3210:		sty $0752		; 8c 52 07
B0_3213:		inc $0774		; ee 74 07
B0_3216:		lda #$00		; a9 00
B0_3218:		sta $0772		; 8d 72 07
B0_321b:		sta $0722		; 8d 22 07
B0_321e:		rts				; 60 
B0_321f:		lda #$08		; a9 08
B0_3221:		sta $57			; 85 57
B0_3223:		ldy #$01		; a0 01
B0_3225:		lda $86			; a5 86
B0_3227:		and #$0f		; 29 0f
B0_3229:		bne B0_322e ; d0 03
B0_322b:		sta $57			; 85 57
B0_322d:		tay				; a8 
B0_322e:		tya				; 98 
B0_322f:		jsr $b0e6		; 20 e6 b0
B0_3232:		rts				; 60 
B0_3233:		lda $0747		; ad 47 07
B0_3236:		cmp #$f8		; c9 f8
B0_3238:		bne B0_323d ; d0 03
B0_323a:		jmp $b255		; 4c 55 b2
B0_323d:		cmp #$c4		; c9 c4
B0_323f:		bne B0_3244 ; d0 03
B0_3241:		jsr $b273		; 20 73 b2
B0_3244:		rts				; 60 
B0_3245:		lda $0747		; ad 47 07
B0_3248:		cmp #$f0		; c9 f0
B0_324a:		bcs B0_3253 ; b0 07
B0_324c:		cmp #$c8		; c9 c8
B0_324e:		beq B0_3273 ; f0 23
B0_3250:		jmp $b0e9		; 4c e9 b0
B0_3253:		bne B0_3268 ; d0 13
B0_3255:		ldy $070b		; ac 0b 07
B0_3258:		bne B0_3268 ; d0 0e
B0_325a:		sty $070d		; 8c 0d 07
B0_325d:		inc $070b		; ee 0b 07
B0_3260:		lda $0754		; ad 54 07
B0_3263:		eor #$01		; 49 01
B0_3265:		sta $0754		; 8d 54 07
B0_3268:		rts				; 60 
B0_3269:		lda $0747		; ad 47 07
B0_326c:		cmp #$f0		; c9 f0
B0_326e:		bcs B0_32a3 ; b0 33
B0_3270:		jmp $b0e9		; 4c e9 b0
B0_3273:		lda #$00		; a9 00
B0_3275:		sta $0747		; 8d 47 07
B0_3278:		lda #$08		; a9 08
B0_327a:		sta $0e			; 85 0e
B0_327c:		rts				; 60 
B0_327d:		lda $0747		; ad 47 07
B0_3280:		cmp #$c0		; c9 c0
B0_3282:		beq B0_3297 ; f0 13
B0_3284:		lda $09			; a5 09
B0_3286:		lsr a			; 4a
B0_3287:		lsr a			; 4a
B0_3288:		and #$03		; 29 03
B0_328a:		sta $00			; 85 00
B0_328c:		lda $03c4		; ad c4 03
B0_328f:		and #$fc		; 29 fc
B0_3291:		ora $00			; 05 00
B0_3293:		sta $03c4		; 8d c4 03
B0_3296:		rts				; 60 
B0_3297:		jsr $b273		; 20 73 b2
B0_329a:		lda $03c4		; ad c4 03
B0_329d:		and #$fc		; 29 fc
B0_329f:		sta $03c4		; 8d c4 03
B0_32a2:		rts				; 60 
B0_32a3:		rts				; 60 
B0_32a4:		lda $1b			; a5 1b
B0_32a6:		cmp #$30		; c9 30
B0_32a8:		bne B0_32bf ; d0 15
B0_32aa:		lda $0713		; ad 13 07
B0_32ad:		sta $ff			; 85 ff
B0_32af:		lda #$00		; a9 00
B0_32b1:		sta $0713		; 8d 13 07
B0_32b4:		ldy $ce			; a4 ce
B0_32b6:		cpy #$9e		; c0 9e
B0_32b8:		bcs B0_32bc ; b0 02
B0_32ba:		lda #$04		; a9 04
B0_32bc:		jmp $b0e6		; 4c e6 b0
B0_32bf:		inc $0e			; e6 0e
B0_32c1:		rts				; 60 
B0_32c2:		ora $23, x		; 15 23
B0_32c4:		asl $1b, x		; 16 1b
B0_32c6:	.db $17
B0_32c7:		clc				; 18 
B0_32c8:	.db $23
B0_32c9:	.db $63
B0_32ca:		lda #$01		; a9 01
B0_32cc:		jsr $b0e6		; 20 e6 b0
B0_32cf:		lda $ce			; a5 ce
B0_32d1:		cmp #$ae		; c9 ae
B0_32d3:		bcc B0_32e3 ; 90 0e
B0_32d5:		lda $0723		; ad 23 07
B0_32d8:		beq B0_32e3 ; f0 09
B0_32da:		lda #$20		; a9 20
B0_32dc:		sta $fc			; 85 fc
B0_32de:		lda #$00		; a9 00
B0_32e0:		sta $0723		; 8d 23 07
B0_32e3:		lda $0490		; ad 90 04
B0_32e6:		lsr a			; 4a
B0_32e7:		bcs B0_32f6 ; b0 0d
B0_32e9:		lda $0746		; ad 46 07
B0_32ec:		bne B0_32f1 ; d0 03
B0_32ee:		inc $0746		; ee 46 07
B0_32f1:		lda #$20		; a9 20
B0_32f3:		sta $03c4		; 8d c4 03
B0_32f6:		lda $0746		; ad 46 07
B0_32f9:		cmp #$05		; c9 05
B0_32fb:		bne B0_3328 ; d0 2b
B0_32fd:		inc $075c		; ee 5c 07
B0_3300:		lda $075c		; ad 5c 07
B0_3303:		cmp #$03		; c9 03
B0_3305:		bne B0_3315 ; d0 0e
B0_3307:		ldy $075f		; ac 5f 07
B0_330a:		lda $0748		; ad 48 07
B0_330d:		cmp $b2c2, y	; d9 c2 b2
B0_3310:		bcc B0_3315 ; 90 03
B0_3312:		inc $075d		; ee 5d 07
B0_3315:		inc $0760		; ee 60 07
B0_3318:		jsr $9c03		; 20 03 9c
B0_331b:		inc $0757		; ee 57 07
B0_331e:		jsr $b213		; 20 13 b2
B0_3321:		sta $075b		; 8d 5b 07
B0_3324:		lda #$80		; a9 80
B0_3326:		sta $fc			; 85 fc
B0_3328:		rts				; 60 
B0_3329:		lda #$00		; a9 00
B0_332b:		ldy $0754		; ac 54 07
B0_332e:		bne B0_3338 ; d0 08
B0_3330:		lda $1d			; a5 1d
B0_3332:		bne B0_333b ; d0 07
B0_3334:		lda $0b			; a5 0b
B0_3336:		and #$04		; 29 04
B0_3338:		sta $0714		; 8d 14 07
B0_333b:		jsr $b450		; 20 50 b4
B0_333e:		lda $070b		; ad 0b 07
B0_3341:		bne B0_3359 ; d0 16
B0_3343:		lda $1d			; a5 1d
B0_3345:		cmp #$03		; c9 03
B0_3347:		beq B0_334e ; f0 05
B0_3349:		ldy #$18		; a0 18
B0_334b:		sty $0789		; 8c 89 07
B0_334e:		jsr $8e04		; 20 04 8e
B0_3351:	.db $5a
B0_3352:	.db $b3
B0_3353:		ror $b3, x		; 76 b3
B0_3355:		adc $cfb3		; 6d b3 cf
B0_3358:	.db $b3
B0_3359:		rts				; 60 
B0_335a:		jsr $b58f		; 20 8f b5
B0_335d:		lda $0c			; a5 0c
B0_335f:		beq B0_3363 ; f0 02
B0_3361:		sta $33			; 85 33
B0_3363:		jsr $b5cc		; 20 cc b5
B0_3366:		jsr $bf09		; 20 09 bf
B0_3369:		sta $06ff		; 8d ff 06
B0_336c:		rts				; 60 
B0_336d:		lda $070a		; ad 0a 07
B0_3370:		sta $0709		; 8d 09 07
B0_3373:		jmp $b3ac		; 4c ac b3
B0_3376:		ldy $9f			; a4 9f
B0_3378:		bpl B0_338d ; 10 13
B0_337a:		lda $0a			; a5 0a
B0_337c:		and #$80		; 29 80
B0_337e:		and $0d			; 25 0d
B0_3380:		bne B0_3393 ; d0 11
B0_3382:		lda $0708		; ad 08 07
B0_3385:		sec				; 38 
B0_3386:		sbc $ce			; e5 ce
B0_3388:		cmp $0706		; cd 06 07
B0_338b:		bcc B0_3393 ; 90 06
B0_338d:		lda $070a		; ad 0a 07
B0_3390:		sta $0709		; 8d 09 07
B0_3393:		lda $0704		; ad 04 07
B0_3396:		beq B0_33ac ; f0 14
B0_3398:		jsr $b58f		; 20 8f b5
B0_339b:		lda $ce			; a5 ce
B0_339d:		cmp #$14		; c9 14
B0_339f:		bcs B0_33a6 ; b0 05
B0_33a1:		lda #$18		; a9 18
B0_33a3:		sta $0709		; 8d 09 07
B0_33a6:		lda $0c			; a5 0c
B0_33a8:		beq B0_33ac ; f0 02
B0_33aa:		sta $33			; 85 33
B0_33ac:		lda $0c			; a5 0c
B0_33ae:		beq B0_33b3 ; f0 03
B0_33b0:		jsr $b5cc		; 20 cc b5
B0_33b3:		jsr $bf09		; 20 09 bf
B0_33b6:		sta $06ff		; 8d ff 06
B0_33b9:		lda $0e			; a5 0e
B0_33bb:		cmp #$0b		; c9 0b
B0_33bd:		bne B0_33c4 ; d0 05
B0_33bf:		lda #$28		; a9 28
B0_33c1:		sta $0709		; 8d 09 07
B0_33c4:		jmp $bf4d		; 4c 4d bf
B0_33c7:		asl $fc04		; 0e 04 fc
B0_33ca:	.db $f2
B0_33cb:		brk				; 00
B0_33cc:		brk				; 00
B0_33cd:	.db $ff
B0_33ce:	.db $ff
B0_33cf:		lda $0416		; ad 16 04
B0_33d2:		clc				; 18 
B0_33d3:		adc $0433		; 6d 33 04
B0_33d6:		sta $0416		; 8d 16 04
B0_33d9:		ldy #$00		; a0 00
B0_33db:		lda $9f			; a5 9f
B0_33dd:		bpl B0_33e0 ; 10 01
B0_33df:		dey				; 88 
B0_33e0:		sty $00			; 84 00
B0_33e2:		adc $ce			; 65 ce
B0_33e4:		sta $ce			; 85 ce
B0_33e6:		lda $b5			; a5 b5
B0_33e8:		adc $00			; 65 00
B0_33ea:		sta $b5			; 85 b5
B0_33ec:		lda $0c			; a5 0c
B0_33ee:		and $0490		; 2d 90 04
B0_33f1:		beq B0_3420 ; f0 2d
B0_33f3:		ldy $0789		; ac 89 07
B0_33f6:		bne B0_341f ; d0 27
B0_33f8:		ldy #$18		; a0 18
B0_33fa:		sty $0789		; 8c 89 07
B0_33fd:		ldx #$00		; a2 00
B0_33ff:		ldy $33			; a4 33
B0_3401:		lsr a			; 4a
B0_3402:		bcs B0_3406 ; b0 02
B0_3404:		inx				; e8 
B0_3405:		inx				; e8 
B0_3406:		dey				; 88 
B0_3407:		beq B0_340a ; f0 01
B0_3409:		inx				; e8 
B0_340a:		lda $86			; a5 86
B0_340c:		clc				; 18 
B0_340d:		adc $b3c7, x	; 7d c7 b3
B0_3410:		sta $86			; 85 86
B0_3412:		lda $6d			; a5 6d
B0_3414:		adc $b3cb, x	; 7d cb b3
B0_3417:		sta $6d			; 85 6d
B0_3419:		lda $0c			; a5 0c
B0_341b:		eor #$03		; 49 03
B0_341d:		sta $33			; 85 33
B0_341f:		rts				; 60 
B0_3420:		sta $0789		; 8d 89 07
B0_3423:		rts				; 60 
B0_3424:		jsr $1e20		; 20 20 1e
B0_3427:		plp				; 28 
B0_3428:		plp				; 28 
B0_3429:		ora $7004		; 0d 04 70
B0_342c:		;removed
	.hex  70 60
B0_342e:		;removed
	.hex  90 90
B0_3430:		asl a			; 0a
B0_3431:		ora #$fc		; 09 fc
B0_3433:	.db $fc
B0_3434:	.db $fc
B0_3435:	.db $fb
B0_3436:	.db $fb
B0_3437:	.hex fe ff 00
B0_343a:		brk				; 00
B0_343b:		brk				; 00
B0_343c:		brk				; 00
B0_343d:		brk				; 00
B0_343e:	.db $80
B0_343f:		brk				; 00
B0_3440:		cld				; b8 
B0_3441:		inx				; e8 
B0_3442:		;removed
	.hex  f0 28
B0_3444:		clc				; 18 
B0_3445:		;removed
	.hex  10 0c
B0_3447:		cpx $98			; e4 98
B0_3449:		bne B0_344b ; d0 00
B0_344b:	.db $ff
B0_344c:		ora ($00, x)	; 01 00
B0_344e:		jsr $a5ff		; 20 ff a5
B0_3451:		ora $03c9, x	; 1d c9 03
B0_3454:		bne B0_3479 ; d0 23
B0_3456:		ldy #$00		; a0 00
B0_3458:		lda $0b			; a5 0b
B0_345a:		and $0490		; 2d 90 04
B0_345d:		beq B0_3465 ; f0 06
B0_345f:		iny				; c8 
B0_3460:		and #$08		; 29 08
B0_3462:		bne B0_3465 ; d0 01
B0_3464:		iny				; c8 
B0_3465:		ldx $b44d, y	; be 4d b4
B0_3468:		stx $0433		; 8e 33 04
B0_346b:		lda #$08		; a9 08
B0_346d:		ldx $b44a, y	; be 4a b4
B0_3470:		stx $9f			; 86 9f
B0_3472:		bmi B0_3475 ; 30 01
B0_3474:		lsr a			; 4a
B0_3475:		sta $070c		; 8d 0c 07
B0_3478:		rts				; 60 
B0_3479:		lda $070e		; ad 0e 07
B0_347c:		bne B0_3488 ; d0 0a
B0_347e:		lda $0a			; a5 0a
B0_3480:		and #$80		; 29 80
B0_3482:		beq B0_3488 ; f0 04
B0_3484:		and $0d			; 25 0d
B0_3486:		beq B0_348b ; f0 03
B0_3488:		jmp $b51c		; 4c 1c b5
B0_348b:		lda $1d			; a5 1d
B0_348d:		beq B0_34a0 ; f0 11
B0_348f:		lda $0704		; ad 04 07
B0_3492:		beq B0_3488 ; f0 f4
B0_3494:		lda $0782		; ad 82 07
B0_3497:		bne B0_34a0 ; d0 07
B0_3499:		lda $9f			; a5 9f
B0_349b:		bpl B0_34a0 ; 10 03
B0_349d:		jmp $b51c		; 4c 1c b5
B0_34a0:		lda #$20		; a9 20
B0_34a2:		sta $0782		; 8d 82 07
B0_34a5:		ldy #$00		; a0 00
B0_34a7:		sty $0416		; 8c 16 04
B0_34aa:		sty $0433		; 8c 33 04
B0_34ad:		lda $b5			; a5 b5
B0_34af:		sta $0707		; 8d 07 07
B0_34b2:		lda $ce			; a5 ce
B0_34b4:		sta $0708		; 8d 08 07
B0_34b7:		lda #$01		; a9 01
B0_34b9:		sta $1d			; 85 1d
B0_34bb:		lda $0700		; ad 00 07
B0_34be:		cmp #$09		; c9 09
B0_34c0:		bcc B0_34d2 ; 90 10
B0_34c2:		iny				; c8 
B0_34c3:		cmp #$10		; c9 10
B0_34c5:		bcc B0_34d2 ; 90 0b
B0_34c7:		iny				; c8 
B0_34c8:		cmp #$19		; c9 19
B0_34ca:		bcc B0_34d2 ; 90 06
B0_34cc:		iny				; c8 
B0_34cd:		cmp #$1c		; c9 1c
B0_34cf:		bcc B0_34d2 ; 90 01
B0_34d1:		iny				; c8 
B0_34d2:		lda #$01		; a9 01
B0_34d4:		sta $0706		; 8d 06 07
B0_34d7:		lda $0704		; ad 04 07
B0_34da:		beq B0_34e4 ; f0 08
B0_34dc:		ldy #$05		; a0 05
B0_34de:		lda $047d		; ad 7d 04
B0_34e1:		beq B0_34e4 ; f0 01
B0_34e3:		iny				; c8 
B0_34e4:		lda $b424, y	; b9 24 b4
B0_34e7:		sta $0709		; 8d 09 07
B0_34ea:		lda $b42b, y	; b9 2b b4
B0_34ed:		sta $070a		; 8d 0a 07
B0_34f0:		lda $b439, y	; b9 39 b4
B0_34f3:		sta $0433		; 8d 33 04
B0_34f6:		lda $b432, y	; b9 32 b4
B0_34f9:		sta $9f			; 85 9f
B0_34fb:		lda $0704		; ad 04 07
B0_34fe:		beq B0_3511 ; f0 11
B0_3500:		lda #$04		; a9 04
B0_3502:		sta $ff			; 85 ff
B0_3504:		lda $ce			; a5 ce
B0_3506:		cmp #$14		; c9 14
B0_3508:		bcs B0_351c ; b0 12
B0_350a:		lda #$00		; a9 00
B0_350c:		sta $9f			; 85 9f
B0_350e:		jmp $b51c		; 4c 1c b5
B0_3511:		lda #$01		; a9 01
B0_3513:		ldy $0754		; ac 54 07
B0_3516:		beq B0_351a ; f0 02
B0_3518:		lda #$80		; a9 80
B0_351a:		sta $ff			; 85 ff
B0_351c:		ldy #$00		; a0 00
B0_351e:		sty $00			; 84 00
B0_3520:		lda $1d			; a5 1d
B0_3522:		beq B0_352d ; f0 09
B0_3524:		lda $0700		; ad 00 07
B0_3527:		cmp #$19		; c9 19
B0_3529:		bcs B0_355e ; b0 33
B0_352b:		bcc B0_3545 ; 90 18
B0_352d:		iny				; c8 
B0_352e:		lda $074e		; ad 4e 07
B0_3531:		beq B0_3545 ; f0 12
B0_3533:		dey				; 88 
B0_3534:		lda $0c			; a5 0c
B0_3536:		cmp $45			; c5 45
B0_3538:		bne B0_3545 ; d0 0b
B0_353a:		lda $0a			; a5 0a
B0_353c:		and #$40		; 29 40
B0_353e:		bne B0_3559 ; d0 19
B0_3540:		lda $0783		; ad 83 07
B0_3543:		bne B0_355e ; d0 19
B0_3545:		iny				; c8 
B0_3546:		inc $00			; e6 00
B0_3548:		lda $0703		; ad 03 07
B0_354b:		bne B0_3554 ; d0 07
B0_354d:		lda $0700		; ad 00 07
B0_3550:		cmp #$21		; c9 21
B0_3552:		bcc B0_355e ; 90 0a
B0_3554:		inc $00			; e6 00
B0_3556:		jmp $b55e		; 4c 5e b5
B0_3559:		lda #$0a		; a9 0a
B0_355b:		sta $0783		; 8d 83 07
B0_355e:		lda $b440, y	; b9 40 b4
B0_3561:		sta $0450		; 8d 50 04
B0_3564:		lda $0e			; a5 0e
B0_3566:		cmp #$07		; c9 07
B0_3568:		bne B0_356c ; d0 02
B0_356a:		ldy #$03		; a0 03
B0_356c:		lda $b443, y	; b9 43 b4
B0_356f:		sta $0456		; 8d 56 04
B0_3572:		ldy $00			; a4 00
B0_3574:		lda $b447, y	; b9 47 b4
B0_3577:		sta $0702		; 8d 02 07
B0_357a:		lda #$00		; a9 00
B0_357c:		sta $0701		; 8d 01 07
B0_357f:		lda $33			; a5 33
B0_3581:		cmp $45			; c5 45
B0_3583:		beq B0_358b ; f0 06
B0_3585:		asl $0702		; 0e 02 07
B0_3588:		rol $0701		; 2e 01 07
B0_358b:		rts				; 60 
B0_358c:	.db $02
B0_358d:	.db $04
B0_358e:	.db $07
B0_358f:		ldy #$00		; a0 00
B0_3591:		lda $0700		; ad 00 07
B0_3594:		cmp #$1c		; c9 1c
B0_3596:		bcs B0_35ad ; b0 15
B0_3598:		iny				; c8 
B0_3599:		cmp #$0e		; c9 0e
B0_359b:		bcs B0_359e ; b0 01
B0_359d:		iny				; c8 
B0_359e:		lda $06fc		; ad fc 06
B0_35a1:		and #$7f		; 29 7f
B0_35a3:		beq B0_35c5 ; f0 20
B0_35a5:		and #$03		; 29 03
B0_35a7:		cmp $45			; c5 45
B0_35a9:		bne B0_35b3 ; d0 08
B0_35ab:		lda #$00		; a9 00
B0_35ad:		sta $0703		; 8d 03 07
B0_35b0:		jmp $b5c5		; 4c c5 b5
B0_35b3:		lda $0700		; ad 00 07
B0_35b6:		cmp #$0b		; c9 0b
B0_35b8:		bcs B0_35c5 ; b0 0b
B0_35ba:		lda $33			; a5 33
B0_35bc:		sta $45			; 85 45
B0_35be:		lda #$00		; a9 00
B0_35c0:		sta $57			; 85 57
B0_35c2:		sta $0705		; 8d 05 07
B0_35c5:		lda $b58c, y	; b9 8c b5
B0_35c8:		sta $070c		; 8d 0c 07
B0_35cb:		rts				; 60 
B0_35cc:		and $0490		; 2d 90 04
B0_35cf:		cmp #$00		; c9 00
B0_35d1:		bne B0_35db ; d0 08
B0_35d3:		lda $57			; a5 57
B0_35d5:		beq B0_3620 ; f0 49
B0_35d7:		bpl B0_35fc ; 10 23
B0_35d9:		bmi B0_35de ; 30 03
B0_35db:		lsr a			; 4a
B0_35dc:		bcc B0_35fc ; 90 1e
B0_35de:		lda $0705		; ad 05 07
B0_35e1:		clc				; 18 
B0_35e2:		adc $0702		; 6d 02 07
B0_35e5:		sta $0705		; 8d 05 07
B0_35e8:		lda $57			; a5 57
B0_35ea:		adc $0701		; 6d 01 07
B0_35ed:		sta $57			; 85 57
B0_35ef:		cmp $0456		; cd 56 04
B0_35f2:		bmi B0_3617 ; 30 23
B0_35f4:		lda $0456		; ad 56 04
B0_35f7:		sta $57			; 85 57
B0_35f9:		jmp $b620		; 4c 20 b6
B0_35fc:		lda $0705		; ad 05 07
B0_35ff:		sec				; 38 
B0_3600:		sbc $0702		; ed02 07
B0_3603:		sta $0705		; 8d 05 07
B0_3606:		lda $57			; a5 57
B0_3608:		sbc $0701		; ed01 07
B0_360b:		sta $57			; 85 57
B0_360d:		cmp $0450		; cd 50 04
B0_3610:		bpl B0_3617 ; 10 05
B0_3612:		lda $0450		; ad 50 04
B0_3615:		sta $57			; 85 57
B0_3617:		cmp #$00		; c9 00
B0_3619:		bpl B0_3620 ; 10 05
B0_361b:		eor #$ff		; 49 ff
B0_361d:		clc				; 18 
B0_361e:		adc #$01		; 69 01
B0_3620:		sta $0700		; 8d 00 07
B0_3623:		rts				; 60 
B0_3624:		lda $0756		; ad 56 07
B0_3627:		cmp #$02		; c9 02
B0_3629:		bcc B0_366e ; 90 43
B0_362b:		lda $0a			; a5 0a
B0_362d:		and #$40		; 29 40
B0_362f:		beq B0_3664 ; f0 33
B0_3631:		and $0d			; 25 0d
B0_3633:		bne B0_3664 ; d0 2f
B0_3635:		lda $06ce		; ad ce 06
B0_3638:		and #$01		; 29 01
B0_363a:		tax				; aa 
B0_363b:		lda $24, x		; b5 24
B0_363d:		bne B0_3664 ; d0 25
B0_363f:		ldy $b5			; a4 b5
B0_3641:		dey				; 88 
B0_3642:		bne B0_3664 ; d0 20
B0_3644:		lda $0714		; ad 14 07
B0_3647:		bne B0_3664 ; d0 1b
B0_3649:		lda $1d			; a5 1d
B0_364b:		cmp #$03		; c9 03
B0_364d:		beq B0_3664 ; f0 15
B0_364f:		lda #$20		; a9 20
B0_3651:		sta $ff			; 85 ff
B0_3653:		lda #$02		; a9 02
B0_3655:		sta $24, x		; 95 24
B0_3657:		ldy $070c		; ac 0c 07
B0_365a:		sty $0711		; 8c 11 07
B0_365d:		dey				; 88 
B0_365e:		sty $0781		; 8c 81 07
B0_3661:		inc $06ce		; ee ce 06
B0_3664:		ldx #$00		; a2 00
B0_3666:		jsr $b689		; 20 89 b6
B0_3669:		ldx #$01		; a2 01
B0_366b:		jsr $b689		; 20 89 b6
B0_366e:		lda $074e		; ad 4e 07
B0_3671:		bne B0_3686 ; d0 13
B0_3673:		ldx #$02		; a2 02
B0_3675:		stx $08			; 86 08
B0_3677:		jsr $b6f9		; 20 f9 b6
B0_367a:		jsr $f131		; 20 31 f1
B0_367d:		jsr $f191		; 20 91 f1
B0_3680:		jsr $ede1		; 20 e1 ed
B0_3683:		dex				; ca 
B0_3684:		bpl B0_3675 ; 10 ef
B0_3686:		rts				; 60 
B0_3687:		rti				; 40 
B0_3688:		cpy #$86		; c0 86
B0_368a:		php				; 08 
B0_368b:		lda $24, x		; b5 24
B0_368d:		asl a			; 0a
B0_368e:		bcs B0_36f3 ; b0 63
B0_3690:		ldy $24, x		; b4 24
B0_3692:		beq B0_36f2 ; f0 5e
B0_3694:		dey				; 88 
B0_3695:		beq B0_36be ; f0 27
B0_3697:		lda $86			; a5 86
B0_3699:		adc #$04		; 69 04
B0_369b:		sta $8d, x		; 95 8d
B0_369d:		lda $6d			; a5 6d
B0_369f:		adc #$00		; 69 00
B0_36a1:		sta $74, x		; 95 74
B0_36a3:		lda $ce			; a5 ce
B0_36a5:		sta $d5, x		; 95 d5
B0_36a7:		lda #$01		; a9 01
B0_36a9:		sta $bc, x		; 95 bc
B0_36ab:		ldy $33			; a4 33
B0_36ad:		dey				; 88 
B0_36ae:		lda $b687, y	; b9 87 b6
B0_36b1:		sta $5e, x		; 95 5e
B0_36b3:		lda #$04		; a9 04
B0_36b5:		sta $a6, x		; 95 a6
B0_36b7:		lda #$07		; a9 07
B0_36b9:		sta $04a0, x	; 9d a0 04
B0_36bc:		dec $24, x		; d6 24
B0_36be:		txa				; 8a 
B0_36bf:		clc				; 18 
B0_36c0:		adc #$07		; 69 07
B0_36c2:		tax				; aa 
B0_36c3:		lda #$50		; a9 50
B0_36c5:		sta $00			; 85 00
B0_36c7:		lda #$03		; a9 03
B0_36c9:		sta $02			; 85 02
B0_36cb:		lda #$00		; a9 00
B0_36cd:		jsr $bfd7		; 20 d7 bf
B0_36d0:		jsr $bf0f		; 20 0f bf
B0_36d3:		ldx $08			; a6 08
B0_36d5:		jsr $f13b		; 20 3b f1
B0_36d8:		jsr $f187		; 20 87 f1
B0_36db:		jsr $e22d		; 20 2d e2
B0_36de:		jsr $e1c8		; 20 c8 e1
B0_36e1:		lda $03d2		; ad d2 03
B0_36e4:		and #$cc		; 29 cc
B0_36e6:		bne B0_36ee ; d0 06
B0_36e8:		jsr $d6d9		; 20 d9 d6
B0_36eb:		jmp $ecde		; 4c de ec
B0_36ee:		lda #$00		; a9 00
B0_36f0:		sta $24, x		; 95 24
B0_36f2:		rts				; 60 
B0_36f3:		jsr $f13b		; 20 3b f1
B0_36f6:		jmp $ed09		; 4c 09 ed
B0_36f9:		lda $07a8, x	; bd a8 07
B0_36fc:		and #$01		; 29 01
B0_36fe:		sta $07			; 85 07
B0_3700:		lda $e4, x		; b5 e4
B0_3702:		cmp #$f8		; c9 f8
B0_3704:		bne B0_3732 ; d0 2c
B0_3706:		lda $0792		; ad 92 07
B0_3709:		bne B0_374a ; d0 3f
B0_370b:		ldy #$00		; a0 00
B0_370d:		lda $33			; a5 33
B0_370f:		lsr a			; 4a
B0_3710:		bcc B0_3714 ; 90 02
B0_3712:		ldy #$08		; a0 08
B0_3714:		tya				; 98 
B0_3715:		adc $86			; 65 86
B0_3717:		sta $9c, x		; 95 9c
B0_3719:		lda $6d			; a5 6d
B0_371b:		adc #$00		; 69 00
B0_371d:		sta $83, x		; 95 83
B0_371f:		lda $ce			; a5 ce
B0_3721:		clc				; 18 
B0_3722:		adc #$08		; 69 08
B0_3724:		sta $e4, x		; 95 e4
B0_3726:		lda #$01		; a9 01
B0_3728:		sta $cb, x		; 95 cb
B0_372a:		ldy $07			; a4 07
B0_372c:		lda $b74d, y	; b9 4d b7
B0_372f:		sta $0792		; 8d 92 07
B0_3732:		ldy $07			; a4 07
B0_3734:		lda $042c, x	; bd 2c 04
B0_3737:		sec				; 38 
B0_3738:		sbc $b74b, y	; f9 4b b7
B0_373b:		sta $042c, x	; 9d 2c 04
B0_373e:		lda $e4, x		; b5 e4
B0_3740:		sbc #$00		; e9 00
B0_3742:		cmp #$20		; c9 20
B0_3744:		bcs B0_3748 ; b0 02
B0_3746:		lda #$f8		; a9 f8
B0_3748:		sta $e4, x		; 95 e4
B0_374a:		rts				; 60 
B0_374b:	.db $ff
B0_374c:		;removed
	.hex  50 40
B0_374e:		jsr $70ad		; 20 ad 70
B0_3751:	.db $07
B0_3752:		beq B0_37a3 ; f0 4f
B0_3754:		lda $0e			; a5 0e
B0_3756:		cmp #$08		; c9 08
B0_3758:		bcc B0_37a3 ; 90 49
B0_375a:		cmp #$0b		; c9 0b
B0_375c:		beq B0_37a3 ; f0 45
B0_375e:		lda $b5			; a5 b5
B0_3760:		cmp #$02		; c9 02
B0_3762:		bcs B0_37a3 ; b0 3f
B0_3764:		lda $0787		; ad 87 07
B0_3767:		bne B0_37a3 ; d0 3a
B0_3769:		lda $07f8		; ad f8 07
B0_376c:		ora $07f9		; 0d f9 07
B0_376f:		ora $07fa		; 0d fa 07
B0_3772:		beq B0_379a ; f0 26
B0_3774:		ldy $07f8		; ac f8 07
B0_3777:		dey				; 88 
B0_3778:		bne B0_3786 ; d0 0c
B0_377a:		lda $07f9		; ad f9 07
B0_377d:		ora $07fa		; 0d fa 07
B0_3780:		bne B0_3786 ; d0 04
B0_3782:		lda #$40		; a9 40
B0_3784:		sta $fc			; 85 fc
B0_3786:		lda #$18		; a9 18
B0_3788:		sta $0787		; 8d 87 07
B0_378b:		ldy #$23		; a0 23
B0_378d:		lda #$ff		; a9 ff
B0_378f:		sta $0139		; 8d 39 01
B0_3792:		jsr $8f5f		; 20 5f 8f
B0_3795:		lda #$a4		; a9 a4
B0_3797:		jmp $8f06		; 4c 06 8f
B0_379a:		sta $0756		; 8d 56 07
B0_379d:		jsr $d931		; 20 31 d9
B0_37a0:		inc $0759		; ee 59 07
B0_37a3:		rts				; 60 
B0_37a4:		lda $0723		; ad 23 07
B0_37a7:		beq B0_37a3 ; f0 fa
B0_37a9:		lda $ce			; a5 ce
B0_37ab:		and $b5			; 25 b5
B0_37ad:		bne B0_37a3 ; d0 f4
B0_37af:		sta $0723		; 8d 23 07
B0_37b2:		inc $06d6		; ee d6 06
B0_37b5:		jmp $c998		; 4c 98 c9
B0_37b8:		lda $074e		; ad 4e 07
B0_37bb:		bne B0_37f4 ; d0 37
B0_37bd:		sta $047d		; 8d 7d 04
B0_37c0:		lda $0747		; ad 47 07
B0_37c3:		bne B0_37f4 ; d0 2f
B0_37c5:		ldy #$04		; a0 04
B0_37c7:		lda $0471, y	; b9 71 04
B0_37ca:		clc				; 18 
B0_37cb:		adc $0477, y	; 79 77 04
B0_37ce:		sta $02			; 85 02
B0_37d0:		lda $046b, y	; b9 6b 04
B0_37d3:		beq B0_37f1 ; f0 1c
B0_37d5:		adc #$00		; 69 00
B0_37d7:		sta $01			; 85 01
B0_37d9:		lda $86			; a5 86
B0_37db:		sec				; 38 
B0_37dc:		sbc $0471, y	; f9 71 04
B0_37df:		lda $6d			; a5 6d
B0_37e1:		sbc $046b, y	; f9 6b 04
B0_37e4:		bmi B0_37f1 ; 30 0b
B0_37e6:		lda $02			; a5 02
B0_37e8:		sec				; 38 
B0_37e9:		sbc $86			; e5 86
B0_37eb:		lda $01			; a5 01
B0_37ed:		sbc $6d			; e5 6d
B0_37ef:		bpl B0_37f5 ; 10 04
B0_37f1:		dey				; 88 
B0_37f2:		bpl B0_37c7 ; 10 d3
B0_37f4:		rts				; 60 
B0_37f5:		lda $0477, y	; b9 77 04
B0_37f8:		lsr a			; 4a
B0_37f9:		sta $00			; 85 00
B0_37fb:		lda $0471, y	; b9 71 04
B0_37fe:		clc				; 18 
B0_37ff:		adc $00			; 65 00
B0_3801:		sta $01			; 85 01
B0_3803:		lda $046b, y	; b9 6b 04
B0_3806:		adc #$00		; 69 00
B0_3808:		sta $00			; 85 00
B0_380a:		lda $09			; a5 09
B0_380c:		lsr a			; 4a
B0_380d:		bcc B0_383b ; 90 2c
B0_380f:		lda $01			; a5 01
B0_3811:		sec				; 38 
B0_3812:		sbc $86			; e5 86
B0_3814:		lda $00			; a5 00
B0_3816:		sbc $6d			; e5 6d
B0_3818:		bpl B0_3828 ; 10 0e
B0_381a:		lda $86			; a5 86
B0_381c:		sec				; 38 
B0_381d:		sbc #$01		; e9 01
B0_381f:		sta $86			; 85 86
B0_3821:		lda $6d			; a5 6d
B0_3823:		sbc #$00		; e9 00
B0_3825:		jmp $b839		; 4c 39 b8
B0_3828:		lda $0490		; ad 90 04
B0_382b:		lsr a			; 4a
B0_382c:		bcc B0_383b ; 90 0d
B0_382e:		lda $86			; a5 86
B0_3830:		clc				; 18 
B0_3831:		adc #$01		; 69 01
B0_3833:		sta $86			; 85 86
B0_3835:		lda $6d			; a5 6d
B0_3837:		adc #$00		; 69 00
B0_3839:		sta $6d			; 85 6d
B0_383b:		lda #$10		; a9 10
B0_383d:		sta $00			; 85 00
B0_383f:		lda #$01		; a9 01
B0_3841:		sta $047d		; 8d 7d 04
B0_3844:		sta $02			; 85 02
B0_3846:		lsr a			; 4a
B0_3847:		tax				; aa 
B0_3848:		jmp $bfd7		; 4c d7 bf
B0_384b:		ora $02			; 05 02
B0_384d:		php				; 08 
B0_384e:	.db $04
B0_384f:		ora ($03, x)	; 01 03
B0_3851:	.db $03
B0_3852:	.db $04
B0_3853:	.db $04
B0_3854:	.db $04
B0_3855:		ldx #$05		; a2 05
B0_3857:		stx $08			; 86 08
B0_3859:		lda $16, x		; b5 16
B0_385b:		cmp #$30		; c9 30
B0_385d:		bne B0_38b5 ; d0 56
B0_385f:		lda $0e			; a5 0e
B0_3861:		cmp #$04		; c9 04
B0_3863:		bne B0_3896 ; d0 31
B0_3865:		lda $1d			; a5 1d
B0_3867:		cmp #$03		; c9 03
B0_3869:		bne B0_3896 ; d0 2b
B0_386b:		lda $cf, x		; b5 cf
B0_386d:		cmp #$aa		; c9 aa
B0_386f:		bcs B0_3899 ; b0 28
B0_3871:		lda $ce			; a5 ce
B0_3873:		cmp #$a2		; c9 a2
B0_3875:		bcs B0_3899 ; b0 22
B0_3877:		lda $0417, x	; bd 17 04
B0_387a:		adc #$ff		; 69 ff
B0_387c:		sta $0417, x	; 9d 17 04
B0_387f:		lda $cf, x		; b5 cf
B0_3881:		adc #$01		; 69 01
B0_3883:		sta $cf, x		; 95 cf
B0_3885:		lda $010e		; ad 0e 01
B0_3888:		sec				; 38 
B0_3889:		sbc #$ff		; e9 ff
B0_388b:		sta $010e		; 8d 0e 01
B0_388e:		lda $010d		; ad 0d 01
B0_3891:		sbc #$01		; e9 01
B0_3893:		sta $010d		; 8d 0d 01
B0_3896:		jmp $b8ac		; 4c ac b8
B0_3899:		ldy $010f		; ac 0f 01
B0_389c:		lda $b84b, y	; b9 4b b8
B0_389f:		ldx $b850, y	; be 50 b8
B0_38a2:		sta $0134, x	; 9d 34 01
B0_38a5:		jsr $bc27		; 20 27 bc
B0_38a8:		lda #$05		; a9 05
B0_38aa:		sta $0e			; 85 0e
B0_38ac:		jsr $f1af		; 20 af f1
B0_38af:		jsr $f152		; 20 52 f1
B0_38b2:		jsr $e54b		; 20 4b e5
B0_38b5:		rts				; 60 
B0_38b6:		php				; 08 
B0_38b7:		;removed
	.hex  10 08
B0_38b9:		brk				; 00
B0_38ba:		jsr $f1af		; 20 af f1
B0_38bd:		lda $0747		; ad 47 07
B0_38c0:		bne B0_3902 ; d0 40
B0_38c2:		lda $070e		; ad 0e 07
B0_38c5:		beq B0_3902 ; f0 3b
B0_38c7:		tay				; a8 
B0_38c8:		dey				; 88 
B0_38c9:		tya				; 98 
B0_38ca:		and #$02		; 29 02
B0_38cc:		bne B0_38d5 ; d0 07
B0_38ce:		inc $ce			; e6 ce
B0_38d0:		inc $ce			; e6 ce
B0_38d2:		jmp $b8d9		; 4c d9 b8
B0_38d5:		dec $ce			; c6 ce
B0_38d7:		dec $ce			; c6 ce
B0_38d9:		lda $58, x		; b5 58
B0_38db:		clc				; 18 
B0_38dc:		adc $b8b6, y	; 79 b6 b8
B0_38df:		sta $cf, x		; 95 cf
B0_38e1:		cpy #$01		; c0 01
B0_38e3:		bcc B0_38f4 ; 90 0f
B0_38e5:		lda $0a			; a5 0a
B0_38e7:		and #$80		; 29 80
B0_38e9:		beq B0_38f4 ; f0 09
B0_38eb:		and $0d			; 25 0d
B0_38ed:		bne B0_38f4 ; d0 05
B0_38ef:		lda #$f4		; a9 f4
B0_38f1:		sta $06db		; 8d db 06
B0_38f4:		cpy #$03		; c0 03
B0_38f6:		bne B0_3902 ; d0 0a
B0_38f8:		lda $06db		; ad db 06
B0_38fb:		sta $9f			; 85 9f
B0_38fd:		lda #$00		; a9 00
B0_38ff:		sta $070e		; 8d 0e 07
B0_3902:		jsr $f152		; 20 52 f1
B0_3905:		jsr $e87d		; 20 7d e8
B0_3908:		jsr $d67a		; 20 7a d6
B0_390b:		lda $070e		; ad 0e 07
B0_390e:		beq B0_391d ; f0 0d
B0_3910:		lda $0786		; ad 86 07
B0_3913:		bne B0_391d ; d0 08
B0_3915:		lda #$04		; a9 04
B0_3917:		sta $0786		; 8d 86 07
B0_391a:		inc $070e		; ee 0e 07
B0_391d:		rts				; 60 
B0_391e:		lda #$2f		; a9 2f
B0_3920:		sta $16, x		; 95 16
B0_3922:		lda #$01		; a9 01
B0_3924:		sta $0f, x		; 95 0f
B0_3926:	.hex b9 76 00
B0_3929:		sta $6e, x		; 95 6e
B0_392b:	.hex b9 8f 00
B0_392e:		sta $87, x		; 95 87
B0_3930:	.hex b9 d7 00
B0_3933:		sta $cf, x		; 95 cf
B0_3935:		ldy $0398		; ac 98 03
B0_3938:		bne B0_393d ; d0 03
B0_393a:		sta $039d		; 8d 9d 03
B0_393d:		txa				; 8a 
B0_393e:		sta $039a, y	; 99 9a 03
B0_3941:		inc $0398		; ee 98 03
B0_3944:		lda #$04		; a9 04
B0_3946:		sta $fe			; 85 fe
B0_3948:		rts				; 60 
B0_3949:		bmi B0_39ab ; 30 60
B0_394b:		cpx #$05		; e0 05
B0_394d:		bne B0_39b7 ; d0 68
B0_394f:		ldy $0398		; ac 98 03
B0_3952:		dey				; 88 
B0_3953:		lda $0399		; ad 99 03
B0_3956:		cmp $b949, y	; d9 49 b9
B0_3959:		beq B0_396a ; f0 0f
B0_395b:		lda $09			; a5 09
B0_395d:		lsr a			; 4a
B0_395e:		lsr a			; 4a
B0_395f:		bcc B0_396a ; 90 09
B0_3961:		lda $d4			; a5 d4
B0_3963:		sbc #$01		; e9 01
B0_3965:		sta $d4			; 85 d4
B0_3967:		inc $0399		; ee 99 03
B0_396a:		lda $0399		; ad 99 03
B0_396d:		cmp #$08		; c9 08
B0_396f:		bcc B0_39b7 ; 90 46
B0_3971:		jsr $f152		; 20 52 f1
B0_3974:		jsr $f1af		; 20 af f1
B0_3977:		ldy #$00		; a0 00
B0_3979:		jsr $e435		; 20 35 e4
B0_397c:		iny				; c8 
B0_397d:		cpy $0398		; cc 98 03
B0_3980:		bne B0_3979 ; d0 f7
B0_3982:		lda $03d1		; ad d1 03
B0_3985:		and #$0c		; 29 0c
B0_3987:		beq B0_3999 ; f0 10
B0_3989:		dey				; 88 
B0_398a:		ldx $039a, y	; be 9a 03
B0_398d:		jsr $c998		; 20 98 c9
B0_3990:		dey				; 88 
B0_3991:		bpl B0_398a ; 10 f7
B0_3993:		sta $0398		; 8d 98 03
B0_3996:		sta $0399		; 8d 99 03
B0_3999:		lda $0399		; ad 99 03
B0_399c:		cmp #$20		; c9 20
B0_399e:		bcc B0_39b7 ; 90 17
B0_39a0:		ldx #$06		; a2 06
B0_39a2:		lda #$01		; a9 01
B0_39a4:		ldy #$1b		; a0 1b
B0_39a6:		jsr $e3f0		; 20 f0 e3
B0_39a9:		ldy $02			; a4 02
B0_39ab:		cpy #$d0		; c0 d0
B0_39ad:		bcs B0_39b7 ; b0 08
B0_39af:		lda ($06), y	; b1 06
B0_39b1:		bne B0_39b7 ; d0 04
B0_39b3:		lda #$26		; a9 26
B0_39b5:		sta ($06), y	; 91 06
B0_39b7:		ldx $08			; a6 08
B0_39b9:		rts				; 60 
B0_39ba:	.db $0f
B0_39bb:	.db $07
B0_39bc:		lda $074e		; ad 4e 07
B0_39bf:		beq B0_3a30 ; f0 6f
B0_39c1:		ldx #$02		; a2 02
B0_39c3:		stx $08			; 86 08
B0_39c5:		lda $0f, x		; b5 0f
B0_39c7:		bne B0_3a1a ; d0 51
B0_39c9:		lda $07a8, x	; bd a8 07
B0_39cc:		ldy $06cc		; ac cc 06
B0_39cf:		and $b9ba, y	; 39 ba b9
B0_39d2:		cmp #$06		; c9 06
B0_39d4:		bcs B0_3a1a ; b0 44
B0_39d6:		tay				; a8 
B0_39d7:		lda $046b, y	; b9 6b 04
B0_39da:		beq B0_3a1a ; f0 3e
B0_39dc:		lda $047d, y	; b9 7d 04
B0_39df:		beq B0_39e9 ; f0 08
B0_39e1:		sbc #$00		; e9 00
B0_39e3:		sta $047d, y	; 99 7d 04
B0_39e6:		jmp $ba1a		; 4c 1a ba
B0_39e9:		lda $0747		; ad 47 07
B0_39ec:		bne B0_3a1a ; d0 2c
B0_39ee:		lda #$0e		; a9 0e
B0_39f0:		sta $047d, y	; 99 7d 04
B0_39f3:		lda $046b, y	; b9 6b 04
B0_39f6:		sta $6e, x		; 95 6e
B0_39f8:		lda $0471, y	; b9 71 04
B0_39fb:		sta $87, x		; 95 87
B0_39fd:		lda $0477, y	; b9 77 04
B0_3a00:		sec				; 38 
B0_3a01:		sbc #$08		; e9 08
B0_3a03:		sta $cf, x		; 95 cf
B0_3a05:		lda #$01		; a9 01
B0_3a07:		sta $b6, x		; 95 b6
B0_3a09:		sta $0f, x		; 95 0f
B0_3a0b:		lsr a			; 4a
B0_3a0c:		sta $1e, x		; 95 1e
B0_3a0e:		lda #$09		; a9 09
B0_3a10:		sta $049a, x	; 9d 9a 04
B0_3a13:		lda #$33		; a9 33
B0_3a15:		sta $16, x		; 95 16
B0_3a17:		jmp $ba2d		; 4c 2d ba
B0_3a1a:		lda $16, x		; b5 16
B0_3a1c:		cmp #$33		; c9 33
B0_3a1e:		bne B0_3a2d ; d0 0d
B0_3a20:		jsr $d67a		; 20 7a d6
B0_3a23:		lda $0f, x		; b5 0f
B0_3a25:		beq B0_3a2d ; f0 06
B0_3a27:		jsr $f1af		; 20 af f1
B0_3a2a:		jsr $ba33		; 20 33 ba
B0_3a2d:		dex				; ca 
B0_3a2e:		bpl B0_39c3 ; 10 93
B0_3a30:		rts				; 60 
B0_3a31:		clc				; 18 
B0_3a32:		inx				; e8 
B0_3a33:		lda $0747		; ad 47 07
B0_3a36:		bne B0_3a76 ; d0 3e
B0_3a38:		lda $1e, x		; b5 1e
B0_3a3a:		bne B0_3a6a ; d0 2e
B0_3a3c:		lda $03d1		; ad d1 03
B0_3a3f:		and #$0c		; 29 0c
B0_3a41:		cmp #$0c		; c9 0c
B0_3a43:		beq B0_3a85 ; f0 40
B0_3a45:		ldy #$01		; a0 01
B0_3a47:		jsr $e143		; 20 43 e1
B0_3a4a:		bmi B0_3a4d ; 30 01
B0_3a4c:		iny				; c8 
B0_3a4d:		sty $46, x		; 94 46
B0_3a4f:		dey				; 88 
B0_3a50:		lda $ba31, y	; b9 31 ba
B0_3a53:		sta $58, x		; 95 58
B0_3a55:		lda $00			; a5 00
B0_3a57:		adc #$28		; 69 28
B0_3a59:		cmp #$50		; c9 50
B0_3a5b:		bcc B0_3a85 ; 90 28
B0_3a5d:		lda #$01		; a9 01
B0_3a5f:		sta $1e, x		; 95 1e
B0_3a61:		lda #$0a		; a9 0a
B0_3a63:		sta $078a, x	; 9d 8a 07
B0_3a66:		lda #$08		; a9 08
B0_3a68:		sta $fe			; 85 fe
B0_3a6a:		lda $1e, x		; b5 1e
B0_3a6c:		and #$20		; 29 20
B0_3a6e:		beq B0_3a73 ; f0 03
B0_3a70:		jsr $bf63		; 20 63 bf
B0_3a73:		jsr $bf02		; 20 02 bf
B0_3a76:		jsr $f1af		; 20 af f1
B0_3a79:		jsr $f152		; 20 52 f1
B0_3a7c:		jsr $e243		; 20 43 e2
B0_3a7f:		jsr $d853		; 20 53 d8
B0_3a82:		jmp $e87d		; 4c 7d e8
B0_3a85:		jsr $c998		; 20 98 c9
B0_3a88:		rts				; 60 
B0_3a89:	.db $04
B0_3a8a:	.db $04
B0_3a8b:	.db $04
B0_3a8c:		ora $05			; 05 05
B0_3a8e:		ora $06			; 05 06
B0_3a90:		asl $06			; 06 06
B0_3a92:		;removed
	.hex  10 f0
B0_3a94:		lda $07a8		; ad a8 07
B0_3a97:		and #$07		; 29 07
B0_3a99:		bne B0_3aa0 ; d0 05
B0_3a9b:		lda $07a8		; ad a8 07
B0_3a9e:		and #$08		; 29 08
B0_3aa0:		tay				; a8 
B0_3aa1:	.hex b9 2a 00
B0_3aa4:		bne B0_3abf ; d0 19
B0_3aa6:		ldx $ba89, y	; be 89 ba
B0_3aa9:		lda $0f, x		; b5 0f
B0_3aab:		bne B0_3abf ; d0 12
B0_3aad:		ldx $08			; a6 08
B0_3aaf:		txa				; 8a 
B0_3ab0:		sta $06ae, y	; 99 ae 06
B0_3ab3:		lda #$90		; a9 90
B0_3ab5:	.hex 99 2a 00
B0_3ab8:		lda #$07		; a9 07
B0_3aba:		sta $04a2, y	; 99 a2 04
B0_3abd:		sec				; 38 
B0_3abe:		rts				; 60 
B0_3abf:		ldx $08			; a6 08
B0_3ac1:		clc				; 18 
B0_3ac2:		rts				; 60 
B0_3ac3:		lda $0747		; ad 47 07
B0_3ac6:		bne B0_3b2b ; d0 63
B0_3ac8:		lda $2a, x		; b5 2a
B0_3aca:		and #$7f		; 29 7f
B0_3acc:		ldy $06ae, x	; bc ae 06
B0_3acf:		cmp #$02		; c9 02
B0_3ad1:		beq B0_3af3 ; f0 20
B0_3ad3:		bcs B0_3b09 ; b0 34
B0_3ad5:		txa				; 8a 
B0_3ad6:		clc				; 18 
B0_3ad7:		adc #$0d		; 69 0d
B0_3ad9:		tax				; aa 
B0_3ada:		lda #$10		; a9 10
B0_3adc:		sta $00			; 85 00
B0_3ade:		lda #$0f		; a9 0f
B0_3ae0:		sta $01			; 85 01
B0_3ae2:		lda #$04		; a9 04
B0_3ae4:		sta $02			; 85 02
B0_3ae6:		lda #$00		; a9 00
B0_3ae8:		jsr $bfd7		; 20 d7 bf
B0_3aeb:		jsr $bf0f		; 20 0f bf
B0_3aee:		ldx $08			; a6 08
B0_3af0:		jmp $bb28		; 4c 28 bb
B0_3af3:		lda #$fe		; a9 fe
B0_3af5:		sta $ac, x		; 95 ac
B0_3af7:	.hex b9 1e 00
B0_3afa:		and #$f7		; 29 f7
B0_3afc:	.hex 99 1e 00
B0_3aff:		ldx $46, y		; b6 46
B0_3b01:		dex				; ca 
B0_3b02:		lda $ba92, x	; bd 92 ba
B0_3b05:		ldx $08			; a6 08
B0_3b07:		sta $64, x		; 95 64
B0_3b09:		dec $2a, x		; d6 2a
B0_3b0b:	.hex b9 87 00
B0_3b0e:		clc				; 18 
B0_3b0f:		adc #$02		; 69 02
B0_3b11:		sta $93, x		; 95 93
B0_3b13:	.hex b9 6e 00
B0_3b16:		adc #$00		; 69 00
B0_3b18:		sta $7a, x		; 95 7a
B0_3b1a:	.hex b9 cf 00
B0_3b1d:		sec				; 38 
B0_3b1e:		sbc #$0a		; e9 0a
B0_3b20:		sta $db, x		; 95 db
B0_3b22:		lda #$01		; a9 01
B0_3b24:		sta $c2, x		; 95 c2
B0_3b26:		bne B0_3b2b ; d0 03
B0_3b28:		jsr $d7c4		; 20 c4 d7
B0_3b2b:		jsr $f19b		; 20 9b f1
B0_3b2e:		jsr $f148		; 20 48 f1
B0_3b31:		jsr $e236		; 20 36 e2
B0_3b34:		jsr $e4dc		; 20 dc e4
B0_3b37:		rts				; 60 
B0_3b38:		jsr $bb84		; 20 84 bb
B0_3b3b:		lda $76, x		; b5 76
B0_3b3d:	.hex 99 7a 00
B0_3b40:		lda $8f, x		; b5 8f
B0_3b42:		ora #$05		; 09 05
B0_3b44:	.hex 99 93 00
B0_3b47:		lda $d7, x		; b5 d7
B0_3b49:		sbc #$10		; e9 10
B0_3b4b:	.hex 99 db 00
B0_3b4e:		jmp $bb6c		; 4c 6c bb
B0_3b51:		jsr $bb84		; 20 84 bb
B0_3b54:		lda $03ea, x	; bd ea 03
B0_3b57:	.hex 99 7a 00
B0_3b5a:		lda $06			; a5 06
B0_3b5c:		asl a			; 0a
B0_3b5d:		asl a			; 0a
B0_3b5e:		asl a			; 0a
B0_3b5f:		asl a			; 0a
B0_3b60:		ora #$05		; 09 05
B0_3b62:	.hex 99 93 00
B0_3b65:		lda $02			; a5 02
B0_3b67:		adc #$20		; 69 20
B0_3b69:	.hex 99 db 00
B0_3b6c:		lda #$fb		; a9 fb
B0_3b6e:	.hex 99 ac 00
B0_3b71:		lda #$01		; a9 01
B0_3b73:	.hex 99 c2 00
B0_3b76:	.hex 99 2a 00
B0_3b79:		sta $fe			; 85 fe
B0_3b7b:		stx $08			; 86 08
B0_3b7d:		jsr $bbfe		; 20 fe bb
B0_3b80:		inc $0748		; ee 48 07
B0_3b83:		rts				; 60 
B0_3b84:		ldy #$08		; a0 08
B0_3b86:	.hex b9 2a 00
B0_3b89:		beq B0_3b92 ; f0 07
B0_3b8b:		dey				; 88 
B0_3b8c:		cpy #$05		; c0 05
B0_3b8e:		bne B0_3b86 ; d0 f6
B0_3b90:		ldy #$08		; a0 08
B0_3b92:		sty $06b7		; 8c b7 06
B0_3b95:		rts				; 60 
B0_3b96:		ldx #$08		; a2 08
B0_3b98:		stx $08			; 86 08
B0_3b9a:		lda $2a, x		; b5 2a
B0_3b9c:		beq B0_3bf4 ; f0 56
B0_3b9e:		asl a			; 0a
B0_3b9f:		bcc B0_3ba7 ; 90 06
B0_3ba1:		jsr $bac3		; 20 c3 ba
B0_3ba4:		jmp $bbf4		; 4c f4 bb
B0_3ba7:		ldy $2a, x		; b4 2a
B0_3ba9:		dey				; 88 
B0_3baa:		beq B0_3bc9 ; f0 1d
B0_3bac:		inc $2a, x		; f6 2a
B0_3bae:		lda $93, x		; b5 93
B0_3bb0:		clc				; 18 
B0_3bb1:		adc $0775		; 6d 75 07
B0_3bb4:		sta $93, x		; 95 93
B0_3bb6:		lda $7a, x		; b5 7a
B0_3bb8:		adc #$00		; 69 00
B0_3bba:		sta $7a, x		; 95 7a
B0_3bbc:		lda $2a, x		; b5 2a
B0_3bbe:		cmp #$30		; c9 30
B0_3bc0:		bne B0_3be8 ; d0 26
B0_3bc2:		lda #$00		; a9 00
B0_3bc4:		sta $2a, x		; 95 2a
B0_3bc6:		jmp $bbf4		; 4c f4 bb
B0_3bc9:		txa				; 8a 
B0_3bca:		clc				; 18 
B0_3bcb:		adc #$0d		; 69 0d
B0_3bcd:		tax				; aa 
B0_3bce:		lda #$50		; a9 50
B0_3bd0:		sta $00			; 85 00
B0_3bd2:		lda #$06		; a9 06
B0_3bd4:		sta $02			; 85 02
B0_3bd6:		lsr a			; 4a
B0_3bd7:		sta $01			; 85 01
B0_3bd9:		lda #$00		; a9 00
B0_3bdb:		jsr $bfd7		; 20 d7 bf
B0_3bde:		ldx $08			; a6 08
B0_3be0:		lda $ac, x		; b5 ac
B0_3be2:		cmp #$05		; c9 05
B0_3be4:		bne B0_3be8 ; d0 02
B0_3be6:		inc $2a, x		; f6 2a
B0_3be8:		jsr $f148		; 20 48 f1
B0_3beb:		jsr $f19b		; 20 9b f1
B0_3bee:		jsr $e236		; 20 36 e2
B0_3bf1:		jsr $e686		; 20 86 e6
B0_3bf4:		dex				; ca 
B0_3bf5:		bpl B0_3b98 ; 10 a1
B0_3bf7:		rts				; 60 
B0_3bf8:	.db $17
B0_3bf9:		ora $110b, x	; 1d 0b 11
B0_3bfc:	.db $02
B0_3bfd:	.db $13
B0_3bfe:		lda #$01		; a9 01
B0_3c00:		sta $0139		; 8d 39 01
B0_3c03:		ldx $0753		; ae 53 07
B0_3c06:		ldy $bbf8, x	; bc f8 bb
B0_3c09:		jsr $8f5f		; 20 5f 8f
B0_3c0c:		inc $075e		; ee 5e 07
B0_3c0f:		lda $075e		; ad 5e 07
B0_3c12:		cmp #$64		; c9 64
B0_3c14:		bne B0_3c22 ; d0 0c
B0_3c16:		lda #$00		; a9 00
B0_3c18:		sta $075e		; 8d 5e 07
B0_3c1b:		inc $075a		; ee 5a 07
B0_3c1e:		lda #$40		; a9 40
B0_3c20:		sta $fe			; 85 fe
B0_3c22:		lda #$02		; a9 02
B0_3c24:		sta $0138		; 8d 38 01
B0_3c27:		ldx $0753		; ae 53 07
B0_3c2a:		ldy $bbfa, x	; bc fa bb
B0_3c2d:		jsr $8f5f		; 20 5f 8f
B0_3c30:		ldy $0753		; ac 53 07
B0_3c33:		lda $bbfc, y	; b9 fc bb
B0_3c36:		jsr $8f06		; 20 06 8f
B0_3c39:		ldy $0300		; ac 00 03
B0_3c3c:		lda $02fb, y	; b9 fb 02
B0_3c3f:		bne B0_3c46 ; d0 05
B0_3c41:		lda #$24		; a9 24
B0_3c43:		sta $02fb, y	; 99 fb 02
B0_3c46:		ldx $08			; a6 08
B0_3c48:		rts				; 60 
B0_3c49:		lda #$2e		; a9 2e
B0_3c4b:		sta $1b			; 85 1b
B0_3c4d:		lda $76, x		; b5 76
B0_3c4f:		sta $73			; 85 73
B0_3c51:		lda $8f, x		; b5 8f
B0_3c53:		sta $8c			; 85 8c
B0_3c55:		lda #$01		; a9 01
B0_3c57:		sta $bb			; 85 bb
B0_3c59:		lda $d7, x		; b5 d7
B0_3c5b:		sec				; 38 
B0_3c5c:		sbc #$08		; e9 08
B0_3c5e:		sta $d4			; 85 d4
B0_3c60:		lda #$01		; a9 01
B0_3c62:		sta $23			; 85 23
B0_3c64:		sta $14			; 85 14
B0_3c66:		lda #$03		; a9 03
B0_3c68:		sta $049f		; 8d 9f 04
B0_3c6b:		lda $39			; a5 39
B0_3c6d:		cmp #$02		; c9 02
B0_3c6f:		bcs B0_3c7b ; b0 0a
B0_3c71:		lda $0756		; ad 56 07
B0_3c74:		cmp #$02		; c9 02
B0_3c76:		bcc B0_3c79 ; 90 01
B0_3c78:		lsr a			; 4a
B0_3c79:		sta $39			; 85 39
B0_3c7b:		lda #$20		; a9 20
B0_3c7d:		sta $03ca		; 8d ca 03
B0_3c80:		lda #$02		; a9 02
B0_3c82:		sta $fe			; 85 fe
B0_3c84:		rts				; 60 
B0_3c85:		ldx #$05		; a2 05
B0_3c87:		stx $08			; 86 08
B0_3c89:		lda $23			; a5 23
B0_3c8b:		beq B0_3cea ; f0 5d
B0_3c8d:		asl a			; 0a
B0_3c8e:		bcc B0_3cb3 ; 90 23
B0_3c90:		lda $0747		; ad 47 07
B0_3c93:		bne B0_3cd8 ; d0 43
B0_3c95:		lda $39			; a5 39
B0_3c97:		beq B0_3caa ; f0 11
B0_3c99:		cmp #$03		; c9 03
B0_3c9b:		beq B0_3caa ; f0 0d
B0_3c9d:		cmp #$02		; c9 02
B0_3c9f:		bne B0_3cd8 ; d0 37
B0_3ca1:		jsr $caf9		; 20 f9 ca
B0_3ca4:		jsr $e163		; 20 63 e1
B0_3ca7:		jmp $bcd8		; 4c d8 bc
B0_3caa:		jsr $ca77		; 20 77 ca
B0_3cad:		jsr $dfc1		; 20 c1 df
B0_3cb0:		jmp $bcd8		; 4c d8 bc
B0_3cb3:		lda $09			; a5 09
B0_3cb5:		and #$03		; 29 03
B0_3cb7:		bne B0_3cd2 ; d0 19
B0_3cb9:		dec $d4			; c6 d4
B0_3cbb:		lda $23			; a5 23
B0_3cbd:		inc $23			; e6 23
B0_3cbf:		cmp #$11		; c9 11
B0_3cc1:		bcc B0_3cd2 ; 90 0f
B0_3cc3:		lda #$10		; a9 10
B0_3cc5:		sta $58, x		; 95 58
B0_3cc7:		lda #$80		; a9 80
B0_3cc9:		sta $23			; 85 23
B0_3ccb:		asl a			; 0a
B0_3ccc:		sta $03ca		; 8d ca 03
B0_3ccf:		rol a			; 2a
B0_3cd0:		sta $46, x		; 95 46
B0_3cd2:		lda $23			; a5 23
B0_3cd4:		cmp #$06		; c9 06
B0_3cd6:		bcc B0_3cea ; 90 12
B0_3cd8:		jsr $f152		; 20 52 f1
B0_3cdb:		jsr $f1af		; 20 af f1
B0_3cde:		jsr $e243		; 20 43 e2
B0_3ce1:		jsr $e6d2		; 20 d2 e6
B0_3ce4:		jsr $d853		; 20 53 d8
B0_3ce7:		jsr $d67a		; 20 7a d6
B0_3cea:		rts				; 60 
B0_3ceb:	.db $04
B0_3cec:	.db $12
B0_3ced:		pha				; 48 
B0_3cee:		lda #$11		; a9 11
B0_3cf0:		ldx $03ee		; ae ee 03
B0_3cf3:		ldy $0754		; ac 54 07
B0_3cf6:		bne B0_3cfa ; d0 02
B0_3cf8:		lda #$12		; a9 12
B0_3cfa:		sta $26, x		; 95 26
B0_3cfc:		jsr $8a6b		; 20 6b 8a
B0_3cff:		ldx $03ee		; ae ee 03
B0_3d02:		lda $02			; a5 02
B0_3d04:		sta $03e4, x	; 9d e4 03
B0_3d07:		tay				; a8 
B0_3d08:		lda $06			; a5 06
B0_3d0a:		sta $03e6, x	; 9d e6 03
B0_3d0d:		lda ($06), y	; b1 06
B0_3d0f:		jsr $bdf6		; 20 f6 bd
B0_3d12:		sta $00			; 85 00
B0_3d14:		ldy $0754		; ac 54 07
B0_3d17:		bne B0_3d1a ; d0 01
B0_3d19:		tya				; 98 
B0_3d1a:		bcc B0_3d41 ; 90 25
B0_3d1c:		ldy #$11		; a0 11
B0_3d1e:		sty $26, x		; 94 26
B0_3d20:		lda #$c4		; a9 c4
B0_3d22:		ldy $00			; a4 00
B0_3d24:		cpy #$58		; c0 58
B0_3d26:		beq B0_3d2c ; f0 04
B0_3d28:		cpy #$5d		; c0 5d
B0_3d2a:		bne B0_3d41 ; d0 15
B0_3d2c:		lda $06bc		; ad bc 06
B0_3d2f:		bne B0_3d39 ; d0 08
B0_3d31:		lda #$0b		; a9 0b
B0_3d33:		sta $079d		; 8d 9d 07
B0_3d36:		inc $06bc		; ee bc 06
B0_3d39:		lda $079d		; ad 9d 07
B0_3d3c:		bne B0_3d40 ; d0 02
B0_3d3e:		ldy #$c4		; a0 c4
B0_3d40:		tya				; 98 
B0_3d41:		sta $03e8, x	; 9d e8 03
B0_3d44:		jsr $bd84		; 20 84 bd
B0_3d47:		ldy $02			; a4 02
B0_3d49:		lda #$23		; a9 23
B0_3d4b:		sta ($06), y	; 91 06
B0_3d4d:		lda #$10		; a9 10
B0_3d4f:		sta $0784		; 8d 84 07
B0_3d52:		pla				; 68 
B0_3d53:		sta $05			; 85 05
B0_3d55:		ldy #$00		; a0 00
B0_3d57:		lda $0714		; ad 14 07
B0_3d5a:		bne B0_3d61 ; d0 05
B0_3d5c:		lda $0754		; ad 54 07
B0_3d5f:		beq B0_3d62 ; f0 01
B0_3d61:		iny				; c8 
B0_3d62:		lda $ce			; a5 ce
B0_3d64:		clc				; 18 
B0_3d65:		adc $bceb, y	; 79 eb bc
B0_3d68:		and #$f0		; 29 f0
B0_3d6a:		sta $d7, x		; 95 d7
B0_3d6c:		ldy $26, x		; b4 26
B0_3d6e:		cpy #$11		; c0 11
B0_3d70:		beq B0_3d78 ; f0 06
B0_3d72:		jsr $be02		; 20 02 be
B0_3d75:		jmp $bd7b		; 4c 7b bd
B0_3d78:		jsr $bd9b		; 20 9b bd
B0_3d7b:		lda $03ee		; ad ee 03
B0_3d7e:		eor #$01		; 49 01
B0_3d80:		sta $03ee		; 8d ee 03
B0_3d83:		rts				; 60 
B0_3d84:		lda $86			; a5 86
B0_3d86:		clc				; 18 
B0_3d87:		adc #$08		; 69 08
B0_3d89:		and #$f0		; 29 f0
B0_3d8b:		sta $8f, x		; 95 8f
B0_3d8d:		lda $6d			; a5 6d
B0_3d8f:		adc #$00		; 69 00
B0_3d91:		sta $76, x		; 95 76
B0_3d93:		sta $03ea, x	; 9d ea 03
B0_3d96:		lda $b5			; a5 b5
B0_3d98:		sta $be, x		; 95 be
B0_3d9a:		rts				; 60 
B0_3d9b:		jsr $be1f		; 20 1f be
B0_3d9e:		lda #$02		; a9 02
B0_3da0:		sta $ff			; 85 ff
B0_3da2:		lda #$00		; a9 00
B0_3da4:		sta $60, x		; 95 60
B0_3da6:		sta $043c, x	; 9d 3c 04
B0_3da9:		sta $9f			; 85 9f
B0_3dab:		lda #$fe		; a9 fe
B0_3dad:		sta $a8, x		; 95 a8
B0_3daf:		lda $05			; a5 05
B0_3db1:		jsr $bdf6		; 20 f6 bd
B0_3db4:		bcc B0_3de7 ; 90 31
B0_3db6:		tya				; 98 
B0_3db7:		cmp #$09		; c9 09
B0_3db9:		bcc B0_3dbd ; 90 02
B0_3dbb:		sbc #$05		; e9 05
B0_3dbd:		jsr $8e04		; 20 04 8e
B0_3dc0:	.db $d2
B0_3dc1:		lda $bb38, x	; bd 38 bb
B0_3dc4:		sec				; 38 
B0_3dc5:	.db $bb
B0_3dc6:		cld				; b8 
B0_3dc7:		lda $bdd2, x	; bd d2 bd
B0_3dca:	.db $df
B0_3dcb:		lda $bdd5, x	; bd d5 bd
B0_3dce:		sec				; 38 
B0_3dcf:	.db $bb
B0_3dd0:		cld				; b8 
B0_3dd1:	.hex bd a9 00
B0_3dd4:		bit $02a9		; 2c a9 02
B0_3dd7:		bit $03a9		; 2c a9 03
B0_3dda:		sta $39			; 85 39
B0_3ddc:		jmp $bc49		; 4c 49 bc
B0_3ddf:		ldx #$05		; a2 05
B0_3de1:		ldy $03ee		; ac ee 03
B0_3de4:		jsr $b91e		; 20 1e b9
B0_3de7:		rts				; 60 
B0_3de8:		cmp ($c0, x)	; c1 c0
B0_3dea:	.db $5f
B0_3deb:		rts				; 60 
B0_3dec:		eor $56, x		; 55 56
B0_3dee:	.db $57
B0_3def:		cli				; 58 
B0_3df0:		eor $5b5a, y	; 59 5a 5b
B0_3df3:	.db $5c
B0_3df4:		eor $a05e, x	; 5d 5e a0
B0_3df7:		ora $e8d9		; 0d d9 e8
B0_3dfa:		lda $04f0, x	; bd f0 04
B0_3dfd:		dey				; 88 
B0_3dfe:		;removed
	.hex  10 f8
B0_3e00:		clc				; 18 
B0_3e01:		rts				; 60 
B0_3e02:		jsr $be1f		; 20 1f be
B0_3e05:		lda #$01		; a9 01
B0_3e07:		sta $03ec, x	; 9d ec 03
B0_3e0a:		sta $fd			; 85 fd
B0_3e0c:		jsr $be41		; 20 41 be
B0_3e0f:		lda #$fe		; a9 fe
B0_3e11:		sta $9f			; 85 9f
B0_3e13:		lda #$05		; a9 05
B0_3e15:		sta $0139		; 8d 39 01
B0_3e18:		jsr $bc27		; 20 27 bc
B0_3e1b:		ldx $03ee		; ae ee 03
B0_3e1e:		rts				; 60 
B0_3e1f:		ldx $03ee		; ae ee 03
B0_3e22:		ldy $02			; a4 02
B0_3e24:		beq B0_3e40 ; f0 1a
B0_3e26:		tya				; 98 
B0_3e27:		sec				; 38 
B0_3e28:		sbc #$10		; e9 10
B0_3e2a:		sta $02			; 85 02
B0_3e2c:		tay				; a8 
B0_3e2d:		lda ($06), y	; b1 06
B0_3e2f:		cmp #$c2		; c9 c2
B0_3e31:		bne B0_3e40 ; d0 0d
B0_3e33:		lda #$00		; a9 00
B0_3e35:		sta ($06), y	; 91 06
B0_3e37:		jsr $8a4d		; 20 4d 8a
B0_3e3a:		ldx $03ee		; ae ee 03
B0_3e3d:		jsr $bb51		; 20 51 bb
B0_3e40:		rts				; 60 
B0_3e41:		lda $8f, x		; b5 8f
B0_3e43:		sta $03f1, x	; 9d f1 03
B0_3e46:		lda #$f0		; a9 f0
B0_3e48:		sta $60, x		; 95 60
B0_3e4a:		sta $62, x		; 95 62
B0_3e4c:		lda #$fa		; a9 fa
B0_3e4e:		sta $a8, x		; 95 a8
B0_3e50:		lda #$fc		; a9 fc
B0_3e52:		sta $aa, x		; 95 aa
B0_3e54:		lda #$00		; a9 00
B0_3e56:		sta $043c, x	; 9d 3c 04
B0_3e59:		sta $043e, x	; 9d 3e 04
B0_3e5c:		lda $76, x		; b5 76
B0_3e5e:		sta $78, x		; 95 78
B0_3e60:		lda $8f, x		; b5 8f
B0_3e62:		sta $91, x		; 95 91
B0_3e64:		lda $d7, x		; b5 d7
B0_3e66:		clc				; 18 
B0_3e67:		adc #$08		; 69 08
B0_3e69:		sta $d9, x		; 95 d9
B0_3e6b:		lda #$fa		; a9 fa
B0_3e6d:		sta $a8, x		; 95 a8
B0_3e6f:		rts				; 60 
B0_3e70:		lda $26, x		; b5 26
B0_3e72:		beq B0_3ed1 ; f0 5d
B0_3e74:		and #$0f		; 29 0f
B0_3e76:		pha				; 48 
B0_3e77:		tay				; a8 
B0_3e78:		txa				; 8a 
B0_3e79:		clc				; 18 
B0_3e7a:		adc #$09		; 69 09
B0_3e7c:		tax				; aa 
B0_3e7d:		dey				; 88 
B0_3e7e:		beq B0_3eb3 ; f0 33
B0_3e80:		jsr $bfa4		; 20 a4 bf
B0_3e83:		jsr $bf0f		; 20 0f bf
B0_3e86:		txa				; 8a 
B0_3e87:		clc				; 18 
B0_3e88:		adc #$02		; 69 02
B0_3e8a:		tax				; aa 
B0_3e8b:		jsr $bfa4		; 20 a4 bf
B0_3e8e:		jsr $bf0f		; 20 0f bf
B0_3e91:		ldx $08			; a6 08
B0_3e93:		jsr $f159		; 20 59 f1
B0_3e96:		jsr $f1b6		; 20 b6 f1
B0_3e99:		jsr $ec53		; 20 53 ec
B0_3e9c:		pla				; 68 
B0_3e9d:		ldy $be, x		; b4 be
B0_3e9f:		beq B0_3ed1 ; f0 30
B0_3ea1:		pha				; 48 
B0_3ea2:		lda #$f0		; a9 f0
B0_3ea4:		cmp $d9, x		; d5 d9
B0_3ea6:		bcs B0_3eaa ; b0 02
B0_3ea8:		sta $d9, x		; 95 d9
B0_3eaa:		lda $d7, x		; b5 d7
B0_3eac:		cmp #$f0		; c9 f0
B0_3eae:		pla				; 68 
B0_3eaf:		bcc B0_3ed1 ; 90 20
B0_3eb1:		bcs B0_3ecf ; b0 1c
B0_3eb3:		jsr $bfa4		; 20 a4 bf
B0_3eb6:		ldx $08			; a6 08
B0_3eb8:		jsr $f159		; 20 59 f1
B0_3ebb:		jsr $f1b6		; 20 b6 f1
B0_3ebe:		jsr $ebd1		; 20 d1 eb
B0_3ec1:		lda $d7, x		; b5 d7
B0_3ec3:		and #$0f		; 29 0f
B0_3ec5:		cmp #$05		; c9 05
B0_3ec7:		pla				; 68 
B0_3ec8:		bcs B0_3ed1 ; b0 07
B0_3eca:		lda #$01		; a9 01
B0_3ecc:		sta $03ec, x	; 9d ec 03
B0_3ecf:		lda #$00		; a9 00
B0_3ed1:		sta $26, x		; 95 26
B0_3ed3:		rts				; 60 
B0_3ed4:		ldx #$01		; a2 01
B0_3ed6:		stx $08			; 86 08
B0_3ed8:		lda $0301		; ad 01 03
B0_3edb:		bne B0_3efe ; d0 21
B0_3edd:		lda $03ec, x	; bd ec 03
B0_3ee0:		beq B0_3efe ; f0 1c
B0_3ee2:		lda $03e6, x	; bd e6 03
B0_3ee5:		sta $06			; 85 06
B0_3ee7:		lda #$05		; a9 05
B0_3ee9:		sta $07			; 85 07
B0_3eeb:		lda $03e4, x	; bd e4 03
B0_3eee:		sta $02			; 85 02
B0_3ef0:		tay				; a8 
B0_3ef1:		lda $03e8, x	; bd e8 03
B0_3ef4:		sta ($06), y	; 91 06
B0_3ef6:		jsr $8a61		; 20 61 8a
B0_3ef9:		lda #$00		; a9 00
B0_3efb:		sta $03ec, x	; 9d ec 03
B0_3efe:		dex				; ca 
B0_3eff:		bpl B0_3ed6 ; 10 d5
B0_3f01:		rts				; 60 
B0_3f02:		inx				; e8 
B0_3f03:		jsr $bf0f		; 20 0f bf
B0_3f06:		ldx $08			; a6 08
B0_3f08:		rts				; 60 
B0_3f09:		lda $070e		; ad 0e 07
B0_3f0c:		bne B0_3f4c ; d0 3e
B0_3f0e:		tax				; aa 
B0_3f0f:		lda $57, x		; b5 57
B0_3f11:		asl a			; 0a
B0_3f12:		asl a			; 0a
B0_3f13:		asl a			; 0a
B0_3f14:		asl a			; 0a
B0_3f15:		sta $01			; 85 01
B0_3f17:		lda $57, x		; b5 57
B0_3f19:		lsr a			; 4a
B0_3f1a:		lsr a			; 4a
B0_3f1b:		lsr a			; 4a
B0_3f1c:		lsr a			; 4a
B0_3f1d:		cmp #$08		; c9 08
B0_3f1f:		bcc B0_3f23 ; 90 02
B0_3f21:		ora #$f0		; 09 f0
B0_3f23:		sta $00			; 85 00
B0_3f25:		ldy #$00		; a0 00
B0_3f27:		cmp #$00		; c9 00
B0_3f29:		bpl B0_3f2c ; 10 01
B0_3f2b:		dey				; 88 
B0_3f2c:		sty $02			; 84 02
B0_3f2e:		lda $0400, x	; bd 00 04
B0_3f31:		clc				; 18 
B0_3f32:		adc $01			; 65 01
B0_3f34:		sta $0400, x	; 9d 00 04
B0_3f37:		lda #$00		; a9 00
B0_3f39:		rol a			; 2a
B0_3f3a:		pha				; 48 
B0_3f3b:		ror a			; 6a
B0_3f3c:		lda $86, x		; b5 86
B0_3f3e:		adc $00			; 65 00
B0_3f40:		sta $86, x		; 95 86
B0_3f42:		lda $6d, x		; b5 6d
B0_3f44:		adc $02			; 65 02
B0_3f46:		sta $6d, x		; 95 6d
B0_3f48:		pla				; 68 
B0_3f49:		clc				; 18 
B0_3f4a:		adc $00			; 65 00
B0_3f4c:		rts				; 60 
B0_3f4d:		ldx #$00		; a2 00
B0_3f4f:		lda $0747		; ad 47 07
B0_3f52:		bne B0_3f59 ; d0 05
B0_3f54:		lda $070e		; ad 0e 07
B0_3f57:		bne B0_3f4c ; d0 f3
B0_3f59:		lda $0709		; ad 09 07
B0_3f5c:		sta $00			; 85 00
B0_3f5e:		lda #$04		; a9 04
B0_3f60:		jmp $bfad		; 4c ad bf
B0_3f63:		ldy #$3d		; a0 3d
B0_3f65:		lda $1e, x		; b5 1e
B0_3f67:		cmp #$05		; c9 05
B0_3f69:		bne B0_3f6d ; d0 02
B0_3f6b:		ldy #$20		; a0 20
B0_3f6d:		jmp $bf94		; 4c 94 bf
B0_3f70:		ldy #$00		; a0 00
B0_3f72:		jmp $bf77		; 4c 77 bf
B0_3f75:		ldy #$01		; a0 01
B0_3f77:		inx				; e8 
B0_3f78:		lda #$03		; a9 03
B0_3f7a:		sta $00			; 85 00
B0_3f7c:		lda #$06		; a9 06
B0_3f7e:		sta $01			; 85 01
B0_3f80:		lda #$02		; a9 02
B0_3f82:		sta $02			; 85 02
B0_3f84:		tya				; 98 
B0_3f85:		jmp $bfd1		; 4c d1 bf
B0_3f88:		ldy #$7f		; a0 7f
B0_3f8a:		bne B0_3f8e ; d0 02
B0_3f8c:		ldy #$0f		; a0 0f
B0_3f8e:		lda #$02		; a9 02
B0_3f90:		bne B0_3f96 ; d0 04
B0_3f92:		ldy #$1c		; a0 1c
B0_3f94:		lda #$03		; a9 03
B0_3f96:		sty $00			; 84 00
B0_3f98:		inx				; e8 
B0_3f99:		jsr $bfad		; 20 ad bf
B0_3f9c:		ldx $08			; a6 08
B0_3f9e:		rts				; 60 
B0_3f9f:		asl $08			; 06 08
B0_3fa1:		ldy #$00		; a0 00
B0_3fa3:		bit $01a0		; 2c a0 01
B0_3fa6:		lda #$50		; a9 50
B0_3fa8:		sta $00			; 85 00
B0_3faa:		lda $bf9f, y	; b9 9f bf
B0_3fad:		sta $02			; 85 02
B0_3faf:		lda #$00		; a9 00
B0_3fb1:		jmp $bfd7		; 4c d7 bf
B0_3fb4:		lda #$00		; a9 00
B0_3fb6:		bit $01a9		; 2c a9 01
B0_3fb9:		pha				; 48 
B0_3fba:		ldy $16, x		; b4 16
B0_3fbc:		inx				; e8 
B0_3fbd:		lda #$05		; a9 05
B0_3fbf:		cpy #$29		; c0 29
B0_3fc1:		bne B0_3fc5 ; d0 02
B0_3fc3:		lda #$09		; a9 09
B0_3fc5:		sta $00			; 85 00
B0_3fc7:		lda #$0a		; a9 0a
B0_3fc9:		sta $01			; 85 01
B0_3fcb:		lda #$03		; a9 03
B0_3fcd:		sta $02			; 85 02
B0_3fcf:		pla				; 68 
B0_3fd0:		tay				; a8 
B0_3fd1:		jsr $bfd7		; 20 d7 bf
B0_3fd4:		ldx $08			; a6 08
B0_3fd6:		rts				; 60 
B0_3fd7:		pha				; 48 
B0_3fd8:		lda $0416, x	; bd 16 04
B0_3fdb:		clc				; 18 
B0_3fdc:		adc $0433, x	; 7d 33 04
B0_3fdf:		sta $0416, x	; 9d 16 04
B0_3fe2:		ldy #$00		; a0 00
B0_3fe4:		lda $9f, x		; b5 9f
B0_3fe6:		bpl B0_3fe9 ; 10 01
B0_3fe8:		dey				; 88 
B0_3fe9:		sty $07			; 84 07
B0_3feb:		adc $ce, x		; 75 ce
B0_3fed:		sta $ce, x		; 95 ce
B0_3fef:		lda $b5, x		; b5 b5
B0_3ff1:		adc $07			; 65 07
B0_3ff3:		sta $b5, x		; 95 b5
B0_3ff5:		lda $0433, x	; bd 33 04
B0_3ff8:		clc				; 18 
B0_3ff9:		adc $00			; 65 00
B0_3ffb:		sta $0433, x	; 9d 33 04
B0_3ffe:		lda $9f, x		; b5 9f
B0_4000:		adc #$00		; 69 00
B0_4002:		sta $9f, x		; 95 9f
B0_4004:		cmp $02			; c5 02
B0_4006:		bmi B0_4018 ; 30 10
B0_4008:		lda $0433, x	; bd 33 04
B0_400b:		cmp #$80		; c9 80
B0_400d:		bcc B0_4018 ; 90 09
B0_400f:		lda $02			; a5 02
B0_4011:		sta $9f, x		; 95 9f
B0_4013:		lda #$00		; a9 00
B0_4015:		sta $0433, x	; 9d 33 04
B0_4018:		pla				; 68 
B0_4019:		beq B0_4046 ; f0 2b
B0_401b:		lda $02			; a5 02
B0_401d:		eor #$ff		; 49 ff
B0_401f:		tay				; a8 
B0_4020:		iny				; c8 
B0_4021:		sty $07			; 84 07
B0_4023:		lda $0433, x	; bd 33 04
B0_4026:		sec				; 38 
B0_4027:		sbc $01			; e5 01
B0_4029:		sta $0433, x	; 9d 33 04
B0_402c:		lda $9f, x		; b5 9f
B0_402e:		sbc #$00		; e9 00
B0_4030:		sta $9f, x		; 95 9f
B0_4032:		cmp $07			; c5 07
B0_4034:		bpl B0_4046 ; 10 10
B0_4036:		lda $0433, x	; bd 33 04
B0_4039:		cmp #$80		; c9 80
B0_403b:		bcs B0_4046 ; b0 09
B0_403d:		lda $07			; a5 07
B0_403f:		sta $9f, x		; 95 9f
B0_4041:		lda #$ff		; a9 ff
B0_4043:		sta $0433, x	; 9d 33 04
B0_4046:		rts				; 60 
B0_4047:		lda $0f, x		; b5 0f
B0_4049:		pha				; 48 
B0_404a:		asl a			; 0a
B0_404b:		bcs B0_405f ; b0 12
B0_404d:		pla				; 68 
B0_404e:		beq B0_4053 ; f0 03
B0_4050:		jmp $c882		; 4c 82 c8
B0_4053:		lda $071f		; ad 1f 07
B0_4056:		and #$07		; 29 07
B0_4058:		cmp #$07		; c9 07
B0_405a:		beq B0_406a ; f0 0e
B0_405c:		jmp $c0cc		; 4c cc c0
B0_405f:		pla				; 68 
B0_4060:		and #$0f		; 29 0f
B0_4062:		tay				; a8 
B0_4063:	.hex b9 0f 00
B0_4066:		bne B0_406a ; d0 02
B0_4068:		sta $0f, x		; 95 0f
B0_406a:		rts				; 60 
B0_406b:	.db $03
B0_406c:	.db $03
B0_406d:		asl $06			; 06 06
B0_406f:		asl $06			; 06 06
B0_4071:		asl $06			; 06 06
B0_4073:	.db $07
B0_4074:	.db $07
B0_4075:	.db $07
B0_4076:		ora $09			; 05 09
B0_4078:	.db $04
B0_4079:		ora $06			; 05 06
B0_407b:		php				; 08 
B0_407c:		ora #$0a		; 09 0a
B0_407e:		asl $0b			; 06 0b
B0_4080:		bpl B0_40c2 ; 10 40
B0_4082:		bcs B0_4034 ; b0 b0
B0_4084:	.db $80
B0_4085:		rti				; 40 
B0_4086:		rti				; 40 
B0_4087:	.db $80
B0_4088:		rti				; 40 
B0_4089:		beq B0_407b ; f0 f0
B0_408b:		beq B0_4032 ; f0 a5
B0_408d:		adc $e938		; 6d 38 e9
B0_4090:	.db $04
B0_4091:		sta $6d			; 85 6d
B0_4093:		lda $0725		; ad 25 07
B0_4096:		sec				; 38 
B0_4097:		sbc #$04		; e9 04
B0_4099:		sta $0725		; 8d 25 07
B0_409c:		lda $071a		; ad 1a 07
B0_409f:		sec				; 38 
B0_40a0:		sbc #$04		; e9 04
B0_40a2:		sta $071a		; 8d 1a 07
B0_40a5:		lda $071b		; ad 1b 07
B0_40a8:		sec				; 38 
B0_40a9:		sbc #$04		; e9 04
B0_40ab:		sta $071b		; 8d 1b 07
B0_40ae:		lda $072a		; ad 2a 07
B0_40b1:		sec				; 38 
B0_40b2:		sbc #$04		; e9 04
B0_40b4:		sta $072a		; 8d 2a 07
B0_40b7:		lda #$00		; a9 00
B0_40b9:		sta $073b		; 8d 3b 07
B0_40bc:		sta $072b		; 8d 2b 07
B0_40bf:		sta $0739		; 8d 39 07
B0_40c2:		sta $073a		; 8d 3a 07
B0_40c5:		lda $9bf8, y	; b9 f8 9b
B0_40c8:		sta $072c		; 8d 2c 07
B0_40cb:		rts				; 60 
B0_40cc:		lda $0745		; ad 45 07
B0_40cf:		beq B0_412f ; f0 5e
B0_40d1:		lda $0726		; ad 26 07
B0_40d4:		bne B0_412f ; d0 59
B0_40d6:		ldy #$0b		; a0 0b
B0_40d8:		dey				; 88 
B0_40d9:		bmi B0_412f ; 30 54
B0_40db:		lda $075f		; ad 5f 07
B0_40de:		cmp $c06b, y	; d9 6b c0
B0_40e1:		bne B0_40d8 ; d0 f5
B0_40e3:		lda $0725		; ad 25 07
B0_40e6:		cmp $c076, y	; d9 76 c0
B0_40e9:		bne B0_40d8 ; d0 ed
B0_40eb:		lda $ce			; a5 ce
B0_40ed:		cmp $c081, y	; d9 81 c0
B0_40f0:		bne B0_4115 ; d0 23
B0_40f2:		lda $1d			; a5 1d
B0_40f4:		cmp #$00		; c9 00
B0_40f6:		bne B0_4115 ; d0 1d
B0_40f8:		lda $075f		; ad 5f 07
B0_40fb:		cmp #$06		; c9 06
B0_40fd:		bne B0_4122 ; d0 23
B0_40ff:		inc $06d9		; ee d9 06
B0_4102:		inc $06da		; ee da 06
B0_4105:		lda $06da		; ad da 06
B0_4108:		cmp #$03		; c9 03
B0_410a:		bne B0_412a ; d0 1e
B0_410c:		lda $06d9		; ad d9 06
B0_410f:		cmp #$03		; c9 03
B0_4111:		beq B0_4122 ; f0 0f
B0_4113:		bne B0_411c ; d0 07
B0_4115:		lda $075f		; ad 5f 07
B0_4118:		cmp #$06		; c9 06
B0_411a:		beq B0_4102 ; f0 e6
B0_411c:		jsr $c08c		; 20 8c c0
B0_411f:		jsr $d071		; 20 71 d0
B0_4122:		lda #$00		; a9 00
B0_4124:		sta $06da		; 8d da 06
B0_4127:		sta $06d9		; 8d d9 06
B0_412a:		lda #$00		; a9 00
B0_412c:		sta $0745		; 8d 45 07
B0_412f:		lda $06cd		; ad cd 06
B0_4132:		beq B0_4144 ; f0 10
B0_4134:		sta $16, x		; 95 16
B0_4136:		lda #$01		; a9 01
B0_4138:		sta $0f, x		; 95 0f
B0_413a:		lda #$00		; a9 00
B0_413c:		sta $1e, x		; 95 1e
B0_413e:		sta $06cd		; 8d cd 06
B0_4141:		jmp $c226		; 4c 26 c2
B0_4144:		ldy $0739		; ac 39 07
B0_4147:		lda ($e9), y	; b1 e9
B0_4149:		cmp #$ff		; c9 ff
B0_414b:		bne B0_4150 ; d0 03
B0_414d:		jmp $c216		; 4c 16 c2
B0_4150:		and #$0f		; 29 0f
B0_4152:		cmp #$0e		; c9 0e
B0_4154:		beq B0_4164 ; f0 0e
B0_4156:		cpx #$05		; e0 05
B0_4158:		bcc B0_4164 ; 90 0a
B0_415a:		iny				; c8 
B0_415b:		lda ($e9), y	; b1 e9
B0_415d:		and #$3f		; 29 3f
B0_415f:		cmp #$2e		; c9 2e
B0_4161:		beq B0_4164 ; f0 01
B0_4163:		rts				; 60 
B0_4164:		lda $071d		; ad 1d 07
B0_4167:		clc				; 18 
B0_4168:		adc #$30		; 69 30
B0_416a:		and #$f0		; 29 f0
B0_416c:		sta $07			; 85 07
B0_416e:		lda $071b		; ad 1b 07
B0_4171:		adc #$00		; 69 00
B0_4173:		sta $06			; 85 06
B0_4175:		ldy $0739		; ac 39 07
B0_4178:		iny				; c8 
B0_4179:		lda ($e9), y	; b1 e9
B0_417b:		asl a			; 0a
B0_417c:		bcc B0_4189 ; 90 0b
B0_417e:		lda $073b		; ad 3b 07
B0_4181:		bne B0_4189 ; d0 06
B0_4183:		inc $073b		; ee 3b 07
B0_4186:		inc $073a		; ee 3a 07
B0_4189:		dey				; 88 
B0_418a:		lda ($e9), y	; b1 e9
B0_418c:		and #$0f		; 29 0f
B0_418e:		cmp #$0f		; c9 0f
B0_4190:		bne B0_41ab ; d0 19
B0_4192:		lda $073b		; ad 3b 07
B0_4195:		bne B0_41ab ; d0 14
B0_4197:		iny				; c8 
B0_4198:		lda ($e9), y	; b1 e9
B0_419a:		and #$3f		; 29 3f
B0_419c:		sta $073a		; 8d 3a 07
B0_419f:		inc $0739		; ee 39 07
B0_41a2:		inc $0739		; ee 39 07
B0_41a5:		inc $073b		; ee 3b 07
B0_41a8:		jmp $c0cc		; 4c cc c0
B0_41ab:		lda $073a		; ad 3a 07
B0_41ae:		sta $6e, x		; 95 6e
B0_41b0:		lda ($e9), y	; b1 e9
B0_41b2:		and #$f0		; 29 f0
B0_41b4:		sta $87, x		; 95 87
B0_41b6:		cmp $071d		; cd 1d 07
B0_41b9:		lda $6e, x		; b5 6e
B0_41bb:		sbc $071b		; ed1b 07
B0_41be:		bcs B0_41cb ; b0 0b
B0_41c0:		lda ($e9), y	; b1 e9
B0_41c2:		and #$0f		; 29 0f
B0_41c4:		cmp #$0e		; c9 0e
B0_41c6:		beq B0_4231 ; f0 69
B0_41c8:		jmp $c250		; 4c 50 c2
B0_41cb:		lda $07			; a5 07
B0_41cd:		cmp $87, x		; d5 87
B0_41cf:		lda $06			; a5 06
B0_41d1:		sbc $6e, x		; f5 6e
B0_41d3:		bcc B0_4216 ; 90 41
B0_41d5:		lda #$01		; a9 01
B0_41d7:		sta $b6, x		; 95 b6
B0_41d9:		lda ($e9), y	; b1 e9
B0_41db:		asl a			; 0a
B0_41dc:		asl a			; 0a
B0_41dd:		asl a			; 0a
B0_41de:		asl a			; 0a
B0_41df:		sta $cf, x		; 95 cf
B0_41e1:		cmp #$e0		; c9 e0
B0_41e3:		beq B0_4231 ; f0 4c
B0_41e5:		iny				; c8 
B0_41e6:		lda ($e9), y	; b1 e9
B0_41e8:		and #$40		; 29 40
B0_41ea:		beq B0_41f1 ; f0 05
B0_41ec:		lda $06cc		; ad cc 06
B0_41ef:		beq B0_425e ; f0 6d
B0_41f1:		lda ($e9), y	; b1 e9
B0_41f3:		and #$3f		; 29 3f
B0_41f5:		cmp #$37		; c9 37
B0_41f7:		bcc B0_41fd ; 90 04
B0_41f9:		cmp #$3f		; c9 3f
B0_41fb:		bcc B0_422e ; 90 31
B0_41fd:		cmp #$06		; c9 06
B0_41ff:		bne B0_4208 ; d0 07
B0_4201:		ldy $076a		; ac 6a 07
B0_4204:		beq B0_4208 ; f0 02
B0_4206:		lda #$02		; a9 02
B0_4208:		sta $16, x		; 95 16
B0_420a:		lda #$01		; a9 01
B0_420c:		sta $0f, x		; 95 0f
B0_420e:		jsr $c226		; 20 26 c2
B0_4211:		lda $0f, x		; b5 0f
B0_4213:		bne B0_425e ; d0 49
B0_4215:		rts				; 60 
B0_4216:		lda $06cb		; ad cb 06
B0_4219:		bne B0_4224 ; d0 09
B0_421b:		lda $0398		; ad 98 03
B0_421e:		cmp #$01		; c9 01
B0_4220:		bne B0_422d ; d0 0b
B0_4222:		lda #$2f		; a9 2f
B0_4224:		sta $16, x		; 95 16
B0_4226:		lda #$00		; a9 00
B0_4228:		sta $1e, x		; 95 1e
B0_422a:		jsr $c26c		; 20 6c c2
B0_422d:		rts				; 60 
B0_422e:		jmp $c71b		; 4c 1b c7
B0_4231:		iny				; c8 
B0_4232:		iny				; c8 
B0_4233:		lda ($e9), y	; b1 e9
B0_4235:		lsr a			; 4a
B0_4236:		lsr a			; 4a
B0_4237:		lsr a			; 4a
B0_4238:		lsr a			; 4a
B0_4239:		lsr a			; 4a
B0_423a:		cmp $075f		; cd 5f 07
B0_423d:		bne B0_424d ; d0 0e
B0_423f:		dey				; 88 
B0_4240:		lda ($e9), y	; b1 e9
B0_4242:		sta $0750		; 8d 50 07
B0_4245:		iny				; c8 
B0_4246:		lda ($e9), y	; b1 e9
B0_4248:		and #$1f		; 29 1f
B0_424a:		sta $0751		; 8d 51 07
B0_424d:		jmp $c25b		; 4c 5b c2
B0_4250:		ldy $0739		; ac 39 07
B0_4253:		lda ($e9), y	; b1 e9
B0_4255:		and #$0f		; 29 0f
B0_4257:		cmp #$0e		; c9 0e
B0_4259:		bne B0_425e ; d0 03
B0_425b:		inc $0739		; ee 39 07
B0_425e:		inc $0739		; ee 39 07
B0_4261:		inc $0739		; ee 39 07
B0_4264:		lda #$00		; a9 00
B0_4266:		sta $073b		; 8d 3b 07
B0_4269:		ldx $08			; a6 08
B0_426b:		rts				; 60 
B0_426c:		lda $16, x		; b5 16
B0_426e:		cmp #$15		; c9 15
B0_4270:		bcs B0_427f ; b0 0d
B0_4272:		tay				; a8 
B0_4273:		lda $cf, x		; b5 cf
B0_4275:		adc #$08		; 69 08
B0_4277:		sta $cf, x		; 95 cf
B0_4279:		lda #$01		; a9 01
B0_427b:		sta $03d8, x	; 9d d8 03
B0_427e:		tya				; 98 
B0_427f:		jsr $8e04		; 20 04 8e
B0_4282:		asl $0ec3		; 0e c3 0e
B0_4285:	.db $c3
B0_4286:		asl $1ec3		; 0e c3 1e
B0_4289:	.db $c3
B0_428a:		;removed
	.hex  f0 c2
B0_428c:		plp				; 28 
B0_428d:	.db $c3
B0_428e:		sbc ($c2), y	; f1 c2
B0_4290:	.db $42
B0_4291:	.db $c3
B0_4292:	.db $6b
B0_4293:	.db $c3
B0_4294:		;removed
	.hex  f0 c2
B0_4296:		adc $c3, x		; 75 c3
B0_4298:		adc $c3, x		; 75 c3
B0_429a:	.db $f7
B0_429b:	.db $c2
B0_429c:	.db $87
B0_429d:	.db $c7
B0_429e:		cmp ($c7), y	; d1 c7
B0_42a0:		lsr a			; 4a
B0_42a1:	.db $c3
B0_42a2:		and $85c3, x	; 3d c3 85
B0_42a5:	.db $c3
B0_42a6:		ldy #$c7		; a0 c7
B0_42a8:		beq B0_426c ; f0 c2
B0_42aa:		ldy #$c7		; a0 c7
B0_42ac:		ldy #$c7		; a0 c7
B0_42ae:		ldy #$c7		; a0 c7
B0_42b0:		ldy #$c7		; a0 c7
B0_42b2:		clv				; b8 
B0_42b3:	.db $c7
B0_42b4:		;removed
	.hex  f0 c2
B0_42b6:		;removed
	.hex  f0 c2
B0_42b8:	.db $5c
B0_42b9:		cpy $5c			; c4 5c
B0_42bb:		cpy $5c			; c4 5c
B0_42bd:		cpy $5c			; c4 5c
B0_42bf:		cpy $59			; c4 59
B0_42c1:		cpy $f0			; c4 f0
B0_42c3:	.db $c2
B0_42c4:		;removed
	.hex  f0 c2
B0_42c6:		beq B0_428a ; f0 c2
B0_42c8:		beq B0_428c ; f0 c2
B0_42ca:	.db $df
B0_42cb:	.db $c7
B0_42cc:	.db $12
B0_42cd:		iny				; c8 
B0_42ce:	.db $3f
B0_42cf:		iny				; c8 
B0_42d0:		eor $c8			; 45 c8
B0_42d2:	.db $0b
B0_42d3:		iny				; c8 
B0_42d4:	.db $03
B0_42d5:		iny				; c8 
B0_42d6:	.db $0b
B0_42d7:		iny				; c8 
B0_42d8:	.db $4b
B0_42d9:		iny				; c8 
B0_42da:	.db $57
B0_42db:		iny				; c8 
B0_42dc:		eor #$c5		; 49 c5
B0_42de:		rts				; 60 
B0_42df:		ldy $b91e, x	; bc 1e b9
B0_42e2:		beq B0_42a6 ; f0 c2
B0_42e4:		beq B0_42a8 ; f0 c2
B0_42e6:		beq B0_42aa ; f0 c2
B0_42e8:		beq B0_42ac ; f0 c2
B0_42ea:		beq B0_42ae ; f0 c2
B0_42ec:	.db $07
B0_42ed:	.db $c3
B0_42ee:		sta ($c8, x)	; 81 c8
B0_42f0:		rts				; 60 
B0_42f1:		jsr $c30e		; 20 0e c3
B0_42f4:		jmp $c346		; 4c 46 c3
B0_42f7:		lda #$02		; a9 02
B0_42f9:		sta $b6, x		; 95 b6
B0_42fb:		sta $cf, x		; 95 cf
B0_42fd:		lsr a			; 4a
B0_42fe:		sta $0796, x	; 9d 96 07
B0_4301:		lsr a			; 4a
B0_4302:		sta $1e, x		; 95 1e
B0_4304:		jmp $c346		; 4c 46 c3
B0_4307:		lda #$b8		; a9 b8
B0_4309:		sta $cf, x		; 95 cf
B0_430b:		rts				; 60 
B0_430c:		sed				; f8 
B0_430d:	.db $f4
B0_430e:		ldy #$01		; a0 01
B0_4310:		lda $076a		; ad 6a 07
B0_4313:		bne B0_4316 ; d0 01
B0_4315:		dey				; 88 
B0_4316:		lda $c30c, y	; b9 0c c3
B0_4319:		sta $58, x		; 95 58
B0_431b:		jmp $c35a		; 4c 5a c3
B0_431e:		jsr $c30e		; 20 0e c3
B0_4321:		lda #$01		; a9 01
B0_4323:		sta $1e, x		; 95 1e
B0_4325:		rts				; 60 
B0_4326:	.db $80
B0_4327:		bvc B0_42d2 ; 50 a9
B0_4329:		brk				; 00
B0_432a:		sta $03a2, x	; 9d a2 03
B0_432d:		sta $58, x		; 95 58
B0_432f:		ldy $06cc		; ac cc 06
B0_4332:		lda $c326, y	; b9 26 c3
B0_4335:		sta $0796, x	; 9d 96 07
B0_4338:		lda #$0b		; a9 0b
B0_433a:		jmp $c35c		; 4c 5c c3
B0_433d:		lda #$00		; a9 00
B0_433f:		jmp $c319		; 4c 19 c3
B0_4342:		lda #$00		; a9 00
B0_4344:		sta $58, x		; 95 58
B0_4346:		lda #$09		; a9 09
B0_4348:		bne B0_435c ; d0 12
B0_434a:		ldy #$30		; a0 30
B0_434c:		lda $cf, x		; b5 cf
B0_434e:		sta $0401, x	; 9d 01 04
B0_4351:		bpl B0_4355 ; 10 02
B0_4353:		ldy #$e0		; a0 e0
B0_4355:		tya				; 98 
B0_4356:		adc $cf, x		; 75 cf
B0_4358:		sta $58, x		; 95 58
B0_435a:		lda #$03		; a9 03
B0_435c:		sta $049a, x	; 9d 9a 04
B0_435f:		lda #$02		; a9 02
B0_4361:		sta $46, x		; 95 46
B0_4363:		lda #$00		; a9 00
B0_4365:		sta $a0, x		; 95 a0
B0_4367:		sta $0434, x	; 9d 34 04
B0_436a:		rts				; 60 
B0_436b:		lda #$02		; a9 02
B0_436d:		sta $46, x		; 95 46
B0_436f:		lda #$09		; a9 09
B0_4371:		sta $049a, x	; 9d 9a 04
B0_4374:		rts				; 60 
B0_4375:		jsr $c346		; 20 46 c3
B0_4378:		lda $07a7, x	; bd a7 07
B0_437b:		and #$10		; 29 10
B0_437d:		sta $58, x		; 95 58
B0_437f:		lda $cf, x		; b5 cf
B0_4381:		sta $0434, x	; 9d 34 04
B0_4384:		rts				; 60 
B0_4385:		lda $06cb		; ad cb 06
B0_4388:		bne B0_4395 ; d0 0b
B0_438a:		lda #$00		; a9 00
B0_438c:		sta $06d1		; 8d d1 06
B0_438f:		jsr $c33d		; 20 3d c3
B0_4392:		jmp $c7d9		; 4c d9 c7
B0_4395:		jmp $c998		; 4c 98 c9
B0_4398:		rol $2c			; 26 2c
B0_439a:	.db $32
B0_439b:		sec				; 38 
B0_439c:		jsr $2422		; 20 22 24
B0_439f:		rol $13			; 26 13
B0_43a1:	.db $14
B0_43a2:		ora $16, x		; 15 16
B0_43a4:		lda $078f		; ad 8f 07
B0_43a7:		bne B0_43e5 ; d0 3c
B0_43a9:		cpx #$05		; e0 05
B0_43ab:		bcs B0_43e5 ; b0 38
B0_43ad:		lda #$80		; a9 80
B0_43af:		sta $078f		; 8d 8f 07
B0_43b2:		ldy #$04		; a0 04
B0_43b4:	.hex b9 16 00
B0_43b7:		cmp #$11		; c9 11
B0_43b9:		beq B0_43e6 ; f0 2b
B0_43bb:		dey				; 88 
B0_43bc:		bpl B0_43b4 ; 10 f6
B0_43be:		inc $06d1		; ee d1 06
B0_43c1:		lda $06d1		; ad d1 06
B0_43c4:		cmp #$07		; c9 07
B0_43c6:		bcc B0_43e5 ; 90 1d
B0_43c8:		ldx #$04		; a2 04
B0_43ca:		lda $0f, x		; b5 0f
B0_43cc:		beq B0_43d3 ; f0 05
B0_43ce:		dex				; ca 
B0_43cf:		bpl B0_43ca ; 10 f9
B0_43d1:		bmi B0_43e3 ; 30 10
B0_43d3:		lda #$00		; a9 00
B0_43d5:		sta $1e, x		; 95 1e
B0_43d7:		lda #$11		; a9 11
B0_43d9:		sta $16, x		; 95 16
B0_43db:		jsr $c38a		; 20 8a c3
B0_43de:		lda #$20		; a9 20
B0_43e0:		jsr $c5d8		; 20 d8 c5
B0_43e3:		ldx $08			; a6 08
B0_43e5:		rts				; 60 
B0_43e6:		lda $ce			; a5 ce
B0_43e8:		cmp #$2c		; c9 2c
B0_43ea:		bcc B0_43e5 ; 90 f9
B0_43ec:	.hex b9 1e 00
B0_43ef:		bne B0_43e5 ; d0 f4
B0_43f1:	.hex b9 6e 00
B0_43f4:		sta $6e, x		; 95 6e
B0_43f6:	.hex b9 87 00
B0_43f9:		sta $87, x		; 95 87
B0_43fb:		lda #$01		; a9 01
B0_43fd:		sta $b6, x		; 95 b6
B0_43ff:	.hex b9 cf 00
B0_4402:		sec				; 38 
B0_4403:		sbc #$08		; e9 08
B0_4405:		sta $cf, x		; 95 cf
B0_4407:		lda $07a7, x	; bd a7 07
B0_440a:		and #$03		; 29 03
B0_440c:		tay				; a8 
B0_440d:		ldx #$02		; a2 02
B0_440f:		lda $c398, y	; b9 98 c3
B0_4412:		sta $01, x		; 95 01
B0_4414:		iny				; c8 
B0_4415:		iny				; c8 
B0_4416:		iny				; c8 
B0_4417:		iny				; c8 
B0_4418:		dex				; ca 
B0_4419:		bpl B0_440f ; 10 f4
B0_441b:		ldx $08			; a6 08
B0_441d:		jsr $cf6c		; 20 6c cf
B0_4420:		ldy $57			; a4 57
B0_4422:		cpy #$08		; c0 08
B0_4424:		bcs B0_4434 ; b0 0e
B0_4426:		tay				; a8 
B0_4427:		lda $07a8, x	; bd a8 07
B0_442a:		and #$03		; 29 03
B0_442c:		beq B0_4433 ; f0 05
B0_442e:		tya				; 98 
B0_442f:		eor #$ff		; 49 ff
B0_4431:		tay				; a8 
B0_4432:		iny				; c8 
B0_4433:		tya				; 98 
B0_4434:		jsr $c346		; 20 46 c3
B0_4437:		ldy #$02		; a0 02
B0_4439:		sta $58, x		; 95 58
B0_443b:		cmp #$00		; c9 00
B0_443d:		bmi B0_4440 ; 30 01
B0_443f:		dey				; 88 
B0_4440:		sty $46, x		; 94 46
B0_4442:		lda #$fd		; a9 fd
B0_4444:		sta $a0, x		; 95 a0
B0_4446:		lda #$01		; a9 01
B0_4448:		sta $0f, x		; 95 0f
B0_444a:		lda #$05		; a9 05
B0_444c:		sta $1e, x		; 95 1e
B0_444e:		rts				; 60 
B0_444f:		plp				; 28 
B0_4450:		sec				; 38 
B0_4451:		plp				; 28 
B0_4452:		sec				; 38 
B0_4453:		plp				; 28 
B0_4454:		brk				; 00
B0_4455:		brk				; 00
B0_4456:		;removed
	.hex  10 10
B0_4458:		brk				; 00
B0_4459:		jsr $c575		; 20 75 c5
B0_445c:		lda #$00		; a9 00
B0_445e:		sta $58, x		; 95 58
B0_4460:		lda $16, x		; b5 16
B0_4462:		sec				; 38 
B0_4463:		sbc #$1b		; e9 1b
B0_4465:		tay				; a8 
B0_4466:		lda $c44f, y	; b9 4f c4
B0_4469:		sta $0388, x	; 9d 88 03
B0_446c:		lda $c454, y	; b9 54 c4
B0_446f:		sta $34, x		; 95 34
B0_4471:		lda $cf, x		; b5 cf
B0_4473:		clc				; 18 
B0_4474:		adc #$04		; 69 04
B0_4476:		sta $cf, x		; 95 cf
B0_4478:		lda $87, x		; b5 87
B0_447a:		clc				; 18 
B0_447b:		adc #$04		; 69 04
B0_447d:		sta $87, x		; 95 87
B0_447f:		lda $6e, x		; b5 6e
B0_4481:		adc #$00		; 69 00
B0_4483:		sta $6e, x		; 95 6e
B0_4485:		jmp $c7d9		; 4c d9 c7
B0_4488:	.db $80
B0_4489:		;removed
	.hex  30 40
B0_448b:	.db $80
B0_448c:		;removed
	.hex  30 50
B0_448e:		bvc B0_4500 ; 50 70
B0_4490:		jsr $8040		; 20 40 80
B0_4493:		ldy #$70		; a0 70
B0_4495:		rti				; 40 
B0_4496:		bcc B0_4500 ; 90 68
B0_4498:		asl $0605		; 0e 05 06
B0_449b:		asl $201c		; 0e 1c 20
B0_449e:		;removed
	.hex  10 0c
B0_44a0:		asl $1822, x	; 1e 22 18
B0_44a3:	.db $14
B0_44a4:		bpl B0_4506 ; 10 60
B0_44a6:		jsr $ad48		; 20 48 ad
B0_44a9:	.db $8f
B0_44aa:	.db $07
B0_44ab:		bne B0_444e ; d0 a1
B0_44ad:		jsr $c346		; 20 46 c3
B0_44b0:		lda $07a8, x	; bd a8 07
B0_44b3:		and #$03		; 29 03
B0_44b5:		tay				; a8 
B0_44b6:		lda $c4a4, y	; b9 a4 c4
B0_44b9:		sta $078f		; 8d 8f 07
B0_44bc:		ldy #$03		; a0 03
B0_44be:		lda $06cc		; ad cc 06
B0_44c1:		beq B0_44c4 ; f0 01
B0_44c3:		iny				; c8 
B0_44c4:		sty $00			; 84 00
B0_44c6:		cpx $00			; e4 00
B0_44c8:		bcs B0_444e ; b0 84
B0_44ca:		lda $07a7, x	; bd a7 07
B0_44cd:		and #$03		; 29 03
B0_44cf:		sta $00			; 85 00
B0_44d1:		sta $01			; 85 01
B0_44d3:		lda #$fb		; a9 fb
B0_44d5:		sta $a0, x		; 95 a0
B0_44d7:		lda #$00		; a9 00
B0_44d9:		ldy $57			; a4 57
B0_44db:		beq B0_44e4 ; f0 07
B0_44dd:		lda #$04		; a9 04
B0_44df:		cpy #$19		; c0 19
B0_44e1:		bcc B0_44e4 ; 90 01
B0_44e3:		asl a			; 0a
B0_44e4:		pha				; 48 
B0_44e5:		clc				; 18 
B0_44e6:		adc $00			; 65 00
B0_44e8:		sta $00			; 85 00
B0_44ea:		lda $07a8, x	; bd a8 07
B0_44ed:		and #$03		; 29 03
B0_44ef:		beq B0_44f8 ; f0 07
B0_44f1:		lda $07a9, x	; bd a9 07
B0_44f4:		and #$0f		; 29 0f
B0_44f6:		sta $00			; 85 00
B0_44f8:		pla				; 68 
B0_44f9:		clc				; 18 
B0_44fa:		adc $01			; 65 01
B0_44fc:		tay				; a8 
B0_44fd:		lda $c498, y	; b9 98 c4
B0_4500:		sta $58, x		; 95 58
B0_4502:		lda #$01		; a9 01
B0_4504:		sta $46, x		; 95 46
B0_4506:		lda $57			; a5 57
B0_4508:		bne B0_451c ; d0 12
B0_450a:		ldy $00			; a4 00
B0_450c:		tya				; 98 
B0_450d:		and #$02		; 29 02
B0_450f:		beq B0_451c ; f0 0b
B0_4511:		lda $58, x		; b5 58
B0_4513:		eor #$ff		; 49 ff
B0_4515:		clc				; 18 
B0_4516:		adc #$01		; 69 01
B0_4518:		sta $58, x		; 95 58
B0_451a:		inc $46, x		; f6 46
B0_451c:		tya				; 98 
B0_451d:		and #$02		; 29 02
B0_451f:		beq B0_4530 ; f0 0f
B0_4521:		lda $86			; a5 86
B0_4523:		clc				; 18 
B0_4524:		adc $c488, y	; 79 88 c4
B0_4527:		sta $87, x		; 95 87
B0_4529:		lda $6d			; a5 6d
B0_452b:		adc #$00		; 69 00
B0_452d:		jmp $c53c		; 4c 3c c5
B0_4530:		lda $86			; a5 86
B0_4532:		sec				; 38 
B0_4533:		sbc $c488, y	; f9 88 c4
B0_4536:		sta $87, x		; 95 87
B0_4538:		lda $6d			; a5 6d
B0_453a:		sbc #$00		; e9 00
B0_453c:		sta $6e, x		; 95 6e
B0_453e:		lda #$01		; a9 01
B0_4540:		sta $0f, x		; 95 0f
B0_4542:		sta $b6, x		; 95 b6
B0_4544:		lda #$f8		; a9 f8
B0_4546:		sta $cf, x		; 95 cf
B0_4548:		rts				; 60 
B0_4549:		jsr $c575		; 20 75 c5
B0_454c:		stx $0368		; 8e 68 03
B0_454f:		lda #$00		; a9 00
B0_4551:		sta $0363		; 8d 63 03
B0_4554:		sta $0369		; 8d 69 03
B0_4557:		lda $87, x		; b5 87
B0_4559:		sta $0366		; 8d 66 03
B0_455c:		lda #$df		; a9 df
B0_455e:		sta $0790		; 8d 90 07
B0_4561:		sta $46, x		; 95 46
B0_4563:		lda #$20		; a9 20
B0_4565:		sta $0364		; 8d 64 03
B0_4568:		sta $078a, x	; 9d 8a 07
B0_456b:		lda #$05		; a9 05
B0_456d:		sta $0483		; 8d 83 04
B0_4570:		lsr a			; 4a
B0_4571:		sta $0365		; 8d 65 03
B0_4574:		rts				; 60 
B0_4575:		ldy #$ff		; a0 ff
B0_4577:		iny				; c8 
B0_4578:	.hex b9 0f 00
B0_457b:		bne B0_4577 ; d0 fa
B0_457d:		sty $06cf		; 8c cf 06
B0_4580:		txa				; 8a 
B0_4581:		ora #$80		; 09 80
B0_4583:	.hex 99 0f 00
B0_4586:		lda $6e, x		; b5 6e
B0_4588:	.hex 99 6e 00
B0_458b:		lda $87, x		; b5 87
B0_458d:	.hex 99 87 00
B0_4590:		lda #$01		; a9 01
B0_4592:		sta $0f, x		; 95 0f
B0_4594:	.hex 99 b6 00
B0_4597:		lda $cf, x		; b5 cf
B0_4599:	.hex 99 cf 00
B0_459c:		rts				; 60 
B0_459d:		bcc B0_451f ; 90 80
B0_459f:		;removed
	.hex  70 90
B0_45a1:	.db $ff
B0_45a2:		ora ($ad, x)	; 01 ad
B0_45a4:	.db $8f
B0_45a5:	.db $07
B0_45a6:		bne B0_459c ; d0 f4
B0_45a8:		sta $0434, x	; 9d 34 04
B0_45ab:		lda $fd			; a5 fd
B0_45ad:		ora #$02		; 09 02
B0_45af:		sta $fd			; 85 fd
B0_45b1:		ldy $0368		; ac 68 03
B0_45b4:	.hex b9 16 00
B0_45b7:		cmp #$2d		; c9 2d
B0_45b9:		beq B0_45ec ; f0 31
B0_45bb:		jsr $d1d9		; 20 d9 d1
B0_45be:		clc				; 18 
B0_45bf:		adc #$20		; 69 20
B0_45c1:		ldy $06cc		; ac cc 06
B0_45c4:		beq B0_45c9 ; f0 03
B0_45c6:		sec				; 38 
B0_45c7:		sbc #$10		; e9 10
B0_45c9:		sta $078f		; 8d 8f 07
B0_45cc:		lda $07a7, x	; bd a7 07
B0_45cf:		and #$03		; 29 03
B0_45d1:		sta $0417, x	; 9d 17 04
B0_45d4:		tay				; a8 
B0_45d5:		lda $c59d, y	; b9 9d c5
B0_45d8:		sta $cf, x		; 95 cf
B0_45da:		lda $071d		; ad 1d 07
B0_45dd:		clc				; 18 
B0_45de:		adc #$20		; 69 20
B0_45e0:		sta $87, x		; 95 87
B0_45e2:		lda $071b		; ad 1b 07
B0_45e5:		adc #$00		; 69 00
B0_45e7:		sta $6e, x		; 95 6e
B0_45e9:		jmp $c61f		; 4c 1f c6
B0_45ec:	.hex b9 87 00
B0_45ef:		sec				; 38 
B0_45f0:		sbc #$0e		; e9 0e
B0_45f2:		sta $87, x		; 95 87
B0_45f4:	.hex b9 6e 00
B0_45f7:		sta $6e, x		; 95 6e
B0_45f9:	.hex b9 cf 00
B0_45fc:		clc				; 18 
B0_45fd:		adc #$08		; 69 08
B0_45ff:		sta $cf, x		; 95 cf
B0_4601:		lda $07a7, x	; bd a7 07
B0_4604:		and #$03		; 29 03
B0_4606:		sta $0417, x	; 9d 17 04
B0_4609:		tay				; a8 
B0_460a:		lda $c59d, y	; b9 9d c5
B0_460d:		ldy #$00		; a0 00
B0_460f:		cmp $cf, x		; d5 cf
B0_4611:		bcc B0_4614 ; 90 01
B0_4613:		iny				; c8 
B0_4614:		lda $c5a1, y	; b9 a1 c5
B0_4617:		sta $0434, x	; 9d 34 04
B0_461a:		lda #$00		; a9 00
B0_461c:		sta $06cb		; 8d cb 06
B0_461f:		lda #$08		; a9 08
B0_4621:		sta $049a, x	; 9d 9a 04
B0_4624:		lda #$01		; a9 01
B0_4626:		sta $b6, x		; 95 b6
B0_4628:		sta $0f, x		; 95 0f
B0_462a:		lsr a			; 4a
B0_462b:		sta $0401, x	; 9d 01 04
B0_462e:		sta $1e, x		; 95 1e
B0_4630:		rts				; 60 
B0_4631:		brk				; 00
B0_4632:		;removed
	.hex  30 60
B0_4634:		rts				; 60 
B0_4635:		brk				; 00
B0_4636:		jsr $4060		; 20 60 40
B0_4639:		;removed
	.hex  70 40
B0_463b:		rts				; 60 
B0_463c:		;removed
	.hex  30 ad
B0_463e:	.db $8f
B0_463f:	.db $07
B0_4640:		bne B0_4689 ; d0 47
B0_4642:		lda #$20		; a9 20
B0_4644:		sta $078f		; 8d 8f 07
B0_4647:		dec $06d7		; ce d7 06
B0_464a:		ldy #$06		; a0 06
B0_464c:		dey				; 88 
B0_464d:	.hex b9 16 00
B0_4650:		cmp #$31		; c9 31
B0_4652:		bne B0_464c ; d0 f8
B0_4654:	.hex b9 87 00
B0_4657:		sec				; 38 
B0_4658:		sbc #$30		; e9 30
B0_465a:		pha				; 48 
B0_465b:	.hex b9 6e 00
B0_465e:		sbc #$00		; e9 00
B0_4660:		sta $00			; 85 00
B0_4662:		lda $06d7		; ad d7 06
B0_4665:		clc				; 18 
B0_4666:	.hex 79 1e 00
B0_4669:		tay				; a8 
B0_466a:		pla				; 68 
B0_466b:		clc				; 18 
B0_466c:		adc $c631, y	; 79 31 c6
B0_466f:		sta $87, x		; 95 87
B0_4671:		lda $00			; a5 00
B0_4673:		adc #$00		; 69 00
B0_4675:		sta $6e, x		; 95 6e
B0_4677:		lda $c637, y	; b9 37 c6
B0_467a:		sta $cf, x		; 95 cf
B0_467c:		lda #$01		; a9 01
B0_467e:		sta $b6, x		; 95 b6
B0_4680:		sta $0f, x		; 95 0f
B0_4682:		lsr a			; 4a
B0_4683:		sta $58, x		; 95 58
B0_4685:		lda #$08		; a9 08
B0_4687:		sta $a0, x		; 95 a0
B0_4689:		rts				; 60 
B0_468a:		ora ($02, x)	; 01 02
B0_468c:	.db $04
B0_468d:		php				; 08 
B0_468e:		;removed
	.hex  10 20
B0_4690:		rti				; 40 
B0_4691:	.db $80
B0_4692:		rti				; 40 
B0_4693:		;removed
	.hex  30 90
B0_4695:		bvc B0_46b7 ; 50 20
B0_4697:		rts				; 60 
B0_4698:		ldy #$70		; a0 70
B0_469a:		asl a			; 0a
B0_469b:	.db $0b
B0_469c:		lda $078f		; ad 8f 07
B0_469f:		bne B0_4710 ; d0 6f
B0_46a1:		lda $074e		; ad 4e 07
B0_46a4:		bne B0_46fd ; d0 57
B0_46a6:		cpx #$03		; e0 03
B0_46a8:		bcs B0_4710 ; b0 66
B0_46aa:		ldy #$00		; a0 00
B0_46ac:		lda $07a7, x	; bd a7 07
B0_46af:		cmp #$aa		; c9 aa
B0_46b1:		bcc B0_46b4 ; 90 01
B0_46b3:		iny				; c8 
B0_46b4:		lda $075f		; ad 5f 07
B0_46b7:		cmp #$01		; c9 01
B0_46b9:		beq B0_46bc ; f0 01
B0_46bb:		iny				; c8 
B0_46bc:		tya				; 98 
B0_46bd:		and #$01		; 29 01
B0_46bf:		tay				; a8 
B0_46c0:		lda $c69a, y	; b9 9a c6
B0_46c3:		sta $16, x		; 95 16
B0_46c5:		lda $06dd		; ad dd 06
B0_46c8:		cmp #$ff		; c9 ff
B0_46ca:		bne B0_46d1 ; d0 05
B0_46cc:		lda #$00		; a9 00
B0_46ce:		sta $06dd		; 8d dd 06
B0_46d1:		lda $07a7, x	; bd a7 07
B0_46d4:		and #$07		; 29 07
B0_46d6:		tay				; a8 
B0_46d7:		lda $c68a, y	; b9 8a c6
B0_46da:		bit $06dd		; 2c dd 06
B0_46dd:		beq B0_46e6 ; f0 07
B0_46df:		iny				; c8 
B0_46e0:		tya				; 98 
B0_46e1:		and #$07		; 29 07
B0_46e3:		jmp $c6d6		; 4c d6 c6
B0_46e6:		ora $06dd		; 0d dd 06
B0_46e9:		sta $06dd		; 8d dd 06
B0_46ec:		lda $c692, y	; b9 92 c6
B0_46ef:		jsr $c5d8		; 20 d8 c5
B0_46f2:		sta $0417, x	; 9d 17 04
B0_46f5:		lda #$20		; a9 20
B0_46f7:		sta $078f		; 8d 8f 07
B0_46fa:		jmp $c26c		; 4c 6c c2
B0_46fd:		ldy #$ff		; a0 ff
B0_46ff:		iny				; c8 
B0_4700:		cpy #$05		; c0 05
B0_4702:		bcs B0_4711 ; b0 0d
B0_4704:	.hex b9 0f 00
B0_4707:		beq B0_46ff ; f0 f6
B0_4709:	.hex b9 16 00
B0_470c:		cmp #$08		; c9 08
B0_470e:		bne B0_46ff ; d0 ef
B0_4710:		rts				; 60 
B0_4711:		lda $fe			; a5 fe
B0_4713:		ora #$08		; 09 08
B0_4715:		sta $fe			; 85 fe
B0_4717:		lda #$08		; a9 08
B0_4719:		bne B0_46c3 ; d0 a8
B0_471b:		ldy #$00		; a0 00
B0_471d:		sec				; 38 
B0_471e:		sbc #$37		; e9 37
B0_4720:		pha				; 48 
B0_4721:		cmp #$04		; c9 04
B0_4723:		bcs B0_4730 ; b0 0b
B0_4725:		pha				; 48 
B0_4726:		ldy #$06		; a0 06
B0_4728:		lda $076a		; ad 6a 07
B0_472b:		beq B0_472f ; f0 02
B0_472d:		ldy #$02		; a0 02
B0_472f:		pla				; 68 
B0_4730:		sty $01			; 84 01
B0_4732:		ldy #$b0		; a0 b0
B0_4734:		and #$02		; 29 02
B0_4736:		beq B0_473a ; f0 02
B0_4738:		ldy #$70		; a0 70
B0_473a:		sty $00			; 84 00
B0_473c:		lda $071b		; ad 1b 07
B0_473f:		sta $02			; 85 02
B0_4741:		lda $071d		; ad 1d 07
B0_4744:		sta $03			; 85 03
B0_4746:		ldy #$02		; a0 02
B0_4748:		pla				; 68 
B0_4749:		lsr a			; 4a
B0_474a:		bcc B0_474d ; 90 01
B0_474c:		iny				; c8 
B0_474d:		sty $06d3		; 8c d3 06
B0_4750:		ldx #$ff		; a2 ff
B0_4752:		inx				; e8 
B0_4753:		cpx #$05		; e0 05
B0_4755:		bcs B0_4784 ; b0 2d
B0_4757:		lda $0f, x		; b5 0f
B0_4759:		bne B0_4752 ; d0 f7
B0_475b:		lda $01			; a5 01
B0_475d:		sta $16, x		; 95 16
B0_475f:		lda $02			; a5 02
B0_4761:		sta $6e, x		; 95 6e
B0_4763:		lda $03			; a5 03
B0_4765:		sta $87, x		; 95 87
B0_4767:		clc				; 18 
B0_4768:		adc #$18		; 69 18
B0_476a:		sta $03			; 85 03
B0_476c:		lda $02			; a5 02
B0_476e:		adc #$00		; 69 00
B0_4770:		sta $02			; 85 02
B0_4772:		lda $00			; a5 00
B0_4774:		sta $cf, x		; 95 cf
B0_4776:		lda #$01		; a9 01
B0_4778:		sta $b6, x		; 95 b6
B0_477a:		sta $0f, x		; 95 0f
B0_477c:		jsr $c26c		; 20 6c c2
B0_477f:		dec $06d3		; ce d3 06
B0_4782:		bne B0_4750 ; d0 cc
B0_4784:		jmp $c25e		; 4c 5e c2
B0_4787:		lda #$01		; a9 01
B0_4789:		sta $58, x		; 95 58
B0_478b:		lsr a			; 4a
B0_478c:		sta $1e, x		; 95 1e
B0_478e:		sta $a0, x		; 95 a0
B0_4790:		lda $cf, x		; b5 cf
B0_4792:		sta $0434, x	; 9d 34 04
B0_4795:		sec				; 38 
B0_4796:		sbc #$18		; e9 18
B0_4798:		sta $0417, x	; 9d 17 04
B0_479b:		lda #$09		; a9 09
B0_479d:		jmp $c7db		; 4c db c7
B0_47a0:		lda $16, x		; b5 16
B0_47a2:		sta $06cb		; 8d cb 06
B0_47a5:		sec				; 38 
B0_47a6:		sbc #$12		; e9 12
B0_47a8:		jsr $8e04		; 20 04 8e
B0_47ab:		ldy $c3			; a4 c3
B0_47ad:	.db $b7
B0_47ae:	.db $c7
B0_47af:		tay				; a8 
B0_47b0:		cpy $a3			; c4 a3
B0_47b2:		cmp $3d			; c5 3d
B0_47b4:		dec $9c			; c6 9c
B0_47b6:		dec $60			; c6 60
B0_47b8:		ldy #$05		; a0 05
B0_47ba:	.hex b9 16 00
B0_47bd:		cmp #$11		; c9 11
B0_47bf:		bne B0_47c6 ; d0 05
B0_47c1:		lda #$01		; a9 01
B0_47c3:	.hex 99 1e 00
B0_47c6:		dey				; 88 
B0_47c7:		bpl B0_47ba ; 10 f1
B0_47c9:		lda #$00		; a9 00
B0_47cb:		sta $06cb		; 8d cb 06
B0_47ce:		sta $0f, x		; 95 0f
B0_47d0:		rts				; 60 
B0_47d1:		lda #$02		; a9 02
B0_47d3:		sta $46, x		; 95 46
B0_47d5:		lda #$f8		; a9 f8
B0_47d7:		sta $58, x		; 95 58
B0_47d9:		lda #$03		; a9 03
B0_47db:		sta $049a, x	; 9d 9a 04
B0_47de:		rts				; 60 
B0_47df:		dec $cf, x		; d6 cf
B0_47e1:		dec $cf, x		; d6 cf
B0_47e3:		ldy $06cc		; ac cc 06
B0_47e6:		bne B0_47ed ; d0 05
B0_47e8:		ldy #$02		; a0 02
B0_47ea:		jsr $c871		; 20 71 c8
B0_47ed:		ldy #$ff		; a0 ff
B0_47ef:		lda $03a0		; ad a0 03
B0_47f2:		sta $1e, x		; 95 1e
B0_47f4:		bpl B0_47f8 ; 10 02
B0_47f6:		txa				; 8a 
B0_47f7:		tay				; a8 
B0_47f8:		sty $03a0		; 8c a0 03
B0_47fb:		lda #$00		; a9 00
B0_47fd:		sta $46, x		; 95 46
B0_47ff:		tay				; a8 
B0_4800:		jsr $c871		; 20 71 c8
B0_4803:		lda #$ff		; a9 ff
B0_4805:		sta $03a2, x	; 9d a2 03
B0_4808:		jmp $c828		; 4c 28 c8
B0_480b:		lda #$00		; a9 00
B0_480d:		sta $58, x		; 95 58
B0_480f:		jmp $c828		; 4c 28 c8
B0_4812:		ldy #$40		; a0 40
B0_4814:		lda $cf, x		; b5 cf
B0_4816:		bpl B0_481f ; 10 07
B0_4818:		eor #$ff		; 49 ff
B0_481a:		clc				; 18 
B0_481b:		adc #$01		; 69 01
B0_481d:		ldy #$c0		; a0 c0
B0_481f:		sta $0401, x	; 9d 01 04
B0_4822:		tya				; 98 
B0_4823:		clc				; 18 
B0_4824:		adc $cf, x		; 75 cf
B0_4826:		sta $58, x		; 95 58
B0_4828:		jsr $c363		; 20 63 c3
B0_482b:		lda #$05		; a9 05
B0_482d:		ldy $074e		; ac 4e 07
B0_4830:		cpy #$03		; c0 03
B0_4832:		beq B0_483b ; f0 07
B0_4834:		ldy $06cc		; ac cc 06
B0_4837:		bne B0_483b ; d0 02
B0_4839:		lda #$06		; a9 06
B0_483b:		sta $049a, x	; 9d 9a 04
B0_483e:		rts				; 60 
B0_483f:		jsr $c84b		; 20 4b c8
B0_4842:		jmp $c848		; 4c 48 c8
B0_4845:		jsr $c857		; 20 57 c8
B0_4848:		jmp $c82b		; 4c 2b c8
B0_484b:		lda #$10		; a9 10
B0_484d:		sta $0434, x	; 9d 34 04
B0_4850:		lda #$ff		; a9 ff
B0_4852:		sta $a0, x		; 95 a0
B0_4854:		jmp $c860		; 4c 60 c8
B0_4857:		lda #$f0		; a9 f0
B0_4859:		sta $0434, x	; 9d 34 04
B0_485c:		lda #$00		; a9 00
B0_485e:		sta $a0, x		; 95 a0
B0_4860:		ldy #$01		; a0 01
B0_4862:		jsr $c871		; 20 71 c8
B0_4865:		lda #$04		; a9 04
B0_4867:		sta $049a, x	; 9d 9a 04
B0_486a:		rts				; 60 
B0_486b:		php				; 08 
B0_486c:	.db $0c
B0_486d:		sed				; f8 
B0_486e:		brk				; 00
B0_486f:		brk				; 00
B0_4870:	.db $ff
B0_4871:		lda $87, x		; b5 87
B0_4873:		clc				; 18 
B0_4874:		adc $c86b, y	; 79 6b c8
B0_4877:		sta $87, x		; 95 87
B0_4879:		lda $6e, x		; b5 6e
B0_487b:		adc $c86e, y	; 79 6e c8
B0_487e:		sta $6e, x		; 95 6e
B0_4880:		rts				; 60 
B0_4881:		rts				; 60 
B0_4882:		ldx $08			; a6 08
B0_4884:		lda #$00		; a9 00
B0_4886:		ldy $16, x		; b4 16
B0_4888:		cpy #$15		; c0 15
B0_488a:		bcc B0_488f ; 90 03
B0_488c:		tya				; 98 
B0_488d:		sbc #$14		; e9 14
B0_488f:		jsr $8e04		; 20 04 8e
B0_4892:		cpx #$c8		; e0 c8
B0_4894:		and $c9, x		; 35 c9
B0_4896:		sta $d2, x		; 95 d2
B0_4898:		dec $c8, x		; d6 c8
B0_489a:		dec $c8, x		; d6 c8
B0_489c:		dec $c8, x		; d6 c8
B0_489e:		dec $c8, x		; d6 c8
B0_48a0:	.db $47
B0_48a1:		cmp #$47		; c9 47
B0_48a3:		cmp #$47		; c9 47
B0_48a5:		cmp #$47		; c9 47
B0_48a7:		cmp #$47		; c9 47
B0_48a9:		cmp #$47		; c9 47
B0_48ab:		cmp #$47		; c9 47
B0_48ad:		cmp #$47		; c9 47
B0_48af:		cmp #$d6		; c9 d6
B0_48b1:		iny				; c8 
B0_48b2:		adc $c9			; 65 c9
B0_48b4:		adc $c9			; 65 c9
B0_48b6:		adc $c9			; 65 c9
B0_48b8:		adc $c9			; 65 c9
B0_48ba:		adc $c9			; 65 c9
B0_48bc:		adc $c9			; 65 c9
B0_48be:		adc $c9			; 65 c9
B0_48c0:		eor $4dc9		; 4d c9 4d
B0_48c3:		cmp #$65		; c9 65
B0_48c5:		;removed
	.hex  d0 85
B0_48c7:		ldy $b94b, x	; bc 4b b9
B0_48ca:		dec $c8, x		; d6 c8
B0_48cc:		cmp $bad2, y	; d9 d2 ba
B0_48cf:		clv				; b8 
B0_48d0:		dec $c8, x		; d6 c8
B0_48d2:		ldy $b7			; a4 b7
B0_48d4:	.db $d7
B0_48d5:		iny				; c8 
B0_48d6:		rts				; 60 
B0_48d7:		jsr $f1af		; 20 af f1
B0_48da:		jsr $f152		; 20 52 f1
B0_48dd:		jmp $e87d		; 4c 7d e8
B0_48e0:		lda #$00		; a9 00
B0_48e2:		sta $03c5, x	; 9d c5 03
B0_48e5:		jsr $f1af		; 20 af f1
B0_48e8:		jsr $f152		; 20 52 f1
B0_48eb:		jsr $e87d		; 20 7d e8
B0_48ee:		jsr $e243		; 20 43 e2
B0_48f1:		jsr $dfc1		; 20 c1 df
B0_48f4:		jsr $da33		; 20 33 da
B0_48f7:		jsr $d853		; 20 53 d8
B0_48fa:		ldy $0747		; ac 47 07
B0_48fd:		bne B0_4902 ; d0 03
B0_48ff:		jsr $c905		; 20 05 c9
B0_4902:		jmp $d67a		; 4c 7a d6
B0_4905:		lda $16, x		; b5 16
B0_4907:		jsr $8e04		; 20 04 8e
B0_490a:	.db $77
B0_490b:		dex				; ca 
B0_490c:	.db $77
B0_490d:		dex				; ca 
B0_490e:	.db $77
B0_490f:		dex				; ca 
B0_4910:	.db $77
B0_4911:		dex				; ca 
B0_4912:	.db $77
B0_4913:		dex				; ca 
B0_4914:		cld				; b8 
B0_4915:		cmp #$77		; c9 77
B0_4917:		dex				; ca 
B0_4918:	.db $89
B0_4919:	.db $cb
B0_491a:		rol $cc, x		; 36 cc
B0_491c:	.db $34
B0_491d:		cmp #$4a		; c9 4a
B0_491f:		cpy $cc4a		; cc 4a cc
B0_4922:		;removed
	.hex  b0 c9
B0_4924:		;removed
	.hex  b0 d3
B0_4926:		sbc $ffca, y	; f9 ca ff
B0_4929:		dex				; ca 
B0_492a:		and $cb			; 25 cb
B0_492c:		plp				; 28 
B0_492d:	.db $cf
B0_492e:	.db $77
B0_492f:		dex				; ca 
B0_4930:	.db $34
B0_4931:		cmp #$df		; c9 df
B0_4933:		dec $2060		; ce 60 20
B0_4936:	.db $eb
B0_4937:		cmp ($20), y	; d1 20
B0_4939:	.db $af
B0_493a:		sbc ($20), y	; f1 20
B0_493c:	.db $52
B0_493d:		sbc ($20), y	; f1 20
B0_493f:	.db $43
B0_4940:	.db $e2
B0_4941:		jsr $d853		; 20 53 d8
B0_4944:		jmp $d67a		; 4c 7a d6
B0_4947:		jsr $cd3c		; 20 3c cd
B0_494a:		jmp $d67a		; 4c 7a d6
B0_494d:		jsr $f1af		; 20 af f1
B0_4950:		jsr $f152		; 20 52 f1
B0_4953:		jsr $e24c		; 20 4c e2
B0_4956:		jsr $db7b		; 20 7b db
B0_4959:		jsr $f152		; 20 52 f1
B0_495c:		jsr $ed66		; 20 66 ed
B0_495f:		jsr $d655		; 20 55 d6
B0_4962:		jmp $d67a		; 4c 7a d6
B0_4965:		jsr $f1af		; 20 af f1
B0_4968:		jsr $f152		; 20 52 f1
B0_496b:		jsr $e273		; 20 73 e2
B0_496e:		jsr $db45		; 20 45 db
B0_4971:		lda $0747		; ad 47 07
B0_4974:		bne B0_4979 ; d0 03
B0_4976:		jsr $c982		; 20 82 c9
B0_4979:		jsr $f152		; 20 52 f1
B0_497c:		jsr $e5c8		; 20 c8 e5
B0_497f:		jmp $d67a		; 4c 7a d6
B0_4982:		lda $16, x		; b5 16
B0_4984:		sec				; 38 
B0_4985:		sbc #$24		; e9 24
B0_4987:		jsr $8e04		; 20 04 8e
B0_498a:	.db $32
B0_498b:	.db $d4
B0_498c:	.db $d3
B0_498d:		cmp $4f, x		; d5 4f
B0_498f:		dec $4f, x		; d6 4f
B0_4991:		dec $07, x		; d6 07
B0_4993:		dec $31, x		; d6 31
B0_4995:		dec $3d, x		; d6 3d
B0_4997:		dec $a9, x		; d6 a9
B0_4999:		brk				; 00
B0_499a:		sta $0f, x		; 95 0f
B0_499c:		sta $16, x		; 95 16
B0_499e:		sta $1e, x		; 95 1e
B0_49a0:		sta $0110, x	; 9d 10 01
B0_49a3:		sta $0796, x	; 9d 96 07
B0_49a6:		sta $0125, x	; 9d 25 01
B0_49a9:		sta $03c5, x	; 9d c5 03
B0_49ac:		sta $078a, x	; 9d 8a 07
B0_49af:		rts				; 60 
B0_49b0:		lda $0796, x	; bd 96 07
B0_49b3:		bne B0_49cb ; d0 16
B0_49b5:		jsr $c2f7		; 20 f7 c2
B0_49b8:		lda $07a8, x	; bd a8 07
B0_49bb:		ora #$80		; 09 80
B0_49bd:		sta $0434, x	; 9d 34 04
B0_49c0:		and #$0f		; 29 0f
B0_49c2:		ora #$06		; 09 06
B0_49c4:		sta $0796, x	; 9d 96 07
B0_49c7:		lda #$f9		; a9 f9
B0_49c9:		sta $a0, x		; 95 a0
B0_49cb:		jmp $bf92		; 4c 92 bf
B0_49ce:		bmi B0_49ec ; 30 1c
B0_49d0:		brk				; 00
B0_49d1:		inx				; e8 
B0_49d2:		brk				; 00
B0_49d3:		clc				; 18 
B0_49d4:		php				; 08 
B0_49d5:		sed				; f8 
B0_49d6:	.db $0c
B0_49d7:	.db $f4
B0_49d8:		lda $1e, x		; b5 1e
B0_49da:		and #$20		; 29 20
B0_49dc:		beq B0_49e1 ; f0 03
B0_49de:		jmp $cae5		; 4c e5 ca
B0_49e1:		lda $3c, x		; b5 3c
B0_49e3:		;removed
	.hex  f0 2d
B0_49e5:		dec $3c, x		; d6 3c
B0_49e7:		lda $03d1		; ad d1 03
B0_49ea:		and #$0c		; 29 0c
B0_49ec:		bne B0_4a58 ; d0 6a
B0_49ee:		lda $03a2, x	; bd a2 03
B0_49f1:		bne B0_4a0a ; d0 17
B0_49f3:		ldy $06cc		; ac cc 06
B0_49f6:		lda $c9ce, y	; b9 ce c9
B0_49f9:		sta $03a2, x	; 9d a2 03
B0_49fc:		jsr $ba94		; 20 94 ba
B0_49ff:		bcc B0_4a0a ; 90 09
B0_4a01:		lda $1e, x		; b5 1e
B0_4a03:		ora #$08		; 09 08
B0_4a05:		sta $1e, x		; 95 1e
B0_4a07:		jmp $ca58		; 4c 58 ca
B0_4a0a:		dec $03a2, x	; de a2 03
B0_4a0d:		jmp $ca58		; 4c 58 ca
B0_4a10:		jsr $b537		; 20 37 b5
B0_4a13:		asl $0729, x	; 1e 29 07
B0_4a16:		cmp #$01		; c9 01
B0_4a18:		beq B0_4a58 ; f0 3e
B0_4a1a:		lda #$00		; a9 00
B0_4a1c:		sta $00			; 85 00
B0_4a1e:		ldy #$fa		; a0 fa
B0_4a20:		lda $cf, x		; b5 cf
B0_4a22:		bmi B0_4a37 ; 30 13
B0_4a24:		ldy #$fd		; a0 fd
B0_4a26:		cmp #$70		; c9 70
B0_4a28:		inc $00			; e6 00
B0_4a2a:		bcc B0_4a37 ; 90 0b
B0_4a2c:		dec $00			; c6 00
B0_4a2e:		lda $07a8, x	; bd a8 07
B0_4a31:		and #$01		; 29 01
B0_4a33:		bne B0_4a37 ; d0 02
B0_4a35:		ldy #$fa		; a0 fa
B0_4a37:		sty $a0, x		; 94 a0
B0_4a39:		lda $1e, x		; b5 1e
B0_4a3b:		ora #$01		; 09 01
B0_4a3d:		sta $1e, x		; 95 1e
B0_4a3f:		lda $00			; a5 00
B0_4a41:		and $07a9, x	; 3d a9 07
B0_4a44:		tay				; a8 
B0_4a45:		lda $06cc		; ad cc 06
B0_4a48:		bne B0_4a4b ; d0 01
B0_4a4a:		tay				; a8 
B0_4a4b:		lda $ca10, y	; b9 10 ca
B0_4a4e:		sta $078a, x	; 9d 8a 07
B0_4a51:		lda $07a8, x	; bd a8 07
B0_4a54:		ora #$c0		; 09 c0
B0_4a56:		sta $3c, x		; 95 3c
B0_4a58:		ldy #$fc		; a0 fc
B0_4a5a:		lda $09			; a5 09
B0_4a5c:		and #$40		; 29 40
B0_4a5e:		bne B0_4a62 ; d0 02
B0_4a60:		ldy #$04		; a0 04
B0_4a62:		sty $58, x		; 94 58
B0_4a64:		ldy #$01		; a0 01
B0_4a66:		jsr $e143		; 20 43 e1
B0_4a69:		bmi B0_4a75 ; 30 0a
B0_4a6b:		iny				; c8 
B0_4a6c:		lda $0796, x	; bd 96 07
B0_4a6f:		bne B0_4a75 ; d0 04
B0_4a71:		lda #$f8		; a9 f8
B0_4a73:		sta $58, x		; 95 58
B0_4a75:		sty $46, x		; 94 46
B0_4a77:		ldy #$00		; a0 00
B0_4a79:		lda $1e, x		; b5 1e
B0_4a7b:		and #$40		; 29 40
B0_4a7d:		bne B0_4a98 ; d0 19
B0_4a7f:		lda $1e, x		; b5 1e
B0_4a81:		asl a			; 0a
B0_4a82:		bcs B0_4ab4 ; b0 30
B0_4a84:		lda $1e, x		; b5 1e
B0_4a86:		and #$20		; 29 20
B0_4a88:		bne B0_4ae5 ; d0 5b
B0_4a8a:		lda $1e, x		; b5 1e
B0_4a8c:		and #$07		; 29 07
B0_4a8e:		beq B0_4ab4 ; f0 24
B0_4a90:		cmp #$05		; c9 05
B0_4a92:		beq B0_4a98 ; f0 04
B0_4a94:		cmp #$03		; c9 03
B0_4a96:		bcs B0_4ac8 ; b0 30
B0_4a98:		jsr $bf63		; 20 63 bf
B0_4a9b:		ldy #$00		; a0 00
B0_4a9d:		lda $1e, x		; b5 1e
B0_4a9f:		cmp #$02		; c9 02
B0_4aa1:		beq B0_4aaf ; f0 0c
B0_4aa3:		and #$40		; 29 40
B0_4aa5:		beq B0_4ab4 ; f0 0d
B0_4aa7:		lda $16, x		; b5 16
B0_4aa9:		cmp #$2e		; c9 2e
B0_4aab:		beq B0_4ab4 ; f0 07
B0_4aad:		bne B0_4ab2 ; d0 03
B0_4aaf:		jmp $bf02		; 4c 02 bf
B0_4ab2:		ldy #$01		; a0 01
B0_4ab4:		lda $58, x		; b5 58
B0_4ab6:		pha				; 48 
B0_4ab7:		bpl B0_4abb ; 10 02
B0_4ab9:		iny				; c8 
B0_4aba:		iny				; c8 
B0_4abb:		clc				; 18 
B0_4abc:		adc $c9d0, y	; 79 d0 c9
B0_4abf:		sta $58, x		; 95 58
B0_4ac1:		jsr $bf02		; 20 02 bf
B0_4ac4:		pla				; 68 
B0_4ac5:		sta $58, x		; 95 58
B0_4ac7:		rts				; 60 
B0_4ac8:		lda $0796, x	; bd 96 07
B0_4acb:		bne B0_4aeb ; d0 1e
B0_4acd:		sta $1e, x		; 95 1e
B0_4acf:		lda $09			; a5 09
B0_4ad1:		and #$01		; 29 01
B0_4ad3:		tay				; a8 
B0_4ad4:		iny				; c8 
B0_4ad5:		sty $46, x		; 94 46
B0_4ad7:		dey				; 88 
B0_4ad8:		lda $076a		; ad 6a 07
B0_4adb:		beq B0_4adf ; f0 02
B0_4add:		iny				; c8 
B0_4ade:		iny				; c8 
B0_4adf:		lda $c9d4, y	; b9 d4 c9
B0_4ae2:		sta $58, x		; 95 58
B0_4ae4:		rts				; 60 
B0_4ae5:		jsr $bf63		; 20 63 bf
B0_4ae8:		jmp $bf02		; 4c 02 bf
B0_4aeb:		cmp #$0e		; c9 0e
B0_4aed:		bne B0_4af8 ; d0 09
B0_4aef:		lda $16, x		; b5 16
B0_4af1:		cmp #$06		; c9 06
B0_4af3:		bne B0_4af8 ; d0 03
B0_4af5:		jsr $c998		; 20 98 c9
B0_4af8:		rts				; 60 
B0_4af9:		jsr $bf92		; 20 92 bf
B0_4afc:		jmp $bf02		; 4c 02 bf
B0_4aff:		lda $a0, x		; b5 a0
B0_4b01:		ora $0434, x	; 1d 34 04
B0_4b04:		bne B0_4b19 ; d0 13
B0_4b06:		sta $0417, x	; 9d 17 04
B0_4b09:		lda $cf, x		; b5 cf
B0_4b0b:		cmp $0401, x	; dd 01 04
B0_4b0e:		bcs B0_4b19 ; b0 09
B0_4b10:		lda $09			; a5 09
B0_4b12:		and #$07		; 29 07
B0_4b14:		bne B0_4b18 ; d0 02
B0_4b16:		inc $cf, x		; f6 cf
B0_4b18:		rts				; 60 
B0_4b19:		lda $cf, x		; b5 cf
B0_4b1b:		cmp $58, x		; d5 58
B0_4b1d:		bcc B0_4b22 ; 90 03
B0_4b1f:		jmp $bf75		; 4c 75 bf
B0_4b22:		jmp $bf70		; 4c 70 bf
B0_4b25:		jsr $cb45		; 20 45 cb
B0_4b28:		jsr $cb66		; 20 66 cb
B0_4b2b:		ldy #$01		; a0 01
B0_4b2d:		lda $09			; a5 09
B0_4b2f:		and #$03		; 29 03
B0_4b31:		bne B0_4b44 ; d0 11
B0_4b33:		lda $09			; a5 09
B0_4b35:		and #$40		; 29 40
B0_4b37:		bne B0_4b3b ; d0 02
B0_4b39:		ldy #$ff		; a0 ff
B0_4b3b:		sty $00			; 84 00
B0_4b3d:		lda $cf, x		; b5 cf
B0_4b3f:		clc				; 18 
B0_4b40:		adc $00			; 65 00
B0_4b42:		sta $cf, x		; 95 cf
B0_4b44:		rts				; 60 
B0_4b45:		lda #$13		; a9 13
B0_4b47:		sta $01			; 85 01
B0_4b49:		lda $09			; a5 09
B0_4b4b:		and #$03		; 29 03
B0_4b4d:		bne B0_4b5c ; d0 0d
B0_4b4f:		ldy $58, x		; b4 58
B0_4b51:		lda $a0, x		; b5 a0
B0_4b53:		lsr a			; 4a
B0_4b54:		bcs B0_4b60 ; b0 0a
B0_4b56:		cpy $01			; c4 01
B0_4b58:		beq B0_4b5d ; f0 03
B0_4b5a:		inc $58, x		; f6 58
B0_4b5c:		rts				; 60 
B0_4b5d:		inc $a0, x		; f6 a0
B0_4b5f:		rts				; 60 
B0_4b60:		tya				; 98 
B0_4b61:		beq B0_4b5d ; f0 fa
B0_4b63:		dec $58, x		; d6 58
B0_4b65:		rts				; 60 
B0_4b66:		lda $58, x		; b5 58
B0_4b68:		pha				; 48 
B0_4b69:		ldy #$01		; a0 01
B0_4b6b:		lda $a0, x		; b5 a0
B0_4b6d:		and #$02		; 29 02
B0_4b6f:		bne B0_4b7c ; d0 0b
B0_4b71:		lda $58, x		; b5 58
B0_4b73:		eor #$ff		; 49 ff
B0_4b75:		clc				; 18 
B0_4b76:		adc #$01		; 69 01
B0_4b78:		sta $58, x		; 95 58
B0_4b7a:		ldy #$02		; a0 02
B0_4b7c:		sty $46, x		; 94 46
B0_4b7e:		jsr $bf02		; 20 02 bf
B0_4b81:		sta $00			; 85 00
B0_4b83:		pla				; 68 
B0_4b84:		sta $58, x		; 95 58
B0_4b86:		rts				; 60 
B0_4b87:	.db $3f
B0_4b88:	.db $03
B0_4b89:		lda $1e, x		; b5 1e
B0_4b8b:		and #$20		; 29 20
B0_4b8d:		bne B0_4bdc ; d0 4d
B0_4b8f:		ldy $06cc		; ac cc 06
B0_4b92:		lda $07a8, x	; bd a8 07
B0_4b95:		and $cb87, y	; 39 87 cb
B0_4b98:		bne B0_4bac ; d0 12
B0_4b9a:		txa				; 8a 
B0_4b9b:		lsr a			; 4a
B0_4b9c:		bcc B0_4ba2 ; 90 04
B0_4b9e:		ldy $45			; a4 45
B0_4ba0:		bcs B0_4baa ; b0 08
B0_4ba2:		ldy #$02		; a0 02
B0_4ba4:		jsr $e143		; 20 43 e1
B0_4ba7:		bpl B0_4baa ; 10 01
B0_4ba9:		dey				; 88 
B0_4baa:		sty $46, x		; 94 46
B0_4bac:		jsr $cbdf		; 20 df cb
B0_4baf:		lda $cf, x		; b5 cf
B0_4bb1:		sec				; 38 
B0_4bb2:		sbc $0434, x	; fd 34 04
B0_4bb5:		cmp #$20		; c9 20
B0_4bb7:		bcc B0_4bbb ; 90 02
B0_4bb9:		sta $cf, x		; 95 cf
B0_4bbb:		ldy $46, x		; b4 46
B0_4bbd:		dey				; 88 
B0_4bbe:		bne B0_4bce ; d0 0e
B0_4bc0:		lda $87, x		; b5 87
B0_4bc2:		clc				; 18 
B0_4bc3:		adc $58, x		; 75 58
B0_4bc5:		sta $87, x		; 95 87
B0_4bc7:		lda $6e, x		; b5 6e
B0_4bc9:		adc #$00		; 69 00
B0_4bcb:		sta $6e, x		; 95 6e
B0_4bcd:		rts				; 60 
B0_4bce:		lda $87, x		; b5 87
B0_4bd0:		sec				; 38 
B0_4bd1:		sbc $58, x		; f5 58
B0_4bd3:		sta $87, x		; 95 87
B0_4bd5:		lda $6e, x		; b5 6e
B0_4bd7:		sbc #$00		; e9 00
B0_4bd9:		sta $6e, x		; 95 6e
B0_4bdb:		rts				; 60 
B0_4bdc:		jmp $bf8c		; 4c 8c bf
B0_4bdf:		lda $a0, x		; b5 a0
B0_4be1:		and #$02		; 29 02
B0_4be3:		bne B0_4c1c ; d0 37
B0_4be5:		lda $09			; a5 09
B0_4be7:		and #$07		; 29 07
B0_4be9:		pha				; 48 
B0_4bea:		lda $a0, x		; b5 a0
B0_4bec:		lsr a			; 4a
B0_4bed:		bcs B0_4c04 ; b0 15
B0_4bef:		pla				; 68 
B0_4bf0:		bne B0_4c03 ; d0 11
B0_4bf2:		lda $0434, x	; bd 34 04
B0_4bf5:		clc				; 18 
B0_4bf6:		adc #$01		; 69 01
B0_4bf8:		sta $0434, x	; 9d 34 04
B0_4bfb:		sta $58, x		; 95 58
B0_4bfd:		cmp #$02		; c9 02
B0_4bff:		bne B0_4c03 ; d0 02
B0_4c01:		inc $a0, x		; f6 a0
B0_4c03:		rts				; 60 
B0_4c04:		pla				; 68 
B0_4c05:		bne B0_4c1b ; d0 14
B0_4c07:		lda $0434, x	; bd 34 04
B0_4c0a:		sec				; 38 
B0_4c0b:		sbc #$01		; e9 01
B0_4c0d:		sta $0434, x	; 9d 34 04
B0_4c10:		sta $58, x		; 95 58
B0_4c12:		bne B0_4c1b ; d0 07
B0_4c14:		inc $a0, x		; f6 a0
B0_4c16:		lda #$02		; a9 02
B0_4c18:		sta $0796, x	; 9d 96 07
B0_4c1b:		rts				; 60 
B0_4c1c:		lda $0796, x	; bd 96 07
B0_4c1f:		beq B0_4c29 ; f0 08
B0_4c21:		lda $09			; a5 09
B0_4c23:		lsr a			; 4a
B0_4c24:		bcs B0_4c28 ; b0 02
B0_4c26:		inc $cf, x		; f6 cf
B0_4c28:		rts				; 60 
B0_4c29:		lda $cf, x		; b5 cf
B0_4c2b:		adc #$10		; 69 10
B0_4c2d:		cmp $ce			; c5 ce
B0_4c2f:		bcc B0_4c21 ; 90 f0
B0_4c31:		lda #$00		; a9 00
B0_4c33:		sta $a0, x		; 95 a0
B0_4c35:		rts				; 60 
B0_4c36:		lda $1e, x		; b5 1e
B0_4c38:		and #$20		; 29 20
B0_4c3a:		beq B0_4c3f ; f0 03
B0_4c3c:		jmp $bf92		; 4c 92 bf
B0_4c3f:		lda #$e8		; a9 e8
B0_4c41:		sta $58, x		; 95 58
B0_4c43:		jmp $bf02		; 4c 02 bf
B0_4c46:		rti				; 40 
B0_4c47:	.db $80
B0_4c48:	.db $04
B0_4c49:	.db $04
B0_4c4a:		lda $1e, x		; b5 1e
B0_4c4c:		and #$20		; 29 20
B0_4c4e:		beq B0_4c53 ; f0 03
B0_4c50:		jmp $bf8c		; 4c 8c bf
B0_4c53:		sta $03			; 85 03
B0_4c55:		lda $16, x		; b5 16
B0_4c57:		sec				; 38 
B0_4c58:		sbc #$0a		; e9 0a
B0_4c5a:		tay				; a8 
B0_4c5b:		lda $cc46, y	; b9 46 cc
B0_4c5e:		sta $02			; 85 02
B0_4c60:		lda $0401, x	; bd 01 04
B0_4c63:		sec				; 38 
B0_4c64:		sbc $02			; e5 02
B0_4c66:		sta $0401, x	; 9d 01 04
B0_4c69:		lda $87, x		; b5 87
B0_4c6b:		sbc #$00		; e9 00
B0_4c6d:		sta $87, x		; 95 87
B0_4c6f:		lda $6e, x		; b5 6e
B0_4c71:		sbc #$00		; e9 00
B0_4c73:		sta $6e, x		; 95 6e
B0_4c75:		lda #$20		; a9 20
B0_4c77:		sta $02			; 85 02
B0_4c79:		cpx #$02		; e0 02
B0_4c7b:		bcc B0_4cc6 ; 90 49
B0_4c7d:		lda $58, x		; b5 58
B0_4c7f:		cmp #$10		; c9 10
B0_4c81:		bcc B0_4c99 ; 90 16
B0_4c83:		lda $0417, x	; bd 17 04
B0_4c86:		clc				; 18 
B0_4c87:		adc $02			; 65 02
B0_4c89:		sta $0417, x	; 9d 17 04
B0_4c8c:		lda $cf, x		; b5 cf
B0_4c8e:		adc $03			; 65 03
B0_4c90:		sta $cf, x		; 95 cf
B0_4c92:		lda $b6, x		; b5 b6
B0_4c94:		adc #$00		; 69 00
B0_4c96:		jmp $ccac		; 4c ac cc
B0_4c99:		lda $0417, x	; bd 17 04
B0_4c9c:		sec				; 38 
B0_4c9d:		sbc $02			; e5 02
B0_4c9f:		sta $0417, x	; 9d 17 04
B0_4ca2:		lda $cf, x		; b5 cf
B0_4ca4:		sbc $03			; e5 03
B0_4ca6:		sta $cf, x		; 95 cf
B0_4ca8:		lda $b6, x		; b5 b6
B0_4caa:		sbc #$00		; e9 00
B0_4cac:		sta $b6, x		; 95 b6
B0_4cae:		ldy #$00		; a0 00
B0_4cb0:		lda $cf, x		; b5 cf
B0_4cb2:		sec				; 38 
B0_4cb3:		sbc $0434, x	; fd 34 04
B0_4cb6:		bpl B0_4cbf ; 10 07
B0_4cb8:		ldy #$10		; a0 10
B0_4cba:		eor #$ff		; 49 ff
B0_4cbc:		clc				; 18 
B0_4cbd:		adc #$01		; 69 01
B0_4cbf:		cmp #$0f		; c9 0f
B0_4cc1:		bcc B0_4cc6 ; 90 03
B0_4cc3:		tya				; 98 
B0_4cc4:		sta $58, x		; 95 58
B0_4cc6:		rts				; 60 
B0_4cc7:		brk				; 00
B0_4cc8:		ora ($03, x)	; 01 03
B0_4cca:	.db $04
B0_4ccb:		ora $06			; 05 06
B0_4ccd:	.db $07
B0_4cce:	.db $07
B0_4ccf:		php				; 08 
B0_4cd0:		brk				; 00
B0_4cd1:	.db $03
B0_4cd2:		asl $09			; 06 09
B0_4cd4:	.db $0b
B0_4cd5:		ora $0f0e		; 0d 0e 0f
B0_4cd8:		bpl B0_4cda ; 10 00
B0_4cda:	.db $04
B0_4cdb:		ora #$0d		; 09 0d
B0_4cdd:		bpl B0_4cf2 ; 10 13
B0_4cdf:		asl $17, x		; 16 17
B0_4ce1:		clc				; 18 
B0_4ce2:		brk				; 00
B0_4ce3:		asl $0c			; 06 0c
B0_4ce5:	.db $12
B0_4ce6:		asl $1a, x		; 16 1a
B0_4ce8:		ora $201f, x	; 1d 1f 20
B0_4ceb:		brk				; 00
B0_4cec:	.db $07
B0_4ced:	.db $0f
B0_4cee:		asl $1c, x		; 16 1c
B0_4cf0:		and ($25, x)	; 21 25
B0_4cf2:	.db $27
B0_4cf3:		plp				; 28 
B0_4cf4:		brk				; 00
B0_4cf5:		ora #$12		; 09 12
B0_4cf7:	.db $1b
B0_4cf8:		and ($27, x)	; 21 27
B0_4cfa:		bit $302f		; 2c 2f 30
B0_4cfd:		brk				; 00
B0_4cfe:	.db $0b
B0_4cff:		ora $1f, x		; 15 1f
B0_4d01:	.db $27
B0_4d02:		rol $3733		; 2e 33 37
B0_4d05:		sec				; 38 
B0_4d06:		brk				; 00
B0_4d07:	.db $0c
B0_4d08:		clc				; 18 
B0_4d09:		bit $2d			; 24 2d
B0_4d0b:		and $3b, x		; 35 3b
B0_4d0d:	.hex 3e 40 00
B0_4d10:		asl $281b		; 0e 1b 28
B0_4d13:	.db $32
B0_4d14:	.db $3b
B0_4d15:	.db $42
B0_4d16:		lsr $48			; 46 48
B0_4d18:		brk				; 00
B0_4d19:	.db $0f
B0_4d1a:	.db $1f
B0_4d1b:		and $4238		; 2d 38 42
B0_4d1e:		lsr a			; 4a
B0_4d1f:	.hex 4e 50 00
B0_4d22:		ora ($22), y	; 11 22
B0_4d24:		and ($3e), y	; 31 3e
B0_4d26:		eor #$51		; 49 51
B0_4d28:		lsr $58, x		; 56 58
B0_4d2a:		ora ($03, x)	; 01 03
B0_4d2c:	.db $02
B0_4d2d:		brk				; 00
B0_4d2e:		brk				; 00
B0_4d2f:		ora #$12		; 09 12
B0_4d31:	.db $1b
B0_4d32:		bit $2d			; 24 2d
B0_4d34:		rol $3f, x		; 36 3f
B0_4d36:		pha				; 48 
B0_4d37:		eor ($5a), y	; 51 5a
B0_4d39:	.db $63
B0_4d3a:	.db $0c
B0_4d3b:		clc				; 18 
B0_4d3c:		jsr $f1af		; 20 af f1
B0_4d3f:		lda $03d1		; ad d1 03
B0_4d42:		and #$08		; 29 08
B0_4d44:		bne B0_4dba ; d0 74
B0_4d46:		lda $0747		; ad 47 07
B0_4d49:		bne B0_4d55 ; d0 0a
B0_4d4b:		lda $0388, x	; bd 88 03
B0_4d4e:		jsr $d410		; 20 10 d4
B0_4d51:		and #$1f		; 29 1f
B0_4d53:		sta $a0, x		; 95 a0
B0_4d55:		lda $a0, x		; b5 a0
B0_4d57:		ldy $16, x		; b4 16
B0_4d59:		cpy #$1f		; c0 1f
B0_4d5b:		bcc B0_4d6a ; 90 0d
B0_4d5d:		cmp #$08		; c9 08
B0_4d5f:		beq B0_4d65 ; f0 04
B0_4d61:		cmp #$18		; c9 18
B0_4d63:		bne B0_4d6a ; d0 05
B0_4d65:		clc				; 18 
B0_4d66:		adc #$01		; 69 01
B0_4d68:		sta $a0, x		; 95 a0
B0_4d6a:		sta $ef			; 85 ef
B0_4d6c:		jsr $f152		; 20 52 f1
B0_4d6f:		jsr $ce8e		; 20 8e ce
B0_4d72:		ldy $06e5, x	; bc e5 06
B0_4d75:		lda $03b9		; ad b9 03
B0_4d78:		sta $0200, y	; 99 00 02
B0_4d7b:		sta $07			; 85 07
B0_4d7d:		lda $03ae		; ad ae 03
B0_4d80:		sta $0203, y	; 99 03 02
B0_4d83:		sta $06			; 85 06
B0_4d85:		lda #$01		; a9 01
B0_4d87:		sta $00			; 85 00
B0_4d89:		jsr $ce08		; 20 08 ce
B0_4d8c:		ldy #$05		; a0 05
B0_4d8e:		lda $16, x		; b5 16
B0_4d90:		cmp #$1f		; c9 1f
B0_4d92:		bcc B0_4d96 ; 90 02
B0_4d94:		ldy #$0b		; a0 0b
B0_4d96:		sty $ed			; 84 ed
B0_4d98:		lda #$00		; a9 00
B0_4d9a:		sta $00			; 85 00
B0_4d9c:		lda $ef			; a5 ef
B0_4d9e:		jsr $ce8e		; 20 8e ce
B0_4da1:		jsr $cdbb		; 20 bb cd
B0_4da4:		lda $00			; a5 00
B0_4da6:		cmp #$04		; c9 04
B0_4da8:		bne B0_4db2 ; d0 08
B0_4daa:		ldy $06cf		; ac cf 06
B0_4dad:		lda $06e5, y	; b9 e5 06
B0_4db0:		sta $06			; 85 06
B0_4db2:		inc $00			; e6 00
B0_4db4:		lda $00			; a5 00
B0_4db6:		cmp $ed			; c5 ed
B0_4db8:		bcc B0_4d9c ; 90 e2
B0_4dba:		rts				; 60 
B0_4dbb:		lda $03			; a5 03
B0_4dbd:		sta $05			; 85 05
B0_4dbf:		ldy $06			; a4 06
B0_4dc1:		lda $01			; a5 01
B0_4dc3:		lsr $05			; 46 05
B0_4dc5:		bcs B0_4dcb ; b0 04
B0_4dc7:		eor #$ff		; 49 ff
B0_4dc9:		adc #$01		; 69 01
B0_4dcb:		clc				; 18 
B0_4dcc:		adc $03ae		; 6d ae 03
B0_4dcf:		sta $0203, y	; 99 03 02
B0_4dd2:		sta $06			; 85 06
B0_4dd4:		cmp $03ae		; cd ae 03
B0_4dd7:		bcs B0_4de2 ; b0 09
B0_4dd9:		lda $03ae		; ad ae 03
B0_4ddc:		sec				; 38 
B0_4ddd:		sbc $06			; e5 06
B0_4ddf:		jmp $cde6		; 4c e6 cd
B0_4de2:		sec				; 38 
B0_4de3:		sbc $03ae		; edae 03
B0_4de6:		cmp #$59		; c9 59
B0_4de8:		bcc B0_4dee ; 90 04
B0_4dea:		lda #$f8		; a9 f8
B0_4dec:		bne B0_4e03 ; d0 15
B0_4dee:		lda $03b9		; ad b9 03
B0_4df1:		cmp #$f8		; c9 f8
B0_4df3:		beq B0_4e03 ; f0 0e
B0_4df5:		lda $02			; a5 02
B0_4df7:		lsr $05			; 46 05
B0_4df9:		bcs B0_4dff ; b0 04
B0_4dfb:		eor #$ff		; 49 ff
B0_4dfd:		adc #$01		; 69 01
B0_4dff:		clc				; 18 
B0_4e00:		adc $03b9		; 6d b9 03
B0_4e03:		sta $0200, y	; 99 00 02
B0_4e06:		sta $07			; 85 07
B0_4e08:		jsr $eced		; 20 ed ec
B0_4e0b:		tya				; 98 
B0_4e0c:		pha				; 48 
B0_4e0d:		lda $079f		; ad 9f 07
B0_4e10:		ora $0747		; 0d 47 07
B0_4e13:		bne B0_4e85 ; d0 70
B0_4e15:		sta $05			; 85 05
B0_4e17:		ldy $b5			; a4 b5
B0_4e19:		dey				; 88 
B0_4e1a:		bne B0_4e85 ; d0 69
B0_4e1c:		ldy $ce			; a4 ce
B0_4e1e:		lda $0754		; ad 54 07
B0_4e21:		bne B0_4e28 ; d0 05
B0_4e23:		lda $0714		; ad 14 07
B0_4e26:		beq B0_4e31 ; f0 09
B0_4e28:		inc $05			; e6 05
B0_4e2a:		inc $05			; e6 05
B0_4e2c:		tya				; 98 
B0_4e2d:		clc				; 18 
B0_4e2e:		adc #$18		; 69 18
B0_4e30:		tay				; a8 
B0_4e31:		tya				; 98 
B0_4e32:		sec				; 38 
B0_4e33:		sbc $07			; e5 07
B0_4e35:		bpl B0_4e3c ; 10 05
B0_4e37:		eor #$ff		; 49 ff
B0_4e39:		clc				; 18 
B0_4e3a:		adc #$01		; 69 01
B0_4e3c:		cmp #$08		; c9 08
B0_4e3e:		bcs B0_4e5c ; b0 1c
B0_4e40:		lda $06			; a5 06
B0_4e42:		cmp #$f0		; c9 f0
B0_4e44:		bcs B0_4e5c ; b0 16
B0_4e46:		lda $0207		; ad 07 02
B0_4e49:		clc				; 18 
B0_4e4a:		adc #$04		; 69 04
B0_4e4c:		sta $04			; 85 04
B0_4e4e:		sec				; 38 
B0_4e4f:		sbc $06			; e5 06
B0_4e51:		bpl B0_4e58 ; 10 05
B0_4e53:		eor #$ff		; 49 ff
B0_4e55:		clc				; 18 
B0_4e56:		adc #$01		; 69 01
B0_4e58:		cmp #$08		; c9 08
B0_4e5a:		bcc B0_4e6f ; 90 13
B0_4e5c:		lda $05			; a5 05
B0_4e5e:		cmp #$02		; c9 02
B0_4e60:		beq B0_4e85 ; f0 23
B0_4e62:		ldy $05			; a4 05
B0_4e64:		lda $ce			; a5 ce
B0_4e66:		clc				; 18 
B0_4e67:		adc $cd3a, y	; 79 3a cd
B0_4e6a:		inc $05			; e6 05
B0_4e6c:		jmp $ce32		; 4c 32 ce
B0_4e6f:		ldx #$01		; a2 01
B0_4e71:		lda $04			; a5 04
B0_4e73:		cmp $06			; c5 06
B0_4e75:		bcs B0_4e78 ; b0 01
B0_4e77:		inx				; e8 
B0_4e78:		stx $46			; 86 46
B0_4e7a:		ldx #$00		; a2 00
B0_4e7c:		lda $00			; a5 00
B0_4e7e:		pha				; 48 
B0_4e7f:		jsr $d92c		; 20 2c d9
B0_4e82:		pla				; 68 
B0_4e83:		sta $00			; 85 00
B0_4e85:		pla				; 68 
B0_4e86:		clc				; 18 
B0_4e87:		adc #$04		; 69 04
B0_4e89:		sta $06			; 85 06
B0_4e8b:		ldx $08			; a6 08
B0_4e8d:		rts				; 60 
B0_4e8e:		pha				; 48 
B0_4e8f:		and #$0f		; 29 0f
B0_4e91:		cmp #$09		; c9 09
B0_4e93:		bcc B0_4e9a ; 90 05
B0_4e95:		eor #$0f		; 49 0f
B0_4e97:		clc				; 18 
B0_4e98:		adc #$01		; 69 01
B0_4e9a:		sta $01			; 85 01
B0_4e9c:		ldy $00			; a4 00
B0_4e9e:		lda $cd2e, y	; b9 2e cd
B0_4ea1:		clc				; 18 
B0_4ea2:		adc $01			; 65 01
B0_4ea4:		tay				; a8 
B0_4ea5:		lda $ccc7, y	; b9 c7 cc
B0_4ea8:		sta $01			; 85 01
B0_4eaa:		pla				; 68 
B0_4eab:		pha				; 48 
B0_4eac:		clc				; 18 
B0_4ead:		adc #$08		; 69 08
B0_4eaf:		and #$0f		; 29 0f
B0_4eb1:		cmp #$09		; c9 09
B0_4eb3:		bcc B0_4eba ; 90 05
B0_4eb5:		eor #$0f		; 49 0f
B0_4eb7:		clc				; 18 
B0_4eb8:		adc #$01		; 69 01
B0_4eba:		sta $02			; 85 02
B0_4ebc:		ldy $00			; a4 00
B0_4ebe:		lda $cd2e, y	; b9 2e cd
B0_4ec1:		clc				; 18 
B0_4ec2:		adc $02			; 65 02
B0_4ec4:		tay				; a8 
B0_4ec5:		lda $ccc7, y	; b9 c7 cc
B0_4ec8:		sta $02			; 85 02
B0_4eca:		pla				; 68 
B0_4ecb:		lsr a			; 4a
B0_4ecc:		lsr a			; 4a
B0_4ecd:		lsr a			; 4a
B0_4ece:		tay				; a8 
B0_4ecf:		lda $cd2a, y	; b9 2a cd
B0_4ed2:		sta $03			; 85 03
B0_4ed4:		rts				; 60 
B0_4ed5:		sed				; f8 
B0_4ed6:		ldy #$70		; a0 70
B0_4ed8:		lda $2000, x	; bd 00 20
B0_4edb:	.hex 20 20 00
B0_4ede:		brk				; 00
B0_4edf:		lda $1e, x		; b5 1e
B0_4ee1:		and #$20		; 29 20
B0_4ee3:		beq B0_4eed ; f0 08
B0_4ee5:		lda #$00		; a9 00
B0_4ee7:		sta $03c5, x	; 9d c5 03
B0_4eea:		jmp $bf92		; 4c 92 bf
B0_4eed:		jsr $bf02		; 20 02 bf
B0_4ef0:		ldy #$0d		; a0 0d
B0_4ef2:		lda #$05		; a9 05
B0_4ef4:		jsr $bf96		; 20 96 bf
B0_4ef7:		lda $0434, x	; bd 34 04
B0_4efa:		lsr a			; 4a
B0_4efb:		lsr a			; 4a
B0_4efc:		lsr a			; 4a
B0_4efd:		lsr a			; 4a
B0_4efe:		tay				; a8 
B0_4eff:		lda $cf, x		; b5 cf
B0_4f01:		sec				; 38 
B0_4f02:		sbc $ced5, y	; f9 d5 ce
B0_4f05:		bpl B0_4f0c ; 10 05
B0_4f07:		eor #$ff		; 49 ff
B0_4f09:		clc				; 18 
B0_4f0a:		adc #$01		; 69 01
B0_4f0c:		cmp #$08		; c9 08
B0_4f0e:		bcs B0_4f1e ; b0 0e
B0_4f10:		lda $0434, x	; bd 34 04
B0_4f13:		clc				; 18 
B0_4f14:		adc #$10		; 69 10
B0_4f16:		sta $0434, x	; 9d 34 04
B0_4f19:		lsr a			; 4a
B0_4f1a:		lsr a			; 4a
B0_4f1b:		lsr a			; 4a
B0_4f1c:		lsr a			; 4a
B0_4f1d:		tay				; a8 
B0_4f1e:		lda $ceda, y	; b9 da ce
B0_4f21:		sta $03c5, x	; 9d c5 03
B0_4f24:		rts				; 60 
B0_4f25:		ora $30, x		; 15 30
B0_4f27:		rti				; 40 
B0_4f28:		lda $1e, x		; b5 1e
B0_4f2a:		and #$20		; 29 20
B0_4f2c:		beq B0_4f31 ; f0 03
B0_4f2e:		jmp $bf63		; 4c 63 bf
B0_4f31:		lda $1e, x		; b5 1e
B0_4f33:		beq B0_4f40 ; f0 0b
B0_4f35:		lda #$00		; a9 00
B0_4f37:		sta $a0, x		; 95 a0
B0_4f39:		sta $06cb		; 8d cb 06
B0_4f3c:		lda #$10		; a9 10
B0_4f3e:		bne B0_4f53 ; d0 13
B0_4f40:		lda #$12		; a9 12
B0_4f42:		sta $06cb		; 8d cb 06
B0_4f45:		ldy #$02		; a0 02
B0_4f47:		lda $cf25, y	; b9 25 cf
B0_4f4a:	.hex 99 01 00
B0_4f4d:		dey				; 88 
B0_4f4e:		bpl B0_4f47 ; 10 f7
B0_4f50:		jsr $cf6c		; 20 6c cf
B0_4f53:		sta $58, x		; 95 58
B0_4f55:		ldy #$01		; a0 01
B0_4f57:		lda $a0, x		; b5 a0
B0_4f59:		and #$01		; 29 01
B0_4f5b:		bne B0_4f67 ; d0 0a
B0_4f5d:		lda $58, x		; b5 58
B0_4f5f:		eor #$ff		; 49 ff
B0_4f61:		clc				; 18 
B0_4f62:		adc #$01		; 69 01
B0_4f64:		sta $58, x		; 95 58
B0_4f66:		iny				; c8 
B0_4f67:		sty $46, x		; 94 46
B0_4f69:		jmp $bf02		; 4c 02 bf
B0_4f6c:		ldy #$00		; a0 00
B0_4f6e:		jsr $e143		; 20 43 e1
B0_4f71:		bpl B0_4f7d ; 10 0a
B0_4f73:		iny				; c8 
B0_4f74:		lda $00			; a5 00
B0_4f76:		eor #$ff		; 49 ff
B0_4f78:		clc				; 18 
B0_4f79:		adc #$01		; 69 01
B0_4f7b:		sta $00			; 85 00
B0_4f7d:		lda $00			; a5 00
B0_4f7f:		cmp #$3c		; c9 3c
B0_4f81:		bcc B0_4f9f ; 90 1c
B0_4f83:		lda #$3c		; a9 3c
B0_4f85:		sta $00			; 85 00
B0_4f87:		lda $16, x		; b5 16
B0_4f89:		cmp #$11		; c9 11
B0_4f8b:		bne B0_4f9f ; d0 12
B0_4f8d:		tya				; 98 
B0_4f8e:		cmp $a0, x		; d5 a0
B0_4f90:		beq B0_4f9f ; f0 0d
B0_4f92:		lda $a0, x		; b5 a0
B0_4f94:		beq B0_4f9c ; f0 06
B0_4f96:		dec $58, x		; d6 58
B0_4f98:		lda $58, x		; b5 58
B0_4f9a:		bne B0_4fdc ; d0 40
B0_4f9c:		tya				; 98 
B0_4f9d:		sta $a0, x		; 95 a0
B0_4f9f:		lda $00			; a5 00
B0_4fa1:		and #$3c		; 29 3c
B0_4fa3:		lsr a			; 4a
B0_4fa4:		lsr a			; 4a
B0_4fa5:		sta $00			; 85 00
B0_4fa7:		ldy #$00		; a0 00
B0_4fa9:		lda $57			; a5 57
B0_4fab:		beq B0_4fd1 ; f0 24
B0_4fad:		lda $0775		; ad 75 07
B0_4fb0:		beq B0_4fd1 ; f0 1f
B0_4fb2:		iny				; c8 
B0_4fb3:		lda $57			; a5 57
B0_4fb5:		cmp #$19		; c9 19
B0_4fb7:		bcc B0_4fc1 ; 90 08
B0_4fb9:		lda $0775		; ad 75 07
B0_4fbc:		cmp #$02		; c9 02
B0_4fbe:		bcc B0_4fc1 ; 90 01
B0_4fc0:		iny				; c8 
B0_4fc1:		lda $16, x		; b5 16
B0_4fc3:		cmp #$12		; c9 12
B0_4fc5:		bne B0_4fcb ; d0 04
B0_4fc7:		lda $57			; a5 57
B0_4fc9:		bne B0_4fd1 ; d0 06
B0_4fcb:		lda $a0, x		; b5 a0
B0_4fcd:		bne B0_4fd1 ; d0 02
B0_4fcf:		ldy #$00		; a0 00
B0_4fd1:	.hex b9 01 00
B0_4fd4:		ldy $00			; a4 00
B0_4fd6:		sec				; 38 
B0_4fd7:		sbc #$01		; e9 01
B0_4fd9:		dey				; 88 
B0_4fda:		bpl B0_4fd6 ; 10 fa
B0_4fdc:		rts				; 60 
B0_4fdd:	.db $1a
B0_4fde:		cli				; 58 
B0_4fdf:		tya				; 98 
B0_4fe0:		stx $94, y		; 96 94
B0_4fe2:	.db $92
B0_4fe3:		bcc B0_4f73 ; 90 8e
B0_4fe5:		sty $888a		; 8c 8a 88
B0_4fe8:		stx $84			; 86 84
B0_4fea:	.db $82
B0_4feb:	.db $80
B0_4fec:		ldx $0368		; ae 68 03
B0_4fef:		lda $16, x		; b5 16
B0_4ff1:		cmp #$2d		; c9 2d
B0_4ff3:		bne B0_5005 ; d0 10
B0_4ff5:		stx $08			; 86 08
B0_4ff7:		lda $1e, x		; b5 1e
B0_4ff9:		beq B0_5015 ; f0 1a
B0_4ffb:		and #$40		; 29 40
B0_4ffd:		beq B0_5005 ; f0 06
B0_4fff:		lda $cf, x		; b5 cf
B0_5001:		cmp #$e0		; c9 e0
B0_5003:		bcc B0_500f ; 90 0a
B0_5005:		lda #$80		; a9 80
B0_5007:		sta $fc			; 85 fc
B0_5009:		inc $0772		; ee 72 07
B0_500c:		jmp $d071		; 4c 71 d0
B0_500f:		jsr $bf8c		; 20 8c bf
B0_5012:		jmp $d17b		; 4c 7b d1
B0_5015:		dec $0364		; ce 64 03
B0_5018:		bne B0_505e ; d0 44
B0_501a:		lda #$04		; a9 04
B0_501c:		sta $0364		; 8d 64 03
B0_501f:		lda $0363		; ad 63 03
B0_5022:		eor #$01		; 49 01
B0_5024:		sta $0363		; 8d 63 03
B0_5027:		lda #$22		; a9 22
B0_5029:		sta $05			; 85 05
B0_502b:		ldy $0369		; ac 69 03
B0_502e:		lda $cfdd, y	; b9 dd cf
B0_5031:		sta $04			; 85 04
B0_5033:		ldy $0300		; ac 00 03
B0_5036:		iny				; c8 
B0_5037:		ldx #$0c		; a2 0c
B0_5039:		jsr $8acd		; 20 cd 8a
B0_503c:		ldx $08			; a6 08
B0_503e:		jsr $8a8f		; 20 8f 8a
B0_5041:		lda #$08		; a9 08
B0_5043:		sta $fe			; 85 fe
B0_5045:		lda #$01		; a9 01
B0_5047:		sta $fd			; 85 fd
B0_5049:		inc $0369		; ee 69 03
B0_504c:		lda $0369		; ad 69 03
B0_504f:		cmp #$0f		; c9 0f
B0_5051:		bne B0_505e ; d0 0b
B0_5053:		jsr $c363		; 20 63 c3
B0_5056:		lda #$40		; a9 40
B0_5058:		sta $1e, x		; 95 1e
B0_505a:		lda #$80		; a9 80
B0_505c:		sta $fe			; 85 fe
B0_505e:		jmp $d17b		; 4c 7b d1
B0_5061:		and ($41, x)	; 21 41
B0_5063:		ora ($31), y	; 11 31
B0_5065:		lda $1e, x		; b5 1e
B0_5067:		and #$20		; 29 20
B0_5069:		beq B0_507f ; f0 14
B0_506b:		lda $cf, x		; b5 cf
B0_506d:		cmp #$e0		; c9 e0
B0_506f:		bcc B0_500f ; 90 9e
B0_5071:		ldx #$04		; a2 04
B0_5073:		jsr $c998		; 20 98 c9
B0_5076:		dex				; ca 
B0_5077:		bpl B0_5073 ; 10 fa
B0_5079:		sta $06cb		; 8d cb 06
B0_507c:		ldx $08			; a6 08
B0_507e:		rts				; 60 
B0_507f:		lda #$00		; a9 00
B0_5081:		sta $06cb		; 8d cb 06
B0_5084:		lda $0747		; ad 47 07
B0_5087:		beq B0_508c ; f0 03
B0_5089:		jmp $d139		; 4c 39 d1
B0_508c:		lda $0363		; ad 63 03
B0_508f:		bpl B0_5094 ; 10 03
B0_5091:		jmp $d10f		; 4c 0f d1
B0_5094:		dec $0364		; ce 64 03
B0_5097:		bne B0_50a6 ; d0 0d
B0_5099:		lda #$20		; a9 20
B0_509b:		sta $0364		; 8d 64 03
B0_509e:		lda $0363		; ad 63 03
B0_50a1:		eor #$01		; 49 01
B0_50a3:		sta $0363		; 8d 63 03
B0_50a6:		lda $09			; a5 09
B0_50a8:		and #$0f		; 29 0f
B0_50aa:		bne B0_50b0 ; d0 04
B0_50ac:		lda #$02		; a9 02
B0_50ae:		sta $46, x		; 95 46
B0_50b0:		lda $078a, x	; bd 8a 07
B0_50b3:		beq B0_50d1 ; f0 1c
B0_50b5:		jsr $e143		; 20 43 e1
B0_50b8:		bpl B0_50d1 ; 10 17
B0_50ba:		lda #$01		; a9 01
B0_50bc:		sta $46, x		; 95 46
B0_50be:		lda #$02		; a9 02
B0_50c0:		sta $0365		; 8d 65 03
B0_50c3:		lda #$20		; a9 20
B0_50c5:		sta $078a, x	; 9d 8a 07
B0_50c8:		sta $0790		; 8d 90 07
B0_50cb:		lda $87, x		; b5 87
B0_50cd:		cmp #$c8		; c9 c8
B0_50cf:		bcs B0_510f ; b0 3e
B0_50d1:		lda $09			; a5 09
B0_50d3:		and #$03		; 29 03
B0_50d5:		bne B0_510f ; d0 38
B0_50d7:		lda $87, x		; b5 87
B0_50d9:		cmp $0366		; cd 66 03
B0_50dc:		bne B0_50ea ; d0 0c
B0_50de:		lda $07a7, x	; bd a7 07
B0_50e1:		and #$03		; 29 03
B0_50e3:		tay				; a8 
B0_50e4:		lda $d061, y	; b9 61 d0
B0_50e7:		sta $06dc		; 8d dc 06
B0_50ea:		lda $87, x		; b5 87
B0_50ec:		clc				; 18 
B0_50ed:		adc $0365		; 6d 65 03
B0_50f0:		sta $87, x		; 95 87
B0_50f2:		ldy $46, x		; b4 46
B0_50f4:		cpy #$01		; c0 01
B0_50f6:		beq B0_510f ; f0 17
B0_50f8:		ldy #$ff		; a0 ff
B0_50fa:		sec				; 38 
B0_50fb:		sbc $0366		; ed66 03
B0_50fe:		bpl B0_5107 ; 10 07
B0_5100:		eor #$ff		; 49 ff
B0_5102:		clc				; 18 
B0_5103:		adc #$01		; 69 01
B0_5105:		ldy #$01		; a0 01
B0_5107:		cmp $06dc		; cd dc 06
B0_510a:		bcc B0_510f ; 90 03
B0_510c:		sty $0365		; 8c 65 03
B0_510f:		lda $078a, x	; bd 8a 07
B0_5112:		bne B0_513c ; d0 28
B0_5114:		jsr $bf8c		; 20 8c bf
B0_5117:		lda $075f		; ad 5f 07
B0_511a:		cmp #$05		; c9 05
B0_511c:		bcc B0_5127 ; 90 09
B0_511e:		lda $09			; a5 09
B0_5120:		and #$03		; 29 03
B0_5122:		bne B0_5127 ; d0 03
B0_5124:		jsr $ba94		; 20 94 ba
B0_5127:		lda $cf, x		; b5 cf
B0_5129:		cmp #$80		; c9 80
B0_512b:		bcc B0_5149 ; 90 1c
B0_512d:		lda $07a7, x	; bd a7 07
B0_5130:		and #$03		; 29 03
B0_5132:		tay				; a8 
B0_5133:		lda $d061, y	; b9 61 d0
B0_5136:		sta $078a, x	; 9d 8a 07
B0_5139:		jmp $d149		; 4c 49 d1
B0_513c:		cmp #$01		; c9 01
B0_513e:		bne B0_5149 ; d0 09
B0_5140:		dec $cf, x		; d6 cf
B0_5142:		jsr $c363		; 20 63 c3
B0_5145:		lda #$fe		; a9 fe
B0_5147:		sta $a0, x		; 95 a0
B0_5149:		lda $075f		; ad 5f 07
B0_514c:		cmp #$07		; c9 07
B0_514e:		beq B0_5154 ; f0 04
B0_5150:		cmp #$05		; c9 05
B0_5152:		bcs B0_517b ; b0 27
B0_5154:		lda $0790		; ad 90 07
B0_5157:		bne B0_517b ; d0 22
B0_5159:		lda #$20		; a9 20
B0_515b:		sta $0790		; 8d 90 07
B0_515e:		lda $0363		; ad 63 03
B0_5161:		eor #$80		; 49 80
B0_5163:		sta $0363		; 8d 63 03
B0_5166:		bmi B0_5149 ; 30 e1
B0_5168:		jsr $d1d9		; 20 d9 d1
B0_516b:		ldy $06cc		; ac cc 06
B0_516e:		beq B0_5173 ; f0 03
B0_5170:		sec				; 38 
B0_5171:		sbc #$10		; e9 10
B0_5173:		sta $0790		; 8d 90 07
B0_5176:		lda #$15		; a9 15
B0_5178:		sta $06cb		; 8d cb 06
B0_517b:		jsr $d1bc		; 20 bc d1
B0_517e:		ldy #$10		; a0 10
B0_5180:		lda $46, x		; b5 46
B0_5182:		lsr a			; 4a
B0_5183:		bcc B0_5187 ; 90 02
B0_5185:		ldy #$f0		; a0 f0
B0_5187:		tya				; 98 
B0_5188:		clc				; 18 
B0_5189:		adc $87, x		; 75 87
B0_518b:		ldy $06cf		; ac cf 06
B0_518e:	.hex 99 87 00
B0_5191:		lda $cf, x		; b5 cf
B0_5193:		clc				; 18 
B0_5194:		adc #$08		; 69 08
B0_5196:	.hex 99 cf 00
B0_5199:		lda $1e, x		; b5 1e
B0_519b:	.hex 99 1e 00
B0_519e:		lda $46, x		; b5 46
B0_51a0:	.hex 99 46 00
B0_51a3:		lda $08			; a5 08
B0_51a5:		pha				; 48 
B0_51a6:		ldx $06cf		; ae cf 06
B0_51a9:		stx $08			; 86 08
B0_51ab:		lda #$2d		; a9 2d
B0_51ad:		sta $16, x		; 95 16
B0_51af:		jsr $d1bc		; 20 bc d1
B0_51b2:		pla				; 68 
B0_51b3:		sta $08			; 85 08
B0_51b5:		tax				; aa 
B0_51b6:		lda #$00		; a9 00
B0_51b8:		sta $036a		; 8d 6a 03
B0_51bb:		rts				; 60 
B0_51bc:		inc $036a		; ee 6a 03
B0_51bf:		jsr $c8d7		; 20 d7 c8
B0_51c2:		lda $1e, x		; b5 1e
B0_51c4:		bne B0_51bb ; d0 f5
B0_51c6:		lda #$0a		; a9 0a
B0_51c8:		sta $049a, x	; 9d 9a 04
B0_51cb:		jsr $e243		; 20 43 e2
B0_51ce:		jmp $d853		; 4c 53 d8
B0_51d1:	.db $bf
B0_51d2:		rti				; 40 
B0_51d3:	.db $bf
B0_51d4:	.db $bf
B0_51d5:	.db $bf
B0_51d6:		rti				; 40 
B0_51d7:		rti				; 40 
B0_51d8:	.db $bf
B0_51d9:		ldy $0367		; ac 67 03
B0_51dc:		inc $0367		; ee 67 03
B0_51df:		lda $0367		; ad 67 03
B0_51e2:		and #$07		; 29 07
B0_51e4:		sta $0367		; 8d 67 03
B0_51e7:		lda $d1d1, y	; b9 d1 d1
B0_51ea:		rts				; 60 
B0_51eb:		lda $0747		; ad 47 07
B0_51ee:		bne B0_5220 ; d0 30
B0_51f0:		lda #$40		; a9 40
B0_51f2:		ldy $06cc		; ac cc 06
B0_51f5:		beq B0_51f9 ; f0 02
B0_51f7:		lda #$60		; a9 60
B0_51f9:		sta $00			; 85 00
B0_51fb:		lda $0401, x	; bd 01 04
B0_51fe:		sec				; 38 
B0_51ff:		sbc $00			; e5 00
B0_5201:		sta $0401, x	; 9d 01 04
B0_5204:		lda $87, x		; b5 87
B0_5206:		sbc #$01		; e9 01
B0_5208:		sta $87, x		; 95 87
B0_520a:		lda $6e, x		; b5 6e
B0_520c:		sbc #$00		; e9 00
B0_520e:		sta $6e, x		; 95 6e
B0_5210:		ldy $0417, x	; bc 17 04
B0_5213:		lda $cf, x		; b5 cf
B0_5215:		cmp $c59d, y	; d9 9d c5
B0_5218:		beq B0_5220 ; f0 06
B0_521a:		clc				; 18 
B0_521b:		adc $0434, x	; 7d 34 04
B0_521e:		sta $cf, x		; 95 cf
B0_5220:		jsr $f152		; 20 52 f1
B0_5223:		lda $1e, x		; b5 1e
B0_5225:		bne B0_51ea ; d0 c3
B0_5227:		lda #$51		; a9 51
B0_5229:		sta $00			; 85 00
B0_522b:		ldy #$02		; a0 02
B0_522d:		lda $09			; a5 09
B0_522f:		and #$02		; 29 02
B0_5231:		beq B0_5235 ; f0 02
B0_5233:		ldy #$82		; a0 82
B0_5235:		sty $01			; 84 01
B0_5237:		ldy $06e5, x	; bc e5 06
B0_523a:		ldx #$00		; a2 00
B0_523c:		lda $03b9		; ad b9 03
B0_523f:		sta $0200, y	; 99 00 02
B0_5242:		lda $00			; a5 00
B0_5244:		sta $0201, y	; 99 01 02
B0_5247:		inc $00			; e6 00
B0_5249:		lda $01			; a5 01
B0_524b:		sta $0202, y	; 99 02 02
B0_524e:		lda $03ae		; ad ae 03
B0_5251:		sta $0203, y	; 99 03 02
B0_5254:		clc				; 18 
B0_5255:		adc #$08		; 69 08
B0_5257:		sta $03ae		; 8d ae 03
B0_525a:		iny				; c8 
B0_525b:		iny				; c8 
B0_525c:		iny				; c8 
B0_525d:		iny				; c8 
B0_525e:		inx				; e8 
B0_525f:		cpx #$03		; e0 03
B0_5261:		bcc B0_523c ; 90 d9
B0_5263:		ldx $08			; a6 08
B0_5265:		jsr $f1af		; 20 af f1
B0_5268:		ldy $06e5, x	; bc e5 06
B0_526b:		lda $03d1		; ad d1 03
B0_526e:		lsr a			; 4a
B0_526f:		pha				; 48 
B0_5270:		bcc B0_5277 ; 90 05
B0_5272:		lda #$f8		; a9 f8
B0_5274:		sta $020c, y	; 99 0c 02
B0_5277:		pla				; 68 
B0_5278:		lsr a			; 4a
B0_5279:		pha				; 48 
B0_527a:		bcc B0_5281 ; 90 05
B0_527c:		lda #$f8		; a9 f8
B0_527e:		sta $0208, y	; 99 08 02
B0_5281:		pla				; 68 
B0_5282:		lsr a			; 4a
B0_5283:		pha				; 48 
B0_5284:		bcc B0_528b ; 90 05
B0_5286:		lda #$f8		; a9 f8
B0_5288:		sta $0204, y	; 99 04 02
B0_528b:		pla				; 68 
B0_528c:		lsr a			; 4a
B0_528d:		bcc B0_5294 ; 90 05
B0_528f:		lda #$f8		; a9 f8
B0_5291:		sta $0200, y	; 99 00 02
B0_5294:		rts				; 60 
B0_5295:		dec $a0, x		; d6 a0
B0_5297:		bne B0_52a5 ; d0 0c
B0_5299:		lda #$08		; a9 08
B0_529b:		sta $a0, x		; 95 a0
B0_529d:		inc $58, x		; f6 58
B0_529f:		lda $58, x		; b5 58
B0_52a1:		cmp #$03		; c9 03
B0_52a3:		bcs B0_52bd ; b0 18
B0_52a5:		jsr $f152		; 20 52 f1
B0_52a8:		lda $03b9		; ad b9 03
B0_52ab:		sta $03ba		; 8d ba 03
B0_52ae:		lda $03ae		; ad ae 03
B0_52b1:		sta $03af		; 8d af 03
B0_52b4:		ldy $06e5, x	; bc e5 06
B0_52b7:		lda $58, x		; b5 58
B0_52b9:		jsr $ed17		; 20 17 ed
B0_52bc:		rts				; 60 
B0_52bd:		lda #$00		; a9 00
B0_52bf:		sta $0f, x		; 95 0f
B0_52c1:		lda #$08		; a9 08
B0_52c3:		sta $fe			; 85 fe
B0_52c5:		lda #$05		; a9 05
B0_52c7:		sta $0138		; 8d 38 01
B0_52ca:		jmp $d336		; 4c 36 d3
B0_52cd:		brk				; 00
B0_52ce:		brk				; 00
B0_52cf:		php				; 08 
B0_52d0:		php				; 08 
B0_52d1:		brk				; 00
B0_52d2:		php				; 08 
B0_52d3:		brk				; 00
B0_52d4:		php				; 08 
B0_52d5:	.db $54
B0_52d6:		eor $56, x		; 55 56
B0_52d8:	.db $57
B0_52d9:		lda #$00		; a9 00
B0_52db:		sta $06cb		; 8d cb 06
B0_52de:		lda $0746		; ad 46 07
B0_52e1:		cmp #$05		; c9 05
B0_52e3:		bcs B0_5311 ; b0 2c
B0_52e5:		jsr $8e04		; 20 04 8e
B0_52e8:		ora ($d3), y	; 11 d3
B0_52ea:	.db $f2
B0_52eb:	.db $d2
B0_52ec:	.db $12
B0_52ed:	.db $d3
B0_52ee:		lsr $a2d3		; 4e d3 a2
B0_52f1:	.db $d3
B0_52f2:		ldy #$05		; a0 05
B0_52f4:		lda $07fa		; ad fa 07
B0_52f7:		cmp #$01		; c9 01
B0_52f9:		beq B0_5309 ; f0 0e
B0_52fb:		ldy #$03		; a0 03
B0_52fd:		cmp #$03		; c9 03
B0_52ff:		beq B0_5309 ; f0 08
B0_5301:		ldy #$00		; a0 00
B0_5303:		cmp #$06		; c9 06
B0_5305:		beq B0_5309 ; f0 02
B0_5307:		lda #$ff		; a9 ff
B0_5309:		sta $06d7		; 8d d7 06
B0_530c:		sty $1e, x		; 94 1e
B0_530e:		inc $0746		; ee 46 07
B0_5311:		rts				; 60 
B0_5312:		lda $07f8		; ad f8 07
B0_5315:		ora $07f9		; 0d f9 07
B0_5318:		ora $07fa		; 0d fa 07
B0_531b:		beq B0_530e ; f0 f1
B0_531d:		lda $09			; a5 09
B0_531f:		and #$04		; 29 04
B0_5321:		beq B0_5327 ; f0 04
B0_5323:		lda #$10		; a9 10
B0_5325:		sta $fe			; 85 fe
B0_5327:		ldy #$23		; a0 23
B0_5329:		lda #$ff		; a9 ff
B0_532b:		sta $0139		; 8d 39 01
B0_532e:		jsr $8f5f		; 20 5f 8f
B0_5331:		lda #$05		; a9 05
B0_5333:		sta $0139		; 8d 39 01
B0_5336:		ldy #$0b		; a0 0b
B0_5338:		lda $0753		; ad 53 07
B0_533b:		beq B0_533f ; f0 02
B0_533d:		ldy #$11		; a0 11
B0_533f:		jsr $8f5f		; 20 5f 8f
B0_5342:		lda $0753		; ad 53 07
B0_5345:		asl a			; 0a
B0_5346:		asl a			; 0a
B0_5347:		asl a			; 0a
B0_5348:		asl a			; 0a
B0_5349:		ora #$04		; 09 04
B0_534b:		jmp $bc36		; 4c 36 bc
B0_534e:		lda $cf, x		; b5 cf
B0_5350:		cmp #$72		; c9 72
B0_5352:		bcc B0_5359 ; 90 05
B0_5354:		dec $cf, x		; d6 cf
B0_5356:		jmp $d365		; 4c 65 d3
B0_5359:		lda $06d7		; ad d7 06
B0_535c:		beq B0_5396 ; f0 38
B0_535e:		bmi B0_5396 ; 30 36
B0_5360:		lda #$16		; a9 16
B0_5362:		sta $06cb		; 8d cb 06
B0_5365:		jsr $f152		; 20 52 f1
B0_5368:		ldy $06e5, x	; bc e5 06
B0_536b:		ldx #$03		; a2 03
B0_536d:		lda $03b9		; ad b9 03
B0_5370:		clc				; 18 
B0_5371:		adc $d2cd, x	; 7d cd d2
B0_5374:		sta $0200, y	; 99 00 02
B0_5377:		lda $d2d5, x	; bd d5 d2
B0_537a:		sta $0201, y	; 99 01 02
B0_537d:		lda #$22		; a9 22
B0_537f:		sta $0202, y	; 99 02 02
B0_5382:		lda $03ae		; ad ae 03
B0_5385:		clc				; 18 
B0_5386:		adc $d2d1, x	; 7d d1 d2
B0_5389:		sta $0203, y	; 99 03 02
B0_538c:		iny				; c8 
B0_538d:		iny				; c8 
B0_538e:		iny				; c8 
B0_538f:		iny				; c8 
B0_5390:		dex				; ca 
B0_5391:		bpl B0_536d ; 10 da
B0_5393:		ldx $08			; a6 08
B0_5395:		rts				; 60 
B0_5396:		jsr $d365		; 20 65 d3
B0_5399:		lda #$06		; a9 06
B0_539b:		sta $0796, x	; 9d 96 07
B0_539e:		inc $0746		; ee 46 07
B0_53a1:		rts				; 60 
B0_53a2:		jsr $d365		; 20 65 d3
B0_53a5:		lda $0796, x	; bd 96 07
B0_53a8:		bne B0_53af ; d0 05
B0_53aa:		lda $07b1		; ad b1 07
B0_53ad:		beq B0_539e ; f0 ef
B0_53af:		rts				; 60 
B0_53b0:		lda $1e, x		; b5 1e
B0_53b2:		bne B0_540a ; d0 56
B0_53b4:		lda $078a, x	; bd 8a 07
B0_53b7:		bne B0_540a ; d0 51
B0_53b9:		lda $a0, x		; b5 a0
B0_53bb:		bne B0_53e0 ; d0 23
B0_53bd:		lda $58, x		; b5 58
B0_53bf:		bmi B0_53d5 ; 30 14
B0_53c1:		jsr $e143		; 20 43 e1
B0_53c4:		bpl B0_53cf ; 10 09
B0_53c6:		lda $00			; a5 00
B0_53c8:		eor #$ff		; 49 ff
B0_53ca:		clc				; 18 
B0_53cb:		adc #$01		; 69 01
B0_53cd:		sta $00			; 85 00
B0_53cf:		lda $00			; a5 00
B0_53d1:		cmp #$21		; c9 21
B0_53d3:		bcc B0_540a ; 90 35
B0_53d5:		lda $58, x		; b5 58
B0_53d7:		eor #$ff		; 49 ff
B0_53d9:		clc				; 18 
B0_53da:		adc #$01		; 69 01
B0_53dc:		sta $58, x		; 95 58
B0_53de:		inc $a0, x		; f6 a0
B0_53e0:		lda $0434, x	; bd 34 04
B0_53e3:		ldy $58, x		; b4 58
B0_53e5:		bpl B0_53ea ; 10 03
B0_53e7:		lda $0417, x	; bd 17 04
B0_53ea:		sta $00			; 85 00
B0_53ec:		lda $09			; a5 09
B0_53ee:		lsr a			; 4a
B0_53ef:		bcc B0_540a ; 90 19
B0_53f1:		lda $0747		; ad 47 07
B0_53f4:		bne B0_540a ; d0 14
B0_53f6:		lda $cf, x		; b5 cf
B0_53f8:		clc				; 18 
B0_53f9:		adc $58, x		; 75 58
B0_53fb:		sta $cf, x		; 95 cf
B0_53fd:		cmp $00			; c5 00
B0_53ff:		bne B0_540a ; d0 09
B0_5401:		lda #$00		; a9 00
B0_5403:		sta $a0, x		; 95 a0
B0_5405:		lda #$40		; a9 40
B0_5407:		sta $078a, x	; 9d 8a 07
B0_540a:		lda #$20		; a9 20
B0_540c:		sta $03c5, x	; 9d c5 03
B0_540f:		rts				; 60 
B0_5410:		sta $07			; 85 07
B0_5412:		lda $34, x		; b5 34
B0_5414:		bne B0_5424 ; d0 0e
B0_5416:		ldy #$18		; a0 18
B0_5418:		lda $58, x		; b5 58
B0_541a:		clc				; 18 
B0_541b:		adc $07			; 65 07
B0_541d:		sta $58, x		; 95 58
B0_541f:		lda $a0, x		; b5 a0
B0_5421:		adc #$00		; 69 00
B0_5423:		rts				; 60 
B0_5424:		ldy #$08		; a0 08
B0_5426:		lda $58, x		; b5 58
B0_5428:		sec				; 38 
B0_5429:		sbc $07			; e5 07
B0_542b:		sta $58, x		; 95 58
B0_542d:		lda $a0, x		; b5 a0
B0_542f:		sbc #$00		; e9 00
B0_5431:		rts				; 60 
B0_5432:		lda $b6, x		; b5 b6
B0_5434:		cmp #$03		; c9 03
B0_5436:		bne B0_543b ; d0 03
B0_5438:		jmp $c998		; 4c 98 c9
B0_543b:		lda $1e, x		; b5 1e
B0_543d:		bpl B0_5440 ; 10 01
B0_543f:		rts				; 60 
B0_5440:		tay				; a8 
B0_5441:		lda $03a2, x	; bd a2 03
B0_5444:		sta $00			; 85 00
B0_5446:		lda $46, x		; b5 46
B0_5448:		beq B0_544d ; f0 03
B0_544a:		jmp $d5bb		; 4c bb d5
B0_544d:		lda #$2d		; a9 2d
B0_544f:		cmp $cf, x		; d5 cf
B0_5451:		bcc B0_5462 ; 90 0f
B0_5453:		cpy $00			; c4 00
B0_5455:		beq B0_545f ; f0 08
B0_5457:		clc				; 18 
B0_5458:		adc #$02		; 69 02
B0_545a:		sta $cf, x		; 95 cf
B0_545c:		jmp $d5b1		; 4c b1 d5
B0_545f:		jmp $d598		; 4c 98 d5
B0_5462:	.hex d9 cf 00
B0_5465:		bcc B0_5474 ; 90 0d
B0_5467:		cpx $00			; e4 00
B0_5469:		beq B0_545f ; f0 f4
B0_546b:		clc				; 18 
B0_546c:		adc #$02		; 69 02
B0_546e:	.hex 99 cf 00
B0_5471:		jmp $d5b1		; 4c b1 d5
B0_5474:		lda $cf, x		; b5 cf
B0_5476:		pha				; 48 
B0_5477:		lda $03a2, x	; bd a2 03
B0_547a:		bpl B0_5494 ; 10 18
B0_547c:		lda $0434, x	; bd 34 04
B0_547f:		clc				; 18 
B0_5480:		adc #$05		; 69 05
B0_5482:		sta $00			; 85 00
B0_5484:		lda $a0, x		; b5 a0
B0_5486:		adc #$00		; 69 00
B0_5488:		bmi B0_54a4 ; 30 1a
B0_548a:		bne B0_5498 ; d0 0c
B0_548c:		lda $00			; a5 00
B0_548e:		cmp #$0b		; c9 0b
B0_5490:		bcc B0_549e ; 90 0c
B0_5492:		bcs B0_5498 ; b0 04
B0_5494:		cmp $08			; c5 08
B0_5496:		beq B0_54a4 ; f0 0c
B0_5498:		jsr $bfb7		; 20 b7 bf
B0_549b:		jmp $d4a7		; 4c a7 d4
B0_549e:		jsr $d5b1		; 20 b1 d5
B0_54a1:		jmp $d4a7		; 4c a7 d4
B0_54a4:		jsr $bfb4		; 20 b4 bf
B0_54a7:		ldy $1e, x		; b4 1e
B0_54a9:		pla				; 68 
B0_54aa:		sec				; 38 
B0_54ab:		sbc $cf, x		; f5 cf
B0_54ad:		clc				; 18 
B0_54ae:	.hex 79 cf 00
B0_54b1:	.hex 99 cf 00
B0_54b4:		lda $03a2, x	; bd a2 03
B0_54b7:		bmi B0_54bd ; 30 04
B0_54b9:		tax				; aa 
B0_54ba:		jsr $dc21		; 20 21 dc
B0_54bd:		ldy $08			; a4 08
B0_54bf:	.hex b9 a0 00
B0_54c2:		ora $0434, y	; 19 34 04
B0_54c5:		beq B0_553e ; f0 77
B0_54c7:		ldx $0300		; ae 00 03
B0_54ca:		cpx #$20		; e0 20
B0_54cc:		bcs B0_553e ; b0 70
B0_54ce:	.hex b9 a0 00
B0_54d1:		pha				; 48 
B0_54d2:		pha				; 48 
B0_54d3:		jsr $d541		; 20 41 d5
B0_54d6:		lda $01			; a5 01
B0_54d8:		sta $0301, x	; 9d 01 03
B0_54db:		lda $00			; a5 00
B0_54dd:		sta $0302, x	; 9d 02 03
B0_54e0:		lda #$02		; a9 02
B0_54e2:		sta $0303, x	; 9d 03 03
B0_54e5:	.hex b9 a0 00
B0_54e8:		bmi B0_54f7 ; 30 0d
B0_54ea:		lda #$a2		; a9 a2
B0_54ec:		sta $0304, x	; 9d 04 03
B0_54ef:		lda #$a3		; a9 a3
B0_54f1:		sta $0305, x	; 9d 05 03
B0_54f4:		jmp $d4ff		; 4c ff d4
B0_54f7:		lda #$24		; a9 24
B0_54f9:		sta $0304, x	; 9d 04 03
B0_54fc:		sta $0305, x	; 9d 05 03
B0_54ff:	.hex b9 1e 00
B0_5502:		tay				; a8 
B0_5503:		pla				; 68 
B0_5504:		eor #$ff		; 49 ff
B0_5506:		jsr $d541		; 20 41 d5
B0_5509:		lda $01			; a5 01
B0_550b:		sta $0306, x	; 9d 06 03
B0_550e:		lda $00			; a5 00
B0_5510:		sta $0307, x	; 9d 07 03
B0_5513:		lda #$02		; a9 02
B0_5515:		sta $0308, x	; 9d 08 03
B0_5518:		pla				; 68 
B0_5519:		bpl B0_5528 ; 10 0d
B0_551b:		lda #$a2		; a9 a2
B0_551d:		sta $0309, x	; 9d 09 03
B0_5520:		lda #$a3		; a9 a3
B0_5522:		sta $030a, x	; 9d 0a 03
B0_5525:		jmp $d530		; 4c 30 d5
B0_5528:		lda #$24		; a9 24
B0_552a:		sta $0309, x	; 9d 09 03
B0_552d:		sta $030a, x	; 9d 0a 03
B0_5530:		lda #$00		; a9 00
B0_5532:		sta $030b, x	; 9d 0b 03
B0_5535:		lda $0300		; ad 00 03
B0_5538:		clc				; 18 
B0_5539:		adc #$0a		; 69 0a
B0_553b:		sta $0300		; 8d 00 03
B0_553e:		ldx $08			; a6 08
B0_5540:		rts				; 60 
B0_5541:		pha				; 48 
B0_5542:	.hex b9 87 00
B0_5545:		clc				; 18 
B0_5546:		adc #$08		; 69 08
B0_5548:		ldx $06cc		; ae cc 06
B0_554b:		bne B0_5550 ; d0 03
B0_554d:		clc				; 18 
B0_554e:		adc #$10		; 69 10
B0_5550:		pha				; 48 
B0_5551:	.hex b9 6e 00
B0_5554:		adc #$00		; 69 00
B0_5556:		sta $02			; 85 02
B0_5558:		pla				; 68 
B0_5559:		and #$f0		; 29 f0
B0_555b:		lsr a			; 4a
B0_555c:		lsr a			; 4a
B0_555d:		lsr a			; 4a
B0_555e:		sta $00			; 85 00
B0_5560:		ldx $cf, y		; b6 cf
B0_5562:		pla				; 68 
B0_5563:		bpl B0_556a ; 10 05
B0_5565:		txa				; 8a 
B0_5566:		clc				; 18 
B0_5567:		adc #$08		; 69 08
B0_5569:		tax				; aa 
B0_556a:		txa				; 8a 
B0_556b:		ldx $0300		; ae 00 03
B0_556e:		asl a			; 0a
B0_556f:		rol a			; 2a
B0_5570:		pha				; 48 
B0_5571:		rol a			; 2a
B0_5572:		and #$03		; 29 03
B0_5574:		ora #$20		; 09 20
B0_5576:		sta $01			; 85 01
B0_5578:		lda $02			; a5 02
B0_557a:		and #$01		; 29 01
B0_557c:		asl a			; 0a
B0_557d:		asl a			; 0a
B0_557e:		ora $01			; 05 01
B0_5580:		sta $01			; 85 01
B0_5582:		pla				; 68 
B0_5583:		and #$e0		; 29 e0
B0_5585:		clc				; 18 
B0_5586:		adc $00			; 65 00
B0_5588:		sta $00			; 85 00
B0_558a:	.hex b9 cf 00
B0_558d:		cmp #$e8		; c9 e8
B0_558f:		bcc B0_5597 ; 90 06
B0_5591:		lda $00			; a5 00
B0_5593:		and #$bf		; 29 bf
B0_5595:		sta $00			; 85 00
B0_5597:		rts				; 60 
B0_5598:		tya				; 98 
B0_5599:		tax				; aa 
B0_559a:		jsr $f1af		; 20 af f1
B0_559d:		lda #$06		; a9 06
B0_559f:		jsr $da11		; 20 11 da
B0_55a2:		lda $03ad		; ad ad 03
B0_55a5:		sta $0117, x	; 9d 17 01
B0_55a8:		lda $ce			; a5 ce
B0_55aa:		sta $011e, x	; 9d 1e 01
B0_55ad:		lda #$01		; a9 01
B0_55af:		sta $46, x		; 95 46
B0_55b1:		jsr $c363		; 20 63 c3
B0_55b4:	.hex 99 a0 00
B0_55b7:		sta $0434, y	; 99 34 04
B0_55ba:		rts				; 60 
B0_55bb:		tya				; 98 
B0_55bc:		pha				; 48 
B0_55bd:		jsr $bf6b		; 20 6b bf
B0_55c0:		pla				; 68 
B0_55c1:		tax				; aa 
B0_55c2:		jsr $bf6b		; 20 6b bf
B0_55c5:		ldx $08			; a6 08
B0_55c7:		lda $03a2, x	; bd a2 03
B0_55ca:		bmi B0_55d0 ; 30 04
B0_55cc:		tax				; aa 
B0_55cd:		jsr $dc21		; 20 21 dc
B0_55d0:		ldx $08			; a6 08
B0_55d2:		rts				; 60 
B0_55d3:		lda $a0, x		; b5 a0
B0_55d5:		ora $0434, x	; 1d 34 04
B0_55d8:		bne B0_55ef ; d0 15
B0_55da:		sta $0417, x	; 9d 17 04
B0_55dd:		lda $cf, x		; b5 cf
B0_55df:		cmp $0401, x	; dd 01 04
B0_55e2:		bcs B0_55ef ; b0 0b
B0_55e4:		lda $09			; a5 09
B0_55e6:		and #$07		; 29 07
B0_55e8:		bne B0_55ec ; d0 02
B0_55ea:		inc $cf, x		; f6 cf
B0_55ec:		jmp $d5fe		; 4c fe d5
B0_55ef:		lda $cf, x		; b5 cf
B0_55f1:		cmp $58, x		; d5 58
B0_55f3:		bcc B0_55fb ; 90 06
B0_55f5:		jsr $bfb7		; 20 b7 bf
B0_55f8:		jmp $d5fe		; 4c fe d5
B0_55fb:		jsr $bfb4		; 20 b4 bf
B0_55fe:		lda $03a2, x	; bd a2 03
B0_5601:		bmi B0_5606 ; 30 03
B0_5603:		jsr $dc21		; 20 21 dc
B0_5606:		rts				; 60 
B0_5607:		lda #$0e		; a9 0e
B0_5609:		jsr $cb47		; 20 47 cb
B0_560c:		jsr $cb66		; 20 66 cb
B0_560f:		lda $03a2, x	; bd a2 03
B0_5612:		bmi B0_5630 ; 30 1c
B0_5614:		lda $86			; a5 86
B0_5616:		clc				; 18 
B0_5617:		adc $00			; 65 00
B0_5619:		sta $86			; 85 86
B0_561b:		lda $6d			; a5 6d
B0_561d:		ldy $00			; a4 00
B0_561f:		bmi B0_5626 ; 30 05
B0_5621:		adc #$00		; 69 00
B0_5623:		jmp $d628		; 4c 28 d6
B0_5626:		sbc #$00		; e9 00
B0_5628:		sta $6d			; 85 6d
B0_562a:		sty $03a1		; 8c a1 03
B0_562d:		jsr $dc21		; 20 21 dc
B0_5630:		rts				; 60 
B0_5631:		lda $03a2, x	; bd a2 03
B0_5634:		bmi B0_563c ; 30 06
B0_5636:		jsr $bf88		; 20 88 bf
B0_5639:		jsr $dc21		; 20 21 dc
B0_563c:		rts				; 60 
B0_563d:		jsr $bf02		; 20 02 bf
B0_5640:		sta $00			; 85 00
B0_5642:		lda $03a2, x	; bd a2 03
B0_5645:		bmi B0_564e ; 30 07
B0_5647:		lda #$10		; a9 10
B0_5649:		sta $58, x		; 95 58
B0_564b:		jsr $d614		; 20 14 d6
B0_564e:		rts				; 60 
B0_564f:		jsr $d65b		; 20 5b d6
B0_5652:		jmp $d5fe		; 4c fe d5
B0_5655:		jsr $d65b		; 20 5b d6
B0_5658:		jmp $d671		; 4c 71 d6
B0_565b:		lda $0747		; ad 47 07
B0_565e:		bne B0_5679 ; d0 19
B0_5660:		lda $0417, x	; bd 17 04
B0_5663:		clc				; 18 
B0_5664:		adc $0434, x	; 7d 34 04
B0_5667:		sta $0417, x	; 9d 17 04
B0_566a:		lda $cf, x		; b5 cf
B0_566c:		adc $a0, x		; 75 a0
B0_566e:		sta $cf, x		; 95 cf
B0_5670:		rts				; 60 
B0_5671:		lda $03a2, x	; bd a2 03
B0_5674:		beq B0_5679 ; f0 03
B0_5676:		jsr $dc19		; 20 19 dc
B0_5679:		rts				; 60 
B0_567a:		lda $16, x		; b5 16
B0_567c:		cmp #$14		; c9 14
B0_567e:		beq B0_56d5 ; f0 55
B0_5680:		lda $071c		; ad 1c 07
B0_5683:		ldy $16, x		; b4 16
B0_5685:		cpy #$05		; c0 05
B0_5687:		beq B0_568d ; f0 04
B0_5689:		cpy #$0d		; c0 0d
B0_568b:		bne B0_568f ; d0 02
B0_568d:		adc #$38		; 69 38
B0_568f:		sbc #$48		; e9 48
B0_5691:		sta $01			; 85 01
B0_5693:		lda $071a		; ad 1a 07
B0_5696:		sbc #$00		; e9 00
B0_5698:		sta $00			; 85 00
B0_569a:		lda $071d		; ad 1d 07
B0_569d:		adc #$48		; 69 48
B0_569f:		sta $03			; 85 03
B0_56a1:		lda $071b		; ad 1b 07
B0_56a4:		adc #$00		; 69 00
B0_56a6:		sta $02			; 85 02
B0_56a8:		lda $87, x		; b5 87
B0_56aa:		cmp $01			; c5 01
B0_56ac:		lda $6e, x		; b5 6e
B0_56ae:		sbc $00			; e5 00
B0_56b0:		bmi B0_56d2 ; 30 20
B0_56b2:		lda $87, x		; b5 87
B0_56b4:		cmp $03			; c5 03
B0_56b6:		lda $6e, x		; b5 6e
B0_56b8:		sbc $02			; e5 02
B0_56ba:		bmi B0_56d5 ; 30 19
B0_56bc:		lda $1e, x		; b5 1e
B0_56be:		cmp #$05		; c9 05
B0_56c0:		beq B0_56d5 ; f0 13
B0_56c2:		cpy #$0d		; c0 0d
B0_56c4:		beq B0_56d5 ; f0 0f
B0_56c6:		cpy #$30		; c0 30
B0_56c8:		beq B0_56d5 ; f0 0b
B0_56ca:		cpy #$31		; c0 31
B0_56cc:		beq B0_56d5 ; f0 07
B0_56ce:		cpy #$32		; c0 32
B0_56d0:		beq B0_56d5 ; f0 03
B0_56d2:		jsr $c998		; 20 98 c9
B0_56d5:		rts				; 60 
B0_56d6:	.db $ff
B0_56d7:	.db $ff
B0_56d8:	.db $ff
B0_56d9:		lda $24, x		; b5 24
B0_56db:		beq B0_5733 ; f0 56
B0_56dd:		asl a			; 0a
B0_56de:		bcs B0_5733 ; b0 53
B0_56e0:		lda $09			; a5 09
B0_56e2:		lsr a			; 4a
B0_56e3:		bcs B0_5733 ; b0 4e
B0_56e5:		txa				; 8a 
B0_56e6:		asl a			; 0a
B0_56e7:		asl a			; 0a
B0_56e8:		clc				; 18 
B0_56e9:		adc #$1c		; 69 1c
B0_56eb:		tay				; a8 
B0_56ec:		ldx #$04		; a2 04
B0_56ee:		stx $01			; 86 01
B0_56f0:		tya				; 98 
B0_56f1:		pha				; 48 
B0_56f2:		lda $1e, x		; b5 1e
B0_56f4:		and #$20		; 29 20
B0_56f6:		bne B0_572c ; d0 34
B0_56f8:		lda $0f, x		; b5 0f
B0_56fa:		beq B0_572c ; f0 30
B0_56fc:		lda $16, x		; b5 16
B0_56fe:		cmp #$24		; c9 24
B0_5700:		bcc B0_5706 ; 90 04
B0_5702:		cmp #$2b		; c9 2b
B0_5704:		bcc B0_572c ; 90 26
B0_5706:		cmp #$06		; c9 06
B0_5708:		bne B0_5710 ; d0 06
B0_570a:		lda $1e, x		; b5 1e
B0_570c:		cmp #$02		; c9 02
B0_570e:		bcs B0_572c ; b0 1c
B0_5710:		lda $03d8, x	; bd d8 03
B0_5713:		bne B0_572c ; d0 17
B0_5715:		txa				; 8a 
B0_5716:		asl a			; 0a
B0_5717:		asl a			; 0a
B0_5718:		clc				; 18 
B0_5719:		adc #$04		; 69 04
B0_571b:		tax				; aa 
B0_571c:		jsr $e327		; 20 27 e3
B0_571f:		ldx $08			; a6 08
B0_5721:		bcc B0_572c ; 90 09
B0_5723:		lda #$80		; a9 80
B0_5725:		sta $24, x		; 95 24
B0_5727:		ldx $01			; a6 01
B0_5729:		jsr $d73e		; 20 3e d7
B0_572c:		pla				; 68 
B0_572d:		tay				; a8 
B0_572e:		ldx $01			; a6 01
B0_5730:		dex				; ca 
B0_5731:		bpl B0_56ee ; 10 bb
B0_5733:		ldx $08			; a6 08
B0_5735:		rts				; 60 
B0_5736:		asl $00			; 06 00
B0_5738:	.db $02
B0_5739:	.db $12
B0_573a:		ora ($07), y	; 11 07
B0_573c:		ora $2d			; 05 2d
B0_573e:		jsr $f152		; 20 52 f1
B0_5741:		ldx $01			; a6 01
B0_5743:		lda $0f, x		; b5 0f
B0_5745:		bpl B0_5752 ; 10 0b
B0_5747:		and #$0f		; 29 0f
B0_5749:		tax				; aa 
B0_574a:		lda $16, x		; b5 16
B0_574c:		cmp #$2d		; c9 2d
B0_574e:		beq B0_575c ; f0 0c
B0_5750:		ldx $01			; a6 01
B0_5752:		lda $16, x		; b5 16
B0_5754:		cmp #$02		; c9 02
B0_5756:		beq B0_57c3 ; f0 6b
B0_5758:		cmp #$2d		; c9 2d
B0_575a:		bne B0_5789 ; d0 2d
B0_575c:		dec $0483		; ce 83 04
B0_575f:		bne B0_57c3 ; d0 62
B0_5761:		jsr $c363		; 20 63 c3
B0_5764:		sta $58, x		; 95 58
B0_5766:		sta $06cb		; 8d cb 06
B0_5769:		lda #$fe		; a9 fe
B0_576b:		sta $a0, x		; 95 a0
B0_576d:		ldy $075f		; ac 5f 07
B0_5770:		lda $d736, y	; b9 36 d7
B0_5773:		sta $16, x		; 95 16
B0_5775:		lda #$20		; a9 20
B0_5777:		cpy #$03		; c0 03
B0_5779:		bcs B0_577d ; b0 02
B0_577b:		ora #$03		; 09 03
B0_577d:		sta $1e, x		; 95 1e
B0_577f:		lda #$80		; a9 80
B0_5781:		sta $fe			; 85 fe
B0_5783:		ldx $01			; a6 01
B0_5785:		lda #$09		; a9 09
B0_5787:		bne B0_57bc ; d0 33
B0_5789:		cmp #$08		; c9 08
B0_578b:		beq B0_57c3 ; f0 36
B0_578d:		cmp #$0c		; c9 0c
B0_578f:		beq B0_57c3 ; f0 32
B0_5791:		cmp #$15		; c9 15
B0_5793:		bcs B0_57c3 ; b0 2e
B0_5795:		lda $16, x		; b5 16
B0_5797:		cmp #$0d		; c9 0d
B0_5799:		bne B0_57a1 ; d0 06
B0_579b:		lda $cf, x		; b5 cf
B0_579d:		adc #$18		; 69 18
B0_579f:		sta $cf, x		; 95 cf
B0_57a1:		jsr $e01b		; 20 1b e0
B0_57a4:		lda $1e, x		; b5 1e
B0_57a6:		and #$1f		; 29 1f
B0_57a8:		ora #$20		; 09 20
B0_57aa:		sta $1e, x		; 95 1e
B0_57ac:		lda #$02		; a9 02
B0_57ae:		ldy $16, x		; b4 16
B0_57b0:		cpy #$05		; c0 05
B0_57b2:		bne B0_57b6 ; d0 02
B0_57b4:		lda #$06		; a9 06
B0_57b6:		cpy #$06		; c0 06
B0_57b8:		bne B0_57bc ; d0 02
B0_57ba:		lda #$01		; a9 01
B0_57bc:		jsr $da11		; 20 11 da
B0_57bf:		lda #$08		; a9 08
B0_57c1:		sta $ff			; 85 ff
B0_57c3:		rts				; 60 
B0_57c4:		lda $09			; a5 09
B0_57c6:		lsr a			; 4a
B0_57c7:		bcc B0_57ff ; 90 36
B0_57c9:		lda $0747		; ad 47 07
B0_57cc:		ora $03d6		; 0d d6 03
B0_57cf:		bne B0_57ff ; d0 2e
B0_57d1:		txa				; 8a 
B0_57d2:		asl a			; 0a
B0_57d3:		asl a			; 0a
B0_57d4:		clc				; 18 
B0_57d5:		adc #$24		; 69 24
B0_57d7:		tay				; a8 
B0_57d8:		jsr $e325		; 20 25 e3
B0_57db:		ldx $08			; a6 08
B0_57dd:		bcc B0_57fa ; 90 1b
B0_57df:		lda $06be, x	; bd be 06
B0_57e2:		bne B0_57ff ; d0 1b
B0_57e4:		lda #$01		; a9 01
B0_57e6:		sta $06be, x	; 9d be 06
B0_57e9:		lda $64, x		; b5 64
B0_57eb:		eor #$ff		; 49 ff
B0_57ed:		clc				; 18 
B0_57ee:		adc #$01		; 69 01
B0_57f0:		sta $64, x		; 95 64
B0_57f2:		lda $079f		; ad 9f 07
B0_57f5:		bne B0_57ff ; d0 08
B0_57f7:		jmp $d92c		; 4c 2c d9
B0_57fa:		lda #$00		; a9 00
B0_57fc:		sta $06be, x	; 9d be 06
B0_57ff:		rts				; 60 
B0_5800:		jsr $c998		; 20 98 c9
B0_5803:		lda #$06		; a9 06
B0_5805:		jsr $da11		; 20 11 da
B0_5808:		lda #$20		; a9 20
B0_580a:		sta $fe			; 85 fe
B0_580c:		lda $39			; a5 39
B0_580e:		cmp #$02		; c9 02
B0_5810:		bcc B0_5820 ; 90 0e
B0_5812:		cmp #$03		; c9 03
B0_5814:		beq B0_583a ; f0 24
B0_5816:		lda #$23		; a9 23
B0_5818:		sta $079f		; 8d 9f 07
B0_581b:		lda #$40		; a9 40
B0_581d:		sta $fb			; 85 fb
B0_581f:		rts				; 60 
B0_5820:		lda $0756		; ad 56 07
B0_5823:		beq B0_5840 ; f0 1b
B0_5825:		cmp #$01		; c9 01
B0_5827:		bne B0_584c ; d0 23
B0_5829:		ldx $08			; a6 08
B0_582b:		lda #$02		; a9 02
B0_582d:		sta $0756		; 8d 56 07
B0_5830:		jsr $85f1		; 20 f1 85
B0_5833:		ldx $08			; a6 08
B0_5835:		lda #$0c		; a9 0c
B0_5837:		jmp $d847		; 4c 47 d8
B0_583a:		lda #$0b		; a9 0b
B0_583c:		sta $0110, x	; 9d 10 01
B0_583f:		rts				; 60 
B0_5840:		lda #$01		; a9 01
B0_5842:		sta $0756		; 8d 56 07
B0_5845:		lda #$09		; a9 09
B0_5847:		ldy #$00		; a0 00
B0_5849:		jsr $d948		; 20 48 d9
B0_584c:		rts				; 60 
B0_584d:		clc				; 18 
B0_584e:		inx				; e8 
B0_584f:		;removed
	.hex  30 d0
B0_5851:		php				; 08 
B0_5852:		sed				; f8 
B0_5853:		lda $09			; a5 09
B0_5855:		lsr a			; 4a
B0_5856:		bcs B0_584c ; b0 f4
B0_5858:		jsr $dc41		; 20 41 dc
B0_585b:		bcs B0_5880 ; b0 23
B0_585d:		lda $03d8, x	; bd d8 03
B0_5860:		bne B0_5880 ; d0 1e
B0_5862:		lda $0e			; a5 0e
B0_5864:		cmp #$08		; c9 08
B0_5866:		bne B0_5880 ; d0 18
B0_5868:		lda $1e, x		; b5 1e
B0_586a:		and #$20		; 29 20
B0_586c:		bne B0_5880 ; d0 12
B0_586e:		jsr $dc52		; 20 52 dc
B0_5871:		jsr $e325		; 20 25 e3
B0_5874:		ldx $08			; a6 08
B0_5876:		bcs B0_5881 ; b0 09
B0_5878:		lda $0491, x	; bd 91 04
B0_587b:		and #$fe		; 29 fe
B0_587d:		sta $0491, x	; 9d 91 04
B0_5880:		rts				; 60 
B0_5881:		ldy $16, x		; b4 16
B0_5883:		cpy #$2e		; c0 2e
B0_5885:		bne B0_588a ; d0 03
B0_5887:		jmp $d800		; 4c 00 d8
B0_588a:		lda $079f		; ad 9f 07
B0_588d:		beq B0_5895 ; f0 06
B0_588f:		jmp $d795		; 4c 95 d7
B0_5892:		asl a			; 0a
B0_5893:		asl $04			; 06 04
B0_5895:		lda $0491, x	; bd 91 04
B0_5898:		and #$01		; 29 01
B0_589a:		ora $03d8, x	; 1d d8 03
B0_589d:		bne B0_58f8 ; d0 59
B0_589f:		lda #$01		; a9 01
B0_58a1:		ora $0491, x	; 1d 91 04
B0_58a4:		sta $0491, x	; 9d 91 04
B0_58a7:		cpy #$12		; c0 12
B0_58a9:		beq B0_58f9 ; f0 4e
B0_58ab:		cpy #$0d		; c0 0d
B0_58ad:		beq B0_592c ; f0 7d
B0_58af:		cpy #$0c		; c0 0c
B0_58b1:		beq B0_592c ; f0 79
B0_58b3:		cpy #$33		; c0 33
B0_58b5:		beq B0_58f9 ; f0 42
B0_58b7:		cpy #$15		; c0 15
B0_58b9:		bcs B0_592c ; b0 71
B0_58bb:		lda $074e		; ad 4e 07
B0_58be:		beq B0_592c ; f0 6c
B0_58c0:		lda $1e, x		; b5 1e
B0_58c2:		asl a			; 0a
B0_58c3:		bcs B0_58f9 ; b0 34
B0_58c5:		lda $1e, x		; b5 1e
B0_58c7:		and #$07		; 29 07
B0_58c9:		cmp #$02		; c9 02
B0_58cb:		bcc B0_58f9 ; 90 2c
B0_58cd:		lda $16, x		; b5 16
B0_58cf:		cmp #$06		; c9 06
B0_58d1:		beq B0_58f8 ; f0 25
B0_58d3:		lda #$08		; a9 08
B0_58d5:		sta $ff			; 85 ff
B0_58d7:		lda $1e, x		; b5 1e
B0_58d9:		ora #$80		; 09 80
B0_58db:		sta $1e, x		; 95 1e
B0_58dd:		jsr $da05		; 20 05 da
B0_58e0:		lda $d84f, y	; b9 4f d8
B0_58e3:		sta $58, x		; 95 58
B0_58e5:		lda #$03		; a9 03
B0_58e7:		clc				; 18 
B0_58e8:		adc $0484		; 6d 84 04
B0_58eb:		ldy $0796, x	; bc 96 07
B0_58ee:		cpy #$03		; c0 03
B0_58f0:		bcs B0_58f5 ; b0 03
B0_58f2:		lda $d892, y	; b9 92 d8
B0_58f5:		jsr $da11		; 20 11 da
B0_58f8:		rts				; 60 
B0_58f9:		lda $9f			; a5 9f
B0_58fb:		bmi B0_58ff ; 30 02
B0_58fd:		;removed
	.hex  d0 6a
B0_58ff:		lda $16, x		; b5 16
B0_5901:		cmp #$07		; c9 07
B0_5903:		bcc B0_590e ; 90 09
B0_5905:		lda $ce			; a5 ce
B0_5907:		clc				; 18 
B0_5908:		adc #$0c		; 69 0c
B0_590a:		cmp $cf, x		; d5 cf
B0_590c:		;removed
	.hex  90 5b
B0_590e:		lda $0791		; ad 91 07
B0_5911:		;removed
	.hex  d0 56
B0_5913:		lda $079e		; ad 9e 07
B0_5916:		bne B0_5955 ; d0 3d
B0_5918:		lda $03ad		; ad ad 03
B0_591b:		cmp $03ae		; cd ae 03
B0_591e:		bcc B0_5923 ; 90 03
B0_5920:		jmp $d9f6		; 4c f6 d9
B0_5923:		lda $46, x		; b5 46
B0_5925:		cmp #$01		; c9 01
B0_5927:		bne B0_592c ; d0 03
B0_5929:		jmp $d9ff		; 4c ff d9
B0_592c:		lda $079e		; ad 9e 07
B0_592f:		bne B0_5955 ; d0 24
B0_5931:		ldx $0756		; ae 56 07
B0_5934:		beq B0_5958 ; f0 22
B0_5936:		sta $0756		; 8d 56 07
B0_5939:		lda #$08		; a9 08
B0_593b:		sta $079e		; 8d 9e 07
B0_593e:		asl a			; 0a
B0_593f:		sta $ff			; 85 ff
B0_5941:		jsr $85f1		; 20 f1 85
B0_5944:		lda #$0a		; a9 0a
B0_5946:		ldy #$01		; a0 01
B0_5948:		sta $0e			; 85 0e
B0_594a:		sty $1d			; 84 1d
B0_594c:		ldy #$ff		; a0 ff
B0_594e:		sty $0747		; 8c 47 07
B0_5951:		iny				; c8 
B0_5952:		sty $0775		; 8c 75 07
B0_5955:		ldx $08			; a6 08
B0_5957:		rts				; 60 
B0_5958:		stx $57			; 86 57
B0_595a:		inx				; e8 
B0_595b:		stx $fc			; 86 fc
B0_595d:		lda #$fc		; a9 fc
B0_595f:		sta $9f			; 85 9f
B0_5961:		lda #$0b		; a9 0b
B0_5963:		bne B0_5946 ; d0 e1
B0_5965:	.db $02
B0_5966:		asl $05			; 06 05
B0_5968:		asl $b5			; 06 b5
B0_596a:		asl $c9, x		; 16 c9
B0_596c:	.db $12
B0_596d:		beq B0_592c ; f0 bd
B0_596f:		lda #$04		; a9 04
B0_5971:		sta $ff			; 85 ff
B0_5973:		lda $16, x		; b5 16
B0_5975:		ldy #$00		; a0 00
B0_5977:		cmp #$14		; c9 14
B0_5979:		beq B0_5996 ; f0 1b
B0_597b:		cmp #$08		; c9 08
B0_597d:		beq B0_5996 ; f0 17
B0_597f:		cmp #$33		; c9 33
B0_5981:		beq B0_5996 ; f0 13
B0_5983:		cmp #$0c		; c9 0c
B0_5985:		beq B0_5996 ; f0 0f
B0_5987:		iny				; c8 
B0_5988:		cmp #$05		; c9 05
B0_598a:		beq B0_5996 ; f0 0a
B0_598c:		iny				; c8 
B0_598d:		cmp #$11		; c9 11
B0_598f:		beq B0_5996 ; f0 05
B0_5991:		iny				; c8 
B0_5992:		cmp #$07		; c9 07
B0_5994:		bne B0_59b3 ; d0 1d
B0_5996:		lda $d965, y	; b9 65 d9
B0_5999:		jsr $da11		; 20 11 da
B0_599c:		lda $46, x		; b5 46
B0_599e:		pha				; 48 
B0_599f:		jsr $e02f		; 20 2f e0
B0_59a2:		pla				; 68 
B0_59a3:		sta $46, x		; 95 46
B0_59a5:		lda #$20		; a9 20
B0_59a7:		sta $1e, x		; 95 1e
B0_59a9:		jsr $c363		; 20 63 c3
B0_59ac:		sta $58, x		; 95 58
B0_59ae:		lda #$fd		; a9 fd
B0_59b0:		sta $9f			; 85 9f
B0_59b2:		rts				; 60 
B0_59b3:		cmp #$09		; c9 09
B0_59b5:		bcc B0_59d4 ; 90 1d
B0_59b7:		and #$01		; 29 01
B0_59b9:		sta $16, x		; 95 16
B0_59bb:		ldy #$00		; a0 00
B0_59bd:		sty $1e, x		; 94 1e
B0_59bf:		lda #$03		; a9 03
B0_59c1:		jsr $da11		; 20 11 da
B0_59c4:		jsr $c363		; 20 63 c3
B0_59c7:		jsr $da05		; 20 05 da
B0_59ca:		lda $d851, y	; b9 51 d8
B0_59cd:		sta $58, x		; 95 58
B0_59cf:		jmp $d9f1		; 4c f1 d9
B0_59d2:		bpl B0_59df ; 10 0b
B0_59d4:		lda #$04		; a9 04
B0_59d6:		sta $1e, x		; 95 1e
B0_59d8:		inc $0484		; ee 84 04
B0_59db:		lda $0484		; ad 84 04
B0_59de:		clc				; 18 
B0_59df:		adc $0791		; 6d 91 07
B0_59e2:		jsr $da11		; 20 11 da
B0_59e5:		inc $0791		; ee 91 07
B0_59e8:		ldy $076a		; ac 6a 07
B0_59eb:		lda $d9d2, y	; b9 d2 d9
B0_59ee:		sta $0796, x	; 9d 96 07
B0_59f1:		lda #$fc		; a9 fc
B0_59f3:		sta $9f			; 85 9f
B0_59f5:		rts				; 60 
B0_59f6:		lda $46, x		; b5 46
B0_59f8:		cmp #$01		; c9 01
B0_59fa:		bne B0_59ff ; d0 03
B0_59fc:		jmp $d92c		; 4c 2c d9
B0_59ff:		jsr $db1c		; 20 1c db
B0_5a02:		jmp $d92c		; 4c 2c d9
B0_5a05:		ldy #$01		; a0 01
B0_5a07:		jsr $e143		; 20 43 e1
B0_5a0a:		bpl B0_5a0d ; 10 01
B0_5a0c:		iny				; c8 
B0_5a0d:		sty $46, x		; 94 46
B0_5a0f:		dey				; 88 
B0_5a10:		rts				; 60 
B0_5a11:		sta $0110, x	; 9d 10 01
B0_5a14:		lda #$30		; a9 30
B0_5a16:		sta $012c, x	; 9d 2c 01
B0_5a19:		lda $cf, x		; b5 cf
B0_5a1b:		sta $011e, x	; 9d 1e 01
B0_5a1e:		lda $03ae		; ad ae 03
B0_5a21:		sta $0117, x	; 9d 17 01
B0_5a24:		rts				; 60 
B0_5a25:	.db $80
B0_5a26:		rti				; 40 
B0_5a27:		jsr $0810		; 20 10 08
B0_5a2a:	.db $04
B0_5a2b:	.db $02
B0_5a2c:	.db $7f
B0_5a2d:	.db $bf
B0_5a2e:	.db $df
B0_5a2f:	.db $ef
B0_5a30:	.db $f7
B0_5a31:	.db $fb
B0_5a32:		sbc $09a5, x	; fd a5 09
B0_5a35:		lsr a			; 4a
B0_5a36:		bcc B0_5a24 ; 90 ec
B0_5a38:		lda $074e		; ad 4e 07
B0_5a3b:		beq B0_5a24 ; f0 e7
B0_5a3d:		lda $16, x		; b5 16
B0_5a3f:		cmp #$15		; c9 15
B0_5a41:		bcs B0_5ab1 ; b0 6e
B0_5a43:		cmp #$11		; c9 11
B0_5a45:		beq B0_5ab1 ; f0 6a
B0_5a47:		cmp #$0d		; c9 0d
B0_5a49:		beq B0_5ab1 ; f0 66
B0_5a4b:		lda $03d8, x	; bd d8 03
B0_5a4e:		bne B0_5ab1 ; d0 61
B0_5a50:		jsr $dc52		; 20 52 dc
B0_5a53:		dex				; ca 
B0_5a54:		bmi B0_5ab1 ; 30 5b
B0_5a56:		stx $01			; 86 01
B0_5a58:		tya				; 98 
B0_5a59:		pha				; 48 
B0_5a5a:		lda $0f, x		; b5 0f
B0_5a5c:		beq B0_5aaa ; f0 4c
B0_5a5e:		lda $16, x		; b5 16
B0_5a60:		cmp #$15		; c9 15
B0_5a62:		bcs B0_5aaa ; b0 46
B0_5a64:		cmp #$11		; c9 11
B0_5a66:		beq B0_5aaa ; f0 42
B0_5a68:		cmp #$0d		; c9 0d
B0_5a6a:		beq B0_5aaa ; f0 3e
B0_5a6c:		lda $03d8, x	; bd d8 03
B0_5a6f:		bne B0_5aaa ; d0 39
B0_5a71:		txa				; 8a 
B0_5a72:		asl a			; 0a
B0_5a73:		asl a			; 0a
B0_5a74:		clc				; 18 
B0_5a75:		adc #$04		; 69 04
B0_5a77:		tax				; aa 
B0_5a78:		jsr $e327		; 20 27 e3
B0_5a7b:		ldx $08			; a6 08
B0_5a7d:		ldy $01			; a4 01
B0_5a7f:		bcc B0_5aa1 ; 90 20
B0_5a81:		lda $1e, x		; b5 1e
B0_5a83:	.hex 19 1e 00
B0_5a86:		and #$80		; 29 80
B0_5a88:		bne B0_5a9b ; d0 11
B0_5a8a:		lda $0491, y	; b9 91 04
B0_5a8d:		and $da25, x	; 3d 25 da
B0_5a90:		bne B0_5aaa ; d0 18
B0_5a92:		lda $0491, y	; b9 91 04
B0_5a95:		ora $da25, x	; 1d 25 da
B0_5a98:		sta $0491, y	; 99 91 04
B0_5a9b:		jsr $dab4		; 20 b4 da
B0_5a9e:		jmp $daaa		; 4c aa da
B0_5aa1:		lda $0491, y	; b9 91 04
B0_5aa4:		and $da2c, x	; 3d 2c da
B0_5aa7:		sta $0491, y	; 99 91 04
B0_5aaa:		pla				; 68 
B0_5aab:		tay				; a8 
B0_5aac:		ldx $01			; a6 01
B0_5aae:		dex				; ca 
B0_5aaf:		bpl B0_5a56 ; 10 a5
B0_5ab1:		ldx $08			; a6 08
B0_5ab3:		rts				; 60 
B0_5ab4:	.hex b9 1e 00
B0_5ab7:		ora $1e, x		; 15 1e
B0_5ab9:		and #$20		; 29 20
B0_5abb:		bne B0_5af0 ; d0 33
B0_5abd:		lda $1e, x		; b5 1e
B0_5abf:		cmp #$06		; c9 06
B0_5ac1:		bcc B0_5af1 ; 90 2e
B0_5ac3:		lda $16, x		; b5 16
B0_5ac5:		cmp #$05		; c9 05
B0_5ac7:		beq B0_5af0 ; f0 27
B0_5ac9:	.hex b9 1e 00
B0_5acc:		asl a			; 0a
B0_5acd:		bcc B0_5ad9 ; 90 0a
B0_5acf:		lda #$06		; a9 06
B0_5ad1:		jsr $da11		; 20 11 da
B0_5ad4:		jsr $d795		; 20 95 d7
B0_5ad7:		ldy $01			; a4 01
B0_5ad9:		tya				; 98 
B0_5ada:		tax				; aa 
B0_5adb:		jsr $d795		; 20 95 d7
B0_5ade:		ldx $08			; a6 08
B0_5ae0:		lda $0125, x	; bd 25 01
B0_5ae3:		clc				; 18 
B0_5ae4:		adc #$04		; 69 04
B0_5ae6:		ldx $01			; a6 01
B0_5ae8:		jsr $da11		; 20 11 da
B0_5aeb:		ldx $08			; a6 08
B0_5aed:		inc $0125, x	; fe 25 01
B0_5af0:		rts				; 60 
B0_5af1:	.hex b9 1e 00
B0_5af4:		cmp #$06		; c9 06
B0_5af6:		bcc B0_5b15 ; 90 1d
B0_5af8:	.hex b9 16 00
B0_5afb:		cmp #$05		; c9 05
B0_5afd:		beq B0_5af0 ; f0 f1
B0_5aff:		jsr $d795		; 20 95 d7
B0_5b02:		ldy $01			; a4 01
B0_5b04:		lda $0125, y	; b9 25 01
B0_5b07:		clc				; 18 
B0_5b08:		adc #$04		; 69 04
B0_5b0a:		ldx $08			; a6 08
B0_5b0c:		jsr $da11		; 20 11 da
B0_5b0f:		ldx $01			; a6 01
B0_5b11:		inc $0125, x	; fe 25 01
B0_5b14:		rts				; 60 
B0_5b15:		tya				; 98 
B0_5b16:		tax				; aa 
B0_5b17:		jsr $db1c		; 20 1c db
B0_5b1a:		ldx $08			; a6 08
B0_5b1c:		lda $16, x		; b5 16
B0_5b1e:		cmp #$0d		; c9 0d
B0_5b20:		beq B0_5b44 ; f0 22
B0_5b22:		cmp #$11		; c9 11
B0_5b24:		beq B0_5b44 ; f0 1e
B0_5b26:		cmp #$05		; c9 05
B0_5b28:		beq B0_5b44 ; f0 1a
B0_5b2a:		cmp #$12		; c9 12
B0_5b2c:		beq B0_5b36 ; f0 08
B0_5b2e:		cmp #$0e		; c9 0e
B0_5b30:		beq B0_5b36 ; f0 04
B0_5b32:		cmp #$07		; c9 07
B0_5b34:		bcs B0_5b44 ; b0 0e
B0_5b36:		lda $58, x		; b5 58
B0_5b38:		eor #$ff		; 49 ff
B0_5b3a:		tay				; a8 
B0_5b3b:		iny				; c8 
B0_5b3c:		sty $58, x		; 94 58
B0_5b3e:		lda $46, x		; b5 46
B0_5b40:		eor #$03		; 49 03
B0_5b42:		sta $46, x		; 95 46
B0_5b44:		rts				; 60 
B0_5b45:		lda #$ff		; a9 ff
B0_5b47:		sta $03a2, x	; 9d a2 03
B0_5b4a:		lda $0747		; ad 47 07
B0_5b4d:		bne B0_5b78 ; d0 29
B0_5b4f:		lda $1e, x		; b5 1e
B0_5b51:		bmi B0_5b78 ; 30 25
B0_5b53:		lda $16, x		; b5 16
B0_5b55:		cmp #$24		; c9 24
B0_5b57:		bne B0_5b5f ; d0 06
B0_5b59:		lda $1e, x		; b5 1e
B0_5b5b:		tax				; aa 
B0_5b5c:		jsr $db5f		; 20 5f db
B0_5b5f:		jsr $dc41		; 20 41 dc
B0_5b62:		bcs B0_5b78 ; b0 14
B0_5b64:		txa				; 8a 
B0_5b65:		jsr $dc54		; 20 54 dc
B0_5b68:		lda $cf, x		; b5 cf
B0_5b6a:		sta $00			; 85 00
B0_5b6c:		txa				; 8a 
B0_5b6d:		pha				; 48 
B0_5b6e:		jsr $e325		; 20 25 e3
B0_5b71:		pla				; 68 
B0_5b72:		tax				; aa 
B0_5b73:		bcc B0_5b78 ; 90 03
B0_5b75:		jsr $dbbc		; 20 bc db
B0_5b78:		ldx $08			; a6 08
B0_5b7a:		rts				; 60 
B0_5b7b:		lda $0747		; ad 47 07
B0_5b7e:		bne B0_5bb7 ; d0 37
B0_5b80:		sta $03a2, x	; 9d a2 03
B0_5b83:		jsr $dc41		; 20 41 dc
B0_5b86:		bcs B0_5bb7 ; b0 2f
B0_5b88:		lda #$02		; a9 02
B0_5b8a:		sta $00			; 85 00
B0_5b8c:		ldx $08			; a6 08
B0_5b8e:		jsr $dc52		; 20 52 dc
B0_5b91:		and #$02		; 29 02
B0_5b93:		bne B0_5bb7 ; d0 22
B0_5b95:		lda $04ad, y	; b9 ad 04
B0_5b98:		cmp #$20		; c9 20
B0_5b9a:		bcc B0_5ba1 ; 90 05
B0_5b9c:		jsr $e325		; 20 25 e3
B0_5b9f:		bcs B0_5bba ; b0 19
B0_5ba1:		lda $04ad, y	; b9 ad 04
B0_5ba4:		clc				; 18 
B0_5ba5:		adc #$80		; 69 80
B0_5ba7:		sta $04ad, y	; 99 ad 04
B0_5baa:		lda $04af, y	; b9 af 04
B0_5bad:		clc				; 18 
B0_5bae:		adc #$80		; 69 80
B0_5bb0:		sta $04af, y	; 99 af 04
B0_5bb3:		dec $00			; c6 00
B0_5bb5:		bne B0_5b8c ; d0 d5
B0_5bb7:		ldx $08			; a6 08
B0_5bb9:		rts				; 60 
B0_5bba:		ldx $08			; a6 08
B0_5bbc:		lda $04af, y	; b9 af 04
B0_5bbf:		sec				; 38 
B0_5bc0:		sbc $04ad		; edad 04
B0_5bc3:		cmp #$04		; c9 04
B0_5bc5:		bcs B0_5bcf ; b0 08
B0_5bc7:		lda $9f			; a5 9f
B0_5bc9:		bpl B0_5bcf ; 10 04
B0_5bcb:		lda #$01		; a9 01
B0_5bcd:		sta $9f			; 85 9f
B0_5bcf:		lda $04af		; ad af 04
B0_5bd2:		sec				; 38 
B0_5bd3:		sbc $04ad, y	; f9 ad 04
B0_5bd6:		cmp #$06		; c9 06
B0_5bd8:		bcs B0_5bf5 ; b0 1b
B0_5bda:		lda $9f			; a5 9f
B0_5bdc:		bmi B0_5bf5 ; 30 17
B0_5bde:		lda $00			; a5 00
B0_5be0:		ldy $16, x		; b4 16
B0_5be2:		cpy #$2b		; c0 2b
B0_5be4:		beq B0_5beb ; f0 05
B0_5be6:		cpy #$2c		; c0 2c
B0_5be8:		beq B0_5beb ; f0 01
B0_5bea:		txa				; 8a 
B0_5beb:		ldx $08			; a6 08
B0_5bed:		sta $03a2, x	; 9d a2 03
B0_5bf0:		lda #$00		; a9 00
B0_5bf2:		sta $1d			; 85 1d
B0_5bf4:		rts				; 60 
B0_5bf5:		lda #$01		; a9 01
B0_5bf7:		sta $00			; 85 00
B0_5bf9:		lda $04ae		; ad ae 04
B0_5bfc:		sec				; 38 
B0_5bfd:		sbc $04ac, y	; f9 ac 04
B0_5c00:		cmp #$08		; c9 08
B0_5c02:		bcc B0_5c11 ; 90 0d
B0_5c04:		inc $00			; e6 00
B0_5c06:		lda $04ae, y	; b9 ae 04
B0_5c09:		clc				; 18 
B0_5c0a:		sbc $04ac		; edac 04
B0_5c0d:		cmp #$09		; c9 09
B0_5c0f:		bcs B0_5c14 ; b0 03
B0_5c11:		jsr $df4b		; 20 4b df
B0_5c14:		ldx $08			; a6 08
B0_5c16:		rts				; 60 
B0_5c17:	.db $80
B0_5c18:		brk				; 00
B0_5c19:		tay				; a8 
B0_5c1a:		lda $cf, x		; b5 cf
B0_5c1c:		clc				; 18 
B0_5c1d:		adc $dc16, y	; 79 16 dc
B0_5c20:		bit $cfb5		; 2c b5 cf
B0_5c23:		ldy $0e			; a4 0e
B0_5c25:		cpy #$0b		; c0 0b
B0_5c27:		beq B0_5c40 ; f0 17
B0_5c29:		ldy $b6, x		; b4 b6
B0_5c2b:		cpy #$01		; c0 01
B0_5c2d:		bne B0_5c40 ; d0 11
B0_5c2f:		sec				; 38 
B0_5c30:		sbc #$20		; e9 20
B0_5c32:		sta $ce			; 85 ce
B0_5c34:		tya				; 98 
B0_5c35:		sbc #$00		; e9 00
B0_5c37:		sta $b5			; 85 b5
B0_5c39:		lda #$00		; a9 00
B0_5c3b:		sta $9f			; 85 9f
B0_5c3d:		sta $0433		; 8d 33 04
B0_5c40:		rts				; 60 
B0_5c41:		lda $03d0		; ad d0 03
B0_5c44:		cmp #$f0		; c9 f0
B0_5c46:		bcs B0_5c51 ; b0 09
B0_5c48:		ldy $b5			; a4 b5
B0_5c4a:		dey				; 88 
B0_5c4b:		bne B0_5c51 ; d0 04
B0_5c4d:		lda $ce			; a5 ce
B0_5c4f:		cmp #$d0		; c9 d0
B0_5c51:		rts				; 60 
B0_5c52:		lda $08			; a5 08
B0_5c54:		asl a			; 0a
B0_5c55:		asl a			; 0a
B0_5c56:		clc				; 18 
B0_5c57:		adc #$04		; 69 04
B0_5c59:		tay				; a8 
B0_5c5a:		lda $03d1		; ad d1 03
B0_5c5d:		and #$0f		; 29 0f
B0_5c5f:		cmp #$0f		; c9 0f
B0_5c61:		rts				; 60 
B0_5c62:		jsr $ad10		; 20 10 ad
B0_5c65:		asl $07, x		; 16 07
B0_5c67:		bne B0_5c97 ; d0 2e
B0_5c69:		lda $0e			; a5 0e
B0_5c6b:		cmp #$0b		; c9 0b
B0_5c6d:		beq B0_5c97 ; f0 28
B0_5c6f:		cmp #$04		; c9 04
B0_5c71:		bcc B0_5c97 ; 90 24
B0_5c73:		lda #$01		; a9 01
B0_5c75:		ldy $0704		; ac 04 07
B0_5c78:		bne B0_5c84 ; d0 0a
B0_5c7a:		lda $1d			; a5 1d
B0_5c7c:		beq B0_5c82 ; f0 04
B0_5c7e:		cmp #$03		; c9 03
B0_5c80:		bne B0_5c86 ; d0 04
B0_5c82:		lda #$02		; a9 02
B0_5c84:		sta $1d			; 85 1d
B0_5c86:		lda $b5			; a5 b5
B0_5c88:		cmp #$01		; c9 01
B0_5c8a:		bne B0_5c97 ; d0 0b
B0_5c8c:		lda #$ff		; a9 ff
B0_5c8e:		sta $0490		; 8d 90 04
B0_5c91:		lda $ce			; a5 ce
B0_5c93:		cmp #$cf		; c9 cf
B0_5c95:		bcc B0_5c98 ; 90 01
B0_5c97:		rts				; 60 
B0_5c98:		ldy #$02		; a0 02
B0_5c9a:		lda $0714		; ad 14 07
B0_5c9d:		bne B0_5cab ; d0 0c
B0_5c9f:		lda $0754		; ad 54 07
B0_5ca2:		bne B0_5cab ; d0 07
B0_5ca4:		dey				; 88 
B0_5ca5:		lda $0704		; ad 04 07
B0_5ca8:		bne B0_5cab ; d0 01
B0_5caa:		dey				; 88 
B0_5cab:		lda $e3ad, y	; b9 ad e3
B0_5cae:		sta $eb			; 85 eb
B0_5cb0:		tay				; a8 
B0_5cb1:		ldx $0754		; ae 54 07
B0_5cb4:		lda $0714		; ad 14 07
B0_5cb7:		beq B0_5cba ; f0 01
B0_5cb9:		inx				; e8 
B0_5cba:		lda $ce			; a5 ce
B0_5cbc:		cmp $dc62, x	; dd 62 dc
B0_5cbf:		bcc B0_5cf6 ; 90 35
B0_5cc1:		jsr $e3e9		; 20 e9 e3
B0_5cc4:		beq B0_5cf6 ; f0 30
B0_5cc6:		jsr $dfa1		; 20 a1 df
B0_5cc9:		bcs B0_5d1a ; b0 4f
B0_5ccb:		ldy $9f			; a4 9f
B0_5ccd:		bpl B0_5cf6 ; 10 27
B0_5ccf:		ldy $04			; a4 04
B0_5cd1:		cpy #$04		; c0 04
B0_5cd3:		bcc B0_5cf6 ; 90 21
B0_5cd5:		jsr $df8f		; 20 8f df
B0_5cd8:		bcs B0_5cea ; b0 10
B0_5cda:		ldy $074e		; ac 4e 07
B0_5cdd:		beq B0_5cf2 ; f0 13
B0_5cdf:		ldy $0784		; ac 84 07
B0_5ce2:		bne B0_5cf2 ; d0 0e
B0_5ce4:		jsr $bced		; 20 ed bc
B0_5ce7:		jmp $dcf6		; 4c f6 dc
B0_5cea:		cmp #$26		; c9 26
B0_5cec:		beq B0_5cf2 ; f0 04
B0_5cee:		lda #$02		; a9 02
B0_5cf0:		sta $ff			; 85 ff
B0_5cf2:		lda #$01		; a9 01
B0_5cf4:		sta $9f			; 85 9f
B0_5cf6:		ldy $eb			; a4 eb
B0_5cf8:		lda $ce			; a5 ce
B0_5cfa:		cmp #$cf		; c9 cf
B0_5cfc:		bcs B0_5d5e ; b0 60
B0_5cfe:		jsr $e3e8		; 20 e8 e3
B0_5d01:		jsr $dfa1		; 20 a1 df
B0_5d04:		bcs B0_5d1a ; b0 14
B0_5d06:		pha				; 48 
B0_5d07:		jsr $e3e8		; 20 e8 e3
B0_5d0a:		sta $00			; 85 00
B0_5d0c:		pla				; 68 
B0_5d0d:		sta $01			; 85 01
B0_5d0f:		bne B0_5d1d ; d0 0c
B0_5d11:		lda $00			; a5 00
B0_5d13:		beq B0_5d5e ; f0 49
B0_5d15:		jsr $dfa1		; 20 a1 df
B0_5d18:		bcc B0_5d1d ; 90 03
B0_5d1a:		jmp $de05		; 4c 05 de
B0_5d1d:		jsr $df9a		; 20 9a df
B0_5d20:		bcs B0_5d5e ; b0 3c
B0_5d22:		ldy $9f			; a4 9f
B0_5d24:		bmi B0_5d5e ; 30 38
B0_5d26:		cmp #$c5		; c9 c5
B0_5d28:		bne B0_5d2d ; d0 03
B0_5d2a:		jmp $de0e		; 4c 0e de
B0_5d2d:		jsr $debd		; 20 bd de
B0_5d30:		beq B0_5d5e ; f0 2c
B0_5d32:		ldy $070e		; ac 0e 07
B0_5d35:		bne B0_5d5a ; d0 23
B0_5d37:		ldy $04			; a4 04
B0_5d39:		cpy #$05		; c0 05
B0_5d3b:		bcc B0_5d44 ; 90 07
B0_5d3d:		lda $45			; a5 45
B0_5d3f:		sta $00			; 85 00
B0_5d41:		jmp $df4b		; 4c 4b df
B0_5d44:		jsr $dec4		; 20 c4 de
B0_5d47:		lda #$f0		; a9 f0
B0_5d49:		and $ce			; 25 ce
B0_5d4b:		sta $ce			; 85 ce
B0_5d4d:		jsr $dee8		; 20 e8 de
B0_5d50:		lda #$00		; a9 00
B0_5d52:		sta $9f			; 85 9f
B0_5d54:		sta $0433		; 8d 33 04
B0_5d57:		sta $0484		; 8d 84 04
B0_5d5a:		lda #$00		; a9 00
B0_5d5c:		sta $1d			; 85 1d
B0_5d5e:		ldy $eb			; a4 eb
B0_5d60:		iny				; c8 
B0_5d61:		iny				; c8 
B0_5d62:		lda #$02		; a9 02
B0_5d64:		sta $00			; 85 00
B0_5d66:		iny				; c8 
B0_5d67:		sty $eb			; 84 eb
B0_5d69:		lda $ce			; a5 ce
B0_5d6b:		cmp #$20		; c9 20
B0_5d6d:		bcc B0_5d85 ; 90 16
B0_5d6f:		cmp #$e4		; c9 e4
B0_5d71:		bcs B0_5d9b ; b0 28
B0_5d73:		jsr $e3ec		; 20 ec e3
B0_5d76:		beq B0_5d85 ; f0 0d
B0_5d78:		cmp #$1c		; c9 1c
B0_5d7a:		beq B0_5d85 ; f0 09
B0_5d7c:		cmp #$6b		; c9 6b
B0_5d7e:		beq B0_5d85 ; f0 05
B0_5d80:		jsr $df9a		; 20 9a df
B0_5d83:		bcc B0_5d9c ; 90 17
B0_5d85:		ldy $eb			; a4 eb
B0_5d87:		iny				; c8 
B0_5d88:		lda $ce			; a5 ce
B0_5d8a:		cmp #$08		; c9 08
B0_5d8c:		bcc B0_5d9b ; 90 0d
B0_5d8e:		cmp #$d0		; c9 d0
B0_5d90:		bcs B0_5d9b ; b0 09
B0_5d92:		jsr $e3ec		; 20 ec e3
B0_5d95:		bne B0_5d9c ; d0 05
B0_5d97:		dec $00			; c6 00
B0_5d99:		bne B0_5d66 ; d0 cb
B0_5d9b:		rts				; 60 
B0_5d9c:		jsr $debd		; 20 bd de
B0_5d9f:		beq B0_5e02 ; f0 61
B0_5da1:		jsr $df9a		; 20 9a df
B0_5da4:		bcc B0_5da9 ; 90 03
B0_5da6:		jmp $de2e		; 4c 2e de
B0_5da9:		jsr $dfa1		; 20 a1 df
B0_5dac:		bcs B0_5e05 ; b0 57
B0_5dae:		jsr $dedd		; 20 dd de
B0_5db1:		bcc B0_5dbb ; 90 08
B0_5db3:		lda $070e		; ad 0e 07
B0_5db6:		bne B0_5e02 ; d0 4a
B0_5db8:		jmp $ddff		; 4c ff dd
B0_5dbb:		ldy $1d			; a4 1d
B0_5dbd:		cpy #$00		; c0 00
B0_5dbf:		bne B0_5dff ; d0 3e
B0_5dc1:		ldy $33			; a4 33
B0_5dc3:		dey				; 88 
B0_5dc4:		bne B0_5dff ; d0 39
B0_5dc6:		cmp #$6c		; c9 6c
B0_5dc8:		beq B0_5dce ; f0 04
B0_5dca:		cmp #$1f		; c9 1f
B0_5dcc:		bne B0_5dff ; d0 31
B0_5dce:		lda $03c4		; ad c4 03
B0_5dd1:		bne B0_5dd7 ; d0 04
B0_5dd3:		ldy #$10		; a0 10
B0_5dd5:		sty $ff			; 84 ff
B0_5dd7:		ora #$20		; 09 20
B0_5dd9:		sta $03c4		; 8d c4 03
B0_5ddc:		lda $86			; a5 86
B0_5dde:		and #$0f		; 29 0f
B0_5de0:		beq B0_5df0 ; f0 0e
B0_5de2:		ldy #$00		; a0 00
B0_5de4:		lda $071a		; ad 1a 07
B0_5de7:		beq B0_5dea ; f0 01
B0_5de9:		iny				; c8 
B0_5dea:		lda $de03, y	; b9 03 de
B0_5ded:		sta $06de		; 8d de 06
B0_5df0:		lda $0e			; a5 0e
B0_5df2:		cmp #$07		; c9 07
B0_5df4:		beq B0_5e02 ; f0 0c
B0_5df6:		cmp #$08		; c9 08
B0_5df8:		bne B0_5e02 ; d0 08
B0_5dfa:		lda #$02		; a9 02
B0_5dfc:		sta $0e			; 85 0e
B0_5dfe:		rts				; 60 
B0_5dff:		jsr $df4b		; 20 4b df
B0_5e02:		rts				; 60 
B0_5e03:		ldy #$34		; a0 34
B0_5e05:		jsr $de1c		; 20 1c de
B0_5e08:		inc $0748		; ee 48 07
B0_5e0b:		jmp $bbfe		; 4c fe bb
B0_5e0e:		lda #$00		; a9 00
B0_5e10:		sta $0772		; 8d 72 07
B0_5e13:		lda #$02		; a9 02
B0_5e15:		sta $0770		; 8d 70 07
B0_5e18:		lda #$18		; a9 18
B0_5e1a:		sta $57			; 85 57
B0_5e1c:		ldy $02			; a4 02
B0_5e1e:		lda #$00		; a9 00
B0_5e20:		sta ($06), y	; 91 06
B0_5e22:		jmp $8a4d		; 4c 4d 8a
B0_5e25:		sbc $ff07, y	; f9 07 ff
B0_5e28:		brk				; 00
B0_5e29:		clc				; 18 
B0_5e2a:	.db $22
B0_5e2b:		bvc B0_5e95 ; 50 68
B0_5e2d:		bcc B0_5dd3 ; 90 a4
B0_5e2f:	.db $04
B0_5e30:		cpy #$06		; c0 06
B0_5e32:		bcc B0_5e38 ; 90 04
B0_5e34:		cpy #$0a		; c0 0a
B0_5e36:		bcc B0_5e39 ; 90 01
B0_5e38:		rts				; 60 
B0_5e39:		cmp #$24		; c9 24
B0_5e3b:		beq B0_5e41 ; f0 04
B0_5e3d:		cmp #$25		; c9 25
B0_5e3f:		bne B0_5e7a ; d0 39
B0_5e41:		lda $0e			; a5 0e
B0_5e43:		cmp #$05		; c9 05
B0_5e45:		beq B0_5e88 ; f0 41
B0_5e47:		lda #$01		; a9 01
B0_5e49:		sta $33			; 85 33
B0_5e4b:		inc $0723		; ee 23 07
B0_5e4e:		lda $0e			; a5 0e
B0_5e50:		cmp #$04		; c9 04
B0_5e52:		beq B0_5e73 ; f0 1f
B0_5e54:		lda #$33		; a9 33
B0_5e56:		jsr $9716		; 20 16 97
B0_5e59:		lda #$80		; a9 80
B0_5e5b:		sta $fc			; 85 fc
B0_5e5d:		lsr a			; 4a
B0_5e5e:		sta $0713		; 8d 13 07
B0_5e61:		ldx #$04		; a2 04
B0_5e63:		lda $ce			; a5 ce
B0_5e65:		sta $070f		; 8d 0f 07
B0_5e68:		cmp $de29, x	; dd 29 de
B0_5e6b:		bcs B0_5e70 ; b0 03
B0_5e6d:		dex				; ca 
B0_5e6e:		bne B0_5e68 ; d0 f8
B0_5e70:		stx $010f		; 8e 0f 01
B0_5e73:		lda #$04		; a9 04
B0_5e75:		sta $0e			; 85 0e
B0_5e77:		jmp $de88		; 4c 88 de
B0_5e7a:		cmp #$26		; c9 26
B0_5e7c:		bne B0_5e88 ; d0 0a
B0_5e7e:		lda $ce			; a5 ce
B0_5e80:		cmp #$20		; c9 20
B0_5e82:		bcs B0_5e88 ; b0 04
B0_5e84:		lda #$01		; a9 01
B0_5e86:		sta $0e			; 85 0e
B0_5e88:		lda #$03		; a9 03
B0_5e8a:		sta $1d			; 85 1d
B0_5e8c:		lda #$00		; a9 00
B0_5e8e:		sta $57			; 85 57
B0_5e90:		sta $0705		; 8d 05 07
B0_5e93:		lda $86			; a5 86
B0_5e95:		sec				; 38 
B0_5e96:		sbc $071c		; ed1c 07
B0_5e99:		cmp #$10		; c9 10
B0_5e9b:		bcs B0_5ea1 ; b0 04
B0_5e9d:		lda #$02		; a9 02
B0_5e9f:		sta $33			; 85 33
B0_5ea1:		ldy $33			; a4 33
B0_5ea3:		lda $06			; a5 06
B0_5ea5:		asl a			; 0a
B0_5ea6:		asl a			; 0a
B0_5ea7:		asl a			; 0a
B0_5ea8:		asl a			; 0a
B0_5ea9:		clc				; 18 
B0_5eaa:		adc $de24, y	; 79 24 de
B0_5ead:		sta $86			; 85 86
B0_5eaf:		lda $06			; a5 06
B0_5eb1:		bne B0_5ebc ; d0 09
B0_5eb3:		lda $071b		; ad 1b 07
B0_5eb6:		clc				; 18 
B0_5eb7:		adc $de26, y	; 79 26 de
B0_5eba:		sta $6d			; 85 6d
B0_5ebc:		rts				; 60 
B0_5ebd:		cmp #$5f		; c9 5f
B0_5ebf:		beq B0_5ec3 ; f0 02
B0_5ec1:		cmp #$60		; c9 60
B0_5ec3:		rts				; 60 
B0_5ec4:		jsr $dedd		; 20 dd de
B0_5ec7:		bcc B0_5edc ; 90 13
B0_5ec9:		lda #$70		; a9 70
B0_5ecb:		sta $0709		; 8d 09 07
B0_5ece:		lda #$f9		; a9 f9
B0_5ed0:		sta $06db		; 8d db 06
B0_5ed3:		lda #$03		; a9 03
B0_5ed5:		sta $0786		; 8d 86 07
B0_5ed8:		lsr a			; 4a
B0_5ed9:		sta $070e		; 8d 0e 07
B0_5edc:		rts				; 60 
B0_5edd:		cmp #$67		; c9 67
B0_5edf:		beq B0_5ee6 ; f0 05
B0_5ee1:		cmp #$68		; c9 68
B0_5ee3:		clc				; 18 
B0_5ee4:		bne B0_5ee7 ; d0 01
B0_5ee6:		sec				; 38 
B0_5ee7:		rts				; 60 
B0_5ee8:		lda $0b			; a5 0b
B0_5eea:		and #$04		; 29 04
B0_5eec:		beq B0_5f4a ; f0 5c
B0_5eee:		lda $00			; a5 00
B0_5ef0:		cmp #$11		; c9 11
B0_5ef2:		bne B0_5f4a ; d0 56
B0_5ef4:		lda $01			; a5 01
B0_5ef6:		cmp #$10		; c9 10
B0_5ef8:		bne B0_5f4a ; d0 50
B0_5efa:		lda #$30		; a9 30
B0_5efc:		sta $06de		; 8d de 06
B0_5eff:		lda #$03		; a9 03
B0_5f01:		sta $0e			; 85 0e
B0_5f03:		lda #$10		; a9 10
B0_5f05:		sta $ff			; 85 ff
B0_5f07:		lda #$20		; a9 20
B0_5f09:		sta $03c4		; 8d c4 03
B0_5f0c:		lda $06d6		; ad d6 06
B0_5f0f:		beq B0_5f4a ; f0 39
B0_5f11:		and #$03		; 29 03
B0_5f13:		asl a			; 0a
B0_5f14:		asl a			; 0a
B0_5f15:		tax				; aa 
B0_5f16:		lda $86			; a5 86
B0_5f18:		cmp #$60		; c9 60
B0_5f1a:		bcc B0_5f22 ; 90 06
B0_5f1c:		inx				; e8 
B0_5f1d:		cmp #$a0		; c9 a0
B0_5f1f:		bcc B0_5f22 ; 90 01
B0_5f21:		inx				; e8 
B0_5f22:		ldy $87f2, x	; bc f2 87
B0_5f25:		dey				; 88 
B0_5f26:		sty $075f		; 8c 5f 07
B0_5f29:		ldx $9cb4, y	; be b4 9c
B0_5f2c:		lda $9cbc, x	; bd bc 9c
B0_5f2f:		sta $0750		; 8d 50 07
B0_5f32:		lda #$80		; a9 80
B0_5f34:		sta $fc			; 85 fc
B0_5f36:		lda #$00		; a9 00
B0_5f38:		sta $0751		; 8d 51 07
B0_5f3b:		sta $0760		; 8d 60 07
B0_5f3e:		sta $075c		; 8d 5c 07
B0_5f41:		sta $0752		; 8d 52 07
B0_5f44:		inc $075d		; ee 5d 07
B0_5f47:		inc $0757		; ee 57 07
B0_5f4a:		rts				; 60 
B0_5f4b:		lda #$00		; a9 00
B0_5f4d:		ldy $57			; a4 57
B0_5f4f:		ldx $00			; a6 00
B0_5f51:		dex				; ca 
B0_5f52:		bne B0_5f5e ; d0 0a
B0_5f54:		inx				; e8 
B0_5f55:		cpy #$00		; c0 00
B0_5f57:		bmi B0_5f81 ; 30 28
B0_5f59:		lda #$ff		; a9 ff
B0_5f5b:		jmp $df66		; 4c 66 df
B0_5f5e:		ldx #$02		; a2 02
B0_5f60:		cpy #$01		; c0 01
B0_5f62:		bpl B0_5f81 ; 10 1d
B0_5f64:		lda #$01		; a9 01
B0_5f66:		ldy #$10		; a0 10
B0_5f68:		sty $0785		; 8c 85 07
B0_5f6b:		ldy #$00		; a0 00
B0_5f6d:		sty $57			; 84 57
B0_5f6f:		cmp #$00		; c9 00
B0_5f71:		bpl B0_5f74 ; 10 01
B0_5f73:		dey				; 88 
B0_5f74:		sty $00			; 84 00
B0_5f76:		clc				; 18 
B0_5f77:		adc $86			; 65 86
B0_5f79:		sta $86			; 85 86
B0_5f7b:		lda $6d			; a5 6d
B0_5f7d:		adc $00			; 65 00
B0_5f7f:		sta $6d			; 85 6d
B0_5f81:		txa				; 8a 
B0_5f82:		eor #$ff		; 49 ff
B0_5f84:		and $0490		; 2d 90 04
B0_5f87:		sta $0490		; 8d 90 04
B0_5f8a:		rts				; 60 
B0_5f8b:		bpl B0_5fee ; 10 61
B0_5f8d:		dey				; 88 
B0_5f8e:		cpy $20			; c4 20
B0_5f90:		bcs B0_5f71 ; b0 df
B0_5f92:		cmp $df8b, x	; dd 8b df
B0_5f95:		rts				; 60 
B0_5f96:		bit $6d			; 24 6d
B0_5f98:		txa				; 8a 
B0_5f99:		dec $20			; c6 20
B0_5f9b:		;removed
	.hex  b0 df
B0_5f9d:		cmp $df96, x	; dd 96 df
B0_5fa0:		rts				; 60 
B0_5fa1:		cmp #$c2		; c9 c2
B0_5fa3:		beq B0_5fab ; f0 06
B0_5fa5:		cmp #$c3		; c9 c3
B0_5fa7:		beq B0_5fab ; f0 02
B0_5fa9:		clc				; 18 
B0_5faa:		rts				; 60 
B0_5fab:		lda #$01		; a9 01
B0_5fad:		sta $fe			; 85 fe
B0_5faf:		rts				; 60 
B0_5fb0:		tay				; a8 
B0_5fb1:		and #$c0		; 29 c0
B0_5fb3:		asl a			; 0a
B0_5fb4:		rol a			; 2a
B0_5fb5:		rol a			; 2a
B0_5fb6:		tax				; aa 
B0_5fb7:		tya				; 98 
B0_5fb8:		rts				; 60 
B0_5fb9:		ora ($01, x)	; 01 01
B0_5fbb:	.db $02
B0_5fbc:	.db $02
B0_5fbd:	.db $02
B0_5fbe:		ora $10			; 05 10
B0_5fc0:		beq B0_5f77 ; f0 b5
B0_5fc2:		asl $2029, x	; 1e 29 20
B0_5fc5:		bne B0_5fb8 ; d0 f1
B0_5fc7:		jsr $e15b		; 20 5b e1
B0_5fca:		bcc B0_5fb8 ; 90 ec
B0_5fcc:		ldy $16, x		; b4 16
B0_5fce:		cpy #$12		; c0 12
B0_5fd0:		bne B0_5fd8 ; d0 06
B0_5fd2:		lda $cf, x		; b5 cf
B0_5fd4:		cmp #$25		; c9 25
B0_5fd6:		bcc B0_5fb8 ; 90 e0
B0_5fd8:		cpy #$0e		; c0 0e
B0_5fda:		bne B0_5fdf ; d0 03
B0_5fdc:		jmp $e163		; 4c 63 e1
B0_5fdf:		cpy #$05		; c0 05
B0_5fe1:		bne B0_5fe6 ; d0 03
B0_5fe3:		jmp $e185		; 4c 85 e1
B0_5fe6:		cpy #$12		; c0 12
B0_5fe8:		beq B0_5ff2 ; f0 08
B0_5fea:		cpy #$2e		; c0 2e
B0_5fec:		beq B0_5ff2 ; f0 04
B0_5fee:		cpy #$07		; c0 07
B0_5ff0:		bcs B0_6066 ; b0 74
B0_5ff2:		jsr $e1ae		; 20 ae e1
B0_5ff5:		bne B0_5ffa ; d0 03
B0_5ff7:		jmp $e0e2		; 4c e2 e0
B0_5ffa:		jsr $e1b5		; 20 b5 e1
B0_5ffd:		beq B0_5ff7 ; f0 f8
B0_5fff:		cmp #$23		; c9 23
B0_6001:		bne B0_6067 ; d0 64
B0_6003:		ldy $02			; a4 02
B0_6005:		lda #$00		; a9 00
B0_6007:		sta ($06), y	; 91 06
B0_6009:		lda $16, x		; b5 16
B0_600b:		cmp #$15		; c9 15
B0_600d:		bcs B0_601b ; b0 0c
B0_600f:		cmp #$06		; c9 06
B0_6011:		bne B0_6016 ; d0 03
B0_6013:		jsr $e18e		; 20 8e e1
B0_6016:		lda #$01		; a9 01
B0_6018:		jsr $da11		; 20 11 da
B0_601b:		cmp #$09		; c9 09
B0_601d:		bcc B0_602f ; 90 10
B0_601f:		cmp #$11		; c9 11
B0_6021:		bcs B0_602f ; b0 0c
B0_6023:		cmp #$0a		; c9 0a
B0_6025:		bcc B0_602b ; 90 04
B0_6027:		cmp #$0d		; c9 0d
B0_6029:		bcc B0_602f ; 90 04
B0_602b:		and #$01		; 29 01
B0_602d:		sta $16, x		; 95 16
B0_602f:		lda $1e, x		; b5 1e
B0_6031:		and #$f0		; 29 f0
B0_6033:		ora #$02		; 09 02
B0_6035:		sta $1e, x		; 95 1e
B0_6037:		dec $cf, x		; d6 cf
B0_6039:		dec $cf, x		; d6 cf
B0_603b:		lda $16, x		; b5 16
B0_603d:		cmp #$07		; c9 07
B0_603f:		beq B0_6048 ; f0 07
B0_6041:		lda #$fd		; a9 fd
B0_6043:		ldy $074e		; ac 4e 07
B0_6046:		bne B0_604a ; d0 02
B0_6048:		lda #$ff		; a9 ff
B0_604a:		sta $a0, x		; 95 a0
B0_604c:		ldy #$01		; a0 01
B0_604e:		jsr $e143		; 20 43 e1
B0_6051:		bpl B0_6054 ; 10 01
B0_6053:		iny				; c8 
B0_6054:		lda $16, x		; b5 16
B0_6056:		cmp #$33		; c9 33
B0_6058:		beq B0_6060 ; f0 06
B0_605a:		cmp #$08		; c9 08
B0_605c:		beq B0_6060 ; f0 02
B0_605e:		sty $46, x		; 94 46
B0_6060:		dey				; 88 
B0_6061:		lda $dfbf, y	; b9 bf df
B0_6064:		sta $58, x		; 95 58
B0_6066:		rts				; 60 
B0_6067:		lda $04			; a5 04
B0_6069:		sec				; 38 
B0_606a:		sbc #$08		; e9 08
B0_606c:		cmp #$05		; c9 05
B0_606e:		bcs B0_60e2 ; b0 72
B0_6070:		lda $1e, x		; b5 1e
B0_6072:		and #$40		; 29 40
B0_6074:		bne B0_60cd ; d0 57
B0_6076:		lda $1e, x		; b5 1e
B0_6078:		asl a			; 0a
B0_6079:		bcc B0_607e ; 90 03
B0_607b:		jmp $e0fe		; 4c fe e0
B0_607e:		lda $1e, x		; b5 1e
B0_6080:		beq B0_607b ; f0 f9
B0_6082:		cmp #$05		; c9 05
B0_6084:		beq B0_60a5 ; f0 1f
B0_6086:		cmp #$03		; c9 03
B0_6088:		bcs B0_60a4 ; b0 1a
B0_608a:		lda $1e, x		; b5 1e
B0_608c:		cmp #$02		; c9 02
B0_608e:		bne B0_60a5 ; d0 15
B0_6090:		lda #$10		; a9 10
B0_6092:		ldy $16, x		; b4 16
B0_6094:		cpy #$12		; c0 12
B0_6096:		bne B0_609a ; d0 02
B0_6098:		lda #$00		; a9 00
B0_609a:		sta $0796, x	; 9d 96 07
B0_609d:		lda #$03		; a9 03
B0_609f:		sta $1e, x		; 95 1e
B0_60a1:		jsr $e14f		; 20 4f e1
B0_60a4:		rts				; 60 
B0_60a5:		lda $16, x		; b5 16
B0_60a7:		cmp #$06		; c9 06
B0_60a9:		beq B0_60cd ; f0 22
B0_60ab:		cmp #$12		; c9 12
B0_60ad:		bne B0_60bd ; d0 0e
B0_60af:		lda #$01		; a9 01
B0_60b1:		sta $46, x		; 95 46
B0_60b3:		lda #$08		; a9 08
B0_60b5:		sta $58, x		; 95 58
B0_60b7:		lda $09			; a5 09
B0_60b9:		and #$07		; 29 07
B0_60bb:		beq B0_60cd ; f0 10
B0_60bd:		ldy #$01		; a0 01
B0_60bf:		jsr $e143		; 20 43 e1
B0_60c2:		bpl B0_60c5 ; 10 01
B0_60c4:		iny				; c8 
B0_60c5:		tya				; 98 
B0_60c6:		cmp $46, x		; d5 46
B0_60c8:		bne B0_60cd ; d0 03
B0_60ca:		jsr $e124		; 20 24 e1
B0_60cd:		jsr $e14f		; 20 4f e1
B0_60d0:		lda $1e, x		; b5 1e
B0_60d2:		and #$80		; 29 80
B0_60d4:		bne B0_60db ; d0 05
B0_60d6:		lda #$00		; a9 00
B0_60d8:		sta $1e, x		; 95 1e
B0_60da:		rts				; 60 
B0_60db:		lda $1e, x		; b5 1e
B0_60dd:		and #$bf		; 29 bf
B0_60df:		sta $1e, x		; 95 1e
B0_60e1:		rts				; 60 
B0_60e2:		lda $16, x		; b5 16
B0_60e4:		cmp #$03		; c9 03
B0_60e6:		bne B0_60ec ; d0 04
B0_60e8:		lda $1e, x		; b5 1e
B0_60ea:		beq B0_6124 ; f0 38
B0_60ec:		lda $1e, x		; b5 1e
B0_60ee:		tay				; a8 
B0_60ef:		asl a			; 0a
B0_60f0:		bcc B0_60f9 ; 90 07
B0_60f2:		lda $1e, x		; b5 1e
B0_60f4:		ora #$40		; 09 40
B0_60f6:		jmp $e0fc		; 4c fc e0
B0_60f9:		lda $dfb9, y	; b9 b9 df
B0_60fc:		sta $1e, x		; 95 1e
B0_60fe:		lda $cf, x		; b5 cf
B0_6100:		cmp #$20		; c9 20
B0_6102:		bcc B0_6123 ; 90 1f
B0_6104:		ldy #$16		; a0 16
B0_6106:		lda #$02		; a9 02
B0_6108:		sta $eb			; 85 eb
B0_610a:		lda $eb			; a5 eb
B0_610c:		cmp $46, x		; d5 46
B0_610e:		bne B0_611c ; d0 0c
B0_6110:		lda #$01		; a9 01
B0_6112:		jsr $e388		; 20 88 e3
B0_6115:		beq B0_611c ; f0 05
B0_6117:		jsr $e1b5		; 20 b5 e1
B0_611a:		bne B0_6124 ; d0 08
B0_611c:		dec $eb			; c6 eb
B0_611e:		iny				; c8 
B0_611f:		cpy #$18		; c0 18
B0_6121:		bcc B0_610a ; 90 e7
B0_6123:		rts				; 60 
B0_6124:		cpx #$05		; e0 05
B0_6126:		beq B0_6131 ; f0 09
B0_6128:		lda $1e, x		; b5 1e
B0_612a:		asl a			; 0a
B0_612b:		bcc B0_6131 ; 90 04
B0_612d:		lda #$02		; a9 02
B0_612f:		sta $ff			; 85 ff
B0_6131:		lda $16, x		; b5 16
B0_6133:		cmp #$05		; c9 05
B0_6135:		bne B0_6140 ; d0 09
B0_6137:		lda #$00		; a9 00
B0_6139:		sta $00			; 85 00
B0_613b:		ldy #$fa		; a0 fa
B0_613d:		jmp $ca37		; 4c 37 ca
B0_6140:		jmp $db36		; 4c 36 db
B0_6143:		lda $87, x		; b5 87
B0_6145:		sec				; 38 
B0_6146:		sbc $86			; e5 86
B0_6148:		sta $00			; 85 00
B0_614a:		lda $6e, x		; b5 6e
B0_614c:		sbc $6d			; e5 6d
B0_614e:		rts				; 60 
B0_614f:		jsr $c363		; 20 63 c3
B0_6152:		lda $cf, x		; b5 cf
B0_6154:		and #$f0		; 29 f0
B0_6156:		ora #$08		; 09 08
B0_6158:		sta $cf, x		; 95 cf
B0_615a:		rts				; 60 
B0_615b:		lda $cf, x		; b5 cf
B0_615d:		clc				; 18 
B0_615e:		adc #$3e		; 69 3e
B0_6160:		cmp #$44		; c9 44
B0_6162:		rts				; 60 
B0_6163:		jsr $e15b		; 20 5b e1
B0_6166:		bcc B0_6182 ; 90 1a
B0_6168:		lda $a0, x		; b5 a0
B0_616a:		clc				; 18 
B0_616b:		adc #$02		; 69 02
B0_616d:		cmp #$03		; c9 03
B0_616f:		bcc B0_6182 ; 90 11
B0_6171:		jsr $e1ae		; 20 ae e1
B0_6174:		beq B0_6182 ; f0 0c
B0_6176:		jsr $e1b5		; 20 b5 e1
B0_6179:		beq B0_6182 ; f0 07
B0_617b:		jsr $e14f		; 20 4f e1
B0_617e:		lda #$fd		; a9 fd
B0_6180:		sta $a0, x		; 95 a0
B0_6182:		jmp $e0fe		; 4c fe e0
B0_6185:		jsr $e1ae		; 20 ae e1
B0_6188:		beq B0_61a7 ; f0 1d
B0_618a:		cmp #$23		; c9 23
B0_618c:		bne B0_6196 ; d0 08
B0_618e:		jsr $d795		; 20 95 d7
B0_6191:		lda #$fc		; a9 fc
B0_6193:		sta $a0, x		; 95 a0
B0_6195:		rts				; 60 
B0_6196:		lda $078a, x	; bd 8a 07
B0_6199:		bne B0_61a7 ; d0 0c
B0_619b:		lda $1e, x		; b5 1e
B0_619d:		and #$88		; 29 88
B0_619f:		sta $1e, x		; 95 1e
B0_61a1:		jsr $e14f		; 20 4f e1
B0_61a4:		jmp $e0fe		; 4c fe e0
B0_61a7:		lda $1e, x		; b5 1e
B0_61a9:		ora #$01		; 09 01
B0_61ab:		sta $1e, x		; 95 1e
B0_61ad:		rts				; 60 
B0_61ae:		lda #$00		; a9 00
B0_61b0:		ldy #$15		; a0 15
B0_61b2:		jmp $e388		; 4c 88 e3
B0_61b5:		cmp #$26		; c9 26
B0_61b7:		beq B0_61c7 ; f0 0e
B0_61b9:		cmp #$c2		; c9 c2
B0_61bb:		beq B0_61c7 ; f0 0a
B0_61bd:		cmp #$c3		; c9 c3
B0_61bf:		beq B0_61c7 ; f0 06
B0_61c1:		cmp #$5f		; c9 5f
B0_61c3:		beq B0_61c7 ; f0 02
B0_61c5:		cmp #$60		; c9 60
B0_61c7:		rts				; 60 
B0_61c8:		lda $d5, x		; b5 d5
B0_61ca:		cmp #$18		; c9 18
B0_61cc:		bcc B0_61ef ; 90 21
B0_61ce:		jsr $e39c		; 20 9c e3
B0_61d1:		beq B0_61ef ; f0 1c
B0_61d3:		jsr $e1b5		; 20 b5 e1
B0_61d6:		beq B0_61ef ; f0 17
B0_61d8:		lda $a6, x		; b5 a6
B0_61da:		bmi B0_61f4 ; 30 18
B0_61dc:		lda $3a, x		; b5 3a
B0_61de:		bne B0_61f4 ; d0 14
B0_61e0:		lda #$fd		; a9 fd
B0_61e2:		sta $a6, x		; 95 a6
B0_61e4:		lda #$01		; a9 01
B0_61e6:		sta $3a, x		; 95 3a
B0_61e8:		lda $d5, x		; b5 d5
B0_61ea:		and #$f8		; 29 f8
B0_61ec:		sta $d5, x		; 95 d5
B0_61ee:		rts				; 60 
B0_61ef:		lda #$00		; a9 00
B0_61f1:		sta $3a, x		; 95 3a
B0_61f3:		rts				; 60 
B0_61f4:		lda #$80		; a9 80
B0_61f6:		sta $24, x		; 95 24
B0_61f8:		lda #$02		; a9 02
B0_61fa:		sta $ff			; 85 ff
B0_61fc:		rts				; 60 
B0_61fd:	.db $02
B0_61fe:		php				; 08 
B0_61ff:		asl $0320		; 0e 20 03
B0_6202:	.db $14
B0_6203:		ora $0220		; 0d 20 02
B0_6206:	.db $14
B0_6207:		asl $0220		; 0e 20 02
B0_620a:		ora #$0e		; 09 0e
B0_620c:		ora $00, x		; 15 00
B0_620e:		brk				; 00
B0_620f:		clc				; 18 
B0_6210:		asl $00			; 06 00
B0_6212:		brk				; 00
B0_6213:	.hex 20 0d 00
B0_6216:		brk				; 00
B0_6217:		bmi B0_6226 ; 30 0d
B0_6219:		brk				; 00
B0_621a:		brk				; 00
B0_621b:		php				; 08 
B0_621c:		php				; 08 
B0_621d:		asl $04			; 06 04
B0_621f:		asl a			; 0a
B0_6220:		php				; 08 
B0_6221:	.db $03
B0_6222:		asl $140d		; 0e 0d 14
B0_6225:		brk				; 00
B0_6226:	.db $02
B0_6227:		;removed
	.hex  10 15
B0_6229:	.db $04
B0_622a:	.db $04
B0_622b:	.db $0c
B0_622c:	.db $1c
B0_622d:		txa				; 8a 
B0_622e:		clc				; 18 
B0_622f:		adc #$07		; 69 07
B0_6231:		tax				; aa 
B0_6232:		ldy #$02		; a0 02
B0_6234:		bne B0_623d ; d0 07
B0_6236:		txa				; 8a 
B0_6237:		clc				; 18 
B0_6238:		adc #$09		; 69 09
B0_623a:		tax				; aa 
B0_623b:		ldy #$06		; a0 06
B0_623d:		jsr $e29c		; 20 9c e2
B0_6240:		jmp $e2de		; 4c de e2
B0_6243:		ldy #$48		; a0 48
B0_6245:		sty $00			; 84 00
B0_6247:		ldy #$44		; a0 44
B0_6249:		jmp $e252		; 4c 52 e2
B0_624c:		ldy #$08		; a0 08
B0_624e:		sty $00			; 84 00
B0_6250:		ldy #$04		; a0 04
B0_6252:		lda $87, x		; b5 87
B0_6254:		sec				; 38 
B0_6255:		sbc $071c		; ed1c 07
B0_6258:		sta $01			; 85 01
B0_625a:		lda $6e, x		; b5 6e
B0_625c:		sbc $071a		; ed1a 07
B0_625f:		bmi B0_6267 ; 30 06
B0_6261:		ora $01			; 05 01
B0_6263:		beq B0_6267 ; f0 02
B0_6265:		ldy $00			; a4 00
B0_6267:		tya				; 98 
B0_6268:		and $03d1		; 2d d1 03
B0_626b:		sta $03d8, x	; 9d d8 03
B0_626e:		bne B0_6289 ; d0 19
B0_6270:		jmp $e27c		; 4c 7c e2
B0_6273:		inx				; e8 
B0_6274:		jsr $f1f6		; 20 f6 f1
B0_6277:		dex				; ca 
B0_6278:		cmp #$fe		; c9 fe
B0_627a:		bcs B0_6289 ; b0 0d
B0_627c:		txa				; 8a 
B0_627d:		clc				; 18 
B0_627e:		adc #$01		; 69 01
B0_6280:		tax				; aa 
B0_6281:		ldy #$01		; a0 01
B0_6283:		jsr $e29c		; 20 9c e2
B0_6286:		jmp $e2de		; 4c de e2
B0_6289:		txa				; 8a 
B0_628a:		asl a			; 0a
B0_628b:		asl a			; 0a
B0_628c:		tay				; a8 
B0_628d:		lda #$ff		; a9 ff
B0_628f:		sta $04b0, y	; 99 b0 04
B0_6292:		sta $04b1, y	; 99 b1 04
B0_6295:		sta $04b2, y	; 99 b2 04
B0_6298:		sta $04b3, y	; 99 b3 04
B0_629b:		rts				; 60 
B0_629c:		stx $00			; 86 00
B0_629e:		lda $03b8, y	; b9 b8 03
B0_62a1:		sta $02			; 85 02
B0_62a3:		lda $03ad, y	; b9 ad 03
B0_62a6:		sta $01			; 85 01
B0_62a8:		txa				; 8a 
B0_62a9:		asl a			; 0a
B0_62aa:		asl a			; 0a
B0_62ab:		pha				; 48 
B0_62ac:		tay				; a8 
B0_62ad:		lda $0499, x	; bd 99 04
B0_62b0:		asl a			; 0a
B0_62b1:		asl a			; 0a
B0_62b2:		tax				; aa 
B0_62b3:		lda $01			; a5 01
B0_62b5:		clc				; 18 
B0_62b6:		adc $e1fd, x	; 7d fd e1
B0_62b9:		sta $04ac, y	; 99 ac 04
B0_62bc:		lda $01			; a5 01
B0_62be:		clc				; 18 
B0_62bf:		adc $e1ff, x	; 7d ff e1
B0_62c2:		sta $04ae, y	; 99 ae 04
B0_62c5:		inx				; e8 
B0_62c6:		iny				; c8 
B0_62c7:		lda $02			; a5 02
B0_62c9:		clc				; 18 
B0_62ca:		adc $e1fd, x	; 7d fd e1
B0_62cd:		sta $04ac, y	; 99 ac 04
B0_62d0:		lda $02			; a5 02
B0_62d2:		clc				; 18 
B0_62d3:		adc $e1ff, x	; 7d ff e1
B0_62d6:		sta $04ae, y	; 99 ae 04
B0_62d9:		pla				; 68 
B0_62da:		tay				; a8 
B0_62db:		ldx $00			; a6 00
B0_62dd:		rts				; 60 
B0_62de:		lda $071c		; ad 1c 07
B0_62e1:		clc				; 18 
B0_62e2:		adc #$80		; 69 80
B0_62e4:		sta $02			; 85 02
B0_62e6:		lda $071a		; ad 1a 07
B0_62e9:		adc #$00		; 69 00
B0_62eb:		sta $01			; 85 01
B0_62ed:		lda $86, x		; b5 86
B0_62ef:		cmp $02			; c5 02
B0_62f1:		lda $6d, x		; b5 6d
B0_62f3:		sbc $01			; e5 01
B0_62f5:		bcc B0_630c ; 90 15
B0_62f7:		lda $04ae, y	; b9 ae 04
B0_62fa:		bmi B0_6309 ; 30 0d
B0_62fc:		lda #$ff		; a9 ff
B0_62fe:		ldx $04ac, y	; be ac 04
B0_6301:		bmi B0_6306 ; 30 03
B0_6303:		sta $04ac, y	; 99 ac 04
B0_6306:		sta $04ae, y	; 99 ae 04
B0_6309:		ldx $08			; a6 08
B0_630b:		rts				; 60 
B0_630c:		lda $04ac, y	; b9 ac 04
B0_630f:		bpl B0_6322 ; 10 11
B0_6311:		cmp #$a0		; c9 a0
B0_6313:		bcc B0_6322 ; 90 0d
B0_6315:		lda #$00		; a9 00
B0_6317:		ldx $04ae, y	; be ae 04
B0_631a:		bpl B0_631f ; 10 03
B0_631c:		sta $04ae, y	; 99 ae 04
B0_631f:		sta $04ac, y	; 99 ac 04
B0_6322:		ldx $08			; a6 08
B0_6324:		rts				; 60 
B0_6325:		ldx #$00		; a2 00
B0_6327:		sty $06			; 84 06
B0_6329:		lda #$01		; a9 01
B0_632b:		sta $07			; 85 07
B0_632d:		lda $04ac, y	; b9 ac 04
B0_6330:		cmp $04ac, x	; dd ac 04
B0_6333:		bcs B0_635f ; b0 2a
B0_6335:		cmp $04ae, x	; dd ae 04
B0_6338:		bcc B0_634c ; 90 12
B0_633a:		beq B0_637e ; f0 42
B0_633c:		lda $04ae, y	; b9 ae 04
B0_633f:		cmp $04ac, y	; d9 ac 04
B0_6342:		bcc B0_637e ; 90 3a
B0_6344:		cmp $04ac, x	; dd ac 04
B0_6347:		bcs B0_637e ; b0 35
B0_6349:		ldy $06			; a4 06
B0_634b:		rts				; 60 
B0_634c:		lda $04ae, x	; bd ae 04
B0_634f:		cmp $04ac, x	; dd ac 04
B0_6352:		bcc B0_637e ; 90 2a
B0_6354:		lda $04ae, y	; b9 ae 04
B0_6357:		cmp $04ac, x	; dd ac 04
B0_635a:		bcs B0_637e ; b0 22
B0_635c:		ldy $06			; a4 06
B0_635e:		rts				; 60 
B0_635f:		cmp $04ac, x	; dd ac 04
B0_6362:		beq B0_637e ; f0 1a
B0_6364:		cmp $04ae, x	; dd ae 04
B0_6367:		bcc B0_637e ; 90 15
B0_6369:		beq B0_637e ; f0 13
B0_636b:		cmp $04ae, y	; d9 ae 04
B0_636e:		bcc B0_637a ; 90 0a
B0_6370:		beq B0_637a ; f0 08
B0_6372:		lda $04ae, y	; b9 ae 04
B0_6375:		cmp $04ac, x	; dd ac 04
B0_6378:		bcs B0_637e ; b0 04
B0_637a:		clc				; 18 
B0_637b:		ldy $06			; a4 06
B0_637d:		rts				; 60 
B0_637e:		inx				; e8 
B0_637f:		iny				; c8 
B0_6380:		dec $07			; c6 07
B0_6382:		bpl B0_632d ; 10 a9
B0_6384:		sec				; 38 
B0_6385:		ldy $06			; a4 06
B0_6387:		rts				; 60 
B0_6388:		pha				; 48 
B0_6389:		txa				; 8a 
B0_638a:		clc				; 18 
B0_638b:		adc #$01		; 69 01
B0_638d:		tax				; aa 
B0_638e:		pla				; 68 
B0_638f:		jmp $e3a5		; 4c a5 e3
B0_6392:		txa				; 8a 
B0_6393:		clc				; 18 
B0_6394:		adc #$0d		; 69 0d
B0_6396:		tax				; aa 
B0_6397:		ldy #$1b		; a0 1b
B0_6399:		jmp $e3a3		; 4c a3 e3
B0_639c:		ldy #$1a		; a0 1a
B0_639e:		txa				; 8a 
B0_639f:		clc				; 18 
B0_63a0:		adc #$07		; 69 07
B0_63a2:		tax				; aa 
B0_63a3:		lda #$00		; a9 00
B0_63a5:		jsr $e3f0		; 20 f0 e3
B0_63a8:		ldx $08			; a6 08
B0_63aa:		cmp #$00		; c9 00
B0_63ac:		rts				; 60 
B0_63ad:		brk				; 00
B0_63ae:	.db $07
B0_63af:		asl $0308		; 0e 08 03
B0_63b2:	.db $0c
B0_63b3:	.db $02
B0_63b4:	.db $02
B0_63b5:		ora $080d		; 0d 0d 08
B0_63b8:	.db $03
B0_63b9:	.db $0c
B0_63ba:	.db $02
B0_63bb:	.db $02
B0_63bc:		ora $080d		; 0d 0d 08
B0_63bf:	.db $03
B0_63c0:	.db $0c
B0_63c1:	.db $02
B0_63c2:	.db $02
B0_63c3:		ora $080d		; 0d 0d 08
B0_63c6:		brk				; 00
B0_63c7:		bpl B0_63cd ; 10 04
B0_63c9:	.db $14
B0_63ca:	.db $04
B0_63cb:	.db $04
B0_63cc:	.db $04
B0_63cd:		jsr $0820		; 20 20 08
B0_63d0:		clc				; 18 
B0_63d1:		php				; 08 
B0_63d2:		clc				; 18 
B0_63d3:	.db $02
B0_63d4:		jsr $0820		; 20 20 08
B0_63d7:		clc				; 18 
B0_63d8:		php				; 08 
B0_63d9:		clc				; 18 
B0_63da:	.db $12
B0_63db:		jsr $1820		; 20 20 18
B0_63de:		clc				; 18 
B0_63df:		clc				; 18 
B0_63e0:		clc				; 18 
B0_63e1:		clc				; 18 
B0_63e2:	.db $14
B0_63e3:	.db $14
B0_63e4:		asl $06			; 06 06
B0_63e6:		php				; 08 
B0_63e7:		;removed
	.hex  10 c8
B0_63e9:		lda #$00		; a9 00
B0_63eb:		bit $01a9		; 2c a9 01
B0_63ee:		ldx #$00		; a2 00
B0_63f0:		pha				; 48 
B0_63f1:		sty $04			; 84 04
B0_63f3:		lda $e3b0, y	; b9 b0 e3
B0_63f6:		clc				; 18 
B0_63f7:		adc $86, x		; 75 86
B0_63f9:		sta $05			; 85 05
B0_63fb:		lda $6d, x		; b5 6d
B0_63fd:		adc #$00		; 69 00
B0_63ff:		and #$01		; 29 01
B0_6401:		lsr a			; 4a
B0_6402:		ora $05			; 05 05
B0_6404:		ror a			; 6a
B0_6405:		lsr a			; 4a
B0_6406:		lsr a			; 4a
B0_6407:		lsr a			; 4a
B0_6408:		jsr $9be1		; 20 e1 9b
B0_640b:		ldy $04			; a4 04
B0_640d:		lda $ce, x		; b5 ce
B0_640f:		clc				; 18 
B0_6410:		adc $e3cc, y	; 79 cc e3
B0_6413:		and #$f0		; 29 f0
B0_6415:		sec				; 38 
B0_6416:		sbc #$20		; e9 20
B0_6418:		sta $02			; 85 02
B0_641a:		tay				; a8 
B0_641b:		lda ($06), y	; b1 06
B0_641d:		sta $03			; 85 03
B0_641f:		ldy $04			; a4 04
B0_6421:		pla				; 68 
B0_6422:		bne B0_6429 ; d0 05
B0_6424:		lda $ce, x		; b5 ce
B0_6426:		jmp $e42b		; 4c 2b e4
B0_6429:		lda $86, x		; b5 86
B0_642b:		and #$0f		; 29 0f
B0_642d:		sta $04			; 85 04
B0_642f:		lda $03			; a5 03
B0_6431:		rts				; 60 
B0_6432:	.db $ff
B0_6433:		brk				; 00
B0_6434:		bmi B0_63ba ; 30 84
B0_6436:		brk				; 00
B0_6437:		lda $03b9		; ad b9 03
B0_643a:		clc				; 18 
B0_643b:		adc $e433, y	; 79 33 e4
B0_643e:		ldx $039a, y	; be 9a 03
B0_6441:		ldy $06e5, x	; bc e5 06
B0_6444:		sty $02			; 84 02
B0_6446:		jsr $e4ae		; 20 ae e4
B0_6449:		lda $03ae		; ad ae 03
B0_644c:		sta $0203, y	; 99 03 02
B0_644f:		sta $020b, y	; 99 0b 02
B0_6452:		sta $0213, y	; 99 13 02
B0_6455:		clc				; 18 
B0_6456:		adc #$06		; 69 06
B0_6458:		sta $0207, y	; 99 07 02
B0_645b:		sta $020f, y	; 99 0f 02
B0_645e:		sta $0217, y	; 99 17 02
B0_6461:		lda #$21		; a9 21
B0_6463:		sta $0202, y	; 99 02 02
B0_6466:		sta $020a, y	; 99 0a 02
B0_6469:		sta $0212, y	; 99 12 02
B0_646c:		ora #$40		; 09 40
B0_646e:		sta $0206, y	; 99 06 02
B0_6471:		sta $020e, y	; 99 0e 02
B0_6474:		sta $0216, y	; 99 16 02
B0_6477:		ldx #$05		; a2 05
B0_6479:		lda #$e1		; a9 e1
B0_647b:		sta $0201, y	; 99 01 02
B0_647e:		iny				; c8 
B0_647f:		iny				; c8 
B0_6480:		iny				; c8 
B0_6481:		iny				; c8 
B0_6482:		dex				; ca 
B0_6483:		bpl B0_6479 ; 10 f4
B0_6485:		ldy $02			; a4 02
B0_6487:		lda $00			; a5 00
B0_6489:		bne B0_6490 ; d0 05
B0_648b:		lda #$e0		; a9 e0
B0_648d:		sta $0201, y	; 99 01 02
B0_6490:		ldx #$00		; a2 00
B0_6492:		lda $039d		; ad 9d 03
B0_6495:		sec				; 38 
B0_6496:		sbc $0200, y	; f9 00 02
B0_6499:		cmp #$64		; c9 64
B0_649b:		bcc B0_64a2 ; 90 05
B0_649d:		lda #$f8		; a9 f8
B0_649f:		sta $0200, y	; 99 00 02
B0_64a2:		iny				; c8 
B0_64a3:		iny				; c8 
B0_64a4:		iny				; c8 
B0_64a5:		iny				; c8 
B0_64a6:		inx				; e8 
B0_64a7:		cpx #$06		; e0 06
B0_64a9:		bne B0_6492 ; d0 e7
B0_64ab:		ldy $00			; a4 00
B0_64ad:		rts				; 60 
B0_64ae:		ldx #$06		; a2 06
B0_64b0:		sta $0200, y	; 99 00 02
B0_64b3:		clc				; 18 
B0_64b4:		adc #$08		; 69 08
B0_64b6:		iny				; c8 
B0_64b7:		iny				; c8 
B0_64b8:		iny				; c8 
B0_64b9:		iny				; c8 
B0_64ba:		dex				; ca 
B0_64bb:		bne B0_64b0 ; d0 f3
B0_64bd:		ldy $02			; a4 02
B0_64bf:		rts				; 60 
B0_64c0:	.db $04
B0_64c1:		brk				; 00
B0_64c2:	.db $04
B0_64c3:		brk				; 00
B0_64c4:		brk				; 00
B0_64c5:	.db $04
B0_64c6:		brk				; 00
B0_64c7:	.db $04
B0_64c8:		brk				; 00
B0_64c9:		php				; 08 
B0_64ca:		brk				; 00
B0_64cb:		php				; 08 
B0_64cc:		php				; 08 
B0_64cd:		brk				; 00
B0_64ce:		php				; 08 
B0_64cf:		brk				; 00
B0_64d0:	.db $80
B0_64d1:	.db $82
B0_64d2:		sta ($83, x)	; 81 83
B0_64d4:		sta ($83, x)	; 81 83
B0_64d6:	.db $80
B0_64d7:	.db $82
B0_64d8:	.db $03
B0_64d9:	.db $03
B0_64da:	.db $c3
B0_64db:	.db $c3
B0_64dc:		ldy $06f3, x	; bc f3 06
B0_64df:		lda $0747		; ad 47 07
B0_64e2:		bne B0_64ec ; d0 08
B0_64e4:		lda $2a, x		; b5 2a
B0_64e6:		and #$7f		; 29 7f
B0_64e8:		cmp #$01		; c9 01
B0_64ea:		beq B0_64f0 ; f0 04
B0_64ec:		ldx #$00		; a2 00
B0_64ee:		beq B0_64f7 ; f0 07
B0_64f0:		lda $09			; a5 09
B0_64f2:		lsr a			; 4a
B0_64f3:		lsr a			; 4a
B0_64f4:		and #$03		; 29 03
B0_64f6:		tax				; aa 
B0_64f7:		lda $03be		; ad be 03
B0_64fa:		clc				; 18 
B0_64fb:		adc $e4c4, x	; 7d c4 e4
B0_64fe:		sta $0200, y	; 99 00 02
B0_6501:		clc				; 18 
B0_6502:		adc $e4cc, x	; 7d cc e4
B0_6505:		sta $0204, y	; 99 04 02
B0_6508:		lda $03b3		; ad b3 03
B0_650b:		clc				; 18 
B0_650c:		adc $e4c0, x	; 7d c0 e4
B0_650f:		sta $0203, y	; 99 03 02
B0_6512:		clc				; 18 
B0_6513:		adc $e4c8, x	; 7d c8 e4
B0_6516:		sta $0207, y	; 99 07 02
B0_6519:		lda $e4d0, x	; bd d0 e4
B0_651c:		sta $0201, y	; 99 01 02
B0_651f:		lda $e4d4, x	; bd d4 e4
B0_6522:		sta $0205, y	; 99 05 02
B0_6525:		lda $e4d8, x	; bd d8 e4
B0_6528:		sta $0202, y	; 99 02 02
B0_652b:		sta $0206, y	; 99 06 02
B0_652e:		ldx $08			; a6 08
B0_6530:		lda $03d6		; ad d6 03
B0_6533:		and #$fc		; 29 fc
B0_6535:		beq B0_6540 ; f0 09
B0_6537:		lda #$00		; a9 00
B0_6539:		sta $2a, x		; 95 2a
B0_653b:		lda #$f8		; a9 f8
B0_653d:		jsr $e5c1		; 20 c1 e5
B0_6540:		rts				; 60 
B0_6541:		sbc $f750, y	; f9 50 f7
B0_6544:		bvc B0_6540 ; 50 fa
B0_6546:	.db $fb
B0_6547:		sed				; f8 
B0_6548:	.db $fb
B0_6549:		inc $fb, x		; f6 fb
B0_654b:		ldy $06e5, x	; bc e5 06
B0_654e:		lda $03ae		; ad ae 03
B0_6551:		sta $0203, y	; 99 03 02
B0_6554:		clc				; 18 
B0_6555:		adc #$08		; 69 08
B0_6557:		sta $0207, y	; 99 07 02
B0_655a:		sta $020b, y	; 99 0b 02
B0_655d:		clc				; 18 
B0_655e:		adc #$0c		; 69 0c
B0_6560:		sta $05			; 85 05
B0_6562:		lda $cf, x		; b5 cf
B0_6564:		jsr $e5c1		; 20 c1 e5
B0_6567:		adc #$08		; 69 08
B0_6569:		sta $0208, y	; 99 08 02
B0_656c:		lda $010d		; ad 0d 01
B0_656f:		sta $02			; 85 02
B0_6571:		lda #$01		; a9 01
B0_6573:		sta $03			; 85 03
B0_6575:		sta $04			; 85 04
B0_6577:		sta $0202, y	; 99 02 02
B0_657a:		sta $0206, y	; 99 06 02
B0_657d:		sta $020a, y	; 99 0a 02
B0_6580:		lda #$7e		; a9 7e
B0_6582:		sta $0201, y	; 99 01 02
B0_6585:		sta $0209, y	; 99 09 02
B0_6588:		lda #$7f		; a9 7f
B0_658a:		sta $0205, y	; 99 05 02
B0_658d:		lda $070f		; ad 0f 07
B0_6590:		beq B0_65a7 ; f0 15
B0_6592:		tya				; 98 
B0_6593:		clc				; 18 
B0_6594:		adc #$0c		; 69 0c
B0_6596:		tay				; a8 
B0_6597:		lda $010f		; ad 0f 01
B0_659a:		asl a			; 0a
B0_659b:		tax				; aa 
B0_659c:		lda $e541, x	; bd 41 e5
B0_659f:		sta $00			; 85 00
B0_65a1:		lda $e542, x	; bd 42 e5
B0_65a4:		jsr $ebb2		; 20 b2 eb
B0_65a7:		ldx $08			; a6 08
B0_65a9:		ldy $06e5, x	; bc e5 06
B0_65ac:		lda $03d1		; ad d1 03
B0_65af:		and #$0e		; 29 0e
B0_65b1:		beq B0_65c7 ; f0 14
B0_65b3:		lda #$f8		; a9 f8
B0_65b5:		sta $0214, y	; 99 14 02
B0_65b8:		sta $0210, y	; 99 10 02
B0_65bb:		sta $020c, y	; 99 0c 02
B0_65be:		sta $0208, y	; 99 08 02
B0_65c1:		sta $0204, y	; 99 04 02
B0_65c4:		sta $0200, y	; 99 00 02
B0_65c7:		rts				; 60 
B0_65c8:		ldy $06e5, x	; bc e5 06
B0_65cb:		sty $02			; 84 02
B0_65cd:		iny				; c8 
B0_65ce:		iny				; c8 
B0_65cf:		iny				; c8 
B0_65d0:		lda $03ae		; ad ae 03
B0_65d3:		jsr $e4ae		; 20 ae e4
B0_65d6:		ldx $08			; a6 08
B0_65d8:		lda $cf, x		; b5 cf
B0_65da:		jsr $e5bb		; 20 bb e5
B0_65dd:		ldy $074e		; ac 4e 07
B0_65e0:		cpy #$03		; c0 03
B0_65e2:		beq B0_65e9 ; f0 05
B0_65e4:		ldy $06cc		; ac cc 06
B0_65e7:		beq B0_65eb ; f0 02
B0_65e9:		lda #$f8		; a9 f8
B0_65eb:		ldy $06e5, x	; bc e5 06
B0_65ee:		sta $0210, y	; 99 10 02
B0_65f1:		sta $0214, y	; 99 14 02
B0_65f4:		lda #$5b		; a9 5b
B0_65f6:		ldx $0743		; ae 43 07
B0_65f9:		beq B0_65fd ; f0 02
B0_65fb:		lda #$75		; a9 75
B0_65fd:		ldx $08			; a6 08
B0_65ff:		iny				; c8 
B0_6600:		jsr $e5b5		; 20 b5 e5
B0_6603:		lda #$02		; a9 02
B0_6605:		iny				; c8 
B0_6606:		jsr $e5b5		; 20 b5 e5
B0_6609:		inx				; e8 
B0_660a:		jsr $f1f6		; 20 f6 f1
B0_660d:		dex				; ca 
B0_660e:		ldy $06e5, x	; bc e5 06
B0_6611:		asl a			; 0a
B0_6612:		pha				; 48 
B0_6613:		bcc B0_661a ; 90 05
B0_6615:		lda #$f8		; a9 f8
B0_6617:		sta $0200, y	; 99 00 02
B0_661a:		pla				; 68 
B0_661b:		asl a			; 0a
B0_661c:		pha				; 48 
B0_661d:		bcc B0_6624 ; 90 05
B0_661f:		lda #$f8		; a9 f8
B0_6621:		sta $0204, y	; 99 04 02
B0_6624:		pla				; 68 
B0_6625:		asl a			; 0a
B0_6626:		pha				; 48 
B0_6627:		bcc B0_662e ; 90 05
B0_6629:		lda #$f8		; a9 f8
B0_662b:		sta $0208, y	; 99 08 02
B0_662e:		pla				; 68 
B0_662f:		asl a			; 0a
B0_6630:		pha				; 48 
B0_6631:		bcc B0_6638 ; 90 05
B0_6633:		lda #$f8		; a9 f8
B0_6635:		sta $020c, y	; 99 0c 02
B0_6638:		pla				; 68 
B0_6639:		asl a			; 0a
B0_663a:		pha				; 48 
B0_663b:		bcc B0_6642 ; 90 05
B0_663d:		lda #$f8		; a9 f8
B0_663f:		sta $0210, y	; 99 10 02
B0_6642:		pla				; 68 
B0_6643:		asl a			; 0a
B0_6644:		bcc B0_664b ; 90 05
B0_6646:		lda #$f8		; a9 f8
B0_6648:		sta $0214, y	; 99 14 02
B0_664b:		lda $03d1		; ad d1 03
B0_664e:		asl a			; 0a
B0_664f:		bcc B0_6654 ; 90 03
B0_6651:		jsr $e5b3		; 20 b3 e5
B0_6654:		rts				; 60 
B0_6655:		lda $09			; a5 09
B0_6657:		lsr a			; 4a
B0_6658:		bcs B0_665c ; b0 02
B0_665a:		dec $db, x		; d6 db
B0_665c:		lda $db, x		; b5 db
B0_665e:		jsr $e5c1		; 20 c1 e5
B0_6661:		lda $03b3		; ad b3 03
B0_6664:		sta $0203, y	; 99 03 02
B0_6667:		clc				; 18 
B0_6668:		adc #$08		; 69 08
B0_666a:		sta $0207, y	; 99 07 02
B0_666d:		lda #$02		; a9 02
B0_666f:		sta $0202, y	; 99 02 02
B0_6672:		sta $0206, y	; 99 06 02
B0_6675:		lda #$f7		; a9 f7
B0_6677:		sta $0201, y	; 99 01 02
B0_667a:		lda #$fb		; a9 fb
B0_667c:		sta $0205, y	; 99 05 02
B0_667f:		jmp $e6bd		; 4c bd e6
B0_6682:		rts				; 60 
B0_6683:		adc ($62, x)	; 61 62
B0_6685:	.db $63
B0_6686:		ldy $06f3, x	; bc f3 06
B0_6689:		lda $2a, x		; b5 2a
B0_668b:		cmp #$02		; c9 02
B0_668d:		bcs B0_6655 ; b0 c6
B0_668f:		lda $db, x		; b5 db
B0_6691:		sta $0200, y	; 99 00 02
B0_6694:		clc				; 18 
B0_6695:		adc #$08		; 69 08
B0_6697:		sta $0204, y	; 99 04 02
B0_669a:		lda $03b3		; ad b3 03
B0_669d:		sta $0203, y	; 99 03 02
B0_66a0:		sta $0207, y	; 99 07 02
B0_66a3:		lda $09			; a5 09
B0_66a5:		lsr a			; 4a
B0_66a6:		and #$03		; 29 03
B0_66a8:		tax				; aa 
B0_66a9:		lda $e682, x	; bd 82 e6
B0_66ac:		iny				; c8 
B0_66ad:		jsr $e5c1		; 20 c1 e5
B0_66b0:		dey				; 88 
B0_66b1:		lda #$02		; a9 02
B0_66b3:		sta $0202, y	; 99 02 02
B0_66b6:		lda #$82		; a9 82
B0_66b8:		sta $0206, y	; 99 06 02
B0_66bb:		ldx $08			; a6 08
B0_66bd:		rts				; 60 
B0_66be:		ror $77, x		; 76 77
B0_66c0:		sei				; 78 
B0_66c1:		adc $d6d6, y	; 79 d6 d6
B0_66c4:		cmp $8dd9, y	; d9 d9 8d
B0_66c7:		sta $e4e4		; 8d e4 e4
B0_66ca:		ror $77, x		; 76 77
B0_66cc:		sei				; 78 
B0_66cd:		adc $0102, y	; 79 02 01
B0_66d0:	.db $02
B0_66d1:		ora ($ac, x)	; 01 ac
B0_66d3:		nop				; ea 
B0_66d4:		asl $ad			; 06 ad
B0_66d6:		lda $1803, y	; b9 03 18
B0_66d9:		adc #$08		; 69 08
B0_66db:		sta $02			; 85 02
B0_66dd:		lda $03ae		; ad ae 03
B0_66e0:		sta $05			; 85 05
B0_66e2:		ldx $39			; a6 39
B0_66e4:		lda $e6ce, x	; bd ce e6
B0_66e7:		ora $03ca		; 0d ca 03
B0_66ea:		sta $04			; 85 04
B0_66ec:		txa				; 8a 
B0_66ed:		pha				; 48 
B0_66ee:		asl a			; 0a
B0_66ef:		asl a			; 0a
B0_66f0:		tax				; aa 
B0_66f1:		lda #$01		; a9 01
B0_66f3:		sta $07			; 85 07
B0_66f5:		sta $03			; 85 03
B0_66f7:		lda $e6be, x	; bd be e6
B0_66fa:		sta $00			; 85 00
B0_66fc:		lda $e6bf, x	; bd bf e6
B0_66ff:		jsr $ebb2		; 20 b2 eb
B0_6702:		dec $07			; c6 07
B0_6704:		bpl B0_66f7 ; 10 f1
B0_6706:		ldy $06ea		; ac ea 06
B0_6709:		pla				; 68 
B0_670a:		beq B0_673b ; f0 2f
B0_670c:		cmp #$03		; c9 03
B0_670e:		beq B0_673b ; f0 2b
B0_6710:		sta $00			; 85 00
B0_6712:		lda $09			; a5 09
B0_6714:		lsr a			; 4a
B0_6715:		and #$03		; 29 03
B0_6717:		ora $03ca		; 0d ca 03
B0_671a:		sta $0202, y	; 99 02 02
B0_671d:		sta $0206, y	; 99 06 02
B0_6720:		ldx $00			; a6 00
B0_6722:		dex				; ca 
B0_6723:		beq B0_672b ; f0 06
B0_6725:		sta $020a, y	; 99 0a 02
B0_6728:		sta $020e, y	; 99 0e 02
B0_672b:		lda $0206, y	; b9 06 02
B0_672e:		ora #$40		; 09 40
B0_6730:		sta $0206, y	; 99 06 02
B0_6733:		lda $020e, y	; b9 0e 02
B0_6736:		ora #$40		; 09 40
B0_6738:		sta $020e, y	; 99 0e 02
B0_673b:		jmp $eb64		; 4c 64 eb
B0_673e:	.db $fc
B0_673f:	.db $fc
B0_6740:		tax				; aa 
B0_6741:	.db $ab
B0_6742:		ldy $fcad		; ac ad fc
B0_6745:	.db $fc
B0_6746:		ldx $b0af		; ae af b0
B0_6749:		lda ($fc), y	; b1 fc
B0_674b:		lda $a6			; a5 a6
B0_674d:	.db $a7
B0_674e:		tay				; a8 
B0_674f:		lda #$fc		; a9 fc
B0_6751:		ldy #$a1		; a0 a1
B0_6753:		ldx #$a3		; a2 a3
B0_6755:		ldy $69			; a4 69
B0_6757:		lda $6a			; a5 6a
B0_6759:	.db $a7
B0_675a:		tay				; a8 
B0_675b:		lda #$6b		; a9 6b
B0_675d:		ldy #$6c		; a0 6c
B0_675f:		ldx #$a3		; a2 a3
B0_6761:		ldy $fc			; a4 fc
B0_6763:	.db $fc
B0_6764:		stx $97, y		; 96 97
B0_6766:		tya				; 98 
B0_6767:		sta $fcfc, y	; 99 fc fc
B0_676a:		txs				; 9a 
B0_676b:	.db $9b
B0_676c:	.db $9c
B0_676d:		sta $fcfc, x	; 9d fc fc
B0_6770:	.db $8f
B0_6771:		stx $8f8e		; 8e 8e 8f
B0_6774:	.db $fc
B0_6775:	.db $fc
B0_6776:		sta $94, x		; 95 94
B0_6778:		sty $95, x		; 94 95
B0_677a:	.db $fc
B0_677b:	.db $fc
B0_677c:	.db $dc
B0_677d:	.db $dc
B0_677e:	.db $df
B0_677f:	.db $df
B0_6780:	.db $dc
B0_6781:	.db $dc
B0_6782:		cmp $dedd, x	; dd dd de
B0_6785:		dec $fcfc, x	; de fc fc
B0_6788:	.db $b2
B0_6789:	.db $b3
B0_678a:		ldy $b5, x		; b4 b5
B0_678c:	.db $fc
B0_678d:	.db $fc
B0_678e:		ldx $b3, y		; b6 b3
B0_6790:	.db $b7
B0_6791:		lda $fc, x		; b5 fc
B0_6793:	.db $fc
B0_6794:		bvs B0_6807 ; 70 71
B0_6796:	.db $72
B0_6797:	.db $73
B0_6798:	.db $fc
B0_6799:	.db $fc
B0_679a:		ror $6f6e		; 6e 6e 6f
B0_679d:	.db $6f
B0_679e:	.db $fc
B0_679f:	.db $fc
B0_67a0:		adc $6f6d		; 6d 6d 6f
B0_67a3:	.db $6f
B0_67a4:	.db $fc
B0_67a5:	.db $fc
B0_67a6:	.db $6f
B0_67a7:	.db $6f
B0_67a8:		ror $fc6e		; 6e 6e fc
B0_67ab:	.db $fc
B0_67ac:	.db $6f
B0_67ad:	.db $6f
B0_67ae:		adc $fc6d		; 6d 6d fc
B0_67b1:	.db $fc
B0_67b2:	.db $f4
B0_67b3:	.db $f4
B0_67b4:		sbc $f5, x		; f5 f5
B0_67b6:	.db $fc
B0_67b7:	.db $fc
B0_67b8:	.db $f4
B0_67b9:	.db $f4
B0_67ba:		sbc $f5, x		; f5 f5
B0_67bc:	.db $fc
B0_67bd:	.db $fc
B0_67be:		sbc $f5, x		; f5 f5
B0_67c0:	.db $f4
B0_67c1:	.db $f4
B0_67c2:	.db $fc
B0_67c3:	.db $fc
B0_67c4:		sbc $f5, x		; f5 f5
B0_67c6:	.db $f4
B0_67c7:	.db $f4
B0_67c8:	.db $fc
B0_67c9:	.db $fc
B0_67ca:	.db $fc
B0_67cb:	.db $fc
B0_67cc:	.db $ef
B0_67cd:	.db $ef
B0_67ce:		lda $bbb8, y	; b9 b8 bb
B0_67d1:		tsx				; ba 
B0_67d2:		ldy $fcbc, x	; bc bc fc
B0_67d5:	.db $fc
B0_67d6:		lda $bcbd, x	; bd bd bc
B0_67d9:		ldy $7b7a, x	; bc 7a 7b
B0_67dc:	.db $da
B0_67dd:	.db $db
B0_67de:		cld				; b8 
B0_67df:		cld				; b8 
B0_67e0:		cmp $cecd		; cd cd ce
B0_67e3:		dec $cfcf		; ce cf cf
B0_67e6:		adc $d17c, x	; 7d 7c d1
B0_67e9:		sty $d2d3		; 8c d3 d2
B0_67ec:		adc $897c, x	; 7d 7c 89
B0_67ef:		dey				; 88 
B0_67f0:	.db $8b
B0_67f1:		txa				; 8a 
B0_67f2:		cmp $d4, x		; d5 d4
B0_67f4:	.db $e3
B0_67f5:	.db $e2
B0_67f6:	.db $d3
B0_67f7:	.db $d2
B0_67f8:		cmp $d4, x		; d5 d4
B0_67fa:	.db $e3
B0_67fb:	.db $e2
B0_67fc:	.db $8b
B0_67fd:		txa				; 8a 
B0_67fe:		sbc $e5			; e5 e5
B0_6800:		inc $e6			; e6 e6
B0_6802:	.db $eb
B0_6803:	.db $eb
B0_6804:		cpx $edec		; ec ec ed
B0_6807:		sbc $eeee		; edee ee
B0_680a:	.db $fc
B0_680b:	.db $fc
B0_680c:		bne B0_67de ; d0 d0
B0_680e:	.db $d7
B0_680f:	.db $d7
B0_6810:	.db $bf
B0_6811:		ldx $c0c1, y	; be c1 c0
B0_6814:	.db $c2
B0_6815:	.db $fc
B0_6816:		cpy $c3			; c4 c3
B0_6818:		dec $c5			; c6 c5
B0_681a:		iny				; c8 
B0_681b:	.db $c7
B0_681c:	.db $bf
B0_681d:		ldx $c9ca, y	; be ca c9
B0_6820:	.db $c2
B0_6821:	.db $fc
B0_6822:		cpy $c3			; c4 c3
B0_6824:		dec $c5			; c6 c5
B0_6826:		cpy $fccb		; cc cb fc
B0_6829:	.db $fc
B0_682a:		inx				; e8 
B0_682b:	.db $e7
B0_682c:		nop				; ea 
B0_682d:		sbc #$f2		; e9 f2
B0_682f:	.db $f2
B0_6830:	.db $f3
B0_6831:	.db $f3
B0_6832:	.db $f2
B0_6833:	.db $f2
B0_6834:		sbc ($f1), y	; f1 f1
B0_6836:		sbc ($f1), y	; f1 f1
B0_6838:	.db $fc
B0_6839:	.db $fc
B0_683a:		beq B0_682c ; f0 f0
B0_683c:	.db $fc
B0_683d:	.db $fc
B0_683e:	.db $fc
B0_683f:	.db $fc
B0_6840:	.db $0c
B0_6841:	.db $0c
B0_6842:		brk				; 00
B0_6843:	.db $0c
B0_6844:	.db $0c
B0_6845:		tay				; a8 
B0_6846:	.db $54
B0_6847:	.db $3c
B0_6848:		nop				; ea 
B0_6849:		clc				; 18 
B0_684a:		pha				; 48 
B0_684b:		pha				; 48 
B0_684c:		cpy $18c0		; cc c0 18
B0_684f:		clc				; 18 
B0_6850:		clc				; 18 
B0_6851:		bcc B0_6877 ; 90 24
B0_6853:	.db $ff
B0_6854:		pha				; 48 
B0_6855:	.db $9c
B0_6856:	.db $d2
B0_6857:		cld				; b8 
B0_6858:		beq B0_6850 ; f0 f6
B0_685a:	.db $fc
B0_685b:		ora ($02, x)	; 01 02
B0_685d:	.db $03
B0_685e:	.db $02
B0_685f:		ora ($01, x)	; 01 01
B0_6861:	.db $03
B0_6862:	.db $03
B0_6863:	.db $03
B0_6864:		ora ($01, x)	; 01 01
B0_6866:	.db $02
B0_6867:	.db $02
B0_6868:		and ($01, x)	; 21 01
B0_686a:	.db $02
B0_686b:		ora ($01, x)	; 01 01
B0_686d:	.db $02
B0_686e:	.db $ff
B0_686f:	.db $02
B0_6870:	.db $02
B0_6871:		ora ($01, x)	; 01 01
B0_6873:	.db $02
B0_6874:	.db $02
B0_6875:	.db $02
B0_6876:		php				; 08 
B0_6877:		clc				; 18 
B0_6878:		clc				; 18 
B0_6879:		ora $191a, y	; 19 1a 19
B0_687c:		clc				; 18 
B0_687d:		lda $cf, x		; b5 cf
B0_687f:		sta $02			; 85 02
B0_6881:		lda $03ae		; ad ae 03
B0_6884:		sta $05			; 85 05
B0_6886:		ldy $06e5, x	; bc e5 06
B0_6889:		sty $eb			; 84 eb
B0_688b:		lda #$00		; a9 00
B0_688d:		sta $0109		; 8d 09 01
B0_6890:		lda $46, x		; b5 46
B0_6892:		sta $03			; 85 03
B0_6894:		lda $03c5, x	; bd c5 03
B0_6897:		sta $04			; 85 04
B0_6899:		lda $16, x		; b5 16
B0_689b:		cmp #$0d		; c9 0d
B0_689d:		bne B0_68a9 ; d0 0a
B0_689f:		ldy $58, x		; b4 58
B0_68a1:		bmi B0_68a9 ; 30 06
B0_68a3:		ldy $078a, x	; bc 8a 07
B0_68a6:		beq B0_68a9 ; f0 01
B0_68a8:		rts				; 60 
B0_68a9:		lda $1e, x		; b5 1e
B0_68ab:		sta $ed			; 85 ed
B0_68ad:		and #$1f		; 29 1f
B0_68af:		tay				; a8 
B0_68b0:		lda $16, x		; b5 16
B0_68b2:		cmp #$35		; c9 35
B0_68b4:		bne B0_68be ; d0 08
B0_68b6:		ldy #$00		; a0 00
B0_68b8:		lda #$01		; a9 01
B0_68ba:		sta $03			; 85 03
B0_68bc:		lda #$15		; a9 15
B0_68be:		cmp #$33		; c9 33
B0_68c0:		bne B0_68d5 ; d0 13
B0_68c2:		dec $02			; c6 02
B0_68c4:		lda #$03		; a9 03
B0_68c6:		ldy $078a, x	; bc 8a 07
B0_68c9:		beq B0_68cd ; f0 02
B0_68cb:		ora #$20		; 09 20
B0_68cd:		sta $04			; 85 04
B0_68cf:		ldy #$00		; a0 00
B0_68d1:		sty $ed			; 84 ed
B0_68d3:		lda #$08		; a9 08
B0_68d5:		cmp #$32		; c9 32
B0_68d7:		bne B0_68e1 ; d0 08
B0_68d9:		ldy #$03		; a0 03
B0_68db:		ldx $070e		; ae 0e 07
B0_68de:		lda $e878, x	; bd 78 e8
B0_68e1:		sta $ef			; 85 ef
B0_68e3:		sty $ec			; 84 ec
B0_68e5:		ldx $08			; a6 08
B0_68e7:		cmp #$0c		; c9 0c
B0_68e9:		bne B0_68f2 ; d0 07
B0_68eb:		lda $a0, x		; b5 a0
B0_68ed:		bmi B0_68f2 ; 30 03
B0_68ef:		inc $0109		; ee 09 01
B0_68f2:		lda $036a		; ad 6a 03
B0_68f5:		beq B0_6900 ; f0 09
B0_68f7:		ldy #$16		; a0 16
B0_68f9:		cmp #$01		; c9 01
B0_68fb:		beq B0_68fe ; f0 01
B0_68fd:		iny				; c8 
B0_68fe:		sty $ef			; 84 ef
B0_6900:		ldy $ef			; a4 ef
B0_6902:		cpy #$06		; c0 06
B0_6904:		bne B0_6923 ; d0 1d
B0_6906:		lda $1e, x		; b5 1e
B0_6908:		cmp #$02		; c9 02
B0_690a:		bcc B0_6910 ; 90 04
B0_690c:		ldx #$04		; a2 04
B0_690e:		stx $ec			; 86 ec
B0_6910:		and #$20		; 29 20
B0_6912:		ora $0747		; 0d 47 07
B0_6915:		bne B0_6923 ; d0 0c
B0_6917:		lda $09			; a5 09
B0_6919:		and #$08		; 29 08
B0_691b:		bne B0_6923 ; d0 06
B0_691d:		lda $03			; a5 03
B0_691f:		eor #$03		; 49 03
B0_6921:		sta $03			; 85 03
B0_6923:		lda $e85b, y	; b9 5b e8
B0_6926:		ora $04			; 05 04
B0_6928:		sta $04			; 85 04
B0_692a:		lda $e840, y	; b9 40 e8
B0_692d:		tax				; aa 
B0_692e:		ldy $ec			; a4 ec
B0_6930:		lda $036a		; ad 6a 03
B0_6933:		beq B0_6965 ; f0 30
B0_6935:		cmp #$01		; c9 01
B0_6937:		bne B0_694c ; d0 13
B0_6939:		lda $0363		; ad 63 03
B0_693c:		bpl B0_6940 ; 10 02
B0_693e:		ldx #$de		; a2 de
B0_6940:		lda $ed			; a5 ed
B0_6942:		and #$20		; 29 20
B0_6944:		beq B0_6949 ; f0 03
B0_6946:		stx $0109		; 8e 09 01
B0_6949:		jmp $ea4b		; 4c 4b ea
B0_694c:		lda $0363		; ad 63 03
B0_694f:		and #$01		; 29 01
B0_6951:		beq B0_6955 ; f0 02
B0_6953:		ldx #$e4		; a2 e4
B0_6955:		lda $ed			; a5 ed
B0_6957:		and #$20		; 29 20
B0_6959:		beq B0_6949 ; f0 ee
B0_695b:		lda $02			; a5 02
B0_695d:		sec				; 38 
B0_695e:		sbc #$10		; e9 10
B0_6960:		sta $02			; 85 02
B0_6962:		jmp $e946		; 4c 46 e9
B0_6965:		cpx #$24		; e0 24
B0_6967:		bne B0_697a ; d0 11
B0_6969:		cpy #$05		; c0 05
B0_696b:		bne B0_6977 ; d0 0a
B0_696d:		ldx #$30		; a2 30
B0_696f:		lda #$02		; a9 02
B0_6971:		sta $03			; 85 03
B0_6973:		lda #$05		; a9 05
B0_6975:		sta $ec			; 85 ec
B0_6977:		jmp $e9ca		; 4c ca e9
B0_697a:		cpx #$90		; e0 90
B0_697c:		bne B0_6990 ; d0 12
B0_697e:		lda $ed			; a5 ed
B0_6980:		and #$20		; 29 20
B0_6982:		bne B0_698d ; d0 09
B0_6984:		lda $078f		; ad 8f 07
B0_6987:		cmp #$10		; c9 10
B0_6989:		bcs B0_698d ; b0 02
B0_698b:		ldx #$96		; a2 96
B0_698d:		jmp $ea37		; 4c 37 ea
B0_6990:		lda $ef			; a5 ef
B0_6992:		cmp #$04		; c9 04
B0_6994:		bcs B0_69a6 ; b0 10
B0_6996:		cpy #$02		; c0 02
B0_6998:		bcc B0_69a6 ; 90 0c
B0_699a:		ldx #$5a		; a2 5a
B0_699c:		ldy $ef			; a4 ef
B0_699e:		cpy #$02		; c0 02
B0_69a0:		bne B0_69a6 ; d0 04
B0_69a2:		ldx #$7e		; a2 7e
B0_69a4:		inc $02			; e6 02
B0_69a6:		lda $ec			; a5 ec
B0_69a8:		cmp #$04		; c9 04
B0_69aa:		bne B0_69ca ; d0 1e
B0_69ac:		ldx #$72		; a2 72
B0_69ae:		inc $02			; e6 02
B0_69b0:		ldy $ef			; a4 ef
B0_69b2:		cpy #$02		; c0 02
B0_69b4:		beq B0_69ba ; f0 04
B0_69b6:		ldx #$66		; a2 66
B0_69b8:		inc $02			; e6 02
B0_69ba:		cpy #$06		; c0 06
B0_69bc:		bne B0_69ca ; d0 0c
B0_69be:		ldx #$54		; a2 54
B0_69c0:		lda $ed			; a5 ed
B0_69c2:		and #$20		; 29 20
B0_69c4:		bne B0_69ca ; d0 04
B0_69c6:		ldx #$8a		; a2 8a
B0_69c8:		dec $02			; c6 02
B0_69ca:		ldy $08			; a4 08
B0_69cc:		lda $ef			; a5 ef
B0_69ce:		cmp #$05		; c9 05
B0_69d0:		bne B0_69de ; d0 0c
B0_69d2:		lda $ed			; a5 ed
B0_69d4:		beq B0_69fa ; f0 24
B0_69d6:		and #$08		; 29 08
B0_69d8:		beq B0_6a37 ; f0 5d
B0_69da:		ldx #$b4		; a2 b4
B0_69dc:		bne B0_69fa ; d0 1c
B0_69de:		cpx #$48		; e0 48
B0_69e0:		beq B0_69fa ; f0 18
B0_69e2:		lda $0796, y	; b9 96 07
B0_69e5:		cmp #$05		; c9 05
B0_69e7:		bcs B0_6a37 ; b0 4e
B0_69e9:		cpx #$3c		; e0 3c
B0_69eb:		bne B0_69fa ; d0 0d
B0_69ed:		cmp #$01		; c9 01
B0_69ef:		beq B0_6a37 ; f0 46
B0_69f1:		inc $02			; e6 02
B0_69f3:		inc $02			; e6 02
B0_69f5:		inc $02			; e6 02
B0_69f7:		jmp $ea29		; 4c 29 ea
B0_69fa:		lda $ef			; a5 ef
B0_69fc:		cmp #$06		; c9 06
B0_69fe:		beq B0_6a37 ; f0 37
B0_6a00:		cmp #$08		; c9 08
B0_6a02:		beq B0_6a37 ; f0 33
B0_6a04:		cmp #$0c		; c9 0c
B0_6a06:		beq B0_6a37 ; f0 2f
B0_6a08:		cmp #$18		; c9 18
B0_6a0a:		bcs B0_6a37 ; b0 2b
B0_6a0c:		ldy #$00		; a0 00
B0_6a0e:		cmp #$15		; c9 15
B0_6a10:		bne B0_6a22 ; d0 10
B0_6a12:		iny				; c8 
B0_6a13:		lda $075f		; ad 5f 07
B0_6a16:		cmp #$07		; c9 07
B0_6a18:		bcs B0_6a37 ; b0 1d
B0_6a1a:		ldx #$a2		; a2 a2
B0_6a1c:		lda #$03		; a9 03
B0_6a1e:		sta $ec			; 85 ec
B0_6a20:		bne B0_6a37 ; d0 15
B0_6a22:		lda $09			; a5 09
B0_6a24:		and $e876, y	; 39 76 e8
B0_6a27:		bne B0_6a37 ; d0 0e
B0_6a29:		lda $ed			; a5 ed
B0_6a2b:		and #$a0		; 29 a0
B0_6a2d:		ora $0747		; 0d 47 07
B0_6a30:		bne B0_6a37 ; d0 05
B0_6a32:		txa				; 8a 
B0_6a33:		clc				; 18 
B0_6a34:		adc #$06		; 69 06
B0_6a36:		tax				; aa 
B0_6a37:		lda $ed			; a5 ed
B0_6a39:		and #$20		; 29 20
B0_6a3b:		beq B0_6a4b ; f0 0e
B0_6a3d:		lda $ef			; a5 ef
B0_6a3f:		cmp #$04		; c9 04
B0_6a41:		bcc B0_6a4b ; 90 08
B0_6a43:		ldy #$01		; a0 01
B0_6a45:		sty $0109		; 8c 09 01
B0_6a48:		dey				; 88 
B0_6a49:		sty $ec			; 84 ec
B0_6a4b:		ldy $eb			; a4 eb
B0_6a4d:		jsr $ebaa		; 20 aa eb
B0_6a50:		jsr $ebaa		; 20 aa eb
B0_6a53:		jsr $ebaa		; 20 aa eb
B0_6a56:		ldx $08			; a6 08
B0_6a58:		ldy $06e5, x	; bc e5 06
B0_6a5b:		lda $ef			; a5 ef
B0_6a5d:		cmp #$08		; c9 08
B0_6a5f:		bne B0_6a64 ; d0 03
B0_6a61:		jmp $eb64		; 4c 64 eb
B0_6a64:		lda $0109		; ad 09 01
B0_6a67:		beq B0_6aa6 ; f0 3d
B0_6a69:		lda $0202, y	; b9 02 02
B0_6a6c:		ora #$80		; 09 80
B0_6a6e:		iny				; c8 
B0_6a6f:		iny				; c8 
B0_6a70:		jsr $e5b5		; 20 b5 e5
B0_6a73:		dey				; 88 
B0_6a74:		dey				; 88 
B0_6a75:		tya				; 98 
B0_6a76:		tax				; aa 
B0_6a77:		lda $ef			; a5 ef
B0_6a79:		cmp #$05		; c9 05
B0_6a7b:		beq B0_6a8a ; f0 0d
B0_6a7d:		cmp #$11		; c9 11
B0_6a7f:		beq B0_6a8a ; f0 09
B0_6a81:		cmp #$15		; c9 15
B0_6a83:		bcs B0_6a8a ; b0 05
B0_6a85:		txa				; 8a 
B0_6a86:		clc				; 18 
B0_6a87:		adc #$08		; 69 08
B0_6a89:		tax				; aa 
B0_6a8a:		lda $0201, x	; bd 01 02
B0_6a8d:		pha				; 48 
B0_6a8e:		lda $0205, x	; bd 05 02
B0_6a91:		pha				; 48 
B0_6a92:		lda $0211, y	; b9 11 02
B0_6a95:		sta $0201, x	; 9d 01 02
B0_6a98:		lda $0215, y	; b9 15 02
B0_6a9b:		sta $0205, x	; 9d 05 02
B0_6a9e:		pla				; 68 
B0_6a9f:		sta $0215, y	; 99 15 02
B0_6aa2:		pla				; 68 
B0_6aa3:		sta $0211, y	; 99 11 02
B0_6aa6:		lda $036a		; ad 6a 03
B0_6aa9:		bne B0_6a61 ; d0 b6
B0_6aab:		lda $ef			; a5 ef
B0_6aad:		ldx $ec			; a6 ec
B0_6aaf:		cmp #$05		; c9 05
B0_6ab1:		bne B0_6ab6 ; d0 03
B0_6ab3:		jmp $eb64		; 4c 64 eb
B0_6ab6:		cmp #$07		; c9 07
B0_6ab8:		beq B0_6ad7 ; f0 1d
B0_6aba:		cmp #$0d		; c9 0d
B0_6abc:		beq B0_6ad7 ; f0 19
B0_6abe:		cmp #$0c		; c9 0c
B0_6ac0:		beq B0_6ad7 ; f0 15
B0_6ac2:		cmp #$12		; c9 12
B0_6ac4:		bne B0_6aca ; d0 04
B0_6ac6:		cpx #$05		; e0 05
B0_6ac8:		bne B0_6b12 ; d0 48
B0_6aca:		cmp #$15		; c9 15
B0_6acc:		bne B0_6ad3 ; d0 05
B0_6ace:		lda #$42		; a9 42
B0_6ad0:		sta $0216, y	; 99 16 02
B0_6ad3:		cpx #$02		; e0 02
B0_6ad5:		bcc B0_6b12 ; 90 3b
B0_6ad7:		lda $036a		; ad 6a 03
B0_6ada:		bne B0_6b12 ; d0 36
B0_6adc:		lda $0202, y	; b9 02 02
B0_6adf:		and #$a3		; 29 a3
B0_6ae1:		sta $0202, y	; 99 02 02
B0_6ae4:		sta $020a, y	; 99 0a 02
B0_6ae7:		sta $0212, y	; 99 12 02
B0_6aea:		ora #$40		; 09 40
B0_6aec:		cpx #$05		; e0 05
B0_6aee:		bne B0_6af2 ; d0 02
B0_6af0:		ora #$80		; 09 80
B0_6af2:		sta $0206, y	; 99 06 02
B0_6af5:		sta $020e, y	; 99 0e 02
B0_6af8:		sta $0216, y	; 99 16 02
B0_6afb:		cpx #$04		; e0 04
B0_6afd:		bne B0_6b12 ; d0 13
B0_6aff:		lda $020a, y	; b9 0a 02
B0_6b02:		ora #$80		; 09 80
B0_6b04:		sta $020a, y	; 99 0a 02
B0_6b07:		sta $0212, y	; 99 12 02
B0_6b0a:		ora #$40		; 09 40
B0_6b0c:		sta $020e, y	; 99 0e 02
B0_6b0f:		sta $0216, y	; 99 16 02
B0_6b12:		lda $ef			; a5 ef
B0_6b14:		cmp #$11		; c9 11
B0_6b16:		bne B0_6b4e ; d0 36
B0_6b18:		lda $0109		; ad 09 01
B0_6b1b:		bne B0_6b3e ; d0 21
B0_6b1d:		lda $0212, y	; b9 12 02
B0_6b20:		and #$81		; 29 81
B0_6b22:		sta $0212, y	; 99 12 02
B0_6b25:		lda $0216, y	; b9 16 02
B0_6b28:		ora #$41		; 09 41
B0_6b2a:		sta $0216, y	; 99 16 02
B0_6b2d:		ldx $078f		; ae 8f 07
B0_6b30:		cpx #$10		; e0 10
B0_6b32:		bcs B0_6b64 ; b0 30
B0_6b34:		sta $020e, y	; 99 0e 02
B0_6b37:		and #$81		; 29 81
B0_6b39:		sta $020a, y	; 99 0a 02
B0_6b3c:		bcc B0_6b64 ; 90 26
B0_6b3e:		lda $0202, y	; b9 02 02
B0_6b41:		and #$81		; 29 81
B0_6b43:		sta $0202, y	; 99 02 02
B0_6b46:		lda $0206, y	; b9 06 02
B0_6b49:		ora #$41		; 09 41
B0_6b4b:		sta $0206, y	; 99 06 02
B0_6b4e:		lda $ef			; a5 ef
B0_6b50:		cmp #$18		; c9 18
B0_6b52:		bcc B0_6b64 ; 90 10
B0_6b54:		lda #$82		; a9 82
B0_6b56:		sta $020a, y	; 99 0a 02
B0_6b59:		sta $0212, y	; 99 12 02
B0_6b5c:		ora #$40		; 09 40
B0_6b5e:		sta $020e, y	; 99 0e 02
B0_6b61:		sta $0216, y	; 99 16 02
B0_6b64:		ldx $08			; a6 08
B0_6b66:		lda $03d1		; ad d1 03
B0_6b69:		lsr a			; 4a
B0_6b6a:		lsr a			; 4a
B0_6b6b:		lsr a			; 4a
B0_6b6c:		pha				; 48 
B0_6b6d:		bcc B0_6b74 ; 90 05
B0_6b6f:		lda #$04		; a9 04
B0_6b71:		jsr $ebc1		; 20 c1 eb
B0_6b74:		pla				; 68 
B0_6b75:		lsr a			; 4a
B0_6b76:		pha				; 48 
B0_6b77:		bcc B0_6b7e ; 90 05
B0_6b79:		lda #$00		; a9 00
B0_6b7b:		jsr $ebc1		; 20 c1 eb
B0_6b7e:		pla				; 68 
B0_6b7f:		lsr a			; 4a
B0_6b80:		lsr a			; 4a
B0_6b81:		pha				; 48 
B0_6b82:		bcc B0_6b89 ; 90 05
B0_6b84:		lda #$10		; a9 10
B0_6b86:		jsr $ebb7		; 20 b7 eb
B0_6b89:		pla				; 68 
B0_6b8a:		lsr a			; 4a
B0_6b8b:		pha				; 48 
B0_6b8c:		bcc B0_6b93 ; 90 05
B0_6b8e:		lda #$08		; a9 08
B0_6b90:		jsr $ebb7		; 20 b7 eb
B0_6b93:		pla				; 68 
B0_6b94:		lsr a			; 4a
B0_6b95:		bcc B0_6ba9 ; 90 12
B0_6b97:		jsr $ebb7		; 20 b7 eb
B0_6b9a:		lda $16, x		; b5 16
B0_6b9c:		cmp #$0c		; c9 0c
B0_6b9e:		beq B0_6ba9 ; f0 09
B0_6ba0:		lda $b6, x		; b5 b6
B0_6ba2:		cmp #$02		; c9 02
B0_6ba4:		bne B0_6ba9 ; d0 03
B0_6ba6:		jsr $c998		; 20 98 c9
B0_6ba9:		rts				; 60 
B0_6baa:		lda $e73e, x	; bd 3e e7
B0_6bad:		sta $00			; 85 00
B0_6baf:		lda $e73f, x	; bd 3f e7
B0_6bb2:		sta $01			; 85 01
B0_6bb4:		jmp $f282		; 4c 82 f2
B0_6bb7:		clc				; 18 
B0_6bb8:		adc $06e5, x	; 7d e5 06
B0_6bbb:		tay				; a8 
B0_6bbc:		lda #$f8		; a9 f8
B0_6bbe:		jmp $e5c1		; 4c c1 e5
B0_6bc1:		clc				; 18 
B0_6bc2:		adc $06e5, x	; 7d e5 06
B0_6bc5:		tay				; a8 
B0_6bc6:		jsr $ec4a		; 20 4a ec
B0_6bc9:		sta $0210, y	; 99 10 02
B0_6bcc:		rts				; 60 
B0_6bcd:		sta $85			; 85 85
B0_6bcf:		stx $86			; 86 86
B0_6bd1:		lda $03bc		; ad bc 03
B0_6bd4:		sta $02			; 85 02
B0_6bd6:		lda $03b1		; ad b1 03
B0_6bd9:		sta $05			; 85 05
B0_6bdb:		lda #$03		; a9 03
B0_6bdd:		sta $04			; 85 04
B0_6bdf:		lsr a			; 4a
B0_6be0:		sta $03			; 85 03
B0_6be2:		ldy $06ec, x	; bc ec 06
B0_6be5:		ldx #$00		; a2 00
B0_6be7:		lda $ebcd, x	; bd cd eb
B0_6bea:		sta $00			; 85 00
B0_6bec:		lda $ebce, x	; bd ce eb
B0_6bef:		jsr $ebb2		; 20 b2 eb
B0_6bf2:		cpx #$04		; e0 04
B0_6bf4:		bne B0_6be7 ; d0 f1
B0_6bf6:		ldx $08			; a6 08
B0_6bf8:		ldy $06ec, x	; bc ec 06
B0_6bfb:		lda $074e		; ad 4e 07
B0_6bfe:		cmp #$01		; c9 01
B0_6c00:		beq B0_6c0a ; f0 08
B0_6c02:		lda #$86		; a9 86
B0_6c04:		sta $0201, y	; 99 01 02
B0_6c07:		sta $0205, y	; 99 05 02
B0_6c0a:		lda $03e8, x	; bd e8 03
B0_6c0d:		cmp #$c4		; c9 c4
B0_6c0f:		bne B0_6c35 ; d0 24
B0_6c11:		lda #$87		; a9 87
B0_6c13:		iny				; c8 
B0_6c14:		jsr $e5bb		; 20 bb e5
B0_6c17:		dey				; 88 
B0_6c18:		lda #$03		; a9 03
B0_6c1a:		ldx $074e		; ae 4e 07
B0_6c1d:		dex				; ca 
B0_6c1e:		beq B0_6c21 ; f0 01
B0_6c20:		lsr a			; 4a
B0_6c21:		ldx $08			; a6 08
B0_6c23:		sta $0202, y	; 99 02 02
B0_6c26:		ora #$40		; 09 40
B0_6c28:		sta $0206, y	; 99 06 02
B0_6c2b:		ora #$80		; 09 80
B0_6c2d:		sta $020e, y	; 99 0e 02
B0_6c30:		and #$83		; 29 83
B0_6c32:		sta $020a, y	; 99 0a 02
B0_6c35:		lda $03d4		; ad d4 03
B0_6c38:		pha				; 48 
B0_6c39:		and #$04		; 29 04
B0_6c3b:		beq B0_6c45 ; f0 08
B0_6c3d:		lda #$f8		; a9 f8
B0_6c3f:		sta $0204, y	; 99 04 02
B0_6c42:		sta $020c, y	; 99 0c 02
B0_6c45:		pla				; 68 
B0_6c46:		and #$08		; 29 08
B0_6c48:		beq B0_6c52 ; f0 08
B0_6c4a:		lda #$f8		; a9 f8
B0_6c4c:		sta $0200, y	; 99 00 02
B0_6c4f:		sta $0208, y	; 99 08 02
B0_6c52:		rts				; 60 
B0_6c53:		lda #$02		; a9 02
B0_6c55:		sta $00			; 85 00
B0_6c57:		lda #$75		; a9 75
B0_6c59:		ldy $0e			; a4 0e
B0_6c5b:		cpy #$05		; c0 05
B0_6c5d:		beq B0_6c65 ; f0 06
B0_6c5f:		lda #$03		; a9 03
B0_6c61:		sta $00			; 85 00
B0_6c63:		lda #$84		; a9 84
B0_6c65:		ldy $06ec, x	; bc ec 06
B0_6c68:		iny				; c8 
B0_6c69:		jsr $e5bb		; 20 bb e5
B0_6c6c:		lda $09			; a5 09
B0_6c6e:		asl a			; 0a
B0_6c6f:		asl a			; 0a
B0_6c70:		asl a			; 0a
B0_6c71:		asl a			; 0a
B0_6c72:		and #$c0		; 29 c0
B0_6c74:		ora $00			; 05 00
B0_6c76:		iny				; c8 
B0_6c77:		jsr $e5bb		; 20 bb e5
B0_6c7a:		dey				; 88 
B0_6c7b:		dey				; 88 
B0_6c7c:		lda $03bc		; ad bc 03
B0_6c7f:		jsr $e5c1		; 20 c1 e5
B0_6c82:		lda $03b1		; ad b1 03
B0_6c85:		sta $0203, y	; 99 03 02
B0_6c88:		lda $03f1, x	; bd f1 03
B0_6c8b:		sec				; 38 
B0_6c8c:		sbc $071c		; ed1c 07
B0_6c8f:		sta $00			; 85 00
B0_6c91:		sec				; 38 
B0_6c92:		sbc $03b1		; edb1 03
B0_6c95:		adc $00			; 65 00
B0_6c97:		adc #$06		; 69 06
B0_6c99:		sta $0207, y	; 99 07 02
B0_6c9c:		lda $03bd		; ad bd 03
B0_6c9f:		sta $0208, y	; 99 08 02
B0_6ca2:		sta $020c, y	; 99 0c 02
B0_6ca5:		lda $03b2		; ad b2 03
B0_6ca8:		sta $020b, y	; 99 0b 02
B0_6cab:		lda $00			; a5 00
B0_6cad:		sec				; 38 
B0_6cae:		sbc $03b2		; edb2 03
B0_6cb1:		adc $00			; 65 00
B0_6cb3:		adc #$06		; 69 06
B0_6cb5:		sta $020f, y	; 99 0f 02
B0_6cb8:		lda $03d4		; ad d4 03
B0_6cbb:		jsr $ec46		; 20 46 ec
B0_6cbe:		lda $03d4		; ad d4 03
B0_6cc1:		asl a			; 0a
B0_6cc2:		bcc B0_6cc9 ; 90 05
B0_6cc4:		lda #$f8		; a9 f8
B0_6cc6:		jsr $e5c1		; 20 c1 e5
B0_6cc9:		lda $00			; a5 00
B0_6ccb:		bpl B0_6cdd ; 10 10
B0_6ccd:		lda $0203, y	; b9 03 02
B0_6cd0:		cmp $0207, y	; d9 07 02
B0_6cd3:		bcc B0_6cdd ; 90 08
B0_6cd5:		lda #$f8		; a9 f8
B0_6cd7:		sta $0204, y	; 99 04 02
B0_6cda:		sta $020c, y	; 99 0c 02
B0_6cdd:		rts				; 60 
B0_6cde:		ldy $06f1, x	; bc f1 06
B0_6ce1:		lda $03ba		; ad ba 03
B0_6ce4:		sta $0200, y	; 99 00 02
B0_6ce7:		lda $03af		; ad af 03
B0_6cea:		sta $0203, y	; 99 03 02
B0_6ced:		lda $09			; a5 09
B0_6cef:		lsr a			; 4a
B0_6cf0:		lsr a			; 4a
B0_6cf1:		pha				; 48 
B0_6cf2:		and #$01		; 29 01
B0_6cf4:		eor #$64		; 49 64
B0_6cf6:		sta $0201, y	; 99 01 02
B0_6cf9:		pla				; 68 
B0_6cfa:		lsr a			; 4a
B0_6cfb:		lsr a			; 4a
B0_6cfc:		lda #$02		; a9 02
B0_6cfe:		bcc B0_6d02 ; 90 02
B0_6d00:		ora #$c0		; 09 c0
B0_6d02:		sta $0202, y	; 99 02 02
B0_6d05:		rts				; 60 
B0_6d06:		pla				; 68 
B0_6d07:	.db $67
B0_6d08:		ror $bc			; 66 bc
B0_6d0a:		cpx $b506		; ec 06 b5
B0_6d0d:		bit $f6			; 24 f6
B0_6d0f:		bit $4a			; 24 4a
B0_6d11:		and #$07		; 29 07
B0_6d13:		cmp #$03		; c9 03
B0_6d15:		bcs B0_6d61 ; b0 4a
B0_6d17:		tax				; aa 
B0_6d18:		lda $ed06, x	; bd 06 ed
B0_6d1b:		iny				; c8 
B0_6d1c:		jsr $e5bb		; 20 bb e5
B0_6d1f:		dey				; 88 
B0_6d20:		ldx $08			; a6 08
B0_6d22:		lda $03ba		; ad ba 03
B0_6d25:		sec				; 38 
B0_6d26:		sbc #$04		; e9 04
B0_6d28:		sta $0200, y	; 99 00 02
B0_6d2b:		sta $0208, y	; 99 08 02
B0_6d2e:		clc				; 18 
B0_6d2f:		adc #$08		; 69 08
B0_6d31:		sta $0204, y	; 99 04 02
B0_6d34:		sta $020c, y	; 99 0c 02
B0_6d37:		lda $03af		; ad af 03
B0_6d3a:		sec				; 38 
B0_6d3b:		sbc #$04		; e9 04
B0_6d3d:		sta $0203, y	; 99 03 02
B0_6d40:		sta $0207, y	; 99 07 02
B0_6d43:		clc				; 18 
B0_6d44:		adc #$08		; 69 08
B0_6d46:		sta $020b, y	; 99 0b 02
B0_6d49:		sta $020f, y	; 99 0f 02
B0_6d4c:		lda #$02		; a9 02
B0_6d4e:		sta $0202, y	; 99 02 02
B0_6d51:		lda #$82		; a9 82
B0_6d53:		sta $0206, y	; 99 06 02
B0_6d56:		lda #$42		; a9 42
B0_6d58:		sta $020a, y	; 99 0a 02
B0_6d5b:		lda #$c2		; a9 c2
B0_6d5d:		sta $020e, y	; 99 0e 02
B0_6d60:		rts				; 60 
B0_6d61:		lda #$00		; a9 00
B0_6d63:		sta $24, x		; 95 24
B0_6d65:		rts				; 60 
B0_6d66:		ldy $06e5, x	; bc e5 06
B0_6d69:		lda #$5b		; a9 5b
B0_6d6b:		iny				; c8 
B0_6d6c:		jsr $e5b5		; 20 b5 e5
B0_6d6f:		iny				; c8 
B0_6d70:		lda #$02		; a9 02
B0_6d72:		jsr $e5b5		; 20 b5 e5
B0_6d75:		dey				; 88 
B0_6d76:		dey				; 88 
B0_6d77:		lda $03ae		; ad ae 03
B0_6d7a:		sta $0203, y	; 99 03 02
B0_6d7d:		sta $020f, y	; 99 0f 02
B0_6d80:		clc				; 18 
B0_6d81:		adc #$08		; 69 08
B0_6d83:		sta $0207, y	; 99 07 02
B0_6d86:		sta $0213, y	; 99 13 02
B0_6d89:		clc				; 18 
B0_6d8a:		adc #$08		; 69 08
B0_6d8c:		sta $020b, y	; 99 0b 02
B0_6d8f:		sta $0217, y	; 99 17 02
B0_6d92:		lda $cf, x		; b5 cf
B0_6d94:		tax				; aa 
B0_6d95:		pha				; 48 
B0_6d96:		cpx #$20		; e0 20
B0_6d98:		bcs B0_6d9c ; b0 02
B0_6d9a:		lda #$f8		; a9 f8
B0_6d9c:		jsr $e5be		; 20 be e5
B0_6d9f:		pla				; 68 
B0_6da0:		clc				; 18 
B0_6da1:		adc #$80		; 69 80
B0_6da3:		tax				; aa 
B0_6da4:		cpx #$20		; e0 20
B0_6da6:		bcs B0_6daa ; b0 02
B0_6da8:		lda #$f8		; a9 f8
B0_6daa:		sta $020c, y	; 99 0c 02
B0_6dad:		sta $0210, y	; 99 10 02
B0_6db0:		sta $0214, y	; 99 14 02
B0_6db3:		lda $03d1		; ad d1 03
B0_6db6:		pha				; 48 
B0_6db7:		and #$08		; 29 08
B0_6db9:		beq B0_6dc3 ; f0 08
B0_6dbb:		lda #$f8		; a9 f8
B0_6dbd:		sta $0200, y	; 99 00 02
B0_6dc0:		sta $020c, y	; 99 0c 02
B0_6dc3:		pla				; 68 
B0_6dc4:		pha				; 48 
B0_6dc5:		and #$04		; 29 04
B0_6dc7:		beq B0_6dd1 ; f0 08
B0_6dc9:		lda #$f8		; a9 f8
B0_6dcb:		sta $0204, y	; 99 04 02
B0_6dce:		sta $0210, y	; 99 10 02
B0_6dd1:		pla				; 68 
B0_6dd2:		and #$02		; 29 02
B0_6dd4:		beq B0_6dde ; f0 08
B0_6dd6:		lda #$f8		; a9 f8
B0_6dd8:		sta $0208, y	; 99 08 02
B0_6ddb:		sta $0214, y	; 99 14 02
B0_6dde:		ldx $08			; a6 08
B0_6de0:		rts				; 60 
B0_6de1:		ldy $b5			; a4 b5
B0_6de3:		dey				; 88 
B0_6de4:		bne B0_6e06 ; d0 20
B0_6de6:		lda $03d3		; ad d3 03
B0_6de9:		and #$08		; 29 08
B0_6deb:		bne B0_6e06 ; d0 19
B0_6ded:		ldy $06ee, x	; bc ee 06
B0_6df0:		lda $03b0		; ad b0 03
B0_6df3:		sta $0203, y	; 99 03 02
B0_6df6:		lda $03bb		; ad bb 03
B0_6df9:		sta $0200, y	; 99 00 02
B0_6dfc:		lda #$74		; a9 74
B0_6dfe:		sta $0201, y	; 99 01 02
B0_6e01:		lda #$02		; a9 02
B0_6e03:		sta $0202, y	; 99 02 02
B0_6e06:		rts				; 60 
B0_6e07:		jsr $c828		; 20 28 c8
B0_6e0a:		clc				; 18 
B0_6e0b:		brk				; 00
B0_6e0c:		rti				; 40 
B0_6e0d:		bvc B0_6e67 ; 50 58
B0_6e0f:	.db $80
B0_6e10:		dey				; 88 
B0_6e11:		clv				; b8 
B0_6e12:		sei				; 78 
B0_6e13:		rts				; 60 
B0_6e14:		ldy #$b0		; a0 b0
B0_6e16:		clv				; b8 
B0_6e17:		brk				; 00
B0_6e18:		ora ($02, x)	; 01 02
B0_6e1a:	.db $03
B0_6e1b:	.db $04
B0_6e1c:		ora $06			; 05 06
B0_6e1e:	.db $07
B0_6e1f:		php				; 08 
B0_6e20:		ora #$0a		; 09 0a
B0_6e22:	.db $0b
B0_6e23:	.db $0c
B0_6e24:		ora $0f0e		; 0d 0e 0f
B0_6e27:		bpl B0_6e3a ; 10 11
B0_6e29:	.db $12
B0_6e2a:	.db $13
B0_6e2b:	.db $14
B0_6e2c:		ora $16, x		; 15 16
B0_6e2e:	.db $17
B0_6e2f:		clc				; 18 
B0_6e30:		ora $1b1a, y	; 19 1a 1b
B0_6e33:	.db $1c
B0_6e34:		ora $1f1e, x	; 1d 1e 1f
B0_6e37:		jsr $2221		; 20 21 22
B0_6e3a:	.db $23
B0_6e3b:		bit $25			; 24 25
B0_6e3d:		rol $27			; 26 27
B0_6e3f:		php				; 08 
B0_6e40:		ora #$28		; 09 28
B0_6e42:		and #$2a		; 29 2a
B0_6e44:	.db $2b
B0_6e45:		bit $082d		; 2c 2d 08
B0_6e48:		ora #$0a		; 09 0a
B0_6e4a:	.db $0b
B0_6e4b:	.db $0c
B0_6e4c:		bmi B0_6e7a ; 30 2c
B0_6e4e:		and $0908		; 2d 08 09
B0_6e51:		asl a			; 0a
B0_6e52:	.db $0b
B0_6e53:		rol $2c2f		; 2e 2f 2c
B0_6e56:		and $0908		; 2d 08 09
B0_6e59:		plp				; 28 
B0_6e5a:		and #$2a		; 29 2a
B0_6e5c:	.db $2b
B0_6e5d:	.db $5c
B0_6e5e:		eor $0908, x	; 5d 08 09
B0_6e61:		asl a			; 0a
B0_6e62:	.db $0b
B0_6e63:	.db $0c
B0_6e64:		ora $5f5e		; 0d 5e 5f
B0_6e67:	.db $fc
B0_6e68:	.db $fc
B0_6e69:		php				; 08 
B0_6e6a:		ora #$58		; 09 58
B0_6e6c:		eor $5a5a, y	; 59 5a 5a
B0_6e6f:		php				; 08 
B0_6e70:		ora #$28		; 09 28
B0_6e72:		and #$2a		; 29 2a
B0_6e74:	.db $2b
B0_6e75:		asl $fc0f		; 0e 0f fc
B0_6e78:	.db $fc
B0_6e79:	.db $fc
B0_6e7a:	.db $fc
B0_6e7b:	.db $32
B0_6e7c:	.db $33
B0_6e7d:	.db $34
B0_6e7e:		and $fc, x		; 35 fc
B0_6e80:	.db $fc
B0_6e81:	.db $fc
B0_6e82:	.db $fc
B0_6e83:		rol $37, x		; 36 37
B0_6e85:		sec				; 38 
B0_6e86:		and $fcfc, y	; 39 fc fc
B0_6e89:	.db $fc
B0_6e8a:	.db $fc
B0_6e8b:	.db $3a
B0_6e8c:	.db $37
B0_6e8d:	.db $3b
B0_6e8e:	.db $3c
B0_6e8f:	.db $fc
B0_6e90:	.db $fc
B0_6e91:	.db $fc
B0_6e92:	.db $fc
B0_6e93:		and $3f3e, x	; 3d 3e 3f
B0_6e96:		rti				; 40 
B0_6e97:	.db $fc
B0_6e98:	.db $fc
B0_6e99:	.db $fc
B0_6e9a:	.db $fc
B0_6e9b:	.db $32
B0_6e9c:		eor ($42, x)	; 41 42
B0_6e9e:	.db $43
B0_6e9f:	.db $fc
B0_6ea0:	.db $fc
B0_6ea1:	.db $fc
B0_6ea2:	.db $fc
B0_6ea3:	.db $32
B0_6ea4:	.db $33
B0_6ea5:	.db $44
B0_6ea6:		eor $fc			; 45 fc
B0_6ea8:	.db $fc
B0_6ea9:	.db $fc
B0_6eaa:	.db $fc
B0_6eab:	.db $32
B0_6eac:	.db $33
B0_6ead:	.db $44
B0_6eae:	.db $47
B0_6eaf:	.db $fc
B0_6eb0:	.db $fc
B0_6eb1:	.db $fc
B0_6eb2:	.db $fc
B0_6eb3:	.db $32
B0_6eb4:	.db $33
B0_6eb5:		pha				; 48 
B0_6eb6:		eor #$fc		; 49 fc
B0_6eb8:	.db $fc
B0_6eb9:	.db $fc
B0_6eba:	.db $fc
B0_6ebb:	.db $32
B0_6ebc:	.db $33
B0_6ebd:		;removed
	.hex  90 91
B0_6ebf:	.db $fc
B0_6ec0:	.db $fc
B0_6ec1:	.db $fc
B0_6ec2:	.db $fc
B0_6ec3:	.db $3a
B0_6ec4:	.db $37
B0_6ec5:	.db $92
B0_6ec6:	.db $93
B0_6ec7:	.db $fc
B0_6ec8:	.db $fc
B0_6ec9:	.db $fc
B0_6eca:	.db $fc
B0_6ecb:	.db $9e
B0_6ecc:	.db $9e
B0_6ecd:	.db $9f
B0_6ece:	.db $9f
B0_6ecf:	.db $fc
B0_6ed0:	.db $fc
B0_6ed1:	.db $fc
B0_6ed2:	.db $fc
B0_6ed3:	.db $3a
B0_6ed4:	.db $37
B0_6ed5:	.db $4f
B0_6ed6:	.db $4f
B0_6ed7:	.db $fc
B0_6ed8:	.db $fc
B0_6ed9:		brk				; 00
B0_6eda:		ora ($4c, x)	; 01 4c
B0_6edc:		eor $4e4e		; 4d 4e 4e
B0_6edf:		brk				; 00
B0_6ee0:		ora ($4c, x)	; 01 4c
B0_6ee2:		eor $4a4a		; 4d 4a 4a
B0_6ee5:	.db $4b
B0_6ee6:	.db $4b
B0_6ee7:		and ($46), y	; 31 46
B0_6ee9:		lda $079e		; ad 9e 07
B0_6eec:		beq B0_6ef3 ; f0 05
B0_6eee:		lda $09			; a5 09
B0_6ef0:		lsr a			; 4a
B0_6ef1:		bcs B0_6f33 ; b0 40
B0_6ef3:		lda $0e			; a5 0e
B0_6ef5:		cmp #$0b		; c9 0b
B0_6ef7:		beq B0_6f40 ; f0 47
B0_6ef9:		lda $070b		; ad 0b 07
B0_6efc:		bne B0_6f3a ; d0 3c
B0_6efe:		ldy $0704		; ac 04 07
B0_6f01:		beq B0_6f34 ; f0 31
B0_6f03:		lda $1d			; a5 1d
B0_6f05:		cmp #$00		; c9 00
B0_6f07:		beq B0_6f34 ; f0 2b
B0_6f09:		jsr $ef34		; 20 34 ef
B0_6f0c:		lda $09			; a5 09
B0_6f0e:		and #$04		; 29 04
B0_6f10:		bne B0_6f33 ; d0 21
B0_6f12:		tax				; aa 
B0_6f13:		ldy $06e4		; ac e4 06
B0_6f16:		lda $33			; a5 33
B0_6f18:		lsr a			; 4a
B0_6f19:		bcs B0_6f1f ; b0 04
B0_6f1b:		iny				; c8 
B0_6f1c:		iny				; c8 
B0_6f1d:		iny				; c8 
B0_6f1e:		iny				; c8 
B0_6f1f:		lda $0754		; ad 54 07
B0_6f22:		beq B0_6f2d ; f0 09
B0_6f24:		lda $0219, y	; b9 19 02
B0_6f27:		cmp $eeb5		; cd b5 ee
B0_6f2a:		beq B0_6f33 ; f0 07
B0_6f2c:		inx				; e8 
B0_6f2d:		lda $eee7, x	; bd e7 ee
B0_6f30:		sta $0219, y	; 99 19 02
B0_6f33:		rts				; 60 
B0_6f34:		jsr $efec		; 20 ec ef
B0_6f37:		jmp $ef45		; 4c 45 ef
B0_6f3a:		jsr $f0b0		; 20 b0 f0
B0_6f3d:		jmp $ef45		; 4c 45 ef
B0_6f40:		ldy #$0e		; a0 0e
B0_6f42:		lda $ee07, y	; b9 07 ee
B0_6f45:		sta $06d5		; 8d d5 06
B0_6f48:		lda #$04		; a9 04
B0_6f4a:		jsr $efbe		; 20 be ef
B0_6f4d:		jsr $f0e9		; 20 e9 f0
B0_6f50:		lda $0711		; ad 11 07
B0_6f53:		beq B0_6f7a ; f0 25
B0_6f55:		ldy #$00		; a0 00
B0_6f57:		lda $0781		; ad 81 07
B0_6f5a:		cmp $0711		; cd 11 07
B0_6f5d:		sty $0711		; 8c 11 07
B0_6f60:		bcs B0_6f7a ; b0 18
B0_6f62:		sta $0711		; 8d 11 07
B0_6f65:		ldy #$07		; a0 07
B0_6f67:		lda $ee07, y	; b9 07 ee
B0_6f6a:		sta $06d5		; 8d d5 06
B0_6f6d:		ldy #$04		; a0 04
B0_6f6f:		lda $57			; a5 57
B0_6f71:		ora $0c			; 05 0c
B0_6f73:		beq B0_6f76 ; f0 01
B0_6f75:		dey				; 88 
B0_6f76:		tya				; 98 
B0_6f77:		jsr $efbe		; 20 be ef
B0_6f7a:		lda $03d0		; ad d0 03
B0_6f7d:		lsr a			; 4a
B0_6f7e:		lsr a			; 4a
B0_6f7f:		lsr a			; 4a
B0_6f80:		lsr a			; 4a
B0_6f81:		sta $00			; 85 00
B0_6f83:		ldx #$03		; a2 03
B0_6f85:		lda $06e4		; ad e4 06
B0_6f88:		clc				; 18 
B0_6f89:		adc #$18		; 69 18
B0_6f8b:		tay				; a8 
B0_6f8c:		lda #$f8		; a9 f8
B0_6f8e:		lsr $00			; 46 00
B0_6f90:		bcc B0_6f95 ; 90 03
B0_6f92:		jsr $e5c1		; 20 c1 e5
B0_6f95:		tya				; 98 
B0_6f96:		sec				; 38 
B0_6f97:		sbc #$08		; e9 08
B0_6f99:		tay				; a8 
B0_6f9a:		dex				; ca 
B0_6f9b:		bpl B0_6f8c ; 10 ef
B0_6f9d:		rts				; 60 
B0_6f9e:		cli				; 58 
B0_6f9f:		ora ($00, x)	; 01 00
B0_6fa1:		rts				; 60 
B0_6fa2:	.db $ff
B0_6fa3:	.db $04
B0_6fa4:		ldx #$05		; a2 05
B0_6fa6:		lda $ef9e, x	; bd 9e ef
B0_6fa9:		sta $02, x		; 95 02
B0_6fab:		dex				; ca 
B0_6fac:		bpl B0_6fa6 ; 10 f8
B0_6fae:		ldx #$b8		; a2 b8
B0_6fb0:		ldy #$04		; a0 04
B0_6fb2:		jsr $efdc		; 20 dc ef
B0_6fb5:		lda $0226		; ad 26 02
B0_6fb8:		ora #$40		; 09 40
B0_6fba:		sta $0222		; 8d 22 02
B0_6fbd:		rts				; 60 
B0_6fbe:		sta $07			; 85 07
B0_6fc0:		lda $03ad		; ad ad 03
B0_6fc3:		sta $0755		; 8d 55 07
B0_6fc6:		sta $05			; 85 05
B0_6fc8:		lda $03b8		; ad b8 03
B0_6fcb:		sta $02			; 85 02
B0_6fcd:		lda $33			; a5 33
B0_6fcf:		sta $03			; 85 03
B0_6fd1:		lda $03c4		; ad c4 03
B0_6fd4:		sta $04			; 85 04
B0_6fd6:		ldx $06d5		; ae d5 06
B0_6fd9:		ldy $06e4		; ac e4 06
B0_6fdc:		lda $ee17, x	; bd 17 ee
B0_6fdf:		sta $00			; 85 00
B0_6fe1:		lda $ee18, x	; bd 18 ee
B0_6fe4:		jsr $ebb2		; 20 b2 eb
B0_6fe7:		dec $07			; c6 07
B0_6fe9:		bne B0_6fdc ; d0 f1
B0_6feb:		rts				; 60 
B0_6fec:		lda $1d			; a5 1d
B0_6fee:		cmp #$03		; c9 03
B0_6ff0:		beq B0_7044 ; f0 52
B0_6ff2:		cmp #$02		; c9 02
B0_6ff4:		beq B0_7034 ; f0 3e
B0_6ff6:		cmp #$01		; c9 01
B0_6ff8:		bne B0_700b ; d0 11
B0_6ffa:		lda $0704		; ad 04 07
B0_6ffd:		bne B0_7050 ; d0 51
B0_6fff:		ldy #$06		; a0 06
B0_7001:		lda $0714		; ad 14 07
B0_7004:		bne B0_7028 ; d0 22
B0_7006:		ldy #$00		; a0 00
B0_7008:		jmp $f028		; 4c 28 f0
B0_700b:		ldy #$06		; a0 06
B0_700d:		lda $0714		; ad 14 07
B0_7010:		bne B0_7028 ; d0 16
B0_7012:		ldy #$02		; a0 02
B0_7014:		lda $57			; a5 57
B0_7016:		ora $0c			; 05 0c
B0_7018:		beq B0_7028 ; f0 0e
B0_701a:		lda $0700		; ad 00 07
B0_701d:		cmp #$09		; c9 09
B0_701f:		bcc B0_703c ; 90 1b
B0_7021:		lda $45			; a5 45
B0_7023:		and $33			; 25 33
B0_7025:		bne B0_703c ; d0 15
B0_7027:		iny				; c8 
B0_7028:		jsr $f091		; 20 91 f0
B0_702b:		lda #$00		; a9 00
B0_702d:		sta $070d		; 8d 0d 07
B0_7030:		lda $ee07, y	; b9 07 ee
B0_7033:		rts				; 60 
B0_7034:		ldy #$04		; a0 04
B0_7036:		jsr $f091		; 20 91 f0
B0_7039:		jmp $f062		; 4c 62 f0
B0_703c:		ldy #$04		; a0 04
B0_703e:		jsr $f091		; 20 91 f0
B0_7041:		jmp $f068		; 4c 68 f0
B0_7044:		ldy #$05		; a0 05
B0_7046:		lda $9f			; a5 9f
B0_7048:		beq B0_7028 ; f0 de
B0_704a:		jsr $f091		; 20 91 f0
B0_704d:		jmp $f06d		; 4c 6d f0
B0_7050:		ldy #$01		; a0 01
B0_7052:		jsr $f091		; 20 91 f0
B0_7055:		lda $0782		; ad 82 07
B0_7058:		ora $070d		; 0d 0d 07
B0_705b:		bne B0_7068 ; d0 0b
B0_705d:		lda $0a			; a5 0a
B0_705f:		asl a			; 0a
B0_7060:		bcs B0_7068 ; b0 06
B0_7062:		lda $070d		; ad 0d 07
B0_7065:		jmp $f0d0		; 4c d0 f0
B0_7068:		lda #$03		; a9 03
B0_706a:		jmp $f06f		; 4c 6f f0
B0_706d:		lda #$02		; a9 02
B0_706f:		sta $00			; 85 00
B0_7071:		jsr $f062		; 20 62 f0
B0_7074:		pha				; 48 
B0_7075:		lda $0781		; ad 81 07
B0_7078:		bne B0_708f ; d0 15
B0_707a:		lda $070c		; ad 0c 07
B0_707d:		sta $0781		; 8d 81 07
B0_7080:		lda $070d		; ad 0d 07
B0_7083:		clc				; 18 
B0_7084:		adc #$01		; 69 01
B0_7086:		cmp $00			; c5 00
B0_7088:		bcc B0_708c ; 90 02
B0_708a:		lda #$00		; a9 00
B0_708c:		sta $070d		; 8d 0d 07
B0_708f:		pla				; 68 
B0_7090:		rts				; 60 
B0_7091:		lda $0754		; ad 54 07
B0_7094:		beq B0_709b ; f0 05
B0_7096:		tya				; 98 
B0_7097:		clc				; 18 
B0_7098:		adc #$08		; 69 08
B0_709a:		tay				; a8 
B0_709b:		rts				; 60 
B0_709c:		brk				; 00
B0_709d:		ora ($00, x)	; 01 00
B0_709f:		ora ($00, x)	; 01 00
B0_70a1:		ora ($02, x)	; 01 02
B0_70a3:		brk				; 00
B0_70a4:		ora ($02, x)	; 01 02
B0_70a6:	.db $02
B0_70a7:		brk				; 00
B0_70a8:	.db $02
B0_70a9:		brk				; 00
B0_70aa:	.db $02
B0_70ab:		brk				; 00
B0_70ac:	.db $02
B0_70ad:		brk				; 00
B0_70ae:	.db $02
B0_70af:		brk				; 00
B0_70b0:		ldy $070d		; ac 0d 07
B0_70b3:		lda $09			; a5 09
B0_70b5:		and #$03		; 29 03
B0_70b7:		bne B0_70c6 ; d0 0d
B0_70b9:		iny				; c8 
B0_70ba:		cpy #$0a		; c0 0a
B0_70bc:		bcc B0_70c3 ; 90 05
B0_70be:		ldy #$00		; a0 00
B0_70c0:		sty $070b		; 8c 0b 07
B0_70c3:		sty $070d		; 8c 0d 07
B0_70c6:		lda $0754		; ad 54 07
B0_70c9:		bne B0_70d7 ; d0 0c
B0_70cb:		lda $f09c, y	; b9 9c f0
B0_70ce:		ldy #$0f		; a0 0f
B0_70d0:		asl a			; 0a
B0_70d1:		asl a			; 0a
B0_70d2:		asl a			; 0a
B0_70d3:		adc $ee07, y	; 79 07 ee
B0_70d6:		rts				; 60 
B0_70d7:		tya				; 98 
B0_70d8:		clc				; 18 
B0_70d9:		adc #$0a		; 69 0a
B0_70db:		tax				; aa 
B0_70dc:		ldy #$09		; a0 09
B0_70de:		lda $f09c, x	; bd 9c f0
B0_70e1:		bne B0_70e5 ; d0 02
B0_70e3:		ldy #$01		; a0 01
B0_70e5:		lda $ee07, y	; b9 07 ee
B0_70e8:		rts				; 60 
B0_70e9:		ldy $06e4		; ac e4 06
B0_70ec:		lda $0e			; a5 0e
B0_70ee:		cmp #$0b		; c9 0b
B0_70f0:		beq B0_7105 ; f0 13
B0_70f2:		lda $06d5		; ad d5 06
B0_70f5:		cmp #$50		; c9 50
B0_70f7:		beq B0_7117 ; f0 1e
B0_70f9:		cmp #$b8		; c9 b8
B0_70fb:		beq B0_7117 ; f0 1a
B0_70fd:		cmp #$c0		; c9 c0
B0_70ff:		beq B0_7117 ; f0 16
B0_7101:		cmp #$c8		; c9 c8
B0_7103:		bne B0_7129 ; d0 24
B0_7105:		lda $0212, y	; b9 12 02
B0_7108:		and #$3f		; 29 3f
B0_710a:		sta $0212, y	; 99 12 02
B0_710d:		lda $0216, y	; b9 16 02
B0_7110:		and #$3f		; 29 3f
B0_7112:		ora #$40		; 09 40
B0_7114:		sta $0216, y	; 99 16 02
B0_7117:		lda $021a, y	; b9 1a 02
B0_711a:		and #$3f		; 29 3f
B0_711c:		sta $021a, y	; 99 1a 02
B0_711f:		lda $021e, y	; b9 1e 02
B0_7122:		and #$3f		; 29 3f
B0_7124:		ora #$40		; 09 40
B0_7126:		sta $021e, y	; 99 1e 02
B0_7129:		rts				; 60 
B0_712a:		ldx #$00		; a2 00
B0_712c:		ldy #$00		; a0 00
B0_712e:		jmp $f142		; 4c 42 f1
B0_7131:		ldy #$01		; a0 01
B0_7133:		jsr $f1a8		; 20 a8 f1
B0_7136:		ldy #$03		; a0 03
B0_7138:		jmp $f142		; 4c 42 f1
B0_713b:		ldy #$00		; a0 00
B0_713d:		jsr $f1a8		; 20 a8 f1
B0_7140:		ldy #$02		; a0 02
B0_7142:		jsr $f171		; 20 71 f1
B0_7145:		ldx $08			; a6 08
B0_7147:		rts				; 60 
B0_7148:		ldy #$02		; a0 02
B0_714a:		jsr $f1a8		; 20 a8 f1
B0_714d:		ldy #$06		; a0 06
B0_714f:		jmp $f142		; 4c 42 f1
B0_7152:		lda #$01		; a9 01
B0_7154:		ldy #$01		; a0 01
B0_7156:		jmp $f165		; 4c 65 f1
B0_7159:		lda #$09		; a9 09
B0_715b:		ldy #$04		; a0 04
B0_715d:		jsr $f165		; 20 65 f1
B0_7160:		inx				; e8 
B0_7161:		inx				; e8 
B0_7162:		lda #$09		; a9 09
B0_7164:		iny				; c8 
B0_7165:		stx $00			; 86 00
B0_7167:		clc				; 18 
B0_7168:		adc $00			; 65 00
B0_716a:		tax				; aa 
B0_716b:		jsr $f171		; 20 71 f1
B0_716e:		ldx $08			; a6 08
B0_7170:		rts				; 60 
B0_7171:		lda $ce, x		; b5 ce
B0_7173:		sta $03b8, y	; 99 b8 03
B0_7176:		lda $86, x		; b5 86
B0_7178:		sec				; 38 
B0_7179:		sbc $071c		; ed1c 07
B0_717c:		sta $03ad, y	; 99 ad 03
B0_717f:		rts				; 60 
B0_7180:		ldx #$00		; a2 00
B0_7182:		ldy #$00		; a0 00
B0_7184:		jmp $f1c0		; 4c c0 f1
B0_7187:		ldy #$00		; a0 00
B0_7189:		jsr $f1a8		; 20 a8 f1
B0_718c:		ldy #$02		; a0 02
B0_718e:		jmp $f1c0		; 4c c0 f1
B0_7191:		ldy #$01		; a0 01
B0_7193:		jsr $f1a8		; 20 a8 f1
B0_7196:		ldy #$03		; a0 03
B0_7198:		jmp $f1c0		; 4c c0 f1
B0_719b:		ldy #$02		; a0 02
B0_719d:		jsr $f1a8		; 20 a8 f1
B0_71a0:		ldy #$06		; a0 06
B0_71a2:		jmp $f1c0		; 4c c0 f1
B0_71a5:	.db $07
B0_71a6:		asl $0d, x		; 16 0d
B0_71a8:		txa				; 8a 
B0_71a9:		clc				; 18 
B0_71aa:		adc $f1a5, y	; 79 a5 f1
B0_71ad:		tax				; aa 
B0_71ae:		rts				; 60 
B0_71af:		lda #$01		; a9 01
B0_71b1:		ldy #$01		; a0 01
B0_71b3:		jmp $f1ba		; 4c ba f1
B0_71b6:		lda #$09		; a9 09
B0_71b8:		ldy #$04		; a0 04
B0_71ba:		stx $00			; 86 00
B0_71bc:		clc				; 18 
B0_71bd:		adc $00			; 65 00
B0_71bf:		tax				; aa 
B0_71c0:		tya				; 98 
B0_71c1:		pha				; 48 
B0_71c2:		jsr $f1d7		; 20 d7 f1
B0_71c5:		asl a			; 0a
B0_71c6:		asl a			; 0a
B0_71c7:		asl a			; 0a
B0_71c8:		asl a			; 0a
B0_71c9:		ora $00			; 05 00
B0_71cb:		sta $00			; 85 00
B0_71cd:		pla				; 68 
B0_71ce:		tay				; a8 
B0_71cf:		lda $00			; a5 00
B0_71d1:		sta $03d0, y	; 99 d0 03
B0_71d4:		ldx $08			; a6 08
B0_71d6:		rts				; 60 
B0_71d7:		jsr $f1f6		; 20 f6 f1
B0_71da:		lsr a			; 4a
B0_71db:		lsr a			; 4a
B0_71dc:		lsr a			; 4a
B0_71dd:		lsr a			; 4a
B0_71de:		sta $00			; 85 00
B0_71e0:		jmp $f239		; 4c 39 f2
B0_71e3:	.db $7f
B0_71e4:	.db $3f
B0_71e5:	.db $1f
B0_71e6:	.db $0f
B0_71e7:	.db $07
B0_71e8:	.db $03
B0_71e9:		ora ($00, x)	; 01 00
B0_71eb:	.db $80
B0_71ec:		cpy #$e0		; c0 e0
B0_71ee:		beq B0_71e8 ; f0 f8
B0_71f0:	.db $fc
B0_71f1:		inc $07ff, x	; fe ff 07
B0_71f4:	.db $0f
B0_71f5:	.db $07
B0_71f6:		stx $04			; 86 04
B0_71f8:		ldy #$01		; a0 01
B0_71fa:		lda $071c, y	; b9 1c 07
B0_71fd:		sec				; 38 
B0_71fe:		sbc $86, x		; f5 86
B0_7200:		sta $07			; 85 07
B0_7202:		lda $071a, y	; b9 1a 07
B0_7205:		sbc $6d, x		; f5 6d
B0_7207:		ldx $f1f3, y	; be f3 f1
B0_720a:		cmp #$00		; c9 00
B0_720c:		bmi B0_721e ; 30 10
B0_720e:		ldx $f1f4, y	; be f4 f1
B0_7211:		cmp #$01		; c9 01
B0_7213:		bpl B0_721e ; 10 09
B0_7215:		lda #$38		; a9 38
B0_7217:		sta $06			; 85 06
B0_7219:		lda #$08		; a9 08
B0_721b:		jsr $f26d		; 20 6d f2
B0_721e:		lda $f1e3, x	; bd e3 f1
B0_7221:		ldx $04			; a6 04
B0_7223:		cmp #$00		; c9 00
B0_7225:		bne B0_722a ; d0 03
B0_7227:		dey				; 88 
B0_7228:		bpl B0_71fa ; 10 d0
B0_722a:		rts				; 60 
B0_722b:		brk				; 00
B0_722c:		php				; 08 
B0_722d:	.db $0c
B0_722e:		asl $070f		; 0e 0f 07
B0_7231:	.db $03
B0_7232:		ora ($00, x)	; 01 00
B0_7234:	.db $04
B0_7235:		brk				; 00
B0_7236:	.db $04
B0_7237:	.db $ff
B0_7238:		brk				; 00
B0_7239:		stx $04			; 86 04
B0_723b:		ldy #$01		; a0 01
B0_723d:		lda $f237, y	; b9 37 f2
B0_7240:		sec				; 38 
B0_7241:		sbc $ce, x		; f5 ce
B0_7243:		sta $07			; 85 07
B0_7245:		lda #$01		; a9 01
B0_7247:		sbc $b5, x		; f5 b5
B0_7249:		ldx $f234, y	; be 34 f2
B0_724c:		cmp #$00		; c9 00
B0_724e:		bmi B0_7260 ; 30 10
B0_7250:		ldx $f235, y	; be 35 f2
B0_7253:		cmp #$01		; c9 01
B0_7255:		bpl B0_7260 ; 10 09
B0_7257:		lda #$20		; a9 20
B0_7259:		sta $06			; 85 06
B0_725b:		lda #$04		; a9 04
B0_725d:		jsr $f26d		; 20 6d f2
B0_7260:		lda $f22b, x	; bd 2b f2
B0_7263:		ldx $04			; a6 04
B0_7265:		cmp #$00		; c9 00
B0_7267:		bne B0_726c ; d0 03
B0_7269:		dey				; 88 
B0_726a:		bpl B0_723d ; 10 d1
B0_726c:		rts				; 60 
B0_726d:		sta $05			; 85 05
B0_726f:		lda $07			; a5 07
B0_7271:		cmp $06			; c5 06
B0_7273:		bcs B0_7281 ; b0 0c
B0_7275:		lsr a			; 4a
B0_7276:		lsr a			; 4a
B0_7277:		lsr a			; 4a
B0_7278:		and #$07		; 29 07
B0_727a:		cpy #$01		; c0 01
B0_727c:		bcs B0_7280 ; b0 02
B0_727e:		adc $05			; 65 05
B0_7280:		tax				; aa 
B0_7281:		rts				; 60 
B0_7282:		lda $03			; a5 03
B0_7284:		lsr a			; 4a
B0_7285:		lsr a			; 4a
B0_7286:		lda $00			; a5 00
B0_7288:		bcc B0_7296 ; 90 0c
B0_728a:		sta $0205, y	; 99 05 02
B0_728d:		lda $01			; a5 01
B0_728f:		sta $0201, y	; 99 01 02
B0_7292:		lda #$40		; a9 40
B0_7294:		bne B0_72a0 ; d0 0a
B0_7296:		sta $0201, y	; 99 01 02
B0_7299:		lda $01			; a5 01
B0_729b:		sta $0205, y	; 99 05 02
B0_729e:		lda #$00		; a9 00
B0_72a0:		ora $04			; 05 04
B0_72a2:		sta $0202, y	; 99 02 02
B0_72a5:		sta $0206, y	; 99 06 02
B0_72a8:		lda $02			; a5 02
B0_72aa:		sta $0200, y	; 99 00 02
B0_72ad:		sta $0204, y	; 99 04 02
B0_72b0:		lda $05			; a5 05
B0_72b2:		sta $0203, y	; 99 03 02
B0_72b5:		clc				; 18 
B0_72b6:		adc #$08		; 69 08
B0_72b8:		sta $0207, y	; 99 07 02
B0_72bb:		lda $02			; a5 02
B0_72bd:		clc				; 18 
B0_72be:		adc #$08		; 69 08
B0_72c0:		sta $02			; 85 02
B0_72c2:		tya				; 98 
B0_72c3:		clc				; 18 
B0_72c4:		adc #$08		; 69 08
B0_72c6:		tay				; a8 
B0_72c7:		inx				; e8 
B0_72c8:		inx				; e8 
B0_72c9:		rts				; 60 
B0_72ca:	.db $ff
B0_72cb:	.db $ff
B0_72cc:	.db $ff
B0_72cd:	.db $ff
B0_72ce:	.db $ff
B0_72cf:	.db $ff
B0_72d0:		lda $0770		; ad 70 07
B0_72d3:		bne B0_72d9 ; d0 04
B0_72d5:		sta $4015		; 8d 15 40
B0_72d8:		rts				; 60 
B0_72d9:		lda #$ff		; a9 ff
B0_72db:		sta $4017		; 8d 17 40
B0_72de:		lda #$0f		; a9 0f
B0_72e0:		sta $4015		; 8d 15 40
B0_72e3:		lda $07c6		; ad c6 07
B0_72e6:		bne B0_72ee ; d0 06
B0_72e8:		lda $fa			; a5 fa
B0_72ea:		cmp #$01		; c9 01
B0_72ec:		bne B0_734b ; d0 5d
B0_72ee:		lda $07b2		; ad b2 07
B0_72f1:		bne B0_7316 ; d0 23
B0_72f3:		lda $fa			; a5 fa
B0_72f5:		beq B0_735d ; f0 66
B0_72f7:		sta $07b2		; 8d b2 07
B0_72fa:		sta $07c6		; 8d c6 07
B0_72fd:		lda #$00		; a9 00
B0_72ff:		sta $4015		; 8d 15 40
B0_7302:		sta $f1			; 85 f1
B0_7304:		sta $f2			; 85 f2
B0_7306:		sta $f3			; 85 f3
B0_7308:		lda #$0f		; a9 0f
B0_730a:		sta $4015		; 8d 15 40
B0_730d:		lda #$2a		; a9 2a
B0_730f:		sta $07bb		; 8d bb 07
B0_7312:		lda #$44		; a9 44
B0_7314:		bne B0_7327 ; d0 11
B0_7316:		lda $07bb		; ad bb 07
B0_7319:		cmp #$24		; c9 24
B0_731b:		beq B0_7325 ; f0 08
B0_731d:		cmp #$1e		; c9 1e
B0_731f:		beq B0_7312 ; f0 f1
B0_7321:		cmp #$18		; c9 18
B0_7323:		bne B0_732e ; d0 09
B0_7325:		lda #$64		; a9 64
B0_7327:		ldx #$84		; a2 84
B0_7329:		ldy #$7f		; a0 7f
B0_732b:		jsr $f388		; 20 88 f3
B0_732e:		dec $07bb		; ce bb 07
B0_7331:		bne B0_735d ; d0 2a
B0_7333:		lda #$00		; a9 00
B0_7335:		sta $4015		; 8d 15 40
B0_7338:		lda $07b2		; ad b2 07
B0_733b:		cmp #$02		; c9 02
B0_733d:		bne B0_7344 ; d0 05
B0_733f:		lda #$00		; a9 00
B0_7341:		sta $07c6		; 8d c6 07
B0_7344:		lda #$00		; a9 00
B0_7346:		sta $07b2		; 8d b2 07
B0_7349:		beq B0_735d ; f0 12
B0_734b:		jsr $f41b		; 20 1b f4
B0_734e:		jsr $f57c		; 20 7c f5
B0_7351:		jsr $f667		; 20 67 f6
B0_7354:		jsr $f694		; 20 94 f6
B0_7357:		lda #$00		; a9 00
B0_7359:		sta $fb			; 85 fb
B0_735b:		sta $fc			; 85 fc
B0_735d:		lda #$00		; a9 00
B0_735f:		sta $ff			; 85 ff
B0_7361:		sta $fe			; 85 fe
B0_7363:		sta $fd			; 85 fd
B0_7365:		sta $fa			; 85 fa
B0_7367:		ldy $07c0		; ac c0 07
B0_736a:		lda $f4			; a5 f4
B0_736c:		and #$03		; 29 03
B0_736e:		beq B0_7377 ; f0 07
B0_7370:		inc $07c0		; ee c0 07
B0_7373:		cpy #$30		; c0 30
B0_7375:		bcc B0_737d ; 90 06
B0_7377:		tya				; 98 
B0_7378:		beq B0_737d ; f0 03
B0_737a:		dec $07c0		; ce c0 07
B0_737d:		sty $4011		; 8c 11 40
B0_7380:		rts				; 60 
B0_7381:		sty $4001		; 8c 01 40
B0_7384:		stx $4000		; 8e 00 40
B0_7387:		rts				; 60 
B0_7388:		jsr $f381		; 20 81 f3
B0_738b:		ldx #$00		; a2 00
B0_738d:		tay				; a8 
B0_738e:		lda $ff01, y	; b9 01 ff
B0_7391:		beq B0_739e ; f0 0b
B0_7393:		sta $4002, x	; 9d 02 40
B0_7396:		lda $ff00, y	; b9 00 ff
B0_7399:		ora #$08		; 09 08
B0_739b:		sta $4003, x	; 9d 03 40
B0_739e:		rts				; 60 
B0_739f:		stx $4004		; 8e 04 40
B0_73a2:		sty $4005		; 8c 05 40
B0_73a5:		rts				; 60 
B0_73a6:		jsr $f39f		; 20 9f f3
B0_73a9:		ldx #$04		; a2 04
B0_73ab:		bne B0_738d ; d0 e0
B0_73ad:		ldx #$08		; a2 08
B0_73af:		bne B0_738d ; d0 dc
B0_73b1:	.db $9f
B0_73b2:	.db $9b
B0_73b3:		tya				; 98 
B0_73b4:		stx $95, y		; 96 95
B0_73b6:		sty $92, x		; 94 92
B0_73b8:		;removed
	.hex  90 90
B0_73ba:		txs				; 9a 
B0_73bb:	.db $97
B0_73bc:		sta $93, x		; 95 93
B0_73be:	.db $92
B0_73bf:		lda #$40		; a9 40
B0_73c1:		sta $07bb		; 8d bb 07
B0_73c4:		lda #$62		; a9 62
B0_73c6:		jsr $f38b		; 20 8b f3
B0_73c9:		ldx #$99		; a2 99
B0_73cb:		bne B0_73f2 ; d0 25
B0_73cd:		lda #$26		; a9 26
B0_73cf:		bne B0_73d3 ; d0 02
B0_73d1:		lda #$18		; a9 18
B0_73d3:		ldx #$82		; a2 82
B0_73d5:		ldy #$a7		; a0 a7
B0_73d7:		jsr $f388		; 20 88 f3
B0_73da:		lda #$28		; a9 28
B0_73dc:		sta $07bb		; 8d bb 07
B0_73df:		lda $07bb		; ad bb 07
B0_73e2:		cmp #$25		; c9 25
B0_73e4:		bne B0_73ec ; d0 06
B0_73e6:		ldx #$5f		; a2 5f
B0_73e8:		ldy #$f6		; a0 f6
B0_73ea:		bne B0_73f4 ; d0 08
B0_73ec:		cmp #$20		; c9 20
B0_73ee:		bne B0_7419 ; d0 29
B0_73f0:		ldx #$48		; a2 48
B0_73f2:		ldy #$bc		; a0 bc
B0_73f4:		jsr $f381		; 20 81 f3
B0_73f7:		bne B0_7419 ; d0 20
B0_73f9:		lda #$05		; a9 05
B0_73fb:		ldy #$99		; a0 99
B0_73fd:		bne B0_7403 ; d0 04
B0_73ff:		lda #$0a		; a9 0a
B0_7401:		ldy #$93		; a0 93
B0_7403:		ldx #$9e		; a2 9e
B0_7405:		sta $07bb		; 8d bb 07
B0_7408:		lda #$0c		; a9 0c
B0_740a:		jsr $f388		; 20 88 f3
B0_740d:		lda $07bb		; ad bb 07
B0_7410:		cmp #$06		; c9 06
B0_7412:		bne B0_7419 ; d0 05
B0_7414:		lda #$bb		; a9 bb
B0_7416:		sta $4001		; 8d 01 40
B0_7419:		bne B0_747b ; d0 60
B0_741b:		ldy $ff			; a4 ff
B0_741d:		beq B0_743f ; f0 20
B0_741f:		sty $f1			; 84 f1
B0_7421:		bmi B0_73cd ; 30 aa
B0_7423:		lsr $ff			; 46 ff
B0_7425:		bcs B0_73d1 ; b0 aa
B0_7427:		lsr $ff			; 46 ff
B0_7429:		bcs B0_73ff ; b0 d4
B0_742b:		lsr $ff			; 46 ff
B0_742d:		bcs B0_745b ; b0 2c
B0_742f:		lsr $ff			; 46 ff
B0_7431:		bcs B0_747d ; b0 4a
B0_7433:		lsr $ff			; 46 ff
B0_7435:		bcs B0_74b6 ; b0 7f
B0_7437:		lsr $ff			; 46 ff
B0_7439:		bcs B0_73f9 ; b0 be
B0_743b:		lsr $ff			; 46 ff
B0_743d:		bcs B0_73bf ; b0 80
B0_743f:		lda $f1			; a5 f1
B0_7441:		beq B0_745a ; f0 17
B0_7443:		bmi B0_73df ; 30 9a
B0_7445:		lsr a			; 4a
B0_7446:		bcs B0_73df ; b0 97
B0_7448:		lsr a			; 4a
B0_7449:		bcs B0_740d ; b0 c2
B0_744b:		lsr a			; 4a
B0_744c:		bcs B0_7469 ; b0 1b
B0_744e:		lsr a			; 4a
B0_744f:		bcs B0_748d ; b0 3c
B0_7451:		lsr a			; 4a
B0_7452:		bcs B0_74bb ; b0 67
B0_7454:		lsr a			; 4a
B0_7455:		bcs B0_740d ; b0 b6
B0_7457:		lsr a			; 4a
B0_7458:		bcs B0_74a2 ; b0 48
B0_745a:		rts				; 60 
B0_745b:		lda #$0e		; a9 0e
B0_745d:		sta $07bb		; 8d bb 07
B0_7460:		ldy #$9c		; a0 9c
B0_7462:		ldx #$9e		; a2 9e
B0_7464:		lda #$26		; a9 26
B0_7466:		jsr $f388		; 20 88 f3
B0_7469:		ldy $07bb		; ac bb 07
B0_746c:		lda $f3b0, y	; b9 b0 f3
B0_746f:		sta $4000		; 8d 00 40
B0_7472:		cpy #$06		; c0 06
B0_7474:		bne B0_747b ; d0 05
B0_7476:		lda #$9e		; a9 9e
B0_7478:		sta $4002		; 8d 02 40
B0_747b:		bne B0_74a2 ; d0 25
B0_747d:		lda #$0e		; a9 0e
B0_747f:		ldy #$cb		; a0 cb
B0_7481:		ldx #$9f		; a2 9f
B0_7483:		sta $07bb		; 8d bb 07
B0_7486:		lda #$28		; a9 28
B0_7488:		jsr $f388		; 20 88 f3
B0_748b:		bne B0_74a2 ; d0 15
B0_748d:		ldy $07bb		; ac bb 07
B0_7490:		cpy #$08		; c0 08
B0_7492:		bne B0_749d ; d0 09
B0_7494:		lda #$a0		; a9 a0
B0_7496:		sta $4002		; 8d 02 40
B0_7499:		lda #$9f		; a9 9f
B0_749b:		bne B0_749f ; d0 02
B0_749d:		lda #$90		; a9 90
B0_749f:		sta $4000		; 8d 00 40
B0_74a2:		dec $07bb		; ce bb 07
B0_74a5:		bne B0_74b5 ; d0 0e
B0_74a7:		ldx #$00		; a2 00
B0_74a9:		stx $f1			; 86 f1
B0_74ab:		ldx #$0e		; a2 0e
B0_74ad:		stx $4015		; 8e 15 40
B0_74b0:		ldx #$0f		; a2 0f
B0_74b2:		stx $4015		; 8e 15 40
B0_74b5:		rts				; 60 
B0_74b6:		lda #$2f		; a9 2f
B0_74b8:		sta $07bb		; 8d bb 07
B0_74bb:		lda $07bb		; ad bb 07
B0_74be:		lsr a			; 4a
B0_74bf:		bcs B0_74d1 ; b0 10
B0_74c1:		lsr a			; 4a
B0_74c2:		bcs B0_74d1 ; b0 0d
B0_74c4:		and #$02		; 29 02
B0_74c6:		beq B0_74d1 ; f0 09
B0_74c8:		ldy #$91		; a0 91
B0_74ca:		ldx #$9a		; a2 9a
B0_74cc:		lda #$44		; a9 44
B0_74ce:		jsr $f388		; 20 88 f3
B0_74d1:		jmp $f4a2		; 4c a2 f4
B0_74d4:		cli				; 58 
B0_74d5:	.db $02
B0_74d6:	.db $54
B0_74d7:		lsr $4e, x		; 56 4e
B0_74d9:	.db $44
B0_74da:		jmp $4c52		; 4c 52 4c
B0_74dd:		pha				; 48 
B0_74de:		rol $3e36, x	; 3e 36 3e
B0_74e1:		rol $30, x		; 36 30
B0_74e3:		plp				; 28 
B0_74e4:		lsr a			; 4a
B0_74e5:		bvc B0_7531 ; 50 4a
B0_74e7:	.db $64
B0_74e8:	.db $3c
B0_74e9:	.db $32
B0_74ea:	.db $3c
B0_74eb:	.db $32
B0_74ec:		bit $3a24		; 2c 24 3a
B0_74ef:	.db $64
B0_74f0:	.db $3a
B0_74f1:	.db $34
B0_74f2:		bit $2c22		; 2c 22 2c
B0_74f5:	.db $22
B0_74f6:	.db $1c
B0_74f7:	.db $14
B0_74f8:	.db $14
B0_74f9:	.db $04
B0_74fa:	.db $22
B0_74fb:		bit $16			; 24 16
B0_74fd:	.db $04
B0_74fe:		bit $26			; 24 26
B0_7500:		clc				; 18 
B0_7501:	.db $04
B0_7502:		rol $28			; 26 28
B0_7504:	.db $1a
B0_7505:	.db $04
B0_7506:		plp				; 28 
B0_7507:		rol a			; 2a
B0_7508:	.db $1c
B0_7509:	.db $04
B0_750a:		rol a			; 2a
B0_750b:		bit $041e		; 2c 1e 04
B0_750e:		bit $202e		; 2c 2e 20
B0_7511:	.db $04
B0_7512:		rol $2230		; 2e 30 22
B0_7515:	.db $04
B0_7516:		bmi B0_754a ; 30 32
B0_7518:		lda #$35		; a9 35
B0_751a:		ldx #$8d		; a2 8d
B0_751c:		bne B0_7522 ; d0 04
B0_751e:		lda #$06		; a9 06
B0_7520:		ldx #$98		; a2 98
B0_7522:		sta $07bd		; 8d bd 07
B0_7525:		ldy #$7f		; a0 7f
B0_7527:		lda #$42		; a9 42
B0_7529:		jsr $f3a6		; 20 a6 f3
B0_752c:		lda $07bd		; ad bd 07
B0_752f:		cmp #$30		; c9 30
B0_7531:		bne B0_7538 ; d0 05
B0_7533:		lda #$54		; a9 54
B0_7535:		sta $4006		; 8d 06 40
B0_7538:		bne B0_7568 ; d0 2e
B0_753a:		lda #$20		; a9 20
B0_753c:		sta $07bd		; 8d bd 07
B0_753f:		ldy #$94		; a0 94
B0_7541:		lda #$5e		; a9 5e
B0_7543:		bne B0_7550 ; d0 0b
B0_7545:		lda $07bd		; ad bd 07
B0_7548:		cmp #$18		; c9 18
B0_754a:		bne B0_7568 ; d0 1c
B0_754c:		ldy #$93		; a0 93
B0_754e:		lda #$18		; a9 18
B0_7550:		bne B0_75d1 ; d0 7f
B0_7552:		lda #$36		; a9 36
B0_7554:		sta $07bd		; 8d bd 07
B0_7557:		lda $07bd		; ad bd 07
B0_755a:		lsr a			; 4a
B0_755b:		bcs B0_7568 ; b0 0b
B0_755d:		tay				; a8 
B0_755e:		lda $f4d9, y	; b9 d9 f4
B0_7561:		ldx #$5d		; a2 5d
B0_7563:		ldy #$7f		; a0 7f
B0_7565:		jsr $f3a6		; 20 a6 f3
B0_7568:		dec $07bd		; ce bd 07
B0_756b:		bne B0_757b ; d0 0e
B0_756d:		ldx #$00		; a2 00
B0_756f:		stx $f2			; 86 f2
B0_7571:		ldx #$0d		; a2 0d
B0_7573:		stx $4015		; 8e 15 40
B0_7576:		ldx #$0f		; a2 0f
B0_7578:		stx $4015		; 8e 15 40
B0_757b:		rts				; 60 
B0_757c:		lda $f2			; a5 f2
B0_757e:		and #$40		; 29 40
B0_7580:		bne B0_75e7 ; d0 65
B0_7582:		ldy $fe			; a4 fe
B0_7584:		beq B0_75a6 ; f0 20
B0_7586:		sty $f2			; 84 f2
B0_7588:		bmi B0_75c8 ; 30 3e
B0_758a:		lsr $fe			; 46 fe
B0_758c:		bcs B0_7518 ; b0 8a
B0_758e:		lsr $fe			; 46 fe
B0_7590:		bcs B0_75fc ; b0 6a
B0_7592:		lsr $fe			; 46 fe
B0_7594:		bcs B0_7600 ; b0 6a
B0_7596:		lsr $fe			; 46 fe
B0_7598:		bcs B0_753a ; b0 a0
B0_759a:		lsr $fe			; 46 fe
B0_759c:		bcs B0_751e ; b0 80
B0_759e:		lsr $fe			; 46 fe
B0_75a0:		bcs B0_7552 ; b0 b0
B0_75a2:		lsr $fe			; 46 fe
B0_75a4:		bcs B0_75e2 ; b0 3c
B0_75a6:		lda $f2			; a5 f2
B0_75a8:		beq B0_75c1 ; f0 17
B0_75aa:		bmi B0_75d3 ; 30 27
B0_75ac:		lsr a			; 4a
B0_75ad:		bcs B0_75c2 ; b0 13
B0_75af:		lsr a			; 4a
B0_75b0:		bcs B0_760f ; b0 5d
B0_75b2:		lsr a			; 4a
B0_75b3:		bcs B0_760f ; b0 5a
B0_75b5:		lsr a			; 4a
B0_75b6:		bcs B0_7545 ; b0 8d
B0_75b8:		lsr a			; 4a
B0_75b9:		bcs B0_75c2 ; b0 07
B0_75bb:		lsr a			; 4a
B0_75bc:		bcs B0_7557 ; b0 99
B0_75be:		lsr a			; 4a
B0_75bf:		bcs B0_75e7 ; b0 26
B0_75c1:		rts				; 60 
B0_75c2:		jmp $f52c		; 4c 2c f5
B0_75c5:		jmp $f568		; 4c 68 f5
B0_75c8:		lda #$38		; a9 38
B0_75ca:		sta $07bd		; 8d bd 07
B0_75cd:		ldy #$c4		; a0 c4
B0_75cf:		lda #$18		; a9 18
B0_75d1:		bne B0_75de ; d0 0b
B0_75d3:		lda $07bd		; ad bd 07
B0_75d6:		cmp #$08		; c9 08
B0_75d8:		bne B0_7568 ; d0 8e
B0_75da:		ldy #$a4		; a0 a4
B0_75dc:		lda #$5a		; a9 5a
B0_75de:		ldx #$9f		; a2 9f
B0_75e0:		bne B0_7565 ; d0 83
B0_75e2:		lda #$30		; a9 30
B0_75e4:		sta $07bd		; 8d bd 07
B0_75e7:		lda $07bd		; ad bd 07
B0_75ea:		ldx #$03		; a2 03
B0_75ec:		lsr a			; 4a
B0_75ed:		bcs B0_75c5 ; b0 d6
B0_75ef:		dex				; ca 
B0_75f0:		bne B0_75ec ; d0 fa
B0_75f2:		tay				; a8 
B0_75f3:		lda $f4d3, y	; b9 d3 f4
B0_75f6:		ldx #$82		; a2 82
B0_75f8:		ldy #$7f		; a0 7f
B0_75fa:		bne B0_75e0 ; d0 e4
B0_75fc:		lda #$10		; a9 10
B0_75fe:		bne B0_7602 ; d0 02
B0_7600:		lda #$20		; a9 20
B0_7602:		sta $07bd		; 8d bd 07
B0_7605:		lda #$7f		; a9 7f
B0_7607:		sta $4005		; 8d 05 40
B0_760a:		lda #$00		; a9 00
B0_760c:		sta $07be		; 8d be 07
B0_760f:		inc $07be		; ee be 07
B0_7612:		lda $07be		; ad be 07
B0_7615:		lsr a			; 4a
B0_7616:		tay				; a8 
B0_7617:		cpy $07bd		; cc bd 07
B0_761a:		beq B0_7628 ; f0 0c
B0_761c:		lda #$9d		; a9 9d
B0_761e:		sta $4004		; 8d 04 40
B0_7621:		lda $f4f8, y	; b9 f8 f4
B0_7624:		jsr $f3a9		; 20 a9 f3
B0_7627:		rts				; 60 
B0_7628:		jmp $f56d		; 4c 6d f5
B0_762b:		ora ($0e, x)	; 01 0e
B0_762d:		asl $0b0d		; 0e 0d 0b
B0_7630:		asl $0c			; 06 0c
B0_7632:	.db $0f
B0_7633:		asl a			; 0a
B0_7634:		ora #$03		; 09 03
B0_7636:		ora $0d08		; 0d 08 0d
B0_7639:		asl $0c			; 06 0c
B0_763b:		lda #$20		; a9 20
B0_763d:		sta $07bf		; 8d bf 07
B0_7640:		lda $07bf		; ad bf 07
B0_7643:		lsr a			; 4a
B0_7644:		bcc B0_7658 ; 90 12
B0_7646:		tay				; a8 
B0_7647:		ldx $f62b, y	; be 2b f6
B0_764a:		lda $ffea, y	; b9 ea ff
B0_764d:		sta $400c		; 8d 0c 40
B0_7650:		stx $400e		; 8e 0e 40
B0_7653:		lda #$18		; a9 18
B0_7655:		sta $400f		; 8d 0f 40
B0_7658:		dec $07bf		; ce bf 07
B0_765b:		bne B0_7666 ; d0 09
B0_765d:		lda #$f0		; a9 f0
B0_765f:		sta $400c		; 8d 0c 40
B0_7662:		lda #$00		; a9 00
B0_7664:		sta $f3			; 85 f3
B0_7666:		rts				; 60 
B0_7667:		ldy $fd			; a4 fd
B0_7669:		beq B0_7675 ; f0 0a
B0_766b:		sty $f3			; 84 f3
B0_766d:		lsr $fd			; 46 fd
B0_766f:		bcs B0_763b ; b0 ca
B0_7671:		lsr $fd			; 46 fd
B0_7673:		bcs B0_7680 ; b0 0b
B0_7675:		lda $f3			; a5 f3
B0_7677:		beq B0_767f ; f0 06
B0_7679:		lsr a			; 4a
B0_767a:		bcs B0_7640 ; b0 c4
B0_767c:		lsr a			; 4a
B0_767d:		bcs B0_7685 ; b0 06
B0_767f:		rts				; 60 
B0_7680:		lda #$40		; a9 40
B0_7682:		sta $07bf		; 8d bf 07
B0_7685:		lda $07bf		; ad bf 07
B0_7688:		lsr a			; 4a
B0_7689:		tay				; a8 
B0_768a:		ldx #$0f		; a2 0f
B0_768c:		lda $ffc9, y	; b9 c9 ff
B0_768f:		bne B0_764d ; d0 bc
B0_7691:		jmp $f73a		; 4c 3a f7
B0_7694:		lda $fc			; a5 fc
B0_7696:		bne B0_76a4 ; d0 0c
B0_7698:		lda $fb			; a5 fb
B0_769a:		bne B0_76c8 ; d0 2c
B0_769c:		lda $07b1		; ad b1 07
B0_769f:		ora $f4			; 05 f4
B0_76a1:		bne B0_7691 ; d0 ee
B0_76a3:		rts				; 60 
B0_76a4:		sta $07b1		; 8d b1 07
B0_76a7:		cmp #$01		; c9 01
B0_76a9:		bne B0_76b1 ; d0 06
B0_76ab:		jsr $f4a7		; 20 a7 f4
B0_76ae:		jsr $f571		; 20 71 f5
B0_76b1:		ldx $f4			; a6 f4
B0_76b3:		stx $07c5		; 8e c5 07
B0_76b6:		ldy #$00		; a0 00
B0_76b8:		sty $07c4		; 8c c4 07
B0_76bb:		sty $f4			; 84 f4
B0_76bd:		cmp #$40		; c9 40
B0_76bf:		bne B0_76f1 ; d0 30
B0_76c1:		ldx #$08		; a2 08
B0_76c3:		stx $07c4		; 8e c4 07
B0_76c6:		bne B0_76f1 ; d0 29
B0_76c8:		cmp #$04		; c9 04
B0_76ca:		bne B0_76cf ; d0 03
B0_76cc:		jsr $f4a7		; 20 a7 f4
B0_76cf:		ldy #$10		; a0 10
B0_76d1:		sty $07c7		; 8c c7 07
B0_76d4:		ldy #$00		; a0 00
B0_76d6:		sty $07b1		; 8c b1 07
B0_76d9:		sta $f4			; 85 f4
B0_76db:		cmp #$01		; c9 01
B0_76dd:		bne B0_76ed ; d0 0e
B0_76df:		inc $07c7		; ee c7 07
B0_76e2:		ldy $07c7		; ac c7 07
B0_76e5:		cpy #$32		; c0 32
B0_76e7:		bne B0_76f5 ; d0 0c
B0_76e9:		ldy #$11		; a0 11
B0_76eb:		bne B0_76d1 ; d0 e4
B0_76ed:		ldy #$08		; a0 08
B0_76ef:		sty $f7			; 84 f7
B0_76f1:		iny				; c8 
B0_76f2:		lsr a			; 4a
B0_76f3:		bcc B0_76f1 ; 90 fc
B0_76f5:		lda $f90c, y	; b9 0c f9
B0_76f8:		tay				; a8 
B0_76f9:		lda $f90d, y	; b9 0d f9
B0_76fc:		sta $f0			; 85 f0
B0_76fe:		lda $f90e, y	; b9 0e f9
B0_7701:		sta $f5			; 85 f5
B0_7703:		lda $f90f, y	; b9 0f f9
B0_7706:		sta $f6			; 85 f6
B0_7708:		lda $f910, y	; b9 10 f9
B0_770b:		sta $f9			; 85 f9
B0_770d:		lda $f911, y	; b9 11 f9
B0_7710:		sta $f8			; 85 f8
B0_7712:		lda $f912, y	; b9 12 f9
B0_7715:		sta $07b0		; 8d b0 07
B0_7718:		sta $07c1		; 8d c1 07
B0_771b:		lda #$01		; a9 01
B0_771d:		sta $07b4		; 8d b4 07
B0_7720:		sta $07b6		; 8d b6 07
B0_7723:		sta $07b9		; 8d b9 07
B0_7726:		sta $07ba		; 8d ba 07
B0_7729:		lda #$00		; a9 00
B0_772b:		sta $f7			; 85 f7
B0_772d:		sta $07ca		; 8d ca 07
B0_7730:		lda #$0b		; a9 0b
B0_7732:		sta $4015		; 8d 15 40
B0_7735:		lda #$0f		; a9 0f
B0_7737:		sta $4015		; 8d 15 40
B0_773a:		dec $07b4		; ce b4 07
B0_773d:		bne B0_779e ; d0 5f
B0_773f:		ldy $f7			; a4 f7
B0_7741:		inc $f7			; e6 f7
B0_7743:		lda ($f5), y	; b1 f5
B0_7745:		beq B0_774b ; f0 04
B0_7747:		bpl B0_7786 ; 10 3d
B0_7749:		bne B0_777a ; d0 2f
B0_774b:		lda $07b1		; ad b1 07
B0_774e:		cmp #$40		; c9 40
B0_7750:		bne B0_7757 ; d0 05
B0_7752:		lda $07c5		; ad c5 07
B0_7755:		bne B0_7774 ; d0 1d
B0_7757:		and #$04		; 29 04
B0_7759:		bne B0_7777 ; d0 1c
B0_775b:		lda $f4			; a5 f4
B0_775d:		and #$5f		; 29 5f
B0_775f:		bne B0_7774 ; d0 13
B0_7761:		lda #$00		; a9 00
B0_7763:		sta $f4			; 85 f4
B0_7765:		sta $07b1		; 8d b1 07
B0_7768:		sta $4008		; 8d 08 40
B0_776b:		lda #$90		; a9 90
B0_776d:		sta $4000		; 8d 00 40
B0_7770:		sta $4004		; 8d 04 40
B0_7773:		rts				; 60 
B0_7774:		jmp $f6d4		; 4c d4 f6
B0_7777:		jmp $f6a4		; 4c a4 f6
B0_777a:		jsr $f8cb		; 20 cb f8
B0_777d:		sta $07b3		; 8d b3 07
B0_7780:		ldy $f7			; a4 f7
B0_7782:		inc $f7			; e6 f7
B0_7784:		lda ($f5), y	; b1 f5
B0_7786:		ldx $f2			; a6 f2
B0_7788:		bne B0_7798 ; d0 0e
B0_778a:		jsr $f3a9		; 20 a9 f3
B0_778d:		beq B0_7792 ; f0 03
B0_778f:		jsr $f8d8		; 20 d8 f8
B0_7792:		sta $07b5		; 8d b5 07
B0_7795:		jsr $f39f		; 20 9f f3
B0_7798:		lda $07b3		; ad b3 07
B0_779b:		sta $07b4		; 8d b4 07
B0_779e:		lda $f2			; a5 f2
B0_77a0:		bne B0_77bc ; d0 1a
B0_77a2:		lda $07b1		; ad b1 07
B0_77a5:		and #$91		; 29 91
B0_77a7:		bne B0_77bc ; d0 13
B0_77a9:		ldy $07b5		; ac b5 07
B0_77ac:		beq B0_77b1 ; f0 03
B0_77ae:		dec $07b5		; ce b5 07
B0_77b1:		jsr $f8f4		; 20 f4 f8
B0_77b4:		sta $4004		; 8d 04 40
B0_77b7:		ldx #$7f		; a2 7f
B0_77b9:		stx $4005		; 8e 05 40
B0_77bc:		ldy $f8			; a4 f8
B0_77be:		beq B0_781a ; f0 5a
B0_77c0:		dec $07b6		; ce b6 07
B0_77c3:		bne B0_77f7 ; d0 32
B0_77c5:		ldy $f8			; a4 f8
B0_77c7:		inc $f8			; e6 f8
B0_77c9:		lda ($f5), y	; b1 f5
B0_77cb:		bne B0_77dc ; d0 0f
B0_77cd:		lda #$83		; a9 83
B0_77cf:		sta $4000		; 8d 00 40
B0_77d2:		lda #$94		; a9 94
B0_77d4:		sta $4001		; 8d 01 40
B0_77d7:		sta $07ca		; 8d ca 07
B0_77da:		bne B0_77c5 ; d0 e9
B0_77dc:		jsr $f8c5		; 20 c5 f8
B0_77df:		sta $07b6		; 8d b6 07
B0_77e2:		ldy $f1			; a4 f1
B0_77e4:		bne B0_781a ; d0 34
B0_77e6:		txa				; 8a 
B0_77e7:		and #$3e		; 29 3e
B0_77e9:		jsr $f38b		; 20 8b f3
B0_77ec:		beq B0_77f1 ; f0 03
B0_77ee:		jsr $f8d8		; 20 d8 f8
B0_77f1:		sta $07b7		; 8d b7 07
B0_77f4:		jsr $f381		; 20 81 f3
B0_77f7:		lda $f1			; a5 f1
B0_77f9:		bne B0_781a ; d0 1f
B0_77fb:		lda $07b1		; ad b1 07
B0_77fe:		and #$91		; 29 91
B0_7800:		bne B0_7810 ; d0 0e
B0_7802:		ldy $07b7		; ac b7 07
B0_7805:		beq B0_780a ; f0 03
B0_7807:		dec $07b7		; ce b7 07
B0_780a:		jsr $f8f4		; 20 f4 f8
B0_780d:		sta $4000		; 8d 00 40
B0_7810:		lda $07ca		; ad ca 07
B0_7813:		bne B0_7817 ; d0 02
B0_7815:		lda #$7f		; a9 7f
B0_7817:		sta $4001		; 8d 01 40
B0_781a:		lda $f9			; a5 f9
B0_781c:		dec $07b9		; ce b9 07
B0_781f:		bne B0_786d ; d0 4c
B0_7821:		ldy $f9			; a4 f9
B0_7823:		inc $f9			; e6 f9
B0_7825:		lda ($f5), y	; b1 f5
B0_7827:		beq B0_786a ; f0 41
B0_7829:		bpl B0_783e ; 10 13
B0_782b:		jsr $f8cb		; 20 cb f8
B0_782e:		sta $07b8		; 8d b8 07
B0_7831:		lda #$1f		; a9 1f
B0_7833:		sta $4008		; 8d 08 40
B0_7836:		ldy $f9			; a4 f9
B0_7838:		inc $f9			; e6 f9
B0_783a:		lda ($f5), y	; b1 f5
B0_783c:		beq B0_786a ; f0 2c
B0_783e:		jsr $f3ad		; 20 ad f3
B0_7841:		ldx $07b8		; ae b8 07
B0_7844:		stx $07b9		; 8e b9 07
B0_7847:		lda $07b1		; ad b1 07
B0_784a:		and #$6e		; 29 6e
B0_784c:		bne B0_7854 ; d0 06
B0_784e:		lda $f4			; a5 f4
B0_7850:		and #$0a		; 29 0a
B0_7852:		beq B0_786d ; f0 19
B0_7854:		txa				; 8a 
B0_7855:		cmp #$12		; c9 12
B0_7857:		bcs B0_7868 ; b0 0f
B0_7859:		lda $07b1		; ad b1 07
B0_785c:		and #$08		; 29 08
B0_785e:		beq B0_7864 ; f0 04
B0_7860:		lda #$0f		; a9 0f
B0_7862:		bne B0_786a ; d0 06
B0_7864:		lda #$1f		; a9 1f
B0_7866:		bne B0_786a ; d0 02
B0_7868:		lda #$ff		; a9 ff
B0_786a:		sta $4008		; 8d 08 40
B0_786d:		lda $f4			; a5 f4
B0_786f:		and #$f3		; 29 f3
B0_7871:		beq B0_78c4 ; f0 51
B0_7873:		dec $07ba		; ce ba 07
B0_7876:		bne B0_78c4 ; d0 4c
B0_7878:		ldy $07b0		; ac b0 07
B0_787b:		inc $07b0		; ee b0 07
B0_787e:		lda ($f5), y	; b1 f5
B0_7880:		bne B0_788a ; d0 08
B0_7882:		lda $07c1		; ad c1 07
B0_7885:		sta $07b0		; 8d b0 07
B0_7888:		bne B0_7878 ; d0 ee
B0_788a:		jsr $f8c5		; 20 c5 f8
B0_788d:		sta $07ba		; 8d ba 07
B0_7890:		txa				; 8a 
B0_7891:		and #$3e		; 29 3e
B0_7893:		beq B0_78b9 ; f0 24
B0_7895:		cmp #$30		; c9 30
B0_7897:		beq B0_78b1 ; f0 18
B0_7899:		cmp #$20		; c9 20
B0_789b:		beq B0_78a9 ; f0 0c
B0_789d:		and #$10		; 29 10
B0_789f:		beq B0_78b9 ; f0 18
B0_78a1:		lda #$1c		; a9 1c
B0_78a3:		ldx #$03		; a2 03
B0_78a5:		ldy #$18		; a0 18
B0_78a7:		bne B0_78bb ; d0 12
B0_78a9:		lda #$1c		; a9 1c
B0_78ab:		ldx #$0c		; a2 0c
B0_78ad:		ldy #$18		; a0 18
B0_78af:		bne B0_78bb ; d0 0a
B0_78b1:		lda #$1c		; a9 1c
B0_78b3:		ldx #$03		; a2 03
B0_78b5:		ldy #$58		; a0 58
B0_78b7:		bne B0_78bb ; d0 02
B0_78b9:		lda #$10		; a9 10
B0_78bb:		sta $400c		; 8d 0c 40
B0_78be:		stx $400e		; 8e 0e 40
B0_78c1:		sty $400f		; 8c 0f 40
B0_78c4:		rts				; 60 
B0_78c5:		tax				; aa 
B0_78c6:		ror a			; 6a
B0_78c7:		txa				; 8a 
B0_78c8:		rol a			; 2a
B0_78c9:		rol a			; 2a
B0_78ca:		rol a			; 2a
B0_78cb:		and #$07		; 29 07
B0_78cd:		clc				; 18 
B0_78ce:		adc $f0			; 65 f0
B0_78d0:		adc $07c4		; 6d c4 07
B0_78d3:		tay				; a8 
B0_78d4:		lda $ff66, y	; b9 66 ff
B0_78d7:		rts				; 60 
B0_78d8:		lda $07b1		; ad b1 07
B0_78db:		and #$08		; 29 08
B0_78dd:		beq B0_78e3 ; f0 04
B0_78df:		lda #$04		; a9 04
B0_78e1:		bne B0_78ef ; d0 0c
B0_78e3:		lda $f4			; a5 f4
B0_78e5:		and #$7d		; 29 7d
B0_78e7:		beq B0_78ed ; f0 04
B0_78e9:		lda #$08		; a9 08
B0_78eb:		bne B0_78ef ; d0 02
B0_78ed:		lda #$28		; a9 28
B0_78ef:		ldx #$82		; a2 82
B0_78f1:		ldy #$7f		; a0 7f
B0_78f3:		rts				; 60 
B0_78f4:		lda $07b1		; ad b1 07
B0_78f7:		and #$08		; 29 08
B0_78f9:		beq B0_78ff ; f0 04
B0_78fb:		lda $ff96, y	; b9 96 ff
B0_78fe:		rts				; 60 
B0_78ff:		lda $f4			; a5 f4
B0_7901:		and #$7d		; 29 7d
B0_7903:		beq B0_7909 ; f0 04
B0_7905:		lda $ff9a, y	; b9 9a ff
B0_7908:		rts				; 60 
B0_7909:		lda $ffa2, y	; b9 a2 ff
B0_790c:		rts				; 60 
B0_790d:		lda $59			; a5 59
B0_790f:	.db $54
B0_7910:	.db $64
B0_7911:		eor $313c, y	; 59 3c 31
B0_7914:	.db $4b
B0_7915:		adc #$5e		; 69 5e
B0_7917:		lsr $4f			; 46 4f
B0_7919:		rol $8d, x		; 36 8d
B0_791b:		rol $4b, x		; 36 4b
B0_791d:		sta $6969		; 8d 69 69
B0_7920:	.db $6f
B0_7921:		adc $6f, x		; 75 6f
B0_7923:	.db $7b
B0_7924:	.db $6f
B0_7925:		adc $6f, x		; 75 6f
B0_7927:	.db $7b
B0_7928:		sta ($87, x)	; 81 87
B0_792a:		sta ($8d, x)	; 81 8d
B0_792c:		adc #$69		; 69 69
B0_792e:	.db $93
B0_792f:		sta $9f93, y	; 99 93 9f
B0_7932:	.db $93
B0_7933:		sta $9f93, y	; 99 93 9f
B0_7936:		sta ($87, x)	; 81 87
B0_7938:		sta ($8d, x)	; 81 8d
B0_793a:	.db $93
B0_793b:		sta $9f93, y	; 99 93 9f
B0_793e:		php				; 08 
B0_793f:	.db $72
B0_7940:	.db $fc
B0_7941:	.db $27
B0_7942:		clc				; 18 
B0_7943:		jsr $f9b8		; 20 b8 f9
B0_7946:		rol $401a		; 2e 1a 40
B0_7949:		jsr $fcb0		; 20 b0 fc
B0_794c:		and $2021, x	; 3d 21 20
B0_794f:		cpy $fc			; c4 fc
B0_7951:	.db $3f
B0_7952:		ora $1118, x	; 1d 18 11
B0_7955:	.hex fd 00 00
B0_7958:		php				; 08 
B0_7959:	.db $1c
B0_795a:	.db $fa
B0_795b:		brk				; 00
B0_795c:		brk				; 00
B0_795d:		ldy $fb			; a4 fb
B0_795f:	.db $93
B0_7960:	.db $62
B0_7961:		;removed
	.hex  10 c8
B0_7963:		inc $1424, x	; fe 24 14
B0_7966:		clc				; 18 
B0_7967:		eor $fc			; 45 fc
B0_7969:		asl $0814, x	; 1e 14 08
B0_796c:	.db $52
B0_796d:		sbc $70a0, x	; fd a0 70
B0_7970:		pla				; 68 
B0_7971:		php				; 08 
B0_7972:		eor ($fe), y	; 51 fe
B0_7974:		jmp $1824		; 4c 24 18
B0_7977:		ora ($fa, x)	; 01 fa
B0_7979:		and $b81c		; 2d 1c b8
B0_797c:		clc				; 18 
B0_797d:		eor #$fa		; 49 fa
B0_797f:		jsr $7012		; 20 12 70
B0_7982:		clc				; 18 
B0_7983:		adc $fa, x		; 75 fa
B0_7985:	.db $1b
B0_7986:		bpl B0_79cc ; 10 44
B0_7988:		clc				; 18 
B0_7989:		sta $11fa, x	; 9d fa 11
B0_798c:		asl a			; 0a
B0_798d:	.db $1c
B0_798e:		clc				; 18 
B0_798f:	.db $c2
B0_7990:	.db $fa
B0_7991:		and $5810		; 2d 10 58
B0_7994:		clc				; 18 
B0_7995:	.db $db
B0_7996:	.db $fa
B0_7997:	.db $14
B0_7998:		ora $183f		; 0d 3f 18
B0_799b:		sbc $15fa, y	; f9 fa 15
B0_799e:		ora $1821		; 0d 21 18
B0_79a1:		and $fb			; 25 fb
B0_79a3:		clc				; 18 
B0_79a4:		bpl B0_7a20 ; 10 7a
B0_79a6:		clc				; 18 
B0_79a7:	.db $4b
B0_79a8:	.db $fb
B0_79a9:		ora $540f, y	; 19 0f 54
B0_79ac:		clc				; 18 
B0_79ad:	.db $74
B0_79ae:	.db $fb
B0_79af:		asl $2b12, x	; 1e 12 2b
B0_79b2:		clc				; 18 
B0_79b3:	.db $72
B0_79b4:	.db $fb
B0_79b5:		asl $2d0f, x	; 1e 0f 2d
B0_79b8:		sty $2c			; 84 2c
B0_79ba:		bit $822c		; 2c 2c 82
B0_79bd:	.db $04
B0_79be:		bit $8504		; 2c 04 85
B0_79c1:		bit $2c84		; 2c 84 2c
B0_79c4:		bit $2a2a		; 2c 2a 2a
B0_79c7:		rol a			; 2a
B0_79c8:	.db $82
B0_79c9:	.db $04
B0_79ca:		rol a			; 2a
B0_79cb:	.db $04
B0_79cc:		sta $2a			; 85 2a
B0_79ce:		sty $2a			; 84 2a
B0_79d0:		rol a			; 2a
B0_79d1:		brk				; 00
B0_79d2:	.db $1f
B0_79d3:	.db $1f
B0_79d4:	.db $1f
B0_79d5:		tya				; 98 
B0_79d6:	.db $1f
B0_79d7:	.db $1f
B0_79d8:		tya				; 98 
B0_79d9:	.db $9e
B0_79da:		tya				; 98 
B0_79db:	.db $1f
B0_79dc:		ora $1d1d, x	; 1d 1d 1d
B0_79df:		sty $1d, x		; 94 1d
B0_79e1:		ora $9c94, x	; 1d 94 9c
B0_79e4:		sty $1d, x		; 94 1d
B0_79e6:		stx $18			; 86 18
B0_79e8:		sta $26			; 85 26
B0_79ea:		bmi B0_7970 ; 30 84
B0_79ec:	.db $04
B0_79ed:		rol $30			; 26 30
B0_79ef:		stx $14			; 86 14
B0_79f1:		sta $22			; 85 22
B0_79f3:		bit $0484		; 2c 84 04
B0_79f6:	.db $22
B0_79f7:		bit $d021		; 2c 21 d0
B0_79fa:		cpy $d0			; c4 d0
B0_79fc:		and ($d0), y	; 31 d0
B0_79fe:		cpy $d0			; c4 d0
B0_7a00:		brk				; 00
B0_7a01:		sta $2c			; 85 2c
B0_7a03:	.db $22
B0_7a04:	.db $1c
B0_7a05:		sty $26			; 84 26
B0_7a07:		rol a			; 2a
B0_7a08:	.db $82
B0_7a09:		plp				; 28 
B0_7a0a:		rol $04			; 26 04
B0_7a0c:	.db $87
B0_7a0d:	.db $22
B0_7a0e:	.db $34
B0_7a0f:	.db $3a
B0_7a10:	.db $82
B0_7a11:		rti				; 40 
B0_7a12:	.db $04
B0_7a13:		rol $84, x		; 36 84
B0_7a15:	.db $3a
B0_7a16:	.db $34
B0_7a17:	.db $82
B0_7a18:		bit $8530		; 2c 30 85
B0_7a1b:		rol a			; 2a
B0_7a1c:		brk				; 00
B0_7a1d:		eor $4d55, x	; 5d 55 4d
B0_7a20:		ora $19, x		; 15 19
B0_7a22:		stx $15, y		; 96 15
B0_7a24:		cmp $e3, x		; d5 e3
B0_7a26:	.db $eb
B0_7a27:		and $2ba6		; 2d a6 2b
B0_7a2a:	.db $27
B0_7a2b:	.db $9c
B0_7a2c:	.db $9e
B0_7a2d:		eor $2285, y	; 59 85 22
B0_7a30:	.db $1c
B0_7a31:	.db $14
B0_7a32:		sty $1e			; 84 1e
B0_7a34:	.db $22
B0_7a35:	.db $82
B0_7a36:		jsr $041e		; 20 1e 04
B0_7a39:	.db $87
B0_7a3a:	.db $1c
B0_7a3b:		bit $8234		; 2c 34 82
B0_7a3e:		rol $04, x		; 36 04
B0_7a40:		;removed
	.hex  30 34
B0_7a42:	.db $04
B0_7a43:		bit $2604		; 2c 04 26
B0_7a46:		rol a			; 2a
B0_7a47:		sta $22			; 85 22
B0_7a49:		sty $04			; 84 04
B0_7a4b:	.db $82
B0_7a4c:	.db $3a
B0_7a4d:		sec				; 38 
B0_7a4e:		rol $32, x		; 36 32
B0_7a50:	.db $04
B0_7a51:	.db $34
B0_7a52:	.db $04
B0_7a53:		bit $26			; 24 26
B0_7a55:		bit $2604		; 2c 04 26
B0_7a58:	.hex 2c 30 00
B0_7a5b:		ora $b4			; 05 b4
B0_7a5d:	.db $b2
B0_7a5e:		;removed
	.hex  b0 2b
B0_7a60:		ldy $9c84		; ac 84 9c
B0_7a63:	.db $9e
B0_7a64:		ldx #$84		; a2 84
B0_7a66:		sty $9c, x		; 94 9c
B0_7a68:	.db $9e
B0_7a69:		sta $14			; 85 14
B0_7a6b:	.db $22
B0_7a6c:		sty $2c			; 84 2c
B0_7a6e:		sta $1e			; 85 1e
B0_7a70:	.db $82
B0_7a71:		bit $2c84		; 2c 84 2c
B0_7a74:		asl $0484, x	; 1e 84 04
B0_7a77:	.db $82
B0_7a78:	.db $3a
B0_7a79:		sec				; 38 
B0_7a7a:		rol $32, x		; 36 32
B0_7a7c:	.db $04
B0_7a7d:	.db $34
B0_7a7e:	.db $04
B0_7a7f:	.db $64
B0_7a80:	.db $04
B0_7a81:	.db $64
B0_7a82:		stx $64			; 86 64
B0_7a84:		brk				; 00
B0_7a85:		ora $b4			; 05 b4
B0_7a87:	.db $b2
B0_7a88:		;removed
	.hex  b0 2b
B0_7a8a:		ldy $3784		; ac 84 37
B0_7a8d:		ldx $b6, y		; b6 b6
B0_7a8f:		eor $85			; 45 85
B0_7a91:	.db $14
B0_7a92:	.db $1c
B0_7a93:	.db $82
B0_7a94:	.db $22
B0_7a95:		sty $2c			; 84 2c
B0_7a97:		lsr $4e82		; 4e 82 4e
B0_7a9a:		sty $4e			; 84 4e
B0_7a9c:	.db $22
B0_7a9d:		sty $04			; 84 04
B0_7a9f:		sta $32			; 85 32
B0_7aa1:		sta $30			; 85 30
B0_7aa3:		stx $2c			; 86 2c
B0_7aa5:	.db $04
B0_7aa6:		brk				; 00
B0_7aa7:		ora $a4			; 05 a4
B0_7aa9:		ora $9e			; 05 9e
B0_7aab:		ora $9d			; 05 9d
B0_7aad:		sta $84			; 85 84
B0_7aaf:	.db $14
B0_7ab0:		sta $24			; 85 24
B0_7ab2:		plp				; 28 
B0_7ab3:		bit $2282		; 2c 82 22
B0_7ab6:		sty $22			; 84 22
B0_7ab8:	.db $14
B0_7ab9:		and ($d0, x)	; 21 d0
B0_7abb:		cpy $d0			; c4 d0
B0_7abd:		and ($d0), y	; 31 d0
B0_7abf:		cpy $d0			; c4 d0
B0_7ac1:		brk				; 00
B0_7ac2:	.db $82
B0_7ac3:		bit $2c84		; 2c 84 2c
B0_7ac6:		bit $2c82		; 2c 82 2c
B0_7ac9:		bmi B0_7acf ; 30 04
B0_7acb:	.db $34
B0_7acc:		bit $2604		; 2c 04 26
B0_7acf:		stx $22			; 86 22
B0_7ad1:		brk				; 00
B0_7ad2:		ldy $25			; a4 25
B0_7ad4:		and $a4			; 25 a4
B0_7ad6:		and #$a2		; 29 a2
B0_7ad8:		ora $959c, x	; 1d 9c 95
B0_7adb:	.db $82
B0_7adc:		bit $042c		; 2c 2c 04
B0_7adf:		bit $2c04		; 2c 04 2c
B0_7ae2:		bmi B0_7a69 ; 30 85
B0_7ae4:	.db $34
B0_7ae5:	.db $04
B0_7ae6:	.db $04
B0_7ae7:		brk				; 00
B0_7ae8:		ldy $25			; a4 25
B0_7aea:		and $a4			; 25 a4
B0_7aec:		tay				; a8 
B0_7aed:	.db $63
B0_7aee:	.db $04
B0_7aef:		sta $0e			; 85 0e
B0_7af1:	.db $1a
B0_7af2:		sty $24			; 84 24
B0_7af4:		sta $22			; 85 22
B0_7af6:	.db $14
B0_7af7:		sty $0c			; 84 0c
B0_7af9:	.db $82
B0_7afa:	.db $34
B0_7afb:		sty $34			; 84 34
B0_7afd:	.db $34
B0_7afe:	.db $82
B0_7aff:		bit $3484		; 2c 84 34
B0_7b02:		stx $3a			; 86 3a
B0_7b04:	.db $04
B0_7b05:		brk				; 00
B0_7b06:		ldy #$21		; a0 21
B0_7b08:		and ($a0, x)	; 21 a0
B0_7b0a:		and ($2b, x)	; 21 2b
B0_7b0c:		ora $a3			; 05 a3
B0_7b0e:	.db $82
B0_7b0f:		clc				; 18 
B0_7b10:		sty $18			; 84 18
B0_7b12:		clc				; 18 
B0_7b13:	.db $82
B0_7b14:		clc				; 18 
B0_7b15:		clc				; 18 
B0_7b16:	.db $04
B0_7b17:		stx $3a			; 86 3a
B0_7b19:	.db $22
B0_7b1a:		and ($90), y	; 31 90
B0_7b1c:		and ($90), y	; 31 90
B0_7b1e:		and ($71), y	; 31 71
B0_7b20:		and ($90), y	; 31 90
B0_7b22:		;removed
	.hex  90 90
B0_7b24:		brk				; 00
B0_7b25:	.db $82
B0_7b26:	.db $34
B0_7b27:		sty $2c			; 84 2c
B0_7b29:		sta $22			; 85 22
B0_7b2b:		sty $24			; 84 24
B0_7b2d:	.db $82
B0_7b2e:		rol $36			; 26 36
B0_7b30:	.db $04
B0_7b31:		rol $86, x		; 36 86
B0_7b33:		rol $00			; 26 00
B0_7b35:		ldy $5d27		; ac 27 5d
B0_7b38:		ora $2d9e, x	; 1d 9e 2d
B0_7b3b:		ldy $859f		; ac 9f 85
B0_7b3e:	.db $14
B0_7b3f:	.db $82
B0_7b40:		jsr $2284		; 20 84 22
B0_7b43:		bit $1e1e		; 2c 1e 1e
B0_7b46:	.db $82
B0_7b47:		bit $1e2c		; 2c 2c 1e
B0_7b4a:	.db $04
B0_7b4b:	.db $87
B0_7b4c:		rol a			; 2a
B0_7b4d:		rti				; 40 
B0_7b4e:		rti				; 40 
B0_7b4f:		rti				; 40 
B0_7b50:	.db $3a
B0_7b51:		rol $82, x		; 36 82
B0_7b53:	.db $34
B0_7b54:		bit $2604		; 2c 04 26
B0_7b57:		stx $22			; 86 22
B0_7b59:		brk				; 00
B0_7b5a:	.db $e3
B0_7b5b:	.db $f7
B0_7b5c:	.db $f7
B0_7b5d:	.db $f7
B0_7b5e:		sbc $f1, x		; f5 f1
B0_7b60:		ldy $9e27		; ac 27 9e
B0_7b63:		sta $1885, x	; 9d 85 18
B0_7b66:	.db $82
B0_7b67:		asl $2284, x	; 1e 84 22
B0_7b6a:		rol a			; 2a
B0_7b6b:	.db $22
B0_7b6c:	.db $22
B0_7b6d:	.db $82
B0_7b6e:		bit $222c		; 2c 2c 22
B0_7b71:	.db $04
B0_7b72:		stx $04			; 86 04
B0_7b74:	.db $82
B0_7b75:		rol a			; 2a
B0_7b76:		rol $04, x		; 36 04
B0_7b78:		rol $87, x		; 36 87
B0_7b7a:		rol $34, x		; 36 34
B0_7b7c:		bmi B0_7b04 ; 30 86
B0_7b7e:	.hex 2c 04 00
B0_7b81:		brk				; 00
B0_7b82:		pla				; 68 
B0_7b83:		ror a			; 6a
B0_7b84:		jmp ($a245)		; 6c 45 a2
B0_7b87:		and ($b0), y	; 31 b0
B0_7b89:		sbc ($ed), y	; f1 ed
B0_7b8b:	.db $eb
B0_7b8c:		ldx #$1d		; a2 1d
B0_7b8e:	.db $9c
B0_7b8f:		sta $86, x		; 95 86
B0_7b91:	.db $04
B0_7b92:		sta $22			; 85 22
B0_7b94:	.db $82
B0_7b95:	.db $22
B0_7b96:	.db $87
B0_7b97:	.db $22
B0_7b98:		rol $2a			; 26 2a
B0_7b9a:		sty $2c			; 84 2c
B0_7b9c:	.db $22
B0_7b9d:		stx $14			; 86 14
B0_7b9f:		eor ($90), y	; 51 90
B0_7ba1:		and ($11), y	; 31 11
B0_7ba3:		brk				; 00
B0_7ba4:	.db $80
B0_7ba5:	.db $22
B0_7ba6:		plp				; 28 
B0_7ba7:	.db $22
B0_7ba8:		rol $22			; 26 22
B0_7baa:		bit $22			; 24 22
B0_7bac:		rol $22			; 26 22
B0_7bae:		plp				; 28 
B0_7baf:	.db $22
B0_7bb0:		rol a			; 2a
B0_7bb1:	.db $22
B0_7bb2:		plp				; 28 
B0_7bb3:	.db $22
B0_7bb4:		rol $22			; 26 22
B0_7bb6:		plp				; 28 
B0_7bb7:	.db $22
B0_7bb8:		rol $22			; 26 22
B0_7bba:		bit $22			; 24 22
B0_7bbc:		rol $22			; 26 22
B0_7bbe:		plp				; 28 
B0_7bbf:	.db $22
B0_7bc0:		rol a			; 2a
B0_7bc1:	.db $22
B0_7bc2:		plp				; 28 
B0_7bc3:	.db $22
B0_7bc4:		rol $20			; 26 20
B0_7bc6:		rol $20			; 26 20
B0_7bc8:		bit $20			; 24 20
B0_7bca:		rol $20			; 26 20
B0_7bcc:		plp				; 28 
B0_7bcd:		jsr $2026		; 20 26 20
B0_7bd0:		plp				; 28 
B0_7bd1:		jsr $2026		; 20 26 20
B0_7bd4:		bit $20			; 24 20
B0_7bd6:		rol $20			; 26 20
B0_7bd8:		bit $20			; 24 20
B0_7bda:		rol $20			; 26 20
B0_7bdc:		plp				; 28 
B0_7bdd:		jsr $2026		; 20 26 20
B0_7be0:		plp				; 28 
B0_7be1:		jsr $2026		; 20 26 20
B0_7be4:		bit $28			; 24 28
B0_7be6:		;removed
	.hex  30 28
B0_7be8:	.db $32
B0_7be9:		plp				; 28 
B0_7bea:		bmi B0_7c14 ; 30 28
B0_7bec:		rol $3028		; 2e 28 30
B0_7bef:		plp				; 28 
B0_7bf0:		rol $2c28		; 2e 28 2c
B0_7bf3:		plp				; 28 
B0_7bf4:		rol $3028		; 2e 28 30
B0_7bf7:		plp				; 28 
B0_7bf8:	.db $32
B0_7bf9:		plp				; 28 
B0_7bfa:		bmi B0_7c24 ; 30 28
B0_7bfc:		rol $3028		; 2e 28 30
B0_7bff:		plp				; 28 
B0_7c00:		rol $2c28		; 2e 28 2c
B0_7c03:		plp				; 28 
B0_7c04:		rol $0400		; 2e 00 04
B0_7c07:		;removed
	.hex  70 6e
B0_7c09:		jmp ($706e)		; 6c 6e 70
B0_7c0c:	.db $72
B0_7c0d:		bvs B0_7c7d ; 70 6e
B0_7c0f:		bvs B0_7c7f ; 70 6e
B0_7c11:		jmp ($706e)		; 6c 6e 70
B0_7c14:	.db $72
B0_7c15:		bvs B0_7c85 ; 70 6e
B0_7c17:		ror $6e6c		; 6e 6c 6e
B0_7c1a:		bvs B0_7c8a ; 70 6e
B0_7c1c:		bvs B0_7c8c ; 70 6e
B0_7c1e:		jmp ($6c6e)		; 6c 6e 6c
B0_7c21:		ror $6e70		; 6e 70 6e
B0_7c24:		bvs B0_7c94 ; 70 6e
B0_7c26:		jmp ($7876)		; 6c 76 78
B0_7c29:		ror $74, x		; 76 74
B0_7c2b:		ror $74, x		; 76 74
B0_7c2d:	.db $72
B0_7c2e:	.db $74
B0_7c2f:		ror $78, x		; 76 78
B0_7c31:		ror $74, x		; 76 74
B0_7c33:		ror $74, x		; 76 74
B0_7c35:	.db $72
B0_7c36:	.db $74
B0_7c37:		sty $1a			; 84 1a
B0_7c39:	.db $83
B0_7c3a:		clc				; 18 
B0_7c3b:		jsr $1e84		; 20 84 1e
B0_7c3e:	.db $83
B0_7c3f:	.db $1c
B0_7c40:		plp				; 28 
B0_7c41:		rol $1c			; 26 1c
B0_7c43:	.db $1a
B0_7c44:	.db $1c
B0_7c45:	.db $82
B0_7c46:		bit $0404		; 2c 04 04
B0_7c49:	.db $22
B0_7c4a:	.db $04
B0_7c4b:	.db $04
B0_7c4c:		sty $1c			; 84 1c
B0_7c4e:	.db $87
B0_7c4f:		rol $2a			; 26 2a
B0_7c51:		rol $84			; 26 84
B0_7c53:		bit $28			; 24 28
B0_7c55:		bit $80			; 24 80
B0_7c57:	.db $22
B0_7c58:		brk				; 00
B0_7c59:	.db $9c
B0_7c5a:		ora $94			; 05 94
B0_7c5c:		ora $0d			; 05 0d
B0_7c5e:	.db $9f
B0_7c5f:		asl $989c, x	; 1e 9c 98
B0_7c62:		sta $2282, x	; 9d 82 22
B0_7c65:	.db $04
B0_7c66:	.db $04
B0_7c67:	.db $1c
B0_7c68:	.db $04
B0_7c69:	.db $04
B0_7c6a:		sty $14			; 84 14
B0_7c6c:		stx $1e			; 86 1e
B0_7c6e:	.db $80
B0_7c6f:		asl $80, x		; 16 80
B0_7c71:	.db $14
B0_7c72:		sta ($1c, x)	; 81 1c
B0_7c74:		;removed
	.hex  30 04
B0_7c76:		;removed
	.hex  30 30
B0_7c78:	.db $04
B0_7c79:		asl $0432, x	; 1e 32 04
B0_7c7c:	.db $32
B0_7c7d:	.db $32
B0_7c7e:	.db $04
B0_7c7f:		jsr $0434		; 20 34 04
B0_7c82:	.db $34
B0_7c83:	.db $34
B0_7c84:	.db $04
B0_7c85:		rol $04, x		; 36 04
B0_7c87:		sty $36			; 84 36
B0_7c89:		brk				; 00
B0_7c8a:		lsr $a4			; 46 a4
B0_7c8c:	.db $64
B0_7c8d:		ldy $48			; a4 48
B0_7c8f:		ldx $66			; a6 66
B0_7c91:		ldx $4a			; a6 4a
B0_7c93:		tay				; a8 
B0_7c94:		pla				; 68 
B0_7c95:		tay				; a8 
B0_7c96:		ror a			; 6a
B0_7c97:	.db $44
B0_7c98:	.db $2b
B0_7c99:		sta ($2a, x)	; 81 2a
B0_7c9b:	.db $42
B0_7c9c:	.db $04
B0_7c9d:	.db $42
B0_7c9e:	.db $42
B0_7c9f:	.db $04
B0_7ca0:		bit $0464		; 2c 64 04
B0_7ca3:	.db $64
B0_7ca4:	.db $64
B0_7ca5:	.db $04
B0_7ca6:		rol $0446		; 2e 46 04
B0_7ca9:		lsr $46			; 46 46
B0_7cab:	.db $04
B0_7cac:	.db $22
B0_7cad:	.db $04
B0_7cae:		sty $22			; 84 22
B0_7cb0:	.db $87
B0_7cb1:	.db $04
B0_7cb2:		asl $0c			; 06 0c
B0_7cb4:	.db $14
B0_7cb5:	.db $1c
B0_7cb6:	.db $22
B0_7cb7:		stx $2c			; 86 2c
B0_7cb9:	.db $22
B0_7cba:	.db $87
B0_7cbb:	.db $04
B0_7cbc:		rts				; 60 
B0_7cbd:		asl $1a14		; 0e 14 1a
B0_7cc0:		bit $86			; 24 86
B0_7cc2:		bit $8724		; 2c 24 87
B0_7cc5:	.db $04
B0_7cc6:		php				; 08 
B0_7cc7:		;removed
	.hex  10 18
B0_7cc9:		asl $8628, x	; 1e 28 86
B0_7ccc:		;removed
	.hex  30 30
B0_7cce:	.db $80
B0_7ccf:	.db $64
B0_7cd0:		brk				; 00
B0_7cd1:		cmp $ddd5		; cd d5 dd
B0_7cd4:	.db $e3
B0_7cd5:		sbc $bbf5		; edf5 bb
B0_7cd8:		lda $cf, x		; b5 cf
B0_7cda:		cmp $db, x		; d5 db
B0_7cdc:		sbc $ed			; e5 ed
B0_7cde:	.db $f3
B0_7cdf:		lda $d1b3, x	; bd b3 d1
B0_7ce2:		cmp $e9df, y	; d9 df e9
B0_7ce5:		sbc ($f7), y	; f1 f7
B0_7ce7:	.db $bf
B0_7ce8:	.db $ff
B0_7ce9:	.db $ff
B0_7cea:	.db $ff
B0_7ceb:	.db $34
B0_7cec:		brk				; 00
B0_7ced:		stx $04			; 86 04
B0_7cef:	.db $87
B0_7cf0:	.db $14
B0_7cf1:	.db $1c
B0_7cf2:	.db $22
B0_7cf3:		stx $34			; 86 34
B0_7cf5:		sty $2c			; 84 2c
B0_7cf7:	.db $04
B0_7cf8:	.db $04
B0_7cf9:	.db $04
B0_7cfa:	.db $87
B0_7cfb:	.db $14
B0_7cfc:	.db $1a
B0_7cfd:		bit $86			; 24 86
B0_7cff:	.db $32
B0_7d00:		sty $2c			; 84 2c
B0_7d02:	.db $04
B0_7d03:		stx $04			; 86 04
B0_7d05:	.db $87
B0_7d06:		clc				; 18 
B0_7d07:		asl $8628, x	; 1e 28 86
B0_7d0a:		rol $87, x		; 36 87
B0_7d0c:		;removed
	.hex  30 30
B0_7d0e:		;removed
	.hex  30 80
B0_7d10:		bit $1482		; 2c 82 14
B0_7d13:		bit $2662		; 2c 62 26
B0_7d16:		bpl B0_7d40 ; 10 28
B0_7d18:	.db $80
B0_7d19:	.db $04
B0_7d1a:	.db $82
B0_7d1b:	.db $14
B0_7d1c:		bit $2662		; 2c 62 26
B0_7d1f:		;removed
	.hex  10 28
B0_7d21:	.db $80
B0_7d22:	.db $04
B0_7d23:	.db $82
B0_7d24:		php				; 08 
B0_7d25:		asl $185e, x	; 1e 5e 18
B0_7d28:		rts				; 60 
B0_7d29:	.db $1a
B0_7d2a:	.db $80
B0_7d2b:	.db $04
B0_7d2c:	.db $82
B0_7d2d:		php				; 08 
B0_7d2e:		asl $185e, x	; 1e 5e 18
B0_7d31:		rts				; 60 
B0_7d32:	.db $1a
B0_7d33:		stx $04			; 86 04
B0_7d35:	.db $83
B0_7d36:	.db $1a
B0_7d37:		clc				; 18 
B0_7d38:		asl $84, x		; 16 84
B0_7d3a:	.db $14
B0_7d3b:	.db $1a
B0_7d3c:		clc				; 18 
B0_7d3d:		asl $160c		; 0e 0c 16
B0_7d40:	.db $83
B0_7d41:	.db $14
B0_7d42:		jsr $1c1e		; 20 1e 1c
B0_7d45:		plp				; 28 
B0_7d46:		rol $87			; 26 87
B0_7d48:		bit $1a			; 24 1a
B0_7d4a:	.db $12
B0_7d4b:		bpl B0_7daf ; 10 62
B0_7d4d:		asl $0480		; 0e 80 04
B0_7d50:	.db $04
B0_7d51:		brk				; 00
B0_7d52:	.db $82
B0_7d53:		clc				; 18 
B0_7d54:	.db $1c
B0_7d55:		jsr $2622		; 20 22 26
B0_7d58:		plp				; 28 
B0_7d59:		sta ($2a, x)	; 81 2a
B0_7d5b:		rol a			; 2a
B0_7d5c:		rol a			; 2a
B0_7d5d:	.db $04
B0_7d5e:		rol a			; 2a
B0_7d5f:	.db $04
B0_7d60:	.db $83
B0_7d61:		rol a			; 2a
B0_7d62:	.db $82
B0_7d63:	.db $22
B0_7d64:		stx $34			; 86 34
B0_7d66:	.db $32
B0_7d67:	.db $34
B0_7d68:		sta ($04, x)	; 81 04
B0_7d6a:	.db $22
B0_7d6b:		rol $2a			; 26 2a
B0_7d6d:		bit $8630		; 2c 30 86
B0_7d70:	.db $34
B0_7d71:	.db $83
B0_7d72:	.db $32
B0_7d73:	.db $82
B0_7d74:		rol $84, x		; 36 84
B0_7d76:	.db $34
B0_7d77:		sta $04			; 85 04
B0_7d79:		sta ($22, x)	; 81 22
B0_7d7b:		stx $30			; 86 30
B0_7d7d:		rol $8130		; 2e 30 81
B0_7d80:	.db $04
B0_7d81:	.db $22
B0_7d82:		rol $2a			; 26 2a
B0_7d84:		bit $862e		; 2c 2e 86
B0_7d87:		bmi B0_7d0c ; 30 83
B0_7d89:	.db $22
B0_7d8a:	.db $82
B0_7d8b:		rol $84, x		; 36 84
B0_7d8d:	.db $34
B0_7d8e:		sta $04			; 85 04
B0_7d90:		sta ($22, x)	; 81 22
B0_7d92:		stx $3a			; 86 3a
B0_7d94:	.db $3a
B0_7d95:	.db $3a
B0_7d96:	.db $82
B0_7d97:	.db $3a
B0_7d98:		sta ($40, x)	; 81 40
B0_7d9a:	.db $82
B0_7d9b:	.db $04
B0_7d9c:		sta ($3a, x)	; 81 3a
B0_7d9e:		stx $36			; 86 36
B0_7da0:		rol $36, x		; 36 36
B0_7da2:	.db $82
B0_7da3:		rol $81, x		; 36 81
B0_7da5:	.db $3a
B0_7da6:	.db $82
B0_7da7:	.db $04
B0_7da8:		sta ($36, x)	; 81 36
B0_7daa:		stx $34			; 86 34
B0_7dac:	.db $82
B0_7dad:		rol $2a			; 26 2a
B0_7daf:		rol $81, x		; 36 81
B0_7db1:	.db $34
B0_7db2:	.db $34
B0_7db3:		sta $34			; 85 34
B0_7db5:		sta ($2a, x)	; 81 2a
B0_7db7:		stx $2c			; 86 2c
B0_7db9:		brk				; 00
B0_7dba:		sty $90			; 84 90
B0_7dbc:		bcs B0_7d42 ; b0 84
B0_7dbe:		;removed
	.hex  50 50
B0_7dc0:		bcs B0_7dc2 ; b0 00
B0_7dc2:		tya				; 98 
B0_7dc3:		stx $94, y		; 96 94
B0_7dc5:	.db $92
B0_7dc6:		sty $96, x		; 94 96
B0_7dc8:		cli				; 58 
B0_7dc9:		cli				; 58 
B0_7dca:		cli				; 58 
B0_7dcb:	.db $44
B0_7dcc:	.db $5c
B0_7dcd:	.db $44
B0_7dce:	.db $9f
B0_7dcf:	.db $a3
B0_7dd0:		lda ($a3, x)	; a1 a3
B0_7dd2:		sta $a3			; 85 a3
B0_7dd4:		cpx #$a6		; e0 a6
B0_7dd6:	.db $23
B0_7dd7:		cpy $9f			; c4 9f
B0_7dd9:		sta $859f, x	; 9d 9f 85
B0_7ddc:	.db $9f
B0_7ddd:	.db $d2
B0_7dde:		ldx $23			; a6 23
B0_7de0:		cpy $b5			; c4 b5
B0_7de2:		lda ($af), y	; b1 af
B0_7de4:		sta $b1			; 85 b1
B0_7de6:	.db $af
B0_7de7:		lda $9585		; ad 85 95
B0_7dea:	.db $9e
B0_7deb:		ldx #$aa		; a2 aa
B0_7ded:		ror a			; 6a
B0_7dee:		ror a			; 6a
B0_7def:	.db $6b
B0_7df0:		lsr $849d, x	; 5e 9d 84
B0_7df3:	.db $04
B0_7df4:	.db $04
B0_7df5:	.db $82
B0_7df6:	.db $22
B0_7df7:		stx $22			; 86 22
B0_7df9:	.db $82
B0_7dfa:	.db $14
B0_7dfb:	.db $22
B0_7dfc:		bit $2212		; 2c 12 22
B0_7dff:		rol a			; 2a
B0_7e00:	.db $14
B0_7e01:	.db $22
B0_7e02:		bit $221c		; 2c 1c 22
B0_7e05:		bit $2214		; 2c 14 22
B0_7e08:		bit $2212		; 2c 12 22
B0_7e0b:		rol a			; 2a
B0_7e0c:	.db $14
B0_7e0d:	.db $22
B0_7e0e:		bit $221c		; 2c 1c 22
B0_7e11:		bit $2218		; 2c 18 22
B0_7e14:		rol a			; 2a
B0_7e15:		asl $20, x		; 16 20
B0_7e17:		plp				; 28 
B0_7e18:		clc				; 18 
B0_7e19:	.db $22
B0_7e1a:		rol a			; 2a
B0_7e1b:	.db $12
B0_7e1c:	.db $22
B0_7e1d:		rol a			; 2a
B0_7e1e:		clc				; 18 
B0_7e1f:	.db $22
B0_7e20:		rol a			; 2a
B0_7e21:	.db $12
B0_7e22:	.db $22
B0_7e23:		rol a			; 2a
B0_7e24:	.db $14
B0_7e25:	.db $22
B0_7e26:		bit $220c		; 2c 0c 22
B0_7e29:		bit $2214		; 2c 14 22
B0_7e2c:	.db $34
B0_7e2d:	.db $12
B0_7e2e:	.db $22
B0_7e2f:		bmi B0_7e41 ; 30 10
B0_7e31:	.db $22
B0_7e32:		rol $2216		; 2e 16 22
B0_7e35:	.db $34
B0_7e36:		clc				; 18 
B0_7e37:		rol $36			; 26 36
B0_7e39:		asl $26, x		; 16 26
B0_7e3b:		rol $14, x		; 36 14
B0_7e3d:		rol $36			; 26 36
B0_7e3f:	.db $12
B0_7e40:	.db $22
B0_7e41:		rol $5c, x		; 36 5c
B0_7e43:	.db $22
B0_7e44:	.db $34
B0_7e45:	.db $0c
B0_7e46:	.db $22
B0_7e47:	.db $22
B0_7e48:		sta ($1e, x)	; 81 1e
B0_7e4a:		asl $1e85, x	; 1e 85 1e
B0_7e4d:		sta ($12, x)	; 81 12
B0_7e4f:		stx $14			; 86 14
B0_7e51:		sta ($2c, x)	; 81 2c
B0_7e53:	.db $22
B0_7e54:	.db $1c
B0_7e55:		bit $1c22		; 2c 22 1c
B0_7e58:		sta $2c			; 85 2c
B0_7e5a:	.db $04
B0_7e5b:		sta ($2e, x)	; 81 2e
B0_7e5d:		bit $1e			; 24 1e
B0_7e5f:		rol $1e24		; 2e 24 1e
B0_7e62:		sta $2e			; 85 2e
B0_7e64:	.db $04
B0_7e65:		sta ($32, x)	; 81 32
B0_7e67:		plp				; 28 
B0_7e68:	.db $22
B0_7e69:	.db $32
B0_7e6a:		plp				; 28 
B0_7e6b:	.db $22
B0_7e6c:		sta $32			; 85 32
B0_7e6e:	.db $87
B0_7e6f:		rol $36, x		; 36 36
B0_7e71:		rol $84, x		; 36 84
B0_7e73:	.db $3a
B0_7e74:		brk				; 00
B0_7e75:	.db $5c
B0_7e76:	.db $54
B0_7e77:		jmp $545c		; 4c 5c 54
B0_7e7a:		jmp $1c5c		; 4c 5c 1c
B0_7e7d:	.db $1c
B0_7e7e:	.db $5c
B0_7e7f:	.db $5c
B0_7e80:	.db $5c
B0_7e81:	.db $5c
B0_7e82:		lsr $4e56, x	; 5e 56 4e
B0_7e85:		lsr $4e56, x	; 5e 56 4e
B0_7e88:		lsr $1e1e, x	; 5e 1e 1e
B0_7e8b:		lsr $5e5e, x	; 5e 5e 5e
B0_7e8e:		lsr $5a62, x	; 5e 62 5a
B0_7e91:		;removed
	.hex  50 62
B0_7e93:	.db $5a
B0_7e94:		;removed
	.hex  50 62
B0_7e96:	.db $22
B0_7e97:	.db $22
B0_7e98:	.db $62
B0_7e99:	.db $e7
B0_7e9a:	.db $e7
B0_7e9b:	.db $e7
B0_7e9c:	.db $2b
B0_7e9d:		stx $14			; 86 14
B0_7e9f:		sta ($14, x)	; 81 14
B0_7ea1:	.db $80
B0_7ea2:	.db $14
B0_7ea3:	.db $14
B0_7ea4:		sta ($14, x)	; 81 14
B0_7ea6:	.db $14
B0_7ea7:	.db $14
B0_7ea8:	.db $14
B0_7ea9:		stx $16			; 86 16
B0_7eab:		sta ($16, x)	; 81 16
B0_7ead:	.db $80
B0_7eae:		asl $16, x		; 16 16
B0_7eb0:		sta ($16, x)	; 81 16
B0_7eb2:		asl $16, x		; 16 16
B0_7eb4:		asl $81, x		; 16 81
B0_7eb6:		plp				; 28 
B0_7eb7:	.db $22
B0_7eb8:	.db $1a
B0_7eb9:		plp				; 28 
B0_7eba:	.db $22
B0_7ebb:	.db $1a
B0_7ebc:		plp				; 28 
B0_7ebd:	.db $80
B0_7ebe:		plp				; 28 
B0_7ebf:		plp				; 28 
B0_7ec0:		sta ($28, x)	; 81 28
B0_7ec2:	.db $87
B0_7ec3:		bit $2c2c		; 2c 2c 2c
B0_7ec6:		sty $30			; 84 30
B0_7ec8:	.db $83
B0_7ec9:	.db $04
B0_7eca:		sty $0c			; 84 0c
B0_7ecc:	.db $83
B0_7ecd:	.db $62
B0_7ece:		bpl B0_7e54 ; 10 84
B0_7ed0:	.db $12
B0_7ed1:	.db $83
B0_7ed2:	.db $1c
B0_7ed3:	.db $22
B0_7ed4:		asl $2622, x	; 1e 22 26
B0_7ed7:		clc				; 18 
B0_7ed8:		asl $1c04, x	; 1e 04 1c
B0_7edb:		brk				; 00
B0_7edc:	.db $e3
B0_7edd:		sbc ($e3, x)	; e1 e3
B0_7edf:		ora $e0de, x	; 1d de e0
B0_7ee2:	.db $23
B0_7ee3:		cpx $7475		; ec 75 74
B0_7ee6:		beq B0_7edc ; f0 f4
B0_7ee8:		inc $ea, x		; f6 ea
B0_7eea:		and ($2d), y	; 31 2d
B0_7eec:	.db $83
B0_7eed:	.db $12
B0_7eee:	.db $14
B0_7eef:	.db $04
B0_7ef0:		clc				; 18 
B0_7ef1:	.db $1a
B0_7ef2:	.db $1c
B0_7ef3:	.db $14
B0_7ef4:		rol $22			; 26 22
B0_7ef6:		asl $181c, x	; 1e 1c 18
B0_7ef9:		asl $0c22, x	; 1e 22 0c
B0_7efc:	.db $14
B0_7efd:	.db $ff
B0_7efe:	.db $ff
B0_7eff:	.db $ff
B0_7f00:		brk				; 00
B0_7f01:		dey				; 88 
B0_7f02:		brk				; 00
B0_7f03:	.db $2f
B0_7f04:		brk				; 00
B0_7f05:		brk				; 00
B0_7f06:	.db $02
B0_7f07:		ldx $02			; a6 02
B0_7f09:	.db $80
B0_7f0a:	.db $02
B0_7f0b:	.db $5c
B0_7f0c:	.db $02
B0_7f0d:	.db $3a
B0_7f0e:	.db $02
B0_7f0f:	.db $1a
B0_7f10:		ora ($df, x)	; 01 df
B0_7f12:		ora ($c4, x)	; 01 c4
B0_7f14:		ora ($ab, x)	; 01 ab
B0_7f16:		ora ($93, x)	; 01 93
B0_7f18:		ora ($7c, x)	; 01 7c
B0_7f1a:		ora ($67, x)	; 01 67
B0_7f1c:		ora ($53, x)	; 01 53
B0_7f1e:		ora ($40, x)	; 01 40
B0_7f20:		ora ($2e, x)	; 01 2e
B0_7f22:		ora ($1d, x)	; 01 1d
B0_7f24:		ora ($0d, x)	; 01 0d
B0_7f26:		brk				; 00
B0_7f27:		inc $ef00, x	; fe 00 ef
B0_7f2a:		brk				; 00
B0_7f2b:	.db $e2
B0_7f2c:		brk				; 00
B0_7f2d:		cmp $00, x		; d5 00
B0_7f2f:		cmp #$00		; c9 00
B0_7f31:		ldx $b300, y	; be 00 b3
B0_7f34:		brk				; 00
B0_7f35:		lda #$00		; a9 00
B0_7f37:		ldy #$00		; a0 00
B0_7f39:	.db $97
B0_7f3a:		brk				; 00
B0_7f3b:		stx $8600		; 8e 00 86
B0_7f3e:		brk				; 00
B0_7f3f:	.db $77
B0_7f40:		brk				; 00
B0_7f41:		ror $7100, x	; 7e 00 71
B0_7f44:		brk				; 00
B0_7f45:	.db $54
B0_7f46:		brk				; 00
B0_7f47:	.db $64
B0_7f48:		brk				; 00
B0_7f49:	.db $5f
B0_7f4a:		brk				; 00
B0_7f4b:		eor $5000, y	; 59 00 50
B0_7f4e:		brk				; 00
B0_7f4f:	.db $47
B0_7f50:		brk				; 00
B0_7f51:	.db $43
B0_7f52:		brk				; 00
B0_7f53:	.db $3b
B0_7f54:		brk				; 00
B0_7f55:		and $00, x		; 35 00
B0_7f57:		rol a			; 2a
B0_7f58:		brk				; 00
B0_7f59:	.db $23
B0_7f5a:	.db $04
B0_7f5b:		adc $03, x		; 75 03
B0_7f5d:	.db $57
B0_7f5e:	.db $02
B0_7f5f:		sbc $cf02, y	; f9 02 cf
B0_7f62:		ora ($fc, x)	; 01 fc
B0_7f64:		brk				; 00
B0_7f65:		ror a			; 6a
B0_7f66:		ora $0a			; 05 0a
B0_7f68:	.db $14
B0_7f69:		plp				; 28 
B0_7f6a:		bvc B0_7f8a ; 50 1e
B0_7f6c:	.db $3c
B0_7f6d:	.db $02
B0_7f6e:	.db $04
B0_7f6f:		php				; 08 
B0_7f70:		bpl B0_7f92 ; 10 20
B0_7f72:		rti				; 40 
B0_7f73:		clc				; 18 
B0_7f74:		bmi B0_7f82 ; 30 0c
B0_7f76:	.db $03
B0_7f77:		asl $0c			; 06 0c
B0_7f79:		clc				; 18 
B0_7f7a:		bmi B0_7f8e ; 30 12
B0_7f7c:		bit $08			; 24 08
B0_7f7e:		rol $03, x		; 36 03
B0_7f80:		ora #$06		; 09 06
B0_7f82:	.db $12
B0_7f83:	.db $1b
B0_7f84:		bit $0c			; 24 0c
B0_7f86:		bit $02			; 24 02
B0_7f88:		asl $04			; 06 04
B0_7f8a:	.db $0c
B0_7f8b:	.db $12
B0_7f8c:		clc				; 18 
B0_7f8d:		php				; 08 
B0_7f8e:	.db $12
B0_7f8f:		ora ($03, x)	; 01 03
B0_7f91:	.db $02
B0_7f92:		asl $09			; 06 09
B0_7f94:	.db $0c
B0_7f95:	.db $04
B0_7f96:		tya				; 98 
B0_7f97:		sta $9b9a, y	; 99 9a 9b
B0_7f9a:		;removed
	.hex  90 94
B0_7f9c:		sty $95, x		; 94 95
B0_7f9e:		sta $96, x		; 95 96
B0_7fa0:	.db $97
B0_7fa1:		tya				; 98 
B0_7fa2:		bcc B0_7f35 ; 90 91
B0_7fa4:	.db $92
B0_7fa5:	.db $92
B0_7fa6:	.db $93
B0_7fa7:	.db $93
B0_7fa8:	.db $93
B0_7fa9:		sty $94, x		; 94 94
B0_7fab:		sty $94, x		; 94 94
B0_7fad:		sty $94, x		; 94 94
B0_7faf:		sta $95, x		; 95 95
B0_7fb1:		sta $95, x		; 95 95
B0_7fb3:		sta $95, x		; 95 95
B0_7fb5:		stx $96, y		; 96 96
B0_7fb7:		stx $96, y		; 96 96
B0_7fb9:		stx $96, y		; 96 96
B0_7fbb:		stx $96, y		; 96 96
B0_7fbd:		stx $96, y		; 96 96
B0_7fbf:		stx $96, y		; 96 96
B0_7fc1:		stx $96, y		; 96 96
B0_7fc3:		stx $96, y		; 96 96
B0_7fc5:		stx $95, y		; 96 95
B0_7fc7:		sta $94, x		; 95 94
B0_7fc9:	.db $93
B0_7fca:		ora $16, x		; 15 16
B0_7fcc:		asl $17, x		; 16 17
B0_7fce:	.db $17
B0_7fcf:		clc				; 18 
B0_7fd0:		ora $1a19, y	; 19 19 1a
B0_7fd3:	.db $1a
B0_7fd4:	.db $1c
B0_7fd5:		ora $1e1d, x	; 1d 1d 1e
B0_7fd8:		asl $1f1f, x	; 1e 1f 1f
B0_7fdb:	.db $1f
B0_7fdc:	.db $1f
B0_7fdd:		asl $1c1d, x	; 1e 1d 1c
B0_7fe0:		asl $1f1f, x	; 1e 1f 1f
B0_7fe3:		asl $1c1d, x	; 1e 1d 1c
B0_7fe6:	.db $1a
B0_7fe7:		clc				; 18 
B0_7fe8:		asl $14, x		; 16 14
B0_7fea:		ora $16, x		; 15 16
B0_7fec:		asl $17, x		; 16 17
B0_7fee:	.db $17
B0_7fef:		clc				; 18 
B0_7ff0:		ora $1a19, y	; 19 19 1a
B0_7ff3:	.db $1a
B0_7ff4:	.db $1c
B0_7ff5:		ora $1e1d, x	; 1d 1d 1e
B0_7ff8:		asl $821f, x	; 1e 1f 82
B0_7ffb:	.db $80
B0_7ffc:		brk				; 00
B0_7ffd:	.db $80
		.db $f0
		.db $ff
