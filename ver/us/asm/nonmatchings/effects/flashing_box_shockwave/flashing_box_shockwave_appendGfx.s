.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel flashing_box_shockwave_appendGfx
/* 392BCC E00942FC 27BDFF08 */  addiu     $sp, $sp, -0xf8
/* 392BD0 E0094300 AFB000D8 */  sw        $s0, 0xd8($sp)
/* 392BD4 E0094304 0080802D */  daddu     $s0, $a0, $zero
/* 392BD8 E0094308 AFB100DC */  sw        $s1, 0xdc($sp)
/* 392BDC E009430C 27B10098 */  addiu     $s1, $sp, 0x98
/* 392BE0 E0094310 3C073F80 */  lui       $a3, 0x3f80
/* 392BE4 E0094314 44800000 */  mtc1      $zero, $f0
/* 392BE8 E0094318 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 392BEC E009431C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 392BF0 E0094320 0220202D */  daddu     $a0, $s1, $zero
/* 392BF4 E0094324 AFB400E8 */  sw        $s4, 0xe8($sp)
/* 392BF8 E0094328 3C140001 */  lui       $s4, 1
/* 392BFC E009432C AFBF00F4 */  sw        $ra, 0xf4($sp)
/* 392C00 E0094330 AFB600F0 */  sw        $s6, 0xf0($sp)
/* 392C04 E0094334 AFB500EC */  sw        $s5, 0xec($sp)
/* 392C08 E0094338 AFB300E4 */  sw        $s3, 0xe4($sp)
/* 392C0C E009433C AFB200E0 */  sw        $s2, 0xe0($sp)
/* 392C10 E0094340 8E12000C */  lw        $s2, 0xc($s0)
/* 392C14 E0094344 00031080 */  sll       $v0, $v1, 2
/* 392C18 E0094348 00431021 */  addu      $v0, $v0, $v1
/* 392C1C E009434C 00021080 */  sll       $v0, $v0, 2
/* 392C20 E0094350 00431023 */  subu      $v0, $v0, $v1
/* 392C24 E0094354 000218C0 */  sll       $v1, $v0, 3
/* 392C28 E0094358 00431021 */  addu      $v0, $v0, $v1
/* 392C2C E009435C 000210C0 */  sll       $v0, $v0, 3
/* 392C30 E0094360 44060000 */  mfc1      $a2, $f0
/* 392C34 E0094364 8E550000 */  lw        $s5, ($s2)
/* 392C38 E0094368 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* 392C3C E009436C 00220821 */  addu      $at, $at, $v0
/* 392C40 E0094370 C4201DEC */  lwc1      $f0, %lo(gCameras+0x6C)($at)
/* 392C44 E0094374 8E560020 */  lw        $s6, 0x20($s2)
/* 392C48 E0094378 46000007 */  neg.s     $f0, $f0
/* 392C4C E009437C 44050000 */  mfc1      $a1, $f0
/* 392C50 E0094380 36941630 */  ori       $s4, $s4, 0x1630
/* 392C54 E0094384 0C080104 */  jal       shim_guRotateF
/* 392C58 E0094388 AFA60010 */   sw       $a2, 0x10($sp)
/* 392C5C E009438C 3C04DB06 */  lui       $a0, 0xdb06
/* 392C60 E0094390 3C13800A */  lui       $s3, %hi(gMasterGfxPos)
/* 392C64 E0094394 2673A66C */  addiu     $s3, $s3, %lo(gMasterGfxPos)
/* 392C68 E0094398 34840024 */  ori       $a0, $a0, 0x24
/* 392C6C E009439C 8E680000 */  lw        $t0, ($s3)
/* 392C70 E00943A0 3C02E700 */  lui       $v0, 0xe700
/* 392C74 E00943A4 0100182D */  daddu     $v1, $t0, $zero
/* 392C78 E00943A8 25080008 */  addiu     $t0, $t0, 8
/* 392C7C E00943AC AC620000 */  sw        $v0, ($v1)
/* 392C80 E00943B0 AC600004 */  sw        $zero, 4($v1)
/* 392C84 E00943B4 AD040000 */  sw        $a0, ($t0)
/* 392C88 E00943B8 8E020010 */  lw        $v0, 0x10($s0)
/* 392C8C E00943BC 27A40018 */  addiu     $a0, $sp, 0x18
/* 392C90 E00943C0 AE680000 */  sw        $t0, ($s3)
/* 392C94 E00943C4 8C42001C */  lw        $v0, 0x1c($v0)
/* 392C98 E00943C8 3C038000 */  lui       $v1, 0x8000
/* 392C9C E00943CC 00431021 */  addu      $v0, $v0, $v1
/* 392CA0 E00943D0 AD020004 */  sw        $v0, 4($t0)
/* 392CA4 E00943D4 8E450004 */  lw        $a1, 4($s2)
/* 392CA8 E00943D8 8E460008 */  lw        $a2, 8($s2)
/* 392CAC E00943DC 8E47000C */  lw        $a3, 0xc($s2)
/* 392CB0 E00943E0 25080008 */  addiu     $t0, $t0, 8
/* 392CB4 E00943E4 0C080108 */  jal       shim_guTranslateF
/* 392CB8 E00943E8 AE680000 */   sw       $t0, ($s3)
/* 392CBC E00943EC 0220202D */  daddu     $a0, $s1, $zero
/* 392CC0 E00943F0 27A50018 */  addiu     $a1, $sp, 0x18
/* 392CC4 E00943F4 0C080114 */  jal       shim_guMtxCatF
/* 392CC8 E00943F8 00A0302D */   daddu    $a2, $a1, $zero
/* 392CCC E00943FC 27A40018 */  addiu     $a0, $sp, 0x18
/* 392CD0 E0094400 3C108007 */  lui       $s0, %hi(gMatrixListPos)
/* 392CD4 E0094404 261041F0 */  addiu     $s0, $s0, %lo(gMatrixListPos)
/* 392CD8 E0094408 3C11800A */  lui       $s1, %hi(gDisplayContext)
/* 392CDC E009440C 2631A674 */  addiu     $s1, $s1, %lo(gDisplayContext)
/* 392CE0 E0094410 96050000 */  lhu       $a1, ($s0)
/* 392CE4 E0094414 8E220000 */  lw        $v0, ($s1)
/* 392CE8 E0094418 00052980 */  sll       $a1, $a1, 6
/* 392CEC E009441C 00B42821 */  addu      $a1, $a1, $s4
/* 392CF0 E0094420 0C080118 */  jal       shim_guMtxF2L
/* 392CF4 E0094424 00452821 */   addu     $a1, $v0, $a1
/* 392CF8 E0094428 3C03DA38 */  lui       $v1, 0xda38
/* 392CFC E009442C 34630002 */  ori       $v1, $v1, 2
/* 392D00 E0094430 8E660000 */  lw        $a2, ($s3)
/* 392D04 E0094434 96020000 */  lhu       $v0, ($s0)
/* 392D08 E0094438 00C0202D */  daddu     $a0, $a2, $zero
/* 392D0C E009443C 24C60008 */  addiu     $a2, $a2, 8
/* 392D10 E0094440 AE660000 */  sw        $a2, ($s3)
/* 392D14 E0094444 AC830000 */  sw        $v1, ($a0)
/* 392D18 E0094448 24430001 */  addiu     $v1, $v0, 1
/* 392D1C E009444C 3042FFFF */  andi      $v0, $v0, 0xffff
/* 392D20 E0094450 00021180 */  sll       $v0, $v0, 6
/* 392D24 E0094454 A6030000 */  sh        $v1, ($s0)
/* 392D28 E0094458 8E230000 */  lw        $v1, ($s1)
/* 392D2C E009445C 00541021 */  addu      $v0, $v0, $s4
/* 392D30 E0094460 00621821 */  addu      $v1, $v1, $v0
/* 392D34 E0094464 24C20008 */  addiu     $v0, $a2, 8
/* 392D38 E0094468 AC830004 */  sw        $v1, 4($a0)
/* 392D3C E009446C AE620000 */  sw        $v0, ($s3)
/* 392D40 E0094470 3C02FA00 */  lui       $v0, 0xfa00
/* 392D44 E0094474 ACC20000 */  sw        $v0, ($a2)
/* 392D48 E0094478 92420033 */  lbu       $v0, 0x33($s2)
/* 392D4C E009447C 92440037 */  lbu       $a0, 0x37($s2)
/* 392D50 E0094480 9245003B */  lbu       $a1, 0x3b($s2)
/* 392D54 E0094484 9247001B */  lbu       $a3, 0x1b($s2)
/* 392D58 E0094488 24C30010 */  addiu     $v1, $a2, 0x10
/* 392D5C E009448C AE630000 */  sw        $v1, ($s3)
/* 392D60 E0094490 3C03FB00 */  lui       $v1, 0xfb00
/* 392D64 E0094494 ACC30008 */  sw        $v1, 8($a2)
/* 392D68 E0094498 00021600 */  sll       $v0, $v0, 0x18
/* 392D6C E009449C 00042400 */  sll       $a0, $a0, 0x10
/* 392D70 E00944A0 00441025 */  or        $v0, $v0, $a0
/* 392D74 E00944A4 00052A00 */  sll       $a1, $a1, 8
/* 392D78 E00944A8 00451025 */  or        $v0, $v0, $a1
/* 392D7C E00944AC 00471025 */  or        $v0, $v0, $a3
/* 392D80 E00944B0 ACC20004 */  sw        $v0, 4($a2)
/* 392D84 E00944B4 9242003F */  lbu       $v0, 0x3f($s2)
/* 392D88 E00944B8 92440043 */  lbu       $a0, 0x43($s2)
/* 392D8C E00944BC 92430047 */  lbu       $v1, 0x47($s2)
/* 392D90 E00944C0 00021600 */  sll       $v0, $v0, 0x18
/* 392D94 E00944C4 00042400 */  sll       $a0, $a0, 0x10
/* 392D98 E00944C8 00441025 */  or        $v0, $v0, $a0
/* 392D9C E00944CC 00031A00 */  sll       $v1, $v1, 8
/* 392DA0 E00944D0 00431025 */  or        $v0, $v0, $v1
/* 392DA4 E00944D4 ACC2000C */  sw        $v0, 0xc($a2)
/* 392DA8 E00944D8 2EA20002 */  sltiu     $v0, $s5, 2
/* 392DAC E00944DC 10400041 */  beqz      $v0, .LE00945E4
/* 392DB0 E00944E0 32C20001 */   andi     $v0, $s6, 1
/* 392DB4 E00944E4 10400040 */  beqz      $v0, .LE00945E8
/* 392DB8 E00944E8 26A2FFFF */   addiu    $v0, $s5, -1
/* 392DBC E00944EC 8E450028 */  lw        $a1, 0x28($s2)
/* 392DC0 E00944F0 8E46002C */  lw        $a2, 0x2c($s2)
/* 392DC4 E00944F4 3C073F89 */  lui       $a3, 0x3f89
/* 392DC8 E00944F8 34E72492 */  ori       $a3, $a3, 0x2492
/* 392DCC E00944FC 0C080110 */  jal       shim_guScaleF
/* 392DD0 E0094500 27A40018 */   addiu    $a0, $sp, 0x18
/* 392DD4 E0094504 27A40018 */  addiu     $a0, $sp, 0x18
/* 392DD8 E0094508 96050000 */  lhu       $a1, ($s0)
/* 392DDC E009450C 8E220000 */  lw        $v0, ($s1)
/* 392DE0 E0094510 00052980 */  sll       $a1, $a1, 6
/* 392DE4 E0094514 00B42821 */  addu      $a1, $a1, $s4
/* 392DE8 E0094518 0C080118 */  jal       shim_guMtxF2L
/* 392DEC E009451C 00452821 */   addu     $a1, $v0, $a1
/* 392DF0 E0094520 3C08D838 */  lui       $t0, 0xd838
/* 392DF4 E0094524 35080002 */  ori       $t0, $t0, 2
/* 392DF8 E0094528 3C03DA38 */  lui       $v1, 0xda38
/* 392DFC E009452C 8E660000 */  lw        $a2, ($s3)
/* 392E00 E0094530 3C07DE00 */  lui       $a3, 0xde00
/* 392E04 E0094534 00C0202D */  daddu     $a0, $a2, $zero
/* 392E08 E0094538 24C60008 */  addiu     $a2, $a2, 8
/* 392E0C E009453C AE660000 */  sw        $a2, ($s3)
/* 392E10 E0094540 96020000 */  lhu       $v0, ($s0)
/* 392E14 E0094544 3C05F200 */  lui       $a1, 0xf200
/* 392E18 E0094548 AC830000 */  sw        $v1, ($a0)
/* 392E1C E009454C 24430001 */  addiu     $v1, $v0, 1
/* 392E20 E0094550 3042FFFF */  andi      $v0, $v0, 0xffff
/* 392E24 E0094554 00021180 */  sll       $v0, $v0, 6
/* 392E28 E0094558 A6030000 */  sh        $v1, ($s0)
/* 392E2C E009455C 8E230000 */  lw        $v1, ($s1)
/* 392E30 E0094560 00541021 */  addu      $v0, $v0, $s4
/* 392E34 E0094564 00621821 */  addu      $v1, $v1, $v0
/* 392E38 E0094568 24C20008 */  addiu     $v0, $a2, 8
/* 392E3C E009456C AC830004 */  sw        $v1, 4($a0)
/* 392E40 E0094570 AE620000 */  sw        $v0, ($s3)
/* 392E44 E0094574 3C020900 */  lui       $v0, 0x900
/* 392E48 E0094578 24420600 */  addiu     $v0, $v0, 0x600
/* 392E4C E009457C ACC20004 */  sw        $v0, 4($a2)
/* 392E50 E0094580 24C20010 */  addiu     $v0, $a2, 0x10
/* 392E54 E0094584 001618C0 */  sll       $v1, $s6, 3
/* 392E58 E0094588 ACC70000 */  sw        $a3, ($a2)
/* 392E5C E009458C AE620000 */  sw        $v0, ($s3)
/* 392E60 E0094590 30620FFF */  andi      $v0, $v1, 0xfff
/* 392E64 E0094594 00022300 */  sll       $a0, $v0, 0xc
/* 392E68 E0094598 00451025 */  or        $v0, $v0, $a1
/* 392E6C E009459C 00822025 */  or        $a0, $a0, $v0
/* 392E70 E00945A0 24630080 */  addiu     $v1, $v1, 0x80
/* 392E74 E00945A4 30630FFF */  andi      $v1, $v1, 0xfff
/* 392E78 E00945A8 00031300 */  sll       $v0, $v1, 0xc
/* 392E7C E00945AC 00431025 */  or        $v0, $v0, $v1
/* 392E80 E00945B0 ACC2000C */  sw        $v0, 0xc($a2)
/* 392E84 E00945B4 24C20018 */  addiu     $v0, $a2, 0x18
/* 392E88 E00945B8 ACC40008 */  sw        $a0, 8($a2)
/* 392E8C E00945BC AE620000 */  sw        $v0, ($s3)
/* 392E90 E00945C0 3C020900 */  lui       $v0, 0x900
/* 392E94 E00945C4 244208E8 */  addiu     $v0, $v0, 0x8e8
/* 392E98 E00945C8 ACC20014 */  sw        $v0, 0x14($a2)
/* 392E9C E00945CC 24C20020 */  addiu     $v0, $a2, 0x20
/* 392EA0 E00945D0 ACC70010 */  sw        $a3, 0x10($a2)
/* 392EA4 E00945D4 AE620000 */  sw        $v0, ($s3)
/* 392EA8 E00945D8 24020040 */  addiu     $v0, $zero, 0x40
/* 392EAC E00945DC ACC80018 */  sw        $t0, 0x18($a2)
/* 392EB0 E00945E0 ACC2001C */  sw        $v0, 0x1c($a2)
.LE00945E4:
/* 392EB4 E00945E4 26A2FFFF */  addiu     $v0, $s5, -1
.LE00945E8:
/* 392EB8 E00945E8 2C420003 */  sltiu     $v0, $v0, 3
/* 392EBC E00945EC 10400059 */  beqz      $v0, .LE0094754
/* 392EC0 E00945F0 24020001 */   addiu    $v0, $zero, 1
/* 392EC4 E00945F4 16A2000D */  bne       $s5, $v0, .LE009462C
/* 392EC8 E00945F8 00000000 */   nop
/* 392ECC E00945FC 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* 392ED0 E0094600 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 392ED4 E0094604 8C620000 */  lw        $v0, ($v1)
/* 392ED8 E0094608 0040202D */  daddu     $a0, $v0, $zero
/* 392EDC E009460C 24420008 */  addiu     $v0, $v0, 8
/* 392EE0 E0094610 AC620000 */  sw        $v0, ($v1)
/* 392EE4 E0094614 3C02FA00 */  lui       $v0, 0xfa00
/* 392EE8 E0094618 AC820000 */  sw        $v0, ($a0)
/* 392EEC E009461C 92420017 */  lbu       $v0, 0x17($s2)
/* 392EF0 E0094620 3C03FFFF */  lui       $v1, 0xffff
/* 392EF4 E0094624 00431025 */  or        $v0, $v0, $v1
/* 392EF8 E0094628 AC820004 */  sw        $v0, 4($a0)
.LE009462C:
/* 392EFC E009462C 44800000 */  mtc1      $zero, $f0
/* 392F00 E0094630 27A40018 */  addiu     $a0, $sp, 0x18
/* 392F04 E0094634 44050000 */  mfc1      $a1, $f0
/* 392F08 E0094638 8E46002C */  lw        $a2, 0x2c($s2)
/* 392F0C E009463C 0C080108 */  jal       shim_guTranslateF
/* 392F10 E0094640 00A0382D */   daddu    $a3, $a1, $zero
/* 392F14 E0094644 C6400024 */  lwc1      $f0, 0x24($s2)
/* 392F18 E0094648 3C013FD0 */  lui       $at, 0x3fd0
/* 392F1C E009464C 44811800 */  mtc1      $at, $f3
/* 392F20 E0094650 44801000 */  mtc1      $zero, $f2
/* 392F24 E0094654 46000021 */  cvt.d.s   $f0, $f0
/* 392F28 E0094658 46220002 */  mul.d     $f0, $f0, $f2
/* 392F2C E009465C 00000000 */  nop
/* 392F30 E0094660 3C120001 */  lui       $s2, 1
/* 392F34 E0094664 36521630 */  ori       $s2, $s2, 0x1630
/* 392F38 E0094668 27B00058 */  addiu     $s0, $sp, 0x58
/* 392F3C E009466C 0200202D */  daddu     $a0, $s0, $zero
/* 392F40 E0094670 46200020 */  cvt.s.d   $f0, $f0
/* 392F44 E0094674 44050000 */  mfc1      $a1, $f0
/* 392F48 E0094678 3C073F80 */  lui       $a3, 0x3f80
/* 392F4C E009467C 0C080110 */  jal       shim_guScaleF
/* 392F50 E0094680 00A0302D */   daddu    $a2, $a1, $zero
/* 392F54 E0094684 0200202D */  daddu     $a0, $s0, $zero
/* 392F58 E0094688 27A50018 */  addiu     $a1, $sp, 0x18
/* 392F5C E009468C 0C080114 */  jal       shim_guMtxCatF
/* 392F60 E0094690 00A0302D */   daddu    $a2, $a1, $zero
/* 392F64 E0094694 27A40018 */  addiu     $a0, $sp, 0x18
/* 392F68 E0094698 3C108007 */  lui       $s0, %hi(gMatrixListPos)
/* 392F6C E009469C 261041F0 */  addiu     $s0, $s0, %lo(gMatrixListPos)
/* 392F70 E00946A0 3C11800A */  lui       $s1, %hi(gDisplayContext)
/* 392F74 E00946A4 2631A674 */  addiu     $s1, $s1, %lo(gDisplayContext)
/* 392F78 E00946A8 96050000 */  lhu       $a1, ($s0)
/* 392F7C E00946AC 8E220000 */  lw        $v0, ($s1)
/* 392F80 E00946B0 00052980 */  sll       $a1, $a1, 6
/* 392F84 E00946B4 00B22821 */  addu      $a1, $a1, $s2
/* 392F88 E00946B8 0C080118 */  jal       shim_guMtxF2L
/* 392F8C E00946BC 00452821 */   addu     $a1, $v0, $a1
/* 392F90 E00946C0 3C07D838 */  lui       $a3, 0xd838
/* 392F94 E00946C4 3C05800A */  lui       $a1, %hi(gMasterGfxPos)
/* 392F98 E00946C8 24A5A66C */  addiu     $a1, $a1, %lo(gMasterGfxPos)
/* 392F9C E00946CC 8CA40000 */  lw        $a0, ($a1)
/* 392FA0 E00946D0 34E70002 */  ori       $a3, $a3, 2
/* 392FA4 E00946D4 0080302D */  daddu     $a2, $a0, $zero
/* 392FA8 E00946D8 24840008 */  addiu     $a0, $a0, 8
/* 392FAC E00946DC ACA40000 */  sw        $a0, ($a1)
/* 392FB0 E00946E0 96020000 */  lhu       $v0, ($s0)
/* 392FB4 E00946E4 3C03DA38 */  lui       $v1, 0xda38
/* 392FB8 E00946E8 ACC30000 */  sw        $v1, ($a2)
/* 392FBC E00946EC 24430001 */  addiu     $v1, $v0, 1
/* 392FC0 E00946F0 3042FFFF */  andi      $v0, $v0, 0xffff
/* 392FC4 E00946F4 00021180 */  sll       $v0, $v0, 6
/* 392FC8 E00946F8 A6030000 */  sh        $v1, ($s0)
/* 392FCC E00946FC 8E230000 */  lw        $v1, ($s1)
/* 392FD0 E0094700 00521021 */  addu      $v0, $v0, $s2
/* 392FD4 E0094704 00621821 */  addu      $v1, $v1, $v0
/* 392FD8 E0094708 24820008 */  addiu     $v0, $a0, 8
/* 392FDC E009470C ACC30004 */  sw        $v1, 4($a2)
/* 392FE0 E0094710 3C03DE00 */  lui       $v1, 0xde00
/* 392FE4 E0094714 ACA20000 */  sw        $v0, ($a1)
/* 392FE8 E0094718 3C020900 */  lui       $v0, 0x900
/* 392FEC E009471C 24420950 */  addiu     $v0, $v0, 0x950
/* 392FF0 E0094720 AC820004 */  sw        $v0, 4($a0)
/* 392FF4 E0094724 24820010 */  addiu     $v0, $a0, 0x10
/* 392FF8 E0094728 AC830000 */  sw        $v1, ($a0)
/* 392FFC E009472C ACA20000 */  sw        $v0, ($a1)
/* 393000 E0094730 3C020900 */  lui       $v0, 0x900
/* 393004 E0094734 24420FF8 */  addiu     $v0, $v0, 0xff8
/* 393008 E0094738 AC82000C */  sw        $v0, 0xc($a0)
/* 39300C E009473C 24820018 */  addiu     $v0, $a0, 0x18
/* 393010 E0094740 AC830008 */  sw        $v1, 8($a0)
/* 393014 E0094744 ACA20000 */  sw        $v0, ($a1)
/* 393018 E0094748 24020040 */  addiu     $v0, $zero, 0x40
/* 39301C E009474C AC870010 */  sw        $a3, 0x10($a0)
/* 393020 E0094750 AC820014 */  sw        $v0, 0x14($a0)
.LE0094754:
/* 393024 E0094754 3C05D838 */  lui       $a1, 0xd838
/* 393028 E0094758 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* 39302C E009475C 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 393030 E0094760 8C620000 */  lw        $v0, ($v1)
/* 393034 E0094764 34A50002 */  ori       $a1, $a1, 2
/* 393038 E0094768 0040202D */  daddu     $a0, $v0, $zero
/* 39303C E009476C 24420008 */  addiu     $v0, $v0, 8
/* 393040 E0094770 AC620000 */  sw        $v0, ($v1)
/* 393044 E0094774 24020040 */  addiu     $v0, $zero, 0x40
/* 393048 E0094778 AC850000 */  sw        $a1, ($a0)
/* 39304C E009477C AC820004 */  sw        $v0, 4($a0)
/* 393050 E0094780 8FBF00F4 */  lw        $ra, 0xf4($sp)
/* 393054 E0094784 8FB600F0 */  lw        $s6, 0xf0($sp)
/* 393058 E0094788 8FB500EC */  lw        $s5, 0xec($sp)
/* 39305C E009478C 8FB400E8 */  lw        $s4, 0xe8($sp)
/* 393060 E0094790 8FB300E4 */  lw        $s3, 0xe4($sp)
/* 393064 E0094794 8FB200E0 */  lw        $s2, 0xe0($sp)
/* 393068 E0094798 8FB100DC */  lw        $s1, 0xdc($sp)
/* 39306C E009479C 8FB000D8 */  lw        $s0, 0xd8($sp)
/* 393070 E00947A0 03E00008 */  jr        $ra
/* 393074 E00947A4 27BD00F8 */   addiu    $sp, $sp, 0xf8
/* 393078 E00947A8 00000000 */  nop
/* 39307C E00947AC 00000000 */  nop
