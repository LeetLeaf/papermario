.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800372C8
/* 126C8 800372C8 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 126CC 800372CC 8C42417C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 126D0 800372D0 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 126D4 800372D4 AFBF0030 */  sw        $ra, 0x30($sp)
/* 126D8 800372D8 AFB7002C */  sw        $s7, 0x2c($sp)
/* 126DC 800372DC AFB60028 */  sw        $s6, 0x28($sp)
/* 126E0 800372E0 AFB50024 */  sw        $s5, 0x24($sp)
/* 126E4 800372E4 AFB40020 */  sw        $s4, 0x20($sp)
/* 126E8 800372E8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 126EC 800372EC AFB20018 */  sw        $s2, 0x18($sp)
/* 126F0 800372F0 AFB10014 */  sw        $s1, 0x14($sp)
/* 126F4 800372F4 AFB00010 */  sw        $s0, 0x10($sp)
/* 126F8 800372F8 804300AC */  lb        $v1, 0xac($v0)
/* 126FC 800372FC 2C620006 */  sltiu     $v0, $v1, 6
/* 12700 80037300 10400029 */  beqz      $v0, .L800373A8
/* 12704 80037304 00031080 */   sll      $v0, $v1, 2
/* 12708 80037308 3C01800A */  lui       $at, %hi(D_800983C0)
/* 1270C 8003730C 00220821 */  addu      $at, $at, $v0
/* 12710 80037310 8C2283C0 */  lw        $v0, %lo(D_800983C0)($at)
/* 12714 80037314 00400008 */  jr        $v0
/* 12718 80037318 00000000 */   nop
/* 1271C 8003731C 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 12720 80037320 8C42417C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 12724 80037324 804300AF */  lb        $v1, 0xaf($v0)
/* 12728 80037328 804200B0 */  lb        $v0, 0xb0($v0)
/* 1272C 8003732C 44836000 */  mtc1      $v1, $f12
/* 12730 80037330 00000000 */  nop
/* 12734 80037334 46806320 */  cvt.s.w   $f12, $f12
/* 12738 80037338 44820000 */  mtc1      $v0, $f0
/* 1273C 8003733C 00000000 */  nop
/* 12740 80037340 46800020 */  cvt.s.w   $f0, $f0
/* 12744 80037344 0800DCE6 */  j         .L80037398
/* 12748 80037348 46006303 */   div.s    $f12, $f12, $f0
/* 1274C 8003734C 44806000 */  mtc1      $zero, $f12
/* 12750 80037350 0800DCE8 */  j         .L800373A0
/* 12754 80037354 00000000 */   nop
/* 12758 80037358 44806000 */  mtc1      $zero, $f12
/* 1275C 8003735C 0800DCE8 */  j         .L800373A0
/* 12760 80037360 00000000 */   nop
/* 12764 80037364 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 12768 80037368 8C63417C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 1276C 8003736C 806200AF */  lb        $v0, 0xaf($v1)
/* 12770 80037370 806300B0 */  lb        $v1, 0xb0($v1)
/* 12774 80037374 2442FFFF */  addiu     $v0, $v0, -1
/* 12778 80037378 00621023 */  subu      $v0, $v1, $v0
/* 1277C 8003737C 44826000 */  mtc1      $v0, $f12
/* 12780 80037380 00000000 */  nop
/* 12784 80037384 46806320 */  cvt.s.w   $f12, $f12
/* 12788 80037388 44830000 */  mtc1      $v1, $f0
/* 1278C 8003738C 00000000 */  nop
/* 12790 80037390 46800020 */  cvt.s.w   $f0, $f0
/* 12794 80037394 46006303 */  div.s     $f12, $f12, $f0
.L80037398:
/* 12798 80037398 460C6302 */  mul.s     $f12, $f12, $f12
/* 1279C 8003739C 00000000 */  nop
.L800373A0:
/* 127A0 800373A0 0C00DD7E */  jal       func_800375F8
/* 127A4 800373A4 46006386 */   mov.s    $f14, $f12
.L800373A8:
/* 127A8 800373A8 3C03FF10 */  lui       $v1, 0xff10
/* 127AC 800373AC 3463013F */  ori       $v1, $v1, 0x13f
/* 127B0 800373B0 3C10800A */  lui       $s0, %hi(D_8009A64C)
/* 127B4 800373B4 2610A64C */  addiu     $s0, $s0, %lo(D_8009A64C)
/* 127B8 800373B8 3C12E700 */  lui       $s2, 0xe700
/* 127BC 800373BC 8E110000 */  lw        $s1, ($s0)
/* 127C0 800373C0 3C04800A */  lui       $a0, %hi(D_8009A62C)
/* 127C4 800373C4 8C84A62C */  lw        $a0, %lo(D_8009A62C)($a0)
/* 127C8 800373C8 0220102D */  daddu     $v0, $s1, $zero
/* 127CC 800373CC 26310008 */  addiu     $s1, $s1, 8
/* 127D0 800373D0 AE110000 */  sw        $s1, ($s0)
/* 127D4 800373D4 AC520000 */  sw        $s2, ($v0)
/* 127D8 800373D8 AC400004 */  sw        $zero, 4($v0)
/* 127DC 800373DC 26220008 */  addiu     $v0, $s1, 8
/* 127E0 800373E0 AE020000 */  sw        $v0, ($s0)
/* 127E4 800373E4 0C018798 */  jal       func_80061E60
/* 127E8 800373E8 AE230000 */   sw       $v1, ($s1)
/* 127EC 800373EC 3C060050 */  lui       $a2, 0x50
/* 127F0 800373F0 34C603C0 */  ori       $a2, $a2, 0x3c0
/* 127F4 800373F4 3C07E300 */  lui       $a3, 0xe300
/* 127F8 800373F8 34E70A01 */  ori       $a3, $a3, 0xa01
/* 127FC 800373FC 3C08D9C0 */  lui       $t0, 0xd9c0
/* 12800 80037400 3508F9FA */  ori       $t0, $t0, 0xf9fa
/* 12804 80037404 3C0AD9FF */  lui       $t2, 0xd9ff
/* 12808 80037408 354AFFFF */  ori       $t2, $t2, 0xffff
/* 1280C 8003740C 3C090022 */  lui       $t1, 0x22
/* 12810 80037410 35290005 */  ori       $t1, $t1, 5
/* 12814 80037414 3C0BDC08 */  lui       $t3, 0xdc08
/* 12818 80037418 356B060A */  ori       $t3, $t3, 0x60a
/* 1281C 8003741C 3C0CDC08 */  lui       $t4, 0xdc08
/* 12820 80037420 358C090A */  ori       $t4, $t4, 0x90a
/* 12824 80037424 3C0DD700 */  lui       $t5, 0xd700
/* 12828 80037428 35AD0002 */  ori       $t5, $t5, 2
/* 1282C 8003742C 3C0EE300 */  lui       $t6, 0xe300
/* 12830 80037430 35CE0F00 */  ori       $t6, $t6, 0xf00
/* 12834 80037434 3C0FE300 */  lui       $t7, 0xe300
/* 12838 80037438 35EF0C00 */  ori       $t7, $t7, 0xc00
/* 1283C 8003743C 3C13E300 */  lui       $s3, 0xe300
/* 12840 80037440 36731201 */  ori       $s3, $s3, 0x1201
/* 12844 80037444 3C14E300 */  lui       $s4, 0xe300
/* 12848 80037448 36941801 */  ori       $s4, $s4, 0x1801
/* 1284C 8003744C 3C15E300 */  lui       $s5, 0xe300
/* 12850 80037450 36B50D01 */  ori       $s5, $s5, 0xd01
/* 12854 80037454 3C16E300 */  lui       $s6, 0xe300
/* 12858 80037458 36D61402 */  ori       $s6, $s6, 0x1402
/* 1285C 8003745C 3C17E300 */  lui       $s7, 0xe300
/* 12860 80037460 36F71700 */  ori       $s7, $s7, 0x1700
/* 12864 80037464 3C18E200 */  lui       $t8, 0xe200
/* 12868 80037468 37181E01 */  ori       $t8, $t8, 0x1e01
/* 1286C 8003746C 8E030000 */  lw        $v1, ($s0)
/* 12870 80037470 0000202D */  daddu     $a0, $zero, $zero
/* 12874 80037474 AE220004 */  sw        $v0, 4($s1)
/* 12878 80037478 3C02ED00 */  lui       $v0, 0xed00
/* 1287C 8003747C 0060282D */  daddu     $a1, $v1, $zero
/* 12880 80037480 24630008 */  addiu     $v1, $v1, 8
/* 12884 80037484 AE030000 */  sw        $v1, ($s0)
/* 12888 80037488 ACA20000 */  sw        $v0, ($a1)
/* 1288C 8003748C 24620008 */  addiu     $v0, $v1, 8
/* 12890 80037490 ACA60004 */  sw        $a2, 4($a1)
/* 12894 80037494 AE020000 */  sw        $v0, ($s0)
/* 12898 80037498 24620010 */  addiu     $v0, $v1, 0x10
/* 1289C 8003749C AC670000 */  sw        $a3, ($v1)
/* 128A0 800374A0 AC600004 */  sw        $zero, 4($v1)
/* 128A4 800374A4 AE020000 */  sw        $v0, ($s0)
/* 128A8 800374A8 24620018 */  addiu     $v0, $v1, 0x18
/* 128AC 800374AC AC720008 */  sw        $s2, 8($v1)
/* 128B0 800374B0 AC60000C */  sw        $zero, 0xc($v1)
/* 128B4 800374B4 AE020000 */  sw        $v0, ($s0)
/* 128B8 800374B8 24620020 */  addiu     $v0, $v1, 0x20
/* 128BC 800374BC AC680010 */  sw        $t0, 0x10($v1)
/* 128C0 800374C0 AC600014 */  sw        $zero, 0x14($v1)
/* 128C4 800374C4 AE020000 */  sw        $v0, ($s0)
/* 128C8 800374C8 24620028 */  addiu     $v0, $v1, 0x28
/* 128CC 800374CC AC6A0018 */  sw        $t2, 0x18($v1)
/* 128D0 800374D0 AC69001C */  sw        $t1, 0x1c($v1)
/* 128D4 800374D4 AE020000 */  sw        $v0, ($s0)
/* 128D8 800374D8 3C02DB02 */  lui       $v0, 0xdb02
/* 128DC 800374DC AC620020 */  sw        $v0, 0x20($v1)
/* 128E0 800374E0 24020018 */  addiu     $v0, $zero, 0x18
/* 128E4 800374E4 AC620024 */  sw        $v0, 0x24($v1)
/* 128E8 800374E8 24620030 */  addiu     $v0, $v1, 0x30
/* 128EC 800374EC 3C058007 */  lui       $a1, %hi(D_80077A10)
/* 128F0 800374F0 24A57A10 */  addiu     $a1, $a1, %lo(D_80077A10)
/* 128F4 800374F4 AE020000 */  sw        $v0, ($s0)
/* 128F8 800374F8 24620038 */  addiu     $v0, $v1, 0x38
/* 128FC 800374FC AC65002C */  sw        $a1, 0x2c($v1)
/* 12900 80037500 24A5FFF8 */  addiu     $a1, $a1, -8
/* 12904 80037504 AC6B0028 */  sw        $t3, 0x28($v1)
/* 12908 80037508 AE020000 */  sw        $v0, ($s0)
/* 1290C 8003750C 24620040 */  addiu     $v0, $v1, 0x40
/* 12910 80037510 AC6C0030 */  sw        $t4, 0x30($v1)
/* 12914 80037514 AC650034 */  sw        $a1, 0x34($v1)
/* 12918 80037518 AE020000 */  sw        $v0, ($s0)
/* 1291C 8003751C 2402FFFF */  addiu     $v0, $zero, -1
/* 12920 80037520 AC62003C */  sw        $v0, 0x3c($v1)
/* 12924 80037524 24620048 */  addiu     $v0, $v1, 0x48
/* 12928 80037528 AC6D0038 */  sw        $t5, 0x38($v1)
/* 1292C 8003752C AE020000 */  sw        $v0, ($s0)
/* 12930 80037530 24620050 */  addiu     $v0, $v1, 0x50
/* 12934 80037534 AC6E0040 */  sw        $t6, 0x40($v1)
/* 12938 80037538 AC600044 */  sw        $zero, 0x44($v1)
/* 1293C 8003753C AE020000 */  sw        $v0, ($s0)
/* 12940 80037540 3C020008 */  lui       $v0, 8
/* 12944 80037544 AC6F0048 */  sw        $t7, 0x48($v1)
/* 12948 80037548 AC62004C */  sw        $v0, 0x4c($v1)
/* 1294C 8003754C 24620058 */  addiu     $v0, $v1, 0x58
/* 12950 80037550 AE020000 */  sw        $v0, ($s0)
/* 12954 80037554 24022000 */  addiu     $v0, $zero, 0x2000
/* 12958 80037558 AC620054 */  sw        $v0, 0x54($v1)
/* 1295C 8003755C 24620060 */  addiu     $v0, $v1, 0x60
/* 12960 80037560 AC730050 */  sw        $s3, 0x50($v1)
/* 12964 80037564 AE020000 */  sw        $v0, ($s0)
/* 12968 80037568 240200C0 */  addiu     $v0, $zero, 0xc0
/* 1296C 8003756C AC62005C */  sw        $v0, 0x5c($v1)
/* 12970 80037570 24620068 */  addiu     $v0, $v1, 0x68
/* 12974 80037574 AC740058 */  sw        $s4, 0x58($v1)
/* 12978 80037578 AE020000 */  sw        $v0, ($s0)
/* 1297C 8003757C 24620070 */  addiu     $v0, $v1, 0x70
/* 12980 80037580 AC750060 */  sw        $s5, 0x60($v1)
/* 12984 80037584 AC600064 */  sw        $zero, 0x64($v1)
/* 12988 80037588 AE020000 */  sw        $v0, ($s0)
/* 1298C 8003758C 24020C00 */  addiu     $v0, $zero, 0xc00
/* 12990 80037590 AC62006C */  sw        $v0, 0x6c($v1)
/* 12994 80037594 24620078 */  addiu     $v0, $v1, 0x78
/* 12998 80037598 AC760068 */  sw        $s6, 0x68($v1)
/* 1299C 8003759C AE020000 */  sw        $v0, ($s0)
/* 129A0 800375A0 24620080 */  addiu     $v0, $v1, 0x80
/* 129A4 800375A4 AC770070 */  sw        $s7, 0x70($v1)
/* 129A8 800375A8 AC600074 */  sw        $zero, 0x74($v1)
/* 129AC 800375AC AE020000 */  sw        $v0, ($s0)
/* 129B0 800375B0 AC780078 */  sw        $t8, 0x78($v1)
/* 129B4 800375B4 0C00B4F3 */  jal       func_8002D3CC
/* 129B8 800375B8 AC60007C */   sw       $zero, 0x7c($v1)
/* 129BC 800375BC 0C00B4F3 */  jal       func_8002D3CC
/* 129C0 800375C0 24040001 */   addiu    $a0, $zero, 1
/* 129C4 800375C4 8FBF0030 */  lw        $ra, 0x30($sp)
/* 129C8 800375C8 8FB7002C */  lw        $s7, 0x2c($sp)
/* 129CC 800375CC 8FB60028 */  lw        $s6, 0x28($sp)
/* 129D0 800375D0 8FB50024 */  lw        $s5, 0x24($sp)
/* 129D4 800375D4 8FB40020 */  lw        $s4, 0x20($sp)
/* 129D8 800375D8 8FB3001C */  lw        $s3, 0x1c($sp)
/* 129DC 800375DC 8FB20018 */  lw        $s2, 0x18($sp)
/* 129E0 800375E0 8FB10014 */  lw        $s1, 0x14($sp)
/* 129E4 800375E4 8FB00010 */  lw        $s0, 0x10($sp)
/* 129E8 800375E8 03E00008 */  jr        $ra
/* 129EC 800375EC 27BD0038 */   addiu    $sp, $sp, 0x38
