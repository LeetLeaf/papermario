.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel btl_state_update_end_player_turn
/* 174D30 80246450 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 174D34 80246454 AFB3001C */  sw        $s3, 0x1c($sp)
/* 174D38 80246458 3C13800E */  lui       $s3, %hi(gBattleStatus)
/* 174D3C 8024645C 2673C070 */  addiu     $s3, $s3, %lo(gBattleStatus)
/* 174D40 80246460 3C04800E */  lui       $a0, %hi(gBattleState2)
/* 174D44 80246464 2484C4DC */  addiu     $a0, $a0, %lo(gBattleState2)
/* 174D48 80246468 AFBF0030 */  sw        $ra, 0x30($sp)
/* 174D4C 8024646C AFB7002C */  sw        $s7, 0x2c($sp)
/* 174D50 80246470 AFB60028 */  sw        $s6, 0x28($sp)
/* 174D54 80246474 AFB50024 */  sw        $s5, 0x24($sp)
/* 174D58 80246478 AFB40020 */  sw        $s4, 0x20($sp)
/* 174D5C 8024647C AFB20018 */  sw        $s2, 0x18($sp)
/* 174D60 80246480 AFB10014 */  sw        $s1, 0x14($sp)
/* 174D64 80246484 AFB00010 */  sw        $s0, 0x10($sp)
/* 174D68 80246488 F7B80048 */  sdc1      $f24, 0x48($sp)
/* 174D6C 8024648C F7B60040 */  sdc1      $f22, 0x40($sp)
/* 174D70 80246490 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 174D74 80246494 8E7000D8 */  lw        $s0, 0xd8($s3)
/* 174D78 80246498 8C820000 */  lw        $v0, ($a0)
/* 174D7C 8024649C 8E7100DC */  lw        $s1, 0xdc($s3)
/* 174D80 802464A0 1440007F */  bnez      $v0, .L802466A0
/* 174D84 802464A4 24020002 */   addiu    $v0, $zero, 2
/* 174D88 802464A8 82630178 */  lb        $v1, 0x178($s3)
/* 174D8C 802464AC 14620007 */  bne       $v1, $v0, .L802464CC
/* 174D90 802464B0 00000000 */   nop
/* 174D94 802464B4 82620088 */  lb        $v0, 0x88($s3)
/* 174D98 802464B8 28420002 */  slti      $v0, $v0, 2
/* 174D9C 802464BC 14400003 */  bnez      $v0, .L802464CC
/* 174DA0 802464C0 24020005 */   addiu    $v0, $zero, 5
/* 174DA4 802464C4 080919A8 */  j         .L802466A0
/* 174DA8 802464C8 AC820000 */   sw       $v0, ($a0)
.L802464CC:
/* 174DAC 802464CC 3C02800E */  lui       $v0, %hi(gBattleStatus+0x4)
/* 174DB0 802464D0 8C42C074 */  lw        $v0, %lo(gBattleStatus+0x4)($v0)
/* 174DB4 802464D4 3C030400 */  lui       $v1, 0x400
/* 174DB8 802464D8 00431024 */  and       $v0, $v0, $v1
/* 174DBC 802464DC 1440000D */  bnez      $v0, .L80246514
/* 174DC0 802464E0 00000000 */   nop
/* 174DC4 802464E4 0C03A752 */  jal       is_ability_active
/* 174DC8 802464E8 24040012 */   addiu    $a0, $zero, 0x12
/* 174DCC 802464EC 14400009 */  bnez      $v0, .L80246514
/* 174DD0 802464F0 00000000 */   nop
/* 174DD4 802464F4 0C03A752 */  jal       is_ability_active
/* 174DD8 802464F8 2404001F */   addiu    $a0, $zero, 0x1f
/* 174DDC 802464FC 14400005 */  bnez      $v0, .L80246514
/* 174DE0 80246500 00000000 */   nop
/* 174DE4 80246504 0C03A752 */  jal       is_ability_active
/* 174DE8 80246508 24040034 */   addiu    $a0, $zero, 0x34
/* 174DEC 8024650C 10400031 */  beqz      $v0, .L802465D4
/* 174DF0 80246510 24020005 */   addiu    $v0, $zero, 5
.L80246514:
/* 174DF4 80246514 82030214 */  lb        $v1, 0x214($s0)
/* 174DF8 80246518 2402000C */  addiu     $v0, $zero, 0xc
/* 174DFC 8024651C 1062002D */  beq       $v1, $v0, .L802465D4
/* 174E00 80246520 24020005 */   addiu    $v0, $zero, 5
/* 174E04 80246524 8262009A */  lb        $v0, 0x9a($s3)
/* 174E08 80246528 1440002A */  bnez      $v0, .L802465D4
/* 174E0C 8024652C 24020005 */   addiu    $v0, $zero, 5
/* 174E10 80246530 0000A82D */  daddu     $s5, $zero, $zero
/* 174E14 80246534 02A0902D */  daddu     $s2, $s5, $zero
/* 174E18 80246538 3C16800E */  lui       $s6, %hi(gBattleStatus)
/* 174E1C 8024653C 26D6C070 */  addiu     $s6, $s6, %lo(gBattleStatus)
/* 174E20 80246540 8EC20004 */  lw        $v0, 4($s6)
/* 174E24 80246544 3C170400 */  lui       $s7, 0x400
/* 174E28 80246548 00571024 */  and       $v0, $v0, $s7
/* 174E2C 8024654C 10400003 */  beqz      $v0, .L8024655C
/* 174E30 80246550 02A0A02D */   daddu    $s4, $s5, $zero
/* 174E34 80246554 82750089 */  lb        $s5, 0x89($s3)
/* 174E38 80246558 A2600089 */  sb        $zero, 0x89($s3)
.L8024655C:
/* 174E3C 8024655C 0C00A67F */  jal       rand_int
/* 174E40 80246560 24040064 */   addiu    $a0, $zero, 0x64
/* 174E44 80246564 28420032 */  slti      $v0, $v0, 0x32
/* 174E48 80246568 10400005 */  beqz      $v0, .L80246580
/* 174E4C 8024656C 00000000 */   nop
/* 174E50 80246570 0C03A752 */  jal       is_ability_active
/* 174E54 80246574 2404001F */   addiu    $a0, $zero, 0x1f
/* 174E58 80246578 00021840 */  sll       $v1, $v0, 1
/* 174E5C 8024657C 00629021 */  addu      $s2, $v1, $v0
.L80246580:
/* 174E60 80246580 0C00A67F */  jal       rand_int
/* 174E64 80246584 24040064 */   addiu    $a0, $zero, 0x64
/* 174E68 80246588 28420032 */  slti      $v0, $v0, 0x32
/* 174E6C 8024658C 10400004 */  beqz      $v0, .L802465A0
/* 174E70 80246590 00000000 */   nop
/* 174E74 80246594 0C03A752 */  jal       is_ability_active
/* 174E78 80246598 24040012 */   addiu    $a0, $zero, 0x12
/* 174E7C 8024659C 02429021 */  addu      $s2, $s2, $v0
.L802465A0:
/* 174E80 802465A0 0C00A67F */  jal       rand_int
/* 174E84 802465A4 24040064 */   addiu    $a0, $zero, 0x64
/* 174E88 802465A8 28420032 */  slti      $v0, $v0, 0x32
/* 174E8C 802465AC 10400005 */  beqz      $v0, .L802465C4
/* 174E90 802465B0 02B21021 */   addu     $v0, $s5, $s2
/* 174E94 802465B4 0C03A752 */  jal       is_ability_active
/* 174E98 802465B8 24040034 */   addiu    $a0, $zero, 0x34
/* 174E9C 802465BC 0040A02D */  daddu     $s4, $v0, $zero
/* 174EA0 802465C0 02B21021 */  addu      $v0, $s5, $s2
.L802465C4:
/* 174EA4 802465C4 00541021 */  addu      $v0, $v0, $s4
/* 174EA8 802465C8 14400006 */  bnez      $v0, .L802465E4
/* 174EAC 802465CC 2402001E */   addiu    $v0, $zero, 0x1e
/* 174EB0 802465D0 24020005 */  addiu     $v0, $zero, 5
.L802465D4:
/* 174EB4 802465D4 3C01800E */  lui       $at, %hi(gBattleState2)
/* 174EB8 802465D8 AC22C4DC */  sw        $v0, %lo(gBattleState2)($at)
/* 174EBC 802465DC 080919A8 */  j         .L802466A0
/* 174EC0 802465E0 00000000 */   nop
.L802465E4:
/* 174EC4 802465E4 3C048028 */  lui       $a0, %hi(PlayerScriptDispatcher)
/* 174EC8 802465E8 24844EBC */  addiu     $a0, $a0, %lo(PlayerScriptDispatcher)
/* 174ECC 802465EC 2405000A */  addiu     $a1, $zero, 0xa
/* 174ED0 802465F0 0000302D */  daddu     $a2, $zero, $zero
/* 174ED4 802465F4 0C0B0CF8 */  jal       start_script
/* 174ED8 802465F8 A26201A7 */   sb       $v0, 0x1a7($s3)
/* 174EDC 802465FC 0040202D */  daddu     $a0, $v0, $zero
/* 174EE0 80246600 AE0401D4 */  sw        $a0, 0x1d4($s0)
/* 174EE4 80246604 8C820144 */  lw        $v0, 0x144($a0)
/* 174EE8 80246608 AE0201E4 */  sw        $v0, 0x1e4($s0)
/* 174EEC 8024660C AC800148 */  sw        $zero, 0x148($a0)
/* 174EF0 80246610 8EC20004 */  lw        $v0, 4($s6)
/* 174EF4 80246614 00571024 */  and       $v0, $v0, $s7
/* 174EF8 80246618 50400007 */  beql      $v0, $zero, .L80246638
/* 174EFC 8024661C AC9500AC */   sw       $s5, 0xac($a0)
/* 174F00 80246620 82630089 */  lb        $v1, 0x89($s3)
/* 174F04 80246624 8C8200AC */  lw        $v0, 0xac($a0)
/* 174F08 80246628 00431021 */  addu      $v0, $v0, $v1
/* 174F0C 8024662C AC8200AC */  sw        $v0, 0xac($a0)
/* 174F10 80246630 A2600089 */  sb        $zero, 0x89($s3)
/* 174F14 80246634 AC9500AC */  sw        $s5, 0xac($a0)
.L80246638:
/* 174F18 80246638 02A0102D */  daddu     $v0, $s5, $zero
/* 174F1C 8024663C 28420064 */  slti      $v0, $v0, 0x64
/* 174F20 80246640 AC9200B0 */  sw        $s2, 0xb0($a0)
/* 174F24 80246644 14400003 */  bnez      $v0, .L80246654
/* 174F28 80246648 AC9400B4 */   sw       $s4, 0xb4($a0)
/* 174F2C 8024664C 24020063 */  addiu     $v0, $zero, 0x63
/* 174F30 80246650 AC8200AC */  sw        $v0, 0xac($a0)
.L80246654:
/* 174F34 80246654 8C8200B0 */  lw        $v0, 0xb0($a0)
/* 174F38 80246658 28420064 */  slti      $v0, $v0, 0x64
/* 174F3C 8024665C 14400002 */  bnez      $v0, .L80246668
/* 174F40 80246660 24020063 */   addiu    $v0, $zero, 0x63
/* 174F44 80246664 AC8200B0 */  sw        $v0, 0xb0($a0)
.L80246668:
/* 174F48 80246668 8C8200B4 */  lw        $v0, 0xb4($a0)
/* 174F4C 8024666C 28420064 */  slti      $v0, $v0, 0x64
/* 174F50 80246670 14400004 */  bnez      $v0, .L80246684
/* 174F54 80246674 3C02FBFF */   lui      $v0, 0xfbff
/* 174F58 80246678 24020063 */  addiu     $v0, $zero, 0x63
/* 174F5C 8024667C AC8200B4 */  sw        $v0, 0xb4($a0)
/* 174F60 80246680 3C02FBFF */  lui       $v0, 0xfbff
.L80246684:
/* 174F64 80246684 3442FFFF */  ori       $v0, $v0, 0xffff
/* 174F68 80246688 8EC30004 */  lw        $v1, 4($s6)
/* 174F6C 8024668C 24040005 */  addiu     $a0, $zero, 5
/* 174F70 80246690 3C01800E */  lui       $at, %hi(gBattleState2)
/* 174F74 80246694 AC24C4DC */  sw        $a0, %lo(gBattleState2)($at)
/* 174F78 80246698 00621824 */  and       $v1, $v1, $v0
/* 174F7C 8024669C AEC30004 */  sw        $v1, 4($s6)
.L802466A0:
/* 174F80 802466A0 3C12800E */  lui       $s2, %hi(gBattleState2)
/* 174F84 802466A4 2652C4DC */  addiu     $s2, $s2, %lo(gBattleState2)
/* 174F88 802466A8 8E430000 */  lw        $v1, ($s2)
/* 174F8C 802466AC 24020005 */  addiu     $v0, $zero, 5
/* 174F90 802466B0 14620027 */  bne       $v1, $v0, .L80246750
/* 174F94 802466B4 24020006 */   addiu    $v0, $zero, 6
/* 174F98 802466B8 8E0201D4 */  lw        $v0, 0x1d4($s0)
/* 174F9C 802466BC 10400005 */  beqz      $v0, .L802466D4
/* 174FA0 802466C0 00000000 */   nop
/* 174FA4 802466C4 0C0B1059 */  jal       does_script_exist
/* 174FA8 802466C8 8E0401E4 */   lw       $a0, 0x1e4($s0)
/* 174FAC 802466CC 1440001E */  bnez      $v0, .L80246748
/* 174FB0 802466D0 00000000 */   nop
.L802466D4:
/* 174FB4 802466D4 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 174FB8 802466D8 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 174FBC 802466DC AE0001D4 */  sw        $zero, 0x1d4($s0)
/* 174FC0 802466E0 8C620004 */  lw        $v0, 4($v1)
/* 174FC4 802466E4 30420040 */  andi      $v0, $v0, 0x40
/* 174FC8 802466E8 10400006 */  beqz      $v0, .L80246704
/* 174FCC 802466EC 2402000A */   addiu    $v0, $zero, 0xa
/* 174FD0 802466F0 8C620000 */  lw        $v0, ($v1)
/* 174FD4 802466F4 3C030010 */  lui       $v1, 0x10
/* 174FD8 802466F8 00431024 */  and       $v0, $v0, $v1
/* 174FDC 802466FC 10400003 */  beqz      $v0, .L8024670C
/* 174FE0 80246700 2402000A */   addiu    $v0, $zero, 0xa
.L80246704:
/* 174FE4 80246704 080919D0 */  j         .L80246740
/* 174FE8 80246708 AE420000 */   sw       $v0, ($s2)
.L8024670C:
/* 174FEC 8024670C C6000138 */  lwc1      $f0, 0x138($s0)
/* 174FF0 80246710 C6020140 */  lwc1      $f2, 0x140($s0)
/* 174FF4 80246714 E600000C */  swc1      $f0, 0xc($s0)
/* 174FF8 80246718 E6020014 */  swc1      $f2, 0x14($s0)
/* 174FFC 8024671C C6200138 */  lwc1      $f0, 0x138($s1)
/* 175000 80246720 24020006 */  addiu     $v0, $zero, 6
/* 175004 80246724 AE420000 */  sw        $v0, ($s2)
/* 175008 80246728 E6000018 */  swc1      $f0, 0x18($s0)
/* 17500C 8024672C C6200140 */  lwc1      $f0, 0x140($s1)
/* 175010 80246730 24020004 */  addiu     $v0, $zero, 4
/* 175014 80246734 A6020070 */  sh        $v0, 0x70($s0)
/* 175018 80246738 AE000054 */  sw        $zero, 0x54($s0)
/* 17501C 8024673C E6000020 */  swc1      $f0, 0x20($s0)
.L80246740:
/* 175020 80246740 3C12800E */  lui       $s2, %hi(gBattleState2)
/* 175024 80246744 2652C4DC */  addiu     $s2, $s2, %lo(gBattleState2)
.L80246748:
/* 175028 80246748 8E430000 */  lw        $v1, ($s2)
/* 17502C 8024674C 24020006 */  addiu     $v0, $zero, 6
.L80246750:
/* 175030 80246750 1462006C */  bne       $v1, $v0, .L80246904
/* 175034 80246754 00000000 */   nop
/* 175038 80246758 86020070 */  lh        $v0, 0x70($s0)
/* 17503C 8024675C 10400022 */  beqz      $v0, .L802467E8
/* 175040 80246760 00000000 */   nop
/* 175044 80246764 C6000018 */  lwc1      $f0, 0x18($s0)
/* 175048 80246768 C6080144 */  lwc1      $f8, 0x144($s0)
/* 17504C 8024676C C6020020 */  lwc1      $f2, 0x20($s0)
/* 175050 80246770 46080001 */  sub.s     $f0, $f0, $f8
/* 175054 80246774 C604014C */  lwc1      $f4, 0x14c($s0)
/* 175058 80246778 46041081 */  sub.s     $f2, $f2, $f4
/* 17505C 8024677C 44823000 */  mtc1      $v0, $f6
/* 175060 80246780 00000000 */  nop
/* 175064 80246784 468031A0 */  cvt.s.w   $f6, $f6
/* 175068 80246788 46060003 */  div.s     $f0, $f0, $f6
/* 17506C 8024678C 46004200 */  add.s     $f8, $f8, $f0
/* 175070 80246790 46003006 */  mov.s     $f0, $f6
/* 175074 80246794 46061083 */  div.s     $f2, $f2, $f6
/* 175078 80246798 C600000C */  lwc1      $f0, 0xc($s0)
/* 17507C 8024679C 46022100 */  add.s     $f4, $f4, $f2
/* 175080 802467A0 E6080144 */  swc1      $f8, 0x144($s0)
/* 175084 802467A4 E604014C */  swc1      $f4, 0x14c($s0)
/* 175088 802467A8 C6240144 */  lwc1      $f4, 0x144($s1)
/* 17508C 802467AC 46040001 */  sub.s     $f0, $f0, $f4
/* 175090 802467B0 46003086 */  mov.s     $f2, $f6
/* 175094 802467B4 46060003 */  div.s     $f0, $f0, $f6
/* 175098 802467B8 46002100 */  add.s     $f4, $f4, $f0
/* 17509C 802467BC E6240144 */  swc1      $f4, 0x144($s1)
/* 1750A0 802467C0 C6000014 */  lwc1      $f0, 0x14($s0)
/* 1750A4 802467C4 C624014C */  lwc1      $f4, 0x14c($s1)
/* 1750A8 802467C8 86020070 */  lh        $v0, 0x70($s0)
/* 1750AC 802467CC 46040001 */  sub.s     $f0, $f0, $f4
/* 1750B0 802467D0 44821000 */  mtc1      $v0, $f2
/* 1750B4 802467D4 00000000 */  nop
/* 1750B8 802467D8 468010A0 */  cvt.s.w   $f2, $f2
/* 1750BC 802467DC 46020003 */  div.s     $f0, $f0, $f2
/* 1750C0 802467E0 46002100 */  add.s     $f4, $f4, $f0
/* 1750C4 802467E4 E624014C */  swc1      $f4, 0x14c($s1)
.L802467E8:
/* 1750C8 802467E8 C60C0054 */  lwc1      $f12, 0x54($s0)
/* 1750CC 802467EC 3C0140C9 */  lui       $at, 0x40c9
/* 1750D0 802467F0 34210FD0 */  ori       $at, $at, 0xfd0
/* 1750D4 802467F4 4481B000 */  mtc1      $at, $f22
/* 1750D8 802467F8 00000000 */  nop
/* 1750DC 802467FC 46166302 */  mul.s     $f12, $f12, $f22
/* 1750E0 80246800 00000000 */  nop
/* 1750E4 80246804 3C0143B4 */  lui       $at, 0x43b4
/* 1750E8 80246808 4481C000 */  mtc1      $at, $f24
/* 1750EC 8024680C 3C014180 */  lui       $at, 0x4180
/* 1750F0 80246810 4481A000 */  mtc1      $at, $f20
/* 1750F4 80246814 0C00A85B */  jal       sin_rad
/* 1750F8 80246818 46186303 */   div.s    $f12, $f12, $f24
/* 1750FC 8024681C 46140002 */  mul.s     $f0, $f0, $f20
/* 175100 80246820 00000000 */  nop
/* 175104 80246824 C602014C */  lwc1      $f2, 0x14c($s0)
/* 175108 80246828 46001080 */  add.s     $f2, $f2, $f0
/* 17510C 8024682C C60C0054 */  lwc1      $f12, 0x54($s0)
/* 175110 80246830 46006307 */  neg.s     $f12, $f12
/* 175114 80246834 0C00A6C9 */  jal       clamp_angle
/* 175118 80246838 E602014C */   swc1     $f2, 0x14c($s0)
/* 17511C 8024683C C60C0054 */  lwc1      $f12, 0x54($s0)
/* 175120 80246840 46166302 */  mul.s     $f12, $f12, $f22
/* 175124 80246844 00000000 */  nop
/* 175128 80246848 E600018C */  swc1      $f0, 0x18c($s0)
/* 17512C 8024684C 0C00A85B */  jal       sin_rad
/* 175130 80246850 46186303 */   div.s    $f12, $f12, $f24
/* 175134 80246854 46140002 */  mul.s     $f0, $f0, $f20
/* 175138 80246858 00000000 */  nop
/* 17513C 8024685C C622014C */  lwc1      $f2, 0x14c($s1)
/* 175140 80246860 46001081 */  sub.s     $f2, $f2, $f0
/* 175144 80246864 E622014C */  swc1      $f2, 0x14c($s1)
/* 175148 80246868 C60C0054 */  lwc1      $f12, 0x54($s0)
/* 17514C 8024686C 0C00A6C9 */  jal       clamp_angle
/* 175150 80246870 46006307 */   neg.s    $f12, $f12
/* 175154 80246874 E620018C */  swc1      $f0, 0x18c($s1)
/* 175158 80246878 C6000054 */  lwc1      $f0, 0x54($s0)
/* 17515C 8024687C 3C0142B4 */  lui       $at, 0x42b4
/* 175160 80246880 44811000 */  mtc1      $at, $f2
/* 175164 80246884 86020070 */  lh        $v0, 0x70($s0)
/* 175168 80246888 46020000 */  add.s     $f0, $f0, $f2
/* 17516C 8024688C 96030070 */  lhu       $v1, 0x70($s0)
/* 175170 80246890 10400004 */  beqz      $v0, .L802468A4
/* 175174 80246894 E6000054 */   swc1     $f0, 0x54($s0)
/* 175178 80246898 2462FFFF */  addiu     $v0, $v1, -1
/* 17517C 8024689C 08091A41 */  j         .L80246904
/* 175180 802468A0 A6020070 */   sh       $v0, 0x70($s0)
.L802468A4:
/* 175184 802468A4 C6000018 */  lwc1      $f0, 0x18($s0)
/* 175188 802468A8 C6020020 */  lwc1      $f2, 0x20($s0)
/* 17518C 802468AC C604000C */  lwc1      $f4, 0xc($s0)
/* 175190 802468B0 E6000144 */  swc1      $f0, 0x144($s0)
/* 175194 802468B4 E602014C */  swc1      $f2, 0x14c($s0)
/* 175198 802468B8 E6240144 */  swc1      $f4, 0x144($s1)
/* 17519C 802468BC C6000014 */  lwc1      $f0, 0x14($s0)
/* 1751A0 802468C0 E620014C */  swc1      $f0, 0x14c($s1)
/* 1751A4 802468C4 C6000144 */  lwc1      $f0, 0x144($s0)
/* 1751A8 802468C8 C602014C */  lwc1      $f2, 0x14c($s0)
/* 1751AC 802468CC 2402000A */  addiu     $v0, $zero, 0xa
/* 1751B0 802468D0 E6000138 */  swc1      $f0, 0x138($s0)
/* 1751B4 802468D4 E6020140 */  swc1      $f2, 0x140($s0)
/* 1751B8 802468D8 C6200144 */  lwc1      $f0, 0x144($s1)
/* 1751BC 802468DC C622014C */  lwc1      $f2, 0x14c($s1)
/* 1751C0 802468E0 3C04800E */  lui       $a0, %hi(gBattleStatus)
/* 1751C4 802468E4 2484C070 */  addiu     $a0, $a0, %lo(gBattleStatus)
/* 1751C8 802468E8 AE420000 */  sw        $v0, ($s2)
/* 1751CC 802468EC E6200138 */  swc1      $f0, 0x138($s1)
/* 1751D0 802468F0 E6220140 */  swc1      $f2, 0x140($s1)
/* 1751D4 802468F4 8C820000 */  lw        $v0, ($a0)
/* 1751D8 802468F8 3C030010 */  lui       $v1, 0x10
/* 1751DC 802468FC 00431025 */  or        $v0, $v0, $v1
/* 1751E0 80246900 AC820000 */  sw        $v0, ($a0)
.L80246904:
/* 1751E4 80246904 3C03800E */  lui       $v1, %hi(gBattleState2)
/* 1751E8 80246908 8C63C4DC */  lw        $v1, %lo(gBattleState2)($v1)
/* 1751EC 8024690C 2402000A */  addiu     $v0, $zero, 0xa
/* 1751F0 80246910 14620078 */  bne       $v1, $v0, .L80246AF4
/* 1751F4 80246914 00000000 */   nop
/* 1751F8 80246918 0C098D0D */  jal       btl_check_enemies_defeated
/* 1751FC 8024691C 00000000 */   nop
/* 175200 80246920 14400074 */  bnez      $v0, .L80246AF4
/* 175204 80246924 24020002 */   addiu    $v0, $zero, 2
/* 175208 80246928 82630178 */  lb        $v1, 0x178($s3)
/* 17520C 8024692C 14620010 */  bne       $v1, $v0, .L80246970
/* 175210 80246930 00000000 */   nop
/* 175214 80246934 82620088 */  lb        $v0, 0x88($s3)
/* 175218 80246938 28420002 */  slti      $v0, $v0, 2
/* 17521C 8024693C 1440000C */  bnez      $v0, .L80246970
/* 175220 80246940 00000000 */   nop
/* 175224 80246944 0C093903 */  jal       btl_cam_use_preset
/* 175228 80246948 24040002 */   addiu    $a0, $zero, 2
/* 17522C 8024694C 0C093936 */  jal       btl_cam_move
/* 175230 80246950 2404000A */   addiu    $a0, $zero, 0xa
/* 175234 80246954 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 175238 80246958 2442C070 */  addiu     $v0, $v0, %lo(gBattleStatus)
/* 17523C 8024695C 8C430004 */  lw        $v1, 4($v0)
/* 175240 80246960 2404FFFD */  addiu     $a0, $zero, -3
/* 175244 80246964 00641824 */  and       $v1, $v1, $a0
/* 175248 80246968 08091A61 */  j         .L80246984
/* 17524C 8024696C AC430004 */   sw       $v1, 4($v0)
.L80246970:
/* 175250 80246970 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 175254 80246974 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 175258 80246978 8C620004 */  lw        $v0, 4($v1)
/* 17525C 8024697C 34420002 */  ori       $v0, $v0, 2
/* 175260 80246980 AC620004 */  sw        $v0, 4($v1)
.L80246984:
/* 175264 80246984 82620094 */  lb        $v0, 0x94($s3)
/* 175268 80246988 04410004 */  bgez      $v0, .L8024699C
/* 17526C 8024698C 24040006 */   addiu    $a0, $zero, 6
/* 175270 80246990 A2600094 */  sb        $zero, 0x94($s3)
/* 175274 80246994 08091ABB */  j         .L80246AEC
/* 175278 80246998 A2600088 */   sb       $zero, 0x88($s3)
.L8024699C:
/* 17527C 8024699C 82620088 */  lb        $v0, 0x88($s3)
/* 175280 802469A0 92630088 */  lbu       $v1, 0x88($s3)
/* 175284 802469A4 1040002C */  beqz      $v0, .L80246A58
/* 175288 802469A8 2462FFFF */   addiu    $v0, $v1, -1
/* 17528C 802469AC A2620088 */  sb        $v0, 0x88($s3)
/* 175290 802469B0 00021600 */  sll       $v0, $v0, 0x18
/* 175294 802469B4 10400008 */  beqz      $v0, .L802469D8
/* 175298 802469B8 3C040400 */   lui      $a0, 0x400
/* 17529C 802469BC 0C090464 */  jal       btl_set_state
/* 1752A0 802469C0 2404000C */   addiu    $a0, $zero, 0xc
/* 1752A4 802469C4 24020046 */  addiu     $v0, $zero, 0x46
/* 1752A8 802469C8 3C01800E */  lui       $at, %hi(gBattleState2)
/* 1752AC 802469CC AC22C4DC */  sw        $v0, %lo(gBattleState2)($at)
/* 1752B0 802469D0 08091ABD */  j         .L80246AF4
/* 1752B4 802469D4 00000000 */   nop
.L802469D8:
/* 1752B8 802469D8 3C05800E */  lui       $a1, %hi(gBattleStatus)
/* 1752BC 802469DC 24A5C070 */  addiu     $a1, $a1, %lo(gBattleStatus)
/* 1752C0 802469E0 8CA20000 */  lw        $v0, ($a1)
/* 1752C4 802469E4 00441024 */  and       $v0, $v0, $a0
/* 1752C8 802469E8 10400006 */  beqz      $v0, .L80246A04
/* 1752CC 802469EC 00000000 */   nop
/* 1752D0 802469F0 8262008B */  lb        $v0, 0x8b($s3)
/* 1752D4 802469F4 9263008B */  lbu       $v1, 0x8b($s3)
/* 1752D8 802469F8 1040000E */  beqz      $v0, .L80246A34
/* 1752DC 802469FC 2462FFFF */   addiu    $v0, $v1, -1
/* 1752E0 80246A00 A262008B */  sb        $v0, 0x8b($s3)
.L80246A04:
/* 1752E4 80246A04 8262008B */  lb        $v0, 0x8b($s3)
/* 1752E8 80246A08 5040000B */  beql      $v0, $zero, .L80246A38
/* 1752EC 80246A0C 3C05FBFF */   lui      $a1, 0xfbff
/* 1752F0 80246A10 8CA20000 */  lw        $v0, ($a1)
/* 1752F4 80246A14 00441024 */  and       $v0, $v0, $a0
/* 1752F8 80246A18 10400006 */  beqz      $v0, .L80246A34
/* 1752FC 80246A1C 2404000C */   addiu    $a0, $zero, 0xc
/* 175300 80246A20 8CA20004 */  lw        $v0, 4($a1)
/* 175304 80246A24 2403FFFD */  addiu     $v1, $zero, -3
/* 175308 80246A28 00431024 */  and       $v0, $v0, $v1
/* 17530C 80246A2C 08091ABB */  j         .L80246AEC
/* 175310 80246A30 ACA20004 */   sw       $v0, 4($a1)
.L80246A34:
/* 175314 80246A34 3C05FBFF */  lui       $a1, 0xfbff
.L80246A38:
/* 175318 80246A38 34A5FFFF */  ori       $a1, $a1, 0xffff
/* 17531C 80246A3C 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 175320 80246A40 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 175324 80246A44 8C620000 */  lw        $v0, ($v1)
/* 175328 80246A48 24040008 */  addiu     $a0, $zero, 8
/* 17532C 80246A4C 00451024 */  and       $v0, $v0, $a1
/* 175330 80246A50 08091ABB */  j         .L80246AEC
/* 175334 80246A54 AC620000 */   sw       $v0, ($v1)
.L80246A58:
/* 175338 80246A58 3C05800E */  lui       $a1, %hi(gBattleStatus)
/* 17533C 80246A5C 24A5C070 */  addiu     $a1, $a1, %lo(gBattleStatus)
/* 175340 80246A60 8CA20000 */  lw        $v0, ($a1)
/* 175344 80246A64 3C040400 */  lui       $a0, 0x400
/* 175348 80246A68 00441024 */  and       $v0, $v0, $a0
/* 17534C 80246A6C 10400006 */  beqz      $v0, .L80246A88
/* 175350 80246A70 00000000 */   nop
/* 175354 80246A74 8262008B */  lb        $v0, 0x8b($s3)
/* 175358 80246A78 9263008B */  lbu       $v1, 0x8b($s3)
/* 17535C 80246A7C 1040000E */  beqz      $v0, .L80246AB8
/* 175360 80246A80 2462FFFF */   addiu    $v0, $v1, -1
/* 175364 80246A84 A262008B */  sb        $v0, 0x8b($s3)
.L80246A88:
/* 175368 80246A88 8262008B */  lb        $v0, 0x8b($s3)
/* 17536C 80246A8C 5040000B */  beql      $v0, $zero, .L80246ABC
/* 175370 80246A90 3C05FBFF */   lui      $a1, 0xfbff
/* 175374 80246A94 8CA20000 */  lw        $v0, ($a1)
/* 175378 80246A98 00441024 */  and       $v0, $v0, $a0
/* 17537C 80246A9C 10400006 */  beqz      $v0, .L80246AB8
/* 175380 80246AA0 2404000C */   addiu    $a0, $zero, 0xc
/* 175384 80246AA4 8CA20004 */  lw        $v0, 4($a1)
/* 175388 80246AA8 2403FFFD */  addiu     $v1, $zero, -3
/* 17538C 80246AAC 00431024 */  and       $v0, $v0, $v1
/* 175390 80246AB0 08091ABB */  j         .L80246AEC
/* 175394 80246AB4 ACA20004 */   sw       $v0, 4($a1)
.L80246AB8:
/* 175398 80246AB8 3C05FBFF */  lui       $a1, 0xfbff
.L80246ABC:
/* 17539C 80246ABC 34A5FFFF */  ori       $a1, $a1, 0xffff
/* 1753A0 80246AC0 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 1753A4 80246AC4 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 1753A8 80246AC8 8C620000 */  lw        $v0, ($v1)
/* 1753AC 80246ACC 8C640004 */  lw        $a0, 4($v1)
/* 1753B0 80246AD0 00451024 */  and       $v0, $v0, $a1
/* 1753B4 80246AD4 30840040 */  andi      $a0, $a0, 0x40
/* 1753B8 80246AD8 14800003 */  bnez      $a0, .L80246AE8
/* 1753BC 80246ADC AC620000 */   sw       $v0, ($v1)
/* 1753C0 80246AE0 08091ABB */  j         .L80246AEC
/* 1753C4 80246AE4 24040008 */   addiu    $a0, $zero, 8
.L80246AE8:
/* 1753C8 80246AE8 24040009 */  addiu     $a0, $zero, 9
.L80246AEC:
/* 1753CC 80246AEC 0C090464 */  jal       btl_set_state
/* 1753D0 80246AF0 00000000 */   nop
.L80246AF4:
/* 1753D4 80246AF4 8FBF0030 */  lw        $ra, 0x30($sp)
/* 1753D8 80246AF8 8FB7002C */  lw        $s7, 0x2c($sp)
/* 1753DC 80246AFC 8FB60028 */  lw        $s6, 0x28($sp)
/* 1753E0 80246B00 8FB50024 */  lw        $s5, 0x24($sp)
/* 1753E4 80246B04 8FB40020 */  lw        $s4, 0x20($sp)
/* 1753E8 80246B08 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1753EC 80246B0C 8FB20018 */  lw        $s2, 0x18($sp)
/* 1753F0 80246B10 8FB10014 */  lw        $s1, 0x14($sp)
/* 1753F4 80246B14 8FB00010 */  lw        $s0, 0x10($sp)
/* 1753F8 80246B18 D7B80048 */  ldc1      $f24, 0x48($sp)
/* 1753FC 80246B1C D7B60040 */  ldc1      $f22, 0x40($sp)
/* 175400 80246B20 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 175404 80246B24 03E00008 */  jr        $ra
/* 175408 80246B28 27BD0050 */   addiu    $sp, $sp, 0x50
