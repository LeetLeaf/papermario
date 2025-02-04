.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80026710
/* 1B10 80026710 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 1B14 80026714 8C63417C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 1B18 80026718 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1B1C 8002671C AFBF0018 */  sw        $ra, 0x18($sp)
/* 1B20 80026720 AFB10014 */  sw        $s1, 0x14($sp)
/* 1B24 80026724 AFB00010 */  sw        $s0, 0x10($sp)
/* 1B28 80026728 94620134 */  lhu       $v0, 0x134($v1)
/* 1B2C 8002672C 3C040CDF */  lui       $a0, 0xcdf
/* 1B30 80026730 24420001 */  addiu     $v0, $v0, 1
/* 1B34 80026734 A4620134 */  sh        $v0, 0x134($v1)
/* 1B38 80026738 3C038011 */  lui       $v1, %hi(D_8010F450)
/* 1B3C 8002673C 2463F450 */  addiu     $v1, $v1, %lo(D_8010F450)
/* 1B40 80026740 8C6202BC */  lw        $v0, 0x2bc($v1)
/* 1B44 80026744 3484E5FF */  ori       $a0, $a0, 0xe5ff
/* 1B48 80026748 24420002 */  addiu     $v0, $v0, 2
/* 1B4C 8002674C AC6202BC */  sw        $v0, 0x2bc($v1)
/* 1B50 80026750 0082102B */  sltu      $v0, $a0, $v0
/* 1B54 80026754 54400001 */  bnel      $v0, $zero, .L8002675C
/* 1B58 80026758 AC6402BC */   sw       $a0, 0x2bc($v1)
.L8002675C:
/* 1B5C 8002675C 0C00A211 */  jal       func_80028844
/* 1B60 80026760 00000000 */   nop
/* 1B64 80026764 0C00A3D3 */  jal       func_80028F4C
/* 1B68 80026768 00000000 */   nop
/* 1B6C 8002676C 3C048007 */  lui       $a0, %hi(D_80074001)
/* 1B70 80026770 24844001 */  addiu     $a0, $a0, %lo(D_80074001)
/* 1B74 80026774 80820000 */  lb        $v0, ($a0)
/* 1B78 80026778 90830000 */  lbu       $v1, ($a0)
/* 1B7C 8002677C 10400008 */  beqz      $v0, .L800267A0
/* 1B80 80026780 2462FFFF */   addiu    $v0, $v1, -1
/* 1B84 80026784 A0820000 */  sb        $v0, ($a0)
/* 1B88 80026788 00021600 */  sll       $v0, $v0, 0x18
/* 1B8C 8002678C 14400087 */  bnez      $v0, .L800269AC
/* 1B90 80026790 00000000 */   nop
/* 1B94 80026794 3C028007 */  lui       $v0, %hi(D_80074000)
/* 1B98 80026798 90424000 */  lbu       $v0, %lo(D_80074000)($v0)
/* 1B9C 8002679C A0820000 */  sb        $v0, ($a0)
.L800267A0:
/* 1BA0 800267A0 0C04833E */  jal       func_80120CF8
/* 1BA4 800267A4 00000000 */   nop
/* 1BA8 800267A8 0C00E08F */  jal       func_8003823C
/* 1BAC 800267AC 00000000 */   nop
/* 1BB0 800267B0 0C04A185 */  jal       func_80128614
/* 1BB4 800267B4 00000000 */   nop
/* 1BB8 800267B8 0C052A44 */  jal       func_8014A910
/* 1BBC 800267BC 00000000 */   nop
/* 1BC0 800267C0 0C0B0F5D */  jal       func_802C3D74
/* 1BC4 800267C4 00000000 */   nop
/* 1BC8 800267C8 0C04A298 */  jal       func_80128A60
/* 1BCC 800267CC 00000000 */   nop
/* 1BD0 800267D0 0C0519B0 */  jal       func_801466C0
/* 1BD4 800267D4 00000000 */   nop
/* 1BD8 800267D8 0C046022 */  jal       func_80118088
/* 1BDC 800267DC 00000000 */   nop
/* 1BE0 800267E0 0C045238 */  jal       func_801148E0
/* 1BE4 800267E4 00000000 */   nop
/* 1BE8 800267E8 0C04F492 */  jal       func_8013D248
/* 1BEC 800267EC 00000000 */   nop
/* 1BF0 800267F0 0C053D7E */  jal       func_8014F5F8
/* 1BF4 800267F4 00000000 */   nop
/* 1BF8 800267F8 0C0530C5 */  jal       func_8014C314
/* 1BFC 800267FC 00000000 */   nop
/* 1C00 80026800 0C0539F9 */  jal       func_8014E7E4
/* 1C04 80026804 00000000 */   nop
/* 1C08 80026808 0C053131 */  jal       func_8014C4C4
/* 1C0C 8002680C 00000000 */   nop
/* 1C10 80026810 0C00AE8E */  jal       func_8002BA38
/* 1C14 80026814 00000000 */   nop
/* 1C18 80026818 3C10800A */  lui       $s0, %hi(D_8009A630)
/* 1C1C 8002681C 2610A630 */  addiu     $s0, $s0, %lo(D_8009A630)
/* 1C20 80026820 8E040000 */  lw        $a0, ($s0)
/* 1C24 80026824 30820020 */  andi      $v0, $a0, 0x20
/* 1C28 80026828 10400035 */  beqz      $v0, .L80026900
/* 1C2C 8002682C 00000000 */   nop
/* 1C30 80026830 3C118007 */  lui       $s1, %hi(D_80074182)
/* 1C34 80026834 26314182 */  addiu     $s1, $s1, %lo(D_80074182)
/* 1C38 80026838 86230000 */  lh        $v1, ($s1)
/* 1C3C 8002683C 10600005 */  beqz      $v1, .L80026854
/* 1C40 80026840 24020001 */   addiu    $v0, $zero, 1
/* 1C44 80026844 1062001C */  beq       $v1, $v0, .L800268B8
/* 1C48 80026848 34840008 */   ori      $a0, $a0, 8
/* 1C4C 8002684C 08009A44 */  j         .L80026910
/* 1C50 80026850 00000000 */   nop
.L80026854:
/* 1C54 80026854 34820200 */  ori       $v0, $a0, 0x200
/* 1C58 80026858 0C038056 */  jal       func_800E0158
/* 1C5C 8002685C AE020000 */   sw       $v0, ($s0)
/* 1C60 80026860 3C048007 */  lui       $a0, %hi(D_80074180)
/* 1C64 80026864 24844180 */  addiu     $a0, $a0, %lo(D_80074180)
/* 1C68 80026868 240500FF */  addiu     $a1, $zero, 0xff
/* 1C6C 8002686C 84820000 */  lh        $v0, ($a0)
/* 1C70 80026870 94830000 */  lhu       $v1, ($a0)
/* 1C74 80026874 14450008 */  bne       $v0, $a1, .L80026898
/* 1C78 80026878 2462000A */   addiu    $v0, $v1, 0xa
/* 1C7C 8002687C 24020001 */  addiu     $v0, $zero, 1
/* 1C80 80026880 A6220000 */  sh        $v0, ($s1)
/* 1C84 80026884 24020003 */  addiu     $v0, $zero, 3
/* 1C88 80026888 3C01800A */  lui       $at, %hi(D_8009A670)
/* 1C8C 8002688C A422A670 */  sh        $v0, %lo(D_8009A670)($at)
/* 1C90 80026890 08009A44 */  j         .L80026910
/* 1C94 80026894 00000000 */   nop
.L80026898:
/* 1C98 80026898 A4820000 */  sh        $v0, ($a0)
/* 1C9C 8002689C 00021400 */  sll       $v0, $v0, 0x10
/* 1CA0 800268A0 00021403 */  sra       $v0, $v0, 0x10
/* 1CA4 800268A4 28420100 */  slti      $v0, $v0, 0x100
/* 1CA8 800268A8 50400019 */  beql      $v0, $zero, .L80026910
/* 1CAC 800268AC A4850000 */   sh       $a1, ($a0)
/* 1CB0 800268B0 08009A44 */  j         .L80026910
/* 1CB4 800268B4 00000000 */   nop
.L800268B8:
/* 1CB8 800268B8 3C02800A */  lui       $v0, %hi(D_8009A670)
/* 1CBC 800268BC 2442A670 */  addiu     $v0, $v0, %lo(D_8009A670)
/* 1CC0 800268C0 94430000 */  lhu       $v1, ($v0)
/* 1CC4 800268C4 AE040000 */  sw        $a0, ($s0)
/* 1CC8 800268C8 2463FFFF */  addiu     $v1, $v1, -1
/* 1CCC 800268CC A4430000 */  sh        $v1, ($v0)
/* 1CD0 800268D0 00031C00 */  sll       $v1, $v1, 0x10
/* 1CD4 800268D4 1460000E */  bnez      $v1, .L80026910
/* 1CD8 800268D8 00000000 */   nop
/* 1CDC 800268DC 0C053A3A */  jal       func_8014E8E8
/* 1CE0 800268E0 00000000 */   nop
/* 1CE4 800268E4 0C00CC60 */  jal       func_80033180
/* 1CE8 800268E8 0000202D */   daddu    $a0, $zero, $zero
/* 1CEC 800268EC 8E020000 */  lw        $v0, ($s0)
/* 1CF0 800268F0 2403FFDF */  addiu     $v1, $zero, -0x21
/* 1CF4 800268F4 00431024 */  and       $v0, $v0, $v1
/* 1CF8 800268F8 08009A44 */  j         .L80026910
/* 1CFC 800268FC AE020000 */   sw       $v0, ($s0)
.L80026900:
/* 1D00 80026900 3C018007 */  lui       $at, %hi(D_80074180)
/* 1D04 80026904 A4204180 */  sh        $zero, %lo(D_80074180)($at)
/* 1D08 80026908 3C018007 */  lui       $at, %hi(D_80074182)
/* 1D0C 8002690C A4204182 */  sh        $zero, %lo(D_80074182)($at)
.L80026910:
/* 1D10 80026910 3C04800A */  lui       $a0, %hi(D_8009A630)
/* 1D14 80026914 2484A630 */  addiu     $a0, $a0, %lo(D_8009A630)
/* 1D18 80026918 8C830000 */  lw        $v1, ($a0)
/* 1D1C 8002691C 30620100 */  andi      $v0, $v1, 0x100
/* 1D20 80026920 14400003 */  bnez      $v0, .L80026930
/* 1D24 80026924 34621000 */   ori      $v0, $v1, 0x1000
/* 1D28 80026928 2402EFFF */  addiu     $v0, $zero, -0x1001
/* 1D2C 8002692C 00621024 */  and       $v0, $v1, $v0
.L80026930:
/* 1D30 80026930 AC820000 */  sw        $v0, ($a0)
/* 1D34 80026934 3C04800A */  lui       $a0, %hi(D_8009A630)
/* 1D38 80026938 2484A630 */  addiu     $a0, $a0, %lo(D_8009A630)
/* 1D3C 8002693C 8C830000 */  lw        $v1, ($a0)
/* 1D40 80026940 30620200 */  andi      $v0, $v1, 0x200
/* 1D44 80026944 14400003 */  bnez      $v0, .L80026954
/* 1D48 80026948 34622000 */   ori      $v0, $v1, 0x2000
/* 1D4C 8002694C 2402DFFF */  addiu     $v0, $zero, -0x2001
/* 1D50 80026950 00621024 */  and       $v0, $v1, $v0
.L80026954:
/* 1D54 80026954 AC820000 */  sw        $v0, ($a0)
/* 1D58 80026958 3C04800A */  lui       $a0, %hi(D_8009A630)
/* 1D5C 8002695C 2484A630 */  addiu     $a0, $a0, %lo(D_8009A630)
/* 1D60 80026960 8C830000 */  lw        $v1, ($a0)
/* 1D64 80026964 30620400 */  andi      $v0, $v1, 0x400
/* 1D68 80026968 14400003 */  bnez      $v0, .L80026978
/* 1D6C 8002696C 34624000 */   ori      $v0, $v1, 0x4000
/* 1D70 80026970 2402BFFF */  addiu     $v0, $zero, -0x4001
/* 1D74 80026974 00621024 */  and       $v0, $v1, $v0
.L80026978:
/* 1D78 80026978 AC820000 */  sw        $v0, ($a0)
/* 1D7C 8002697C 3C04800A */  lui       $a0, %hi(D_8009A630)
/* 1D80 80026980 2484A630 */  addiu     $a0, $a0, %lo(D_8009A630)
/* 1D84 80026984 8C830000 */  lw        $v1, ($a0)
/* 1D88 80026988 30620800 */  andi      $v0, $v1, 0x800
/* 1D8C 8002698C 14400004 */  bnez      $v0, .L800269A0
/* 1D90 80026990 34628000 */   ori      $v0, $v1, 0x8000
/* 1D94 80026994 3C02FFFF */  lui       $v0, 0xffff
/* 1D98 80026998 34427FFF */  ori       $v0, $v0, 0x7fff
/* 1D9C 8002699C 00621024 */  and       $v0, $v1, $v0
.L800269A0:
/* 1DA0 800269A0 AC820000 */  sw        $v0, ($a0)
/* 1DA4 800269A4 0C00A66F */  jal       func_800299BC
/* 1DA8 800269A8 24040001 */   addiu    $a0, $zero, 1
.L800269AC:
/* 1DAC 800269AC 8FBF0018 */  lw        $ra, 0x18($sp)
/* 1DB0 800269B0 8FB10014 */  lw        $s1, 0x14($sp)
/* 1DB4 800269B4 8FB00010 */  lw        $s0, 0x10($sp)
/* 1DB8 800269B8 03E00008 */  jr        $ra
/* 1DBC 800269BC 27BD0020 */   addiu    $sp, $sp, 0x20
