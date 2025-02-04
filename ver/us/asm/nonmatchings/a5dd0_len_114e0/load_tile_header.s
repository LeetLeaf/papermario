.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel load_tile_header
/* AB46C 80114D6C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* AB470 80114D70 AFB40038 */  sw        $s4, 0x38($sp)
/* AB474 80114D74 00A0A02D */  daddu     $s4, $a1, $zero
/* AB478 80114D78 AFBF004C */  sw        $ra, 0x4c($sp)
/* AB47C 80114D7C AFBE0048 */  sw        $fp, 0x48($sp)
/* AB480 80114D80 AFB70044 */  sw        $s7, 0x44($sp)
/* AB484 80114D84 AFB60040 */  sw        $s6, 0x40($sp)
/* AB488 80114D88 AFB5003C */  sw        $s5, 0x3c($sp)
/* AB48C 80114D8C AFB30034 */  sw        $s3, 0x34($sp)
/* AB490 80114D90 AFB20030 */  sw        $s2, 0x30($sp)
/* AB494 80114D94 AFB1002C */  sw        $s1, 0x2c($sp)
/* AB498 80114D98 AFB00028 */  sw        $s0, 0x28($sp)
/* AB49C 80114D9C AFA60058 */  sw        $a2, 0x58($sp)
/* AB4A0 80114DA0 AFA00020 */  sw        $zero, 0x20($sp)
/* AB4A4 80114DA4 8C970008 */  lw        $s7, 8($a0)
/* AB4A8 80114DA8 12E0017B */  beqz      $s7, .L80115398
/* AB4AC 80114DAC 0280F02D */   daddu    $fp, $s4, $zero
/* AB4B0 80114DB0 8FA80058 */  lw        $t0, 0x58($sp)
/* AB4B4 80114DB4 03C81021 */  addu      $v0, $fp, $t0
/* AB4B8 80114DB8 03C2102B */  sltu      $v0, $fp, $v0
/* AB4BC 80114DBC 10400171 */  beqz      $v0, .L80115384
/* AB4C0 80114DC0 24160001 */   addiu    $s6, $zero, 1
/* AB4C4 80114DC4 3C128015 */  lui       $s2, %hi(gCurrentTileDescriptor)
/* AB4C8 80114DC8 26521740 */  addiu     $s2, $s2, %lo(gCurrentTileDescriptor)
/* AB4CC 80114DCC 0280202D */  daddu     $a0, $s4, $zero
.L80114DD0:
/* AB4D0 80114DD0 3C068015 */  lui       $a2, %hi(gCurrentTileDescriptor)
/* AB4D4 80114DD4 24C61740 */  addiu     $a2, $a2, %lo(gCurrentTileDescriptor)
/* AB4D8 80114DD8 0C00A5CF */  jal       dma_copy
/* AB4DC 80114DDC 26850030 */   addiu    $a1, $s4, 0x30
/* AB4E0 80114DE0 96430022 */  lhu       $v1, 0x22($s2)
/* AB4E4 80114DE4 96460026 */  lhu       $a2, 0x26($s2)
/* AB4E8 80114DE8 00660018 */  mult      $v1, $a2
/* AB4EC 80114DEC 9642002C */  lhu       $v0, 0x2c($s2)
/* AB4F0 80114DF0 30420F00 */  andi      $v0, $v0, 0xf00
/* AB4F4 80114DF4 00008012 */  mflo      $s0
/* AB4F8 80114DF8 14400047 */  bnez      $v0, .L80114F18
/* AB4FC 80114DFC 0060382D */   daddu    $a3, $v1, $zero
/* AB500 80114E00 92420029 */  lbu       $v0, 0x29($s2)
/* AB504 80114E04 54560120 */  bnel      $v0, $s6, .L80115288
/* AB508 80114E08 00108042 */   srl      $s0, $s0, 1
/* AB50C 80114E0C 24040002 */  addiu     $a0, $zero, 2
/* AB510 80114E10 14800002 */  bnez      $a0, .L80114E1C
/* AB514 80114E14 0064001A */   div      $zero, $v1, $a0
/* AB518 80114E18 0007000D */  break     7
.L80114E1C:
/* AB51C 80114E1C 2401FFFF */   addiu    $at, $zero, -1
/* AB520 80114E20 14810004 */  bne       $a0, $at, .L80114E34
/* AB524 80114E24 3C018000 */   lui      $at, 0x8000
/* AB528 80114E28 14610002 */  bne       $v1, $at, .L80114E34
/* AB52C 80114E2C 00000000 */   nop
/* AB530 80114E30 0006000D */  break     6
.L80114E34:
/* AB534 80114E34 00001012 */   mflo     $v0
/* AB538 80114E38 28420010 */  slti      $v0, $v0, 0x10
/* AB53C 80114E3C 54400112 */  bnel      $v0, $zero, .L80115288
/* AB540 80114E40 00108042 */   srl      $s0, $s0, 1
.L80114E44:
/* AB544 80114E44 14800002 */  bnez      $a0, .L80114E50
/* AB548 80114E48 00C4001A */   div      $zero, $a2, $a0
/* AB54C 80114E4C 0007000D */  break     7
.L80114E50:
/* AB550 80114E50 2401FFFF */   addiu    $at, $zero, -1
/* AB554 80114E54 14810004 */  bne       $a0, $at, .L80114E68
/* AB558 80114E58 3C018000 */   lui      $at, 0x8000
/* AB55C 80114E5C 14C10002 */  bne       $a2, $at, .L80114E68
/* AB560 80114E60 00000000 */   nop
/* AB564 80114E64 0006000D */  break     6
.L80114E68:
/* AB568 80114E68 00001012 */   mflo     $v0
/* AB56C 80114E6C 58400106 */  blezl     $v0, .L80115288
/* AB570 80114E70 00108042 */   srl      $s0, $s0, 1
/* AB574 80114E74 14800002 */  bnez      $a0, .L80114E80
/* AB578 80114E78 00E4001A */   div      $zero, $a3, $a0
/* AB57C 80114E7C 0007000D */  break     7
.L80114E80:
/* AB580 80114E80 2401FFFF */   addiu    $at, $zero, -1
/* AB584 80114E84 14810004 */  bne       $a0, $at, .L80114E98
/* AB588 80114E88 3C018000 */   lui      $at, 0x8000
/* AB58C 80114E8C 14E10002 */  bne       $a3, $at, .L80114E98
/* AB590 80114E90 00000000 */   nop
/* AB594 80114E94 0006000D */  break     6
.L80114E98:
/* AB598 80114E98 00001012 */   mflo     $v0
/* AB59C 80114E9C 00000000 */  nop
/* AB5A0 80114EA0 00000000 */  nop
/* AB5A4 80114EA4 00460018 */  mult      $v0, $a2
/* AB5A8 80114EA8 00001812 */  mflo      $v1
/* AB5AC 80114EAC 00000000 */  nop
/* AB5B0 80114EB0 14800002 */  bnez      $a0, .L80114EBC
/* AB5B4 80114EB4 0064001A */   div      $zero, $v1, $a0
/* AB5B8 80114EB8 0007000D */  break     7
.L80114EBC:
/* AB5BC 80114EBC 2401FFFF */   addiu    $at, $zero, -1
/* AB5C0 80114EC0 14810004 */  bne       $a0, $at, .L80114ED4
/* AB5C4 80114EC4 3C018000 */   lui      $at, 0x8000
/* AB5C8 80114EC8 14610002 */  bne       $v1, $at, .L80114ED4
/* AB5CC 80114ECC 00000000 */   nop
/* AB5D0 80114ED0 0006000D */  break     6
.L80114ED4:
/* AB5D4 80114ED4 00001812 */   mflo     $v1
/* AB5D8 80114ED8 00042040 */  sll       $a0, $a0, 1
/* AB5DC 80114EDC 14800002 */  bnez      $a0, .L80114EE8
/* AB5E0 80114EE0 00E4001A */   div      $zero, $a3, $a0
/* AB5E4 80114EE4 0007000D */  break     7
.L80114EE8:
/* AB5E8 80114EE8 2401FFFF */   addiu    $at, $zero, -1
/* AB5EC 80114EEC 14810004 */  bne       $a0, $at, .L80114F00
/* AB5F0 80114EF0 3C018000 */   lui      $at, 0x8000
/* AB5F4 80114EF4 14E10002 */  bne       $a3, $at, .L80114F00
/* AB5F8 80114EF8 00000000 */   nop
/* AB5FC 80114EFC 0006000D */  break     6
.L80114F00:
/* AB600 80114F00 00001012 */   mflo     $v0
/* AB604 80114F04 28420010 */  slti      $v0, $v0, 0x10
/* AB608 80114F08 1040FFCE */  beqz      $v0, .L80114E44
/* AB60C 80114F0C 02038021 */   addu     $s0, $s0, $v1
/* AB610 80114F10 080454A2 */  j         .L80115288
/* AB614 80114F14 00108042 */   srl      $s0, $s0, 1
.L80114F18:
/* AB618 80114F18 24080100 */  addiu     $t0, $zero, 0x100
/* AB61C 80114F1C 14480044 */  bne       $v0, $t0, .L80115030
/* AB620 80114F20 00000000 */   nop
/* AB624 80114F24 92420029 */  lbu       $v0, 0x29($s2)
/* AB628 80114F28 145600D7 */  bne       $v0, $s6, .L80115288
/* AB62C 80114F2C 24050002 */   addiu    $a1, $zero, 2
/* AB630 80114F30 14A00002 */  bnez      $a1, .L80114F3C
/* AB634 80114F34 0065001A */   div      $zero, $v1, $a1
/* AB638 80114F38 0007000D */  break     7
.L80114F3C:
/* AB63C 80114F3C 2401FFFF */   addiu    $at, $zero, -1
/* AB640 80114F40 14A10004 */  bne       $a1, $at, .L80114F54
/* AB644 80114F44 3C018000 */   lui      $at, 0x8000
/* AB648 80114F48 14610002 */  bne       $v1, $at, .L80114F54
/* AB64C 80114F4C 00000000 */   nop
/* AB650 80114F50 0006000D */  break     6
.L80114F54:
/* AB654 80114F54 00001012 */   mflo     $v0
.L80114F58:
/* AB658 80114F58 28420008 */  slti      $v0, $v0, 8
/* AB65C 80114F5C 144000CA */  bnez      $v0, .L80115288
/* AB660 80114F60 00000000 */   nop
/* AB664 80114F64 14A00002 */  bnez      $a1, .L80114F70
/* AB668 80114F68 00C5001A */   div      $zero, $a2, $a1
/* AB66C 80114F6C 0007000D */  break     7
.L80114F70:
/* AB670 80114F70 2401FFFF */   addiu    $at, $zero, -1
/* AB674 80114F74 14A10004 */  bne       $a1, $at, .L80114F88
/* AB678 80114F78 3C018000 */   lui      $at, 0x8000
/* AB67C 80114F7C 14C10002 */  bne       $a2, $at, .L80114F88
/* AB680 80114F80 00000000 */   nop
/* AB684 80114F84 0006000D */  break     6
.L80114F88:
/* AB688 80114F88 00001012 */   mflo     $v0
/* AB68C 80114F8C 184000BE */  blez      $v0, .L80115288
/* AB690 80114F90 00000000 */   nop
/* AB694 80114F94 96430022 */  lhu       $v1, 0x22($s2)
/* AB698 80114F98 14A00002 */  bnez      $a1, .L80114FA4
/* AB69C 80114F9C 0065001A */   div      $zero, $v1, $a1
/* AB6A0 80114FA0 0007000D */  break     7
.L80114FA4:
/* AB6A4 80114FA4 2401FFFF */   addiu    $at, $zero, -1
/* AB6A8 80114FA8 14A10004 */  bne       $a1, $at, .L80114FBC
/* AB6AC 80114FAC 3C018000 */   lui      $at, 0x8000
/* AB6B0 80114FB0 14610002 */  bne       $v1, $at, .L80114FBC
/* AB6B4 80114FB4 00000000 */   nop
/* AB6B8 80114FB8 0006000D */  break     6
.L80114FBC:
/* AB6BC 80114FBC 00001012 */   mflo     $v0
/* AB6C0 80114FC0 00000000 */  nop
/* AB6C4 80114FC4 00000000 */  nop
/* AB6C8 80114FC8 00460018 */  mult      $v0, $a2
/* AB6CC 80114FCC 00004812 */  mflo      $t1
/* AB6D0 80114FD0 00000000 */  nop
/* AB6D4 80114FD4 14A00002 */  bnez      $a1, .L80114FE0
/* AB6D8 80114FD8 0125001A */   div      $zero, $t1, $a1
/* AB6DC 80114FDC 0007000D */  break     7
.L80114FE0:
/* AB6E0 80114FE0 2401FFFF */   addiu    $at, $zero, -1
/* AB6E4 80114FE4 14A10004 */  bne       $a1, $at, .L80114FF8
/* AB6E8 80114FE8 3C018000 */   lui      $at, 0x8000
/* AB6EC 80114FEC 15210002 */  bne       $t1, $at, .L80114FF8
/* AB6F0 80114FF0 00000000 */   nop
/* AB6F4 80114FF4 0006000D */  break     6
.L80114FF8:
/* AB6F8 80114FF8 00002012 */   mflo     $a0
/* AB6FC 80114FFC 00052840 */  sll       $a1, $a1, 1
/* AB700 80115000 14A00002 */  bnez      $a1, .L8011500C
/* AB704 80115004 0065001A */   div      $zero, $v1, $a1
/* AB708 80115008 0007000D */  break     7
.L8011500C:
/* AB70C 8011500C 2401FFFF */   addiu    $at, $zero, -1
/* AB710 80115010 14A10004 */  bne       $a1, $at, .L80115024
/* AB714 80115014 3C018000 */   lui      $at, 0x8000
/* AB718 80115018 14610002 */  bne       $v1, $at, .L80115024
/* AB71C 8011501C 00000000 */   nop
/* AB720 80115020 0006000D */  break     6
.L80115024:
/* AB724 80115024 00001012 */   mflo     $v0
/* AB728 80115028 080453D6 */  j         .L80114F58
/* AB72C 8011502C 02048021 */   addu     $s0, $s0, $a0
.L80115030:
/* AB730 80115030 9642002C */  lhu       $v0, 0x2c($s2)
/* AB734 80115034 30430F00 */  andi      $v1, $v0, 0xf00
/* AB738 80115038 24020200 */  addiu     $v0, $zero, 0x200
/* AB73C 8011503C 14620049 */  bne       $v1, $v0, .L80115164
/* AB740 80115040 24020300 */   addiu    $v0, $zero, 0x300
/* AB744 80115044 92420029 */  lbu       $v0, 0x29($s2)
/* AB748 80115048 5456008F */  bnel      $v0, $s6, .L80115288
/* AB74C 8011504C 00108040 */   sll      $s0, $s0, 1
/* AB750 80115050 96470022 */  lhu       $a3, 0x22($s2)
/* AB754 80115054 24040002 */  addiu     $a0, $zero, 2
/* AB758 80115058 14800002 */  bnez      $a0, .L80115064
/* AB75C 8011505C 00E4001A */   div      $zero, $a3, $a0
/* AB760 80115060 0007000D */  break     7
.L80115064:
/* AB764 80115064 2401FFFF */   addiu    $at, $zero, -1
/* AB768 80115068 14810004 */  bne       $a0, $at, .L8011507C
/* AB76C 8011506C 3C018000 */   lui      $at, 0x8000
/* AB770 80115070 14E10002 */  bne       $a3, $at, .L8011507C
/* AB774 80115074 00000000 */   nop
/* AB778 80115078 0006000D */  break     6
.L8011507C:
/* AB77C 8011507C 00001012 */   mflo     $v0
/* AB780 80115080 28420004 */  slti      $v0, $v0, 4
/* AB784 80115084 54400080 */  bnel      $v0, $zero, .L80115288
/* AB788 80115088 00108040 */   sll      $s0, $s0, 1
/* AB78C 8011508C 96460026 */  lhu       $a2, 0x26($s2)
.L80115090:
/* AB790 80115090 14800002 */  bnez      $a0, .L8011509C
/* AB794 80115094 00C4001A */   div      $zero, $a2, $a0
/* AB798 80115098 0007000D */  break     7
.L8011509C:
/* AB79C 8011509C 2401FFFF */   addiu    $at, $zero, -1
/* AB7A0 801150A0 14810004 */  bne       $a0, $at, .L801150B4
/* AB7A4 801150A4 3C018000 */   lui      $at, 0x8000
/* AB7A8 801150A8 14C10002 */  bne       $a2, $at, .L801150B4
/* AB7AC 801150AC 00000000 */   nop
/* AB7B0 801150B0 0006000D */  break     6
.L801150B4:
/* AB7B4 801150B4 00001012 */   mflo     $v0
/* AB7B8 801150B8 58400073 */  blezl     $v0, .L80115288
/* AB7BC 801150BC 00108040 */   sll      $s0, $s0, 1
/* AB7C0 801150C0 14800002 */  bnez      $a0, .L801150CC
/* AB7C4 801150C4 00E4001A */   div      $zero, $a3, $a0
/* AB7C8 801150C8 0007000D */  break     7
.L801150CC:
/* AB7CC 801150CC 2401FFFF */   addiu    $at, $zero, -1
/* AB7D0 801150D0 14810004 */  bne       $a0, $at, .L801150E4
/* AB7D4 801150D4 3C018000 */   lui      $at, 0x8000
/* AB7D8 801150D8 14E10002 */  bne       $a3, $at, .L801150E4
/* AB7DC 801150DC 00000000 */   nop
/* AB7E0 801150E0 0006000D */  break     6
.L801150E4:
/* AB7E4 801150E4 00001012 */   mflo     $v0
/* AB7E8 801150E8 00000000 */  nop
/* AB7EC 801150EC 00000000 */  nop
/* AB7F0 801150F0 00460018 */  mult      $v0, $a2
/* AB7F4 801150F4 00001812 */  mflo      $v1
/* AB7F8 801150F8 00000000 */  nop
/* AB7FC 801150FC 14800002 */  bnez      $a0, .L80115108
/* AB800 80115100 0064001A */   div      $zero, $v1, $a0
/* AB804 80115104 0007000D */  break     7
.L80115108:
/* AB808 80115108 2401FFFF */   addiu    $at, $zero, -1
/* AB80C 8011510C 14810004 */  bne       $a0, $at, .L80115120
/* AB810 80115110 3C018000 */   lui      $at, 0x8000
/* AB814 80115114 14610002 */  bne       $v1, $at, .L80115120
/* AB818 80115118 00000000 */   nop
/* AB81C 8011511C 0006000D */  break     6
.L80115120:
/* AB820 80115120 00001812 */   mflo     $v1
/* AB824 80115124 00042040 */  sll       $a0, $a0, 1
/* AB828 80115128 14800002 */  bnez      $a0, .L80115134
/* AB82C 8011512C 00E4001A */   div      $zero, $a3, $a0
/* AB830 80115130 0007000D */  break     7
.L80115134:
/* AB834 80115134 2401FFFF */   addiu    $at, $zero, -1
/* AB838 80115138 14810004 */  bne       $a0, $at, .L8011514C
/* AB83C 8011513C 3C018000 */   lui      $at, 0x8000
/* AB840 80115140 14E10002 */  bne       $a3, $at, .L8011514C
/* AB844 80115144 00000000 */   nop
/* AB848 80115148 0006000D */  break     6
.L8011514C:
/* AB84C 8011514C 00001012 */   mflo     $v0
/* AB850 80115150 28420004 */  slti      $v0, $v0, 4
/* AB854 80115154 1040FFCE */  beqz      $v0, .L80115090
/* AB858 80115158 02038021 */   addu     $s0, $s0, $v1
/* AB85C 8011515C 080454A2 */  j         .L80115288
/* AB860 80115160 00108040 */   sll      $s0, $s0, 1
.L80115164:
/* AB864 80115164 14620048 */  bne       $v1, $v0, .L80115288
/* AB868 80115168 00000000 */   nop
/* AB86C 8011516C 92420029 */  lbu       $v0, 0x29($s2)
/* AB870 80115170 54560045 */  bnel      $v0, $s6, .L80115288
/* AB874 80115174 00108080 */   sll      $s0, $s0, 2
/* AB878 80115178 96470022 */  lhu       $a3, 0x22($s2)
/* AB87C 8011517C 24040002 */  addiu     $a0, $zero, 2
/* AB880 80115180 14800002 */  bnez      $a0, .L8011518C
/* AB884 80115184 00E4001A */   div      $zero, $a3, $a0
/* AB888 80115188 0007000D */  break     7
.L8011518C:
/* AB88C 8011518C 2401FFFF */   addiu    $at, $zero, -1
/* AB890 80115190 14810004 */  bne       $a0, $at, .L801151A4
/* AB894 80115194 3C018000 */   lui      $at, 0x8000
/* AB898 80115198 14E10002 */  bne       $a3, $at, .L801151A4
/* AB89C 8011519C 00000000 */   nop
/* AB8A0 801151A0 0006000D */  break     6
.L801151A4:
/* AB8A4 801151A4 00001012 */   mflo     $v0
/* AB8A8 801151A8 0044102A */  slt       $v0, $v0, $a0
/* AB8AC 801151AC 54400036 */  bnel      $v0, $zero, .L80115288
/* AB8B0 801151B0 00108080 */   sll      $s0, $s0, 2
/* AB8B4 801151B4 96460026 */  lhu       $a2, 0x26($s2)
.L801151B8:
/* AB8B8 801151B8 14800002 */  bnez      $a0, .L801151C4
/* AB8BC 801151BC 00C4001A */   div      $zero, $a2, $a0
/* AB8C0 801151C0 0007000D */  break     7
.L801151C4:
/* AB8C4 801151C4 2401FFFF */   addiu    $at, $zero, -1
/* AB8C8 801151C8 14810004 */  bne       $a0, $at, .L801151DC
/* AB8CC 801151CC 3C018000 */   lui      $at, 0x8000
/* AB8D0 801151D0 14C10002 */  bne       $a2, $at, .L801151DC
/* AB8D4 801151D4 00000000 */   nop
/* AB8D8 801151D8 0006000D */  break     6
.L801151DC:
/* AB8DC 801151DC 00001012 */   mflo     $v0
/* AB8E0 801151E0 58400029 */  blezl     $v0, .L80115288
/* AB8E4 801151E4 00108080 */   sll      $s0, $s0, 2
/* AB8E8 801151E8 14800002 */  bnez      $a0, .L801151F4
/* AB8EC 801151EC 00E4001A */   div      $zero, $a3, $a0
/* AB8F0 801151F0 0007000D */  break     7
.L801151F4:
/* AB8F4 801151F4 2401FFFF */   addiu    $at, $zero, -1
/* AB8F8 801151F8 14810004 */  bne       $a0, $at, .L8011520C
/* AB8FC 801151FC 3C018000 */   lui      $at, 0x8000
/* AB900 80115200 14E10002 */  bne       $a3, $at, .L8011520C
/* AB904 80115204 00000000 */   nop
/* AB908 80115208 0006000D */  break     6
.L8011520C:
/* AB90C 8011520C 00001012 */   mflo     $v0
/* AB910 80115210 00000000 */  nop
/* AB914 80115214 00000000 */  nop
/* AB918 80115218 00460018 */  mult      $v0, $a2
/* AB91C 8011521C 00001812 */  mflo      $v1
/* AB920 80115220 00000000 */  nop
/* AB924 80115224 14800002 */  bnez      $a0, .L80115230
/* AB928 80115228 0064001A */   div      $zero, $v1, $a0
/* AB92C 8011522C 0007000D */  break     7
.L80115230:
/* AB930 80115230 2401FFFF */   addiu    $at, $zero, -1
/* AB934 80115234 14810004 */  bne       $a0, $at, .L80115248
/* AB938 80115238 3C018000 */   lui      $at, 0x8000
/* AB93C 8011523C 14610002 */  bne       $v1, $at, .L80115248
/* AB940 80115240 00000000 */   nop
/* AB944 80115244 0006000D */  break     6
.L80115248:
/* AB948 80115248 00001812 */   mflo     $v1
/* AB94C 8011524C 00042040 */  sll       $a0, $a0, 1
/* AB950 80115250 14800002 */  bnez      $a0, .L8011525C
/* AB954 80115254 00E4001A */   div      $zero, $a3, $a0
/* AB958 80115258 0007000D */  break     7
.L8011525C:
/* AB95C 8011525C 2401FFFF */   addiu    $at, $zero, -1
/* AB960 80115260 14810004 */  bne       $a0, $at, .L80115274
/* AB964 80115264 3C018000 */   lui      $at, 0x8000
/* AB968 80115268 14E10002 */  bne       $a3, $at, .L80115274
/* AB96C 8011526C 00000000 */   nop
/* AB970 80115270 0006000D */  break     6
.L80115274:
/* AB974 80115274 00001012 */   mflo     $v0
/* AB978 80115278 28420002 */  slti      $v0, $v0, 2
/* AB97C 8011527C 1040FFCE */  beqz      $v0, .L801151B8
/* AB980 80115280 02038021 */   addu     $s0, $s0, $v1
/* AB984 80115284 00108080 */  sll       $s0, $s0, 2
.L80115288:
/* AB988 80115288 9642002A */  lhu       $v0, 0x2a($s2)
/* AB98C 8011528C 24030002 */  addiu     $v1, $zero, 2
/* AB990 80115290 3042000F */  andi      $v0, $v0, 0xf
/* AB994 80115294 14430007 */  bne       $v0, $v1, .L801152B4
/* AB998 80115298 0000A82D */   daddu    $s5, $zero, $zero
/* AB99C 8011529C 9642002C */  lhu       $v0, 0x2c($s2)
/* AB9A0 801152A0 24080100 */  addiu     $t0, $zero, 0x100
/* AB9A4 801152A4 30420F00 */  andi      $v0, $v0, 0xf00
/* AB9A8 801152A8 14480002 */  bne       $v0, $t0, .L801152B4
/* AB9AC 801152AC 24150020 */   addiu    $s5, $zero, 0x20
/* AB9B0 801152B0 24150200 */  addiu     $s5, $zero, 0x200
.L801152B4:
/* AB9B4 801152B4 92430029 */  lbu       $v1, 0x29($s2)
/* AB9B8 801152B8 24020003 */  addiu     $v0, $zero, 3
/* AB9BC 801152BC 1462001F */  bne       $v1, $v0, .L8011533C
/* AB9C0 801152C0 0000982D */   daddu    $s3, $zero, $zero
/* AB9C4 801152C4 96440020 */  lhu       $a0, 0x20($s2)
/* AB9C8 801152C8 96420024 */  lhu       $v0, 0x24($s2)
/* AB9CC 801152CC 00820018 */  mult      $a0, $v0
/* AB9D0 801152D0 9643002C */  lhu       $v1, 0x2c($s2)
/* AB9D4 801152D4 3063F000 */  andi      $v1, $v1, 0xf000
/* AB9D8 801152D8 00008812 */  mflo      $s1
/* AB9DC 801152DC 14600003 */  bnez      $v1, .L801152EC
/* AB9E0 801152E0 24081000 */   addiu    $t0, $zero, 0x1000
/* AB9E4 801152E4 080454C3 */  j         .L8011530C
/* AB9E8 801152E8 00118842 */   srl      $s1, $s1, 1
.L801152EC:
/* AB9EC 801152EC 10680007 */  beq       $v1, $t0, .L8011530C
/* AB9F0 801152F0 24022000 */   addiu    $v0, $zero, 0x2000
/* AB9F4 801152F4 14620003 */  bne       $v1, $v0, .L80115304
/* AB9F8 801152F8 24023000 */   addiu    $v0, $zero, 0x3000
/* AB9FC 801152FC 080454C3 */  j         .L8011530C
/* ABA00 80115300 00118840 */   sll      $s1, $s1, 1
.L80115304:
/* ABA04 80115304 50620001 */  beql      $v1, $v0, .L8011530C
/* ABA08 80115308 00118880 */   sll      $s1, $s1, 2
.L8011530C:
/* ABA0C 8011530C 9642002A */  lhu       $v0, 0x2a($s2)
/* ABA10 80115310 24030020 */  addiu     $v1, $zero, 0x20
/* ABA14 80115314 304200F0 */  andi      $v0, $v0, 0xf0
/* ABA18 80115318 14430009 */  bne       $v0, $v1, .L80115340
/* ABA1C 8011531C 0000982D */   daddu    $s3, $zero, $zero
/* ABA20 80115320 9642002C */  lhu       $v0, 0x2c($s2)
/* ABA24 80115324 24081000 */  addiu     $t0, $zero, 0x1000
/* ABA28 80115328 3042F000 */  andi      $v0, $v0, 0xf000
/* ABA2C 8011532C 14480004 */  bne       $v0, $t0, .L80115340
/* ABA30 80115330 0060982D */   daddu    $s3, $v1, $zero
/* ABA34 80115334 080454D0 */  j         .L80115340
/* ABA38 80115338 24130200 */   addiu    $s3, $zero, 0x200
.L8011533C:
/* ABA3C 8011533C 0260882D */  daddu     $s1, $s3, $zero
.L80115340:
/* ABA40 80115340 02E0202D */  daddu     $a0, $s7, $zero
/* ABA44 80115344 0C01BB5C */  jal       strcmp
/* ABA48 80115348 0240282D */   daddu    $a1, $s2, $zero
/* ABA4C 8011534C 1040000D */  beqz      $v0, .L80115384
/* ABA50 80115350 02151021 */   addu     $v0, $s0, $s5
/* ABA54 80115354 24420030 */  addiu     $v0, $v0, 0x30
/* ABA58 80115358 0282A021 */  addu      $s4, $s4, $v0
/* ABA5C 8011535C 8FA80020 */  lw        $t0, 0x20($sp)
/* ABA60 80115360 02331021 */  addu      $v0, $s1, $s3
/* ABA64 80115364 25080001 */  addiu     $t0, $t0, 1
/* ABA68 80115368 AFA80020 */  sw        $t0, 0x20($sp)
/* ABA6C 8011536C 8FA80058 */  lw        $t0, 0x58($sp)
/* ABA70 80115370 0282A021 */  addu      $s4, $s4, $v0
/* ABA74 80115374 03C81021 */  addu      $v0, $fp, $t0
/* ABA78 80115378 0282102B */  sltu      $v0, $s4, $v0
/* ABA7C 8011537C 1440FE94 */  bnez      $v0, .L80114DD0
/* ABA80 80115380 0280202D */   daddu    $a0, $s4, $zero
.L80115384:
/* ABA84 80115384 3C020004 */  lui       $v0, 4
/* ABA88 80115388 03C21021 */  addu      $v0, $fp, $v0
/* ABA8C 8011538C 0282102B */  sltu      $v0, $s4, $v0
/* ABA90 80115390 14400009 */  bnez      $v0, .L801153B8
/* ABA94 80115394 00000000 */   nop
.L80115398:
/* ABA98 80115398 3C028015 */  lui       $v0, %hi(mdl_treeIterPos)
/* ABA9C 8011539C 8C423224 */  lw        $v0, %lo(mdl_treeIterPos)($v0)
/* ABAA0 801153A0 3C03800A */  lui       $v1, %hi(mdl_currentModelTreeNodeInfo)
/* ABAA4 801153A4 8C63A5F4 */  lw        $v1, %lo(mdl_currentModelTreeNodeInfo)($v1)
/* ABAA8 801153A8 00021080 */  sll       $v0, $v0, 2
/* ABAAC 801153AC 00431021 */  addu      $v0, $v0, $v1
/* ABAB0 801153B0 0804551A */  j         .L80115468
/* ABAB4 801153B4 A0400002 */   sb       $zero, 2($v0)
.L801153B8:
/* ABAB8 801153B8 3C168015 */  lui       $s6, %hi(mdl_treeIterPos)
/* ABABC 801153BC 26D63224 */  addiu     $s6, $s6, %lo(mdl_treeIterPos)
/* ABAC0 801153C0 3C17800A */  lui       $s7, %hi(mdl_currentModelTreeNodeInfo)
/* ABAC4 801153C4 26F7A5F4 */  addiu     $s7, $s7, %lo(mdl_currentModelTreeNodeInfo)
/* ABAC8 801153C8 8EC20000 */  lw        $v0, ($s6)
/* ABACC 801153CC 8EE30000 */  lw        $v1, ($s7)
/* ABAD0 801153D0 8FA80020 */  lw        $t0, 0x20($sp)
/* ABAD4 801153D4 00021080 */  sll       $v0, $v0, 2
/* ABAD8 801153D8 00431021 */  addu      $v0, $v0, $v1
/* ABADC 801153DC 25030001 */  addiu     $v1, $t0, 1
/* ABAE0 801153E0 A0430002 */  sb        $v1, 2($v0)
/* ABAE4 801153E4 8EC20000 */  lw        $v0, ($s6)
/* ABAE8 801153E8 8EE30000 */  lw        $v1, ($s7)
/* ABAEC 801153EC 00021080 */  sll       $v0, $v0, 2
/* ABAF0 801153F0 00431021 */  addu      $v0, $v0, $v1
/* ABAF4 801153F4 90430002 */  lbu       $v1, 2($v0)
/* ABAF8 801153F8 3C048016 */  lui       $a0, %hi(mdl_textureHandles)
/* ABAFC 801153FC 2484A590 */  addiu     $a0, $a0, %lo(mdl_textureHandles)
/* ABB00 80115400 00031100 */  sll       $v0, $v1, 4
/* ABB04 80115404 00431021 */  addu      $v0, $v0, $v1
/* ABB08 80115408 00021080 */  sll       $v0, $v0, 2
/* ABB0C 8011540C 00442821 */  addu      $a1, $v0, $a0
/* ABB10 80115410 8CA20000 */  lw        $v0, ($a1)
/* ABB14 80115414 14400014 */  bnez      $v0, .L80115468
/* ABB18 80115418 26940030 */   addiu    $s4, $s4, 0x30
/* ABB1C 8011541C 0280202D */  daddu     $a0, $s4, $zero
/* ABB20 80115420 0240302D */  daddu     $a2, $s2, $zero
/* ABB24 80115424 0200382D */  daddu     $a3, $s0, $zero
/* ABB28 80115428 AFB50010 */  sw        $s5, 0x10($sp)
/* ABB2C 8011542C AFB10014 */  sw        $s1, 0x14($sp)
/* ABB30 80115430 0C0452D6 */  jal       func_80114B58
/* ABB34 80115434 AFB30018 */   sw       $s3, 0x18($sp)
/* ABB38 80115438 02902021 */  addu      $a0, $s4, $s0
/* ABB3C 8011543C 00952021 */  addu      $a0, $a0, $s5
/* ABB40 80115440 00912021 */  addu      $a0, $a0, $s1
/* ABB44 80115444 00932021 */  addu      $a0, $a0, $s3
/* ABB48 80115448 8EC20000 */  lw        $v0, ($s6)
/* ABB4C 8011544C 8EE30000 */  lw        $v1, ($s7)
/* ABB50 80115450 8FA70058 */  lw        $a3, 0x58($sp)
/* ABB54 80115454 00021080 */  sll       $v0, $v0, 2
/* ABB58 80115458 00431021 */  addu      $v0, $v0, $v1
/* ABB5C 8011545C 90450002 */  lbu       $a1, 2($v0)
/* ABB60 80115460 0C045526 */  jal       func_80115498
/* ABB64 80115464 03C0302D */   daddu    $a2, $fp, $zero
.L80115468:
/* ABB68 80115468 8FBF004C */  lw        $ra, 0x4c($sp)
/* ABB6C 8011546C 8FBE0048 */  lw        $fp, 0x48($sp)
/* ABB70 80115470 8FB70044 */  lw        $s7, 0x44($sp)
/* ABB74 80115474 8FB60040 */  lw        $s6, 0x40($sp)
/* ABB78 80115478 8FB5003C */  lw        $s5, 0x3c($sp)
/* ABB7C 8011547C 8FB40038 */  lw        $s4, 0x38($sp)
/* ABB80 80115480 8FB30034 */  lw        $s3, 0x34($sp)
/* ABB84 80115484 8FB20030 */  lw        $s2, 0x30($sp)
/* ABB88 80115488 8FB1002C */  lw        $s1, 0x2c($sp)
/* ABB8C 8011548C 8FB00028 */  lw        $s0, 0x28($sp)
/* ABB90 80115490 03E00008 */  jr        $ra
/* ABB94 80115494 27BD0050 */   addiu    $sp, $sp, 0x50
