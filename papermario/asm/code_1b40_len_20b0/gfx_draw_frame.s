.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "globals.inc"

gfx_draw_frame:
/* 001F08 80026B08 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 001F0C 80026B0C 3C04800A */  lui   $a0, 0x800a
/* 001F10 80026B10 8C84A674 */  lw    $a0, -0x598c($a0)
/* 001F14 80026B14 3C05800A */  lui   $a1, 0x800a
/* 001F18 80026B18 24A5A66C */  addiu $a1, $a1, -0x5994
/* 001F1C 80026B1C AFB00010 */  sw    $s0, 0x10($sp)
/* 001F20 80026B20 3C10800A */  lui   $s0, 0x800a
/* 001F24 80026B24 2610A650 */  addiu $s0, $s0, -0x59b0
/* 001F28 80026B28 AFBF0018 */  sw    $ra, 0x18($sp)
/* 001F2C 80026B2C AFB10014 */  sw    $s1, 0x14($sp)
/* 001F30 80026B30 3C018007 */  lui   $at, 0x8007
/* 001F34 80026B34 A42041F0 */  sh    $zero, 0x41f0($at)
/* 001F38 80026B38 8E020000 */  lw    $v0, ($s0)
/* 001F3C 80026B3C 24830230 */  addiu $v1, $a0, 0x230
/* 001F40 80026B40 30420008 */  andi  $v0, $v0, 8
/* 001F44 80026B44 10400007 */  beqz  $v0, .L80026B64
/* 001F48 80026B48 ACA30000 */   sw    $v1, ($a1)
/* 001F4C 80026B4C 3C038007 */  lui   $v1, 0x8007
/* 001F50 80026B50 246341F4 */  addiu $v1, $v1, 0x41f4
/* 001F54 80026B54 8C620000 */  lw    $v0, ($v1)
/* 001F58 80026B58 38420001 */  xori  $v0, $v0, 1
/* 001F5C 80026B5C 08009B72 */  j     .L80026DC8
/* 001F60 80026B60 AC620000 */   sw    $v0, ($v1)

.L80026B64:
/* 001F64 80026B64 3C03DA38 */  lui   $v1, 0xda38
/* 001F68 80026B68 34630003 */  ori   $v1, $v1, 3
/* 001F6C 80026B6C 24820238 */  addiu $v0, $a0, 0x238
/* 001F70 80026B70 ACA20000 */  sw    $v0, ($a1)
/* 001F74 80026B74 3C028007 */  lui   $v0, 0x8007
/* 001F78 80026B78 244241A8 */  addiu $v0, $v0, 0x41a8
/* 001F7C 80026B7C AC830230 */  sw    $v1, 0x230($a0)
/* 001F80 80026B80 0C0B7698 */  jal   func_802DDA60
/* 001F84 80026B84 AC820234 */   sw    $v0, 0x234($a0)
/* 001F88 80026B88 8E020000 */  lw    $v0, ($s0)
/* 001F8C 80026B8C 30420002 */  andi  $v0, $v0, 2
/* 001F90 80026B90 14400003 */  bnez  $v0, .L80026BA0
/* 001F94 80026B94 00000000 */   nop   
/* 001F98 80026B98 0C00B5CF */  jal   render_frame
/* 001F9C 80026B9C 0000202D */   daddu $a0, $zero, $zero
.L80026BA0:
/* 001FA0 80026BA0 0C038098 */  jal   func_800E0260
/* 001FA4 80026BA4 00000000 */   nop   
/* 001FA8 80026BA8 0C0B0FB9 */  jal   func_802C3EE4
/* 001FAC 80026BAC 00000000 */   nop   
/* 001FB0 80026BB0 0C04E088 */  jal   func_80138220
/* 001FB4 80026BB4 00000000 */   nop   
/* 001FB8 80026BB8 0C048D54 */  jal   func_80123550
/* 001FBC 80026BBC 00000000 */   nop   
/* 001FC0 80026BC0 0C050884 */  jal   func_80142210
/* 001FC4 80026BC4 00000000 */   nop   
/* 001FC8 80026BC8 0C0167E5 */  jal   func_80059F94
/* 001FCC 80026BCC 00000000 */   nop   
/* 001FD0 80026BD0 0C044BD6 */  jal   render_ui
/* 001FD4 80026BD4 00000000 */   nop   
/* 001FD8 80026BD8 8E020000 */  lw    $v0, ($s0)
/* 001FDC 80026BDC 3C030001 */  lui   $v1, 1
/* 001FE0 80026BE0 00431024 */  and   $v0, $v0, $v1
/* 001FE4 80026BE4 14400003 */  bnez  $v0, .L80026BF4
/* 001FE8 80026BE8 00000000 */   nop   
/* 001FEC 80026BEC 0C051EB1 */  jal   func_80147AC4
/* 001FF0 80026BF0 00000000 */   nop   
.L80026BF4:
/* 001FF4 80026BF4 8E020000 */  lw    $v0, ($s0)
/* 001FF8 80026BF8 30420002 */  andi  $v0, $v0, 2
/* 001FFC 80026BFC 14400009 */  bnez  $v0, .L80026C24
/* 002000 80026C00 3C100010 */   lui   $s0, 0x10
/* 002004 80026C04 3C028007 */  lui   $v0, 0x8007
/* 002008 80026C08 8C42419C */  lw    $v0, 0x419c($v0)
/* 00200C 80026C0C 80420078 */  lb    $v0, 0x78($v0)
/* 002010 80026C10 14400004 */  bnez  $v0, .L80026C24
/* 002014 80026C14 00000000 */   nop   
/* 002018 80026C18 0C00B5CF */  jal   render_frame
/* 00201C 80026C1C 24040001 */   addiu $a0, $zero, 1
/* 002020 80026C20 3C100010 */  lui   $s0, 0x10
.L80026C24:
/* 002024 80026C24 3C11800A */  lui   $s1, 0x800a
/* 002028 80026C28 2631A650 */  addiu $s1, $s1, -0x59b0
/* 00202C 80026C2C 8E220000 */  lw    $v0, ($s1)
/* 002030 80026C30 36100010 */  ori   $s0, $s0, 0x10
/* 002034 80026C34 00501024 */  and   $v0, $v0, $s0
/* 002038 80026C38 14400003 */  bnez  $v0, .L80026C48
/* 00203C 80026C3C 00000000 */   nop   
/* 002040 80026C40 0C049081 */  jal   render_messages
/* 002044 80026C44 00000000 */   nop   
.L80026C48:
/* 002048 80026C48 0C048D38 */  jal   func_801234E0
/* 00204C 80026C4C 00000000 */   nop   
/* 002050 80026C50 0C0509C7 */  jal   func_8014271C
/* 002054 80026C54 00000000 */   nop   
/* 002058 80026C58 0C04E068 */  jal   func_801381A0
/* 00205C 80026C5C 00000000 */   nop   
/* 002060 80026C60 8E220000 */  lw    $v0, ($s1)
/* 002064 80026C64 24030010 */  addiu $v1, $zero, 0x10
/* 002068 80026C68 00501024 */  and   $v0, $v0, $s0
/* 00206C 80026C6C 14430003 */  bne   $v0, $v1, .L80026C7C
/* 002070 80026C70 00000000 */   nop   
/* 002074 80026C74 0C049081 */  jal   render_messages
/* 002078 80026C78 00000000 */   nop   
.L80026C7C:
/* 00207C 80026C7C 0C00AEA0 */  jal   func_8002BA80
/* 002080 80026C80 00000000 */   nop   
/* 002084 80026C84 8E220000 */  lw    $v0, ($s1)
/* 002088 80026C88 3C030010 */  lui   $v1, 0x10
/* 00208C 80026C8C 00431024 */  and   $v0, $v0, $v1
/* 002090 80026C90 10400003 */  beqz  $v0, .L80026CA0
/* 002094 80026C94 00000000 */   nop   
/* 002098 80026C98 0C049081 */  jal   render_messages
/* 00209C 80026C9C 00000000 */   nop   
.L80026CA0:
/* 0020A0 80026CA0 8E220000 */  lw    $v0, ($s1)
/* 0020A4 80026CA4 3C030001 */  lui   $v1, 1
/* 0020A8 80026CA8 00431024 */  and   $v0, $v0, $v1
/* 0020AC 80026CAC 10400003 */  beqz  $v0, .L80026CBC
/* 0020B0 80026CB0 00000000 */   nop   
/* 0020B4 80026CB4 0C051EB1 */  jal   func_80147AC4
/* 0020B8 80026CB8 00000000 */   nop   
.L80026CBC:
/* 0020BC 80026CBC 0C044BF1 */  jal   func_80112FC4
/* 0020C0 80026CC0 00000000 */   nop   
/* 0020C4 80026CC4 8E220000 */  lw    $v0, ($s1)
/* 0020C8 80026CC8 30420020 */  andi  $v0, $v0, 0x20
/* 0020CC 80026CCC 10400010 */  beqz  $v0, .L80026D10
/* 0020D0 80026CD0 00000000 */   nop   
/* 0020D4 80026CD4 3C038007 */  lui   $v1, 0x8007
/* 0020D8 80026CD8 846341A2 */  lh    $v1, 0x41a2($v1)
/* 0020DC 80026CDC 28620002 */  slti  $v0, $v1, 2
/* 0020E0 80026CE0 1040000B */  beqz  $v0, .L80026D10
/* 0020E4 80026CE4 00000000 */   nop   
/* 0020E8 80026CE8 04600009 */  bltz  $v1, .L80026D10
/* 0020EC 80026CEC 24040007 */   addiu $a0, $zero, 7
/* 0020F0 80026CF0 3C028007 */  lui   $v0, 0x8007
/* 0020F4 80026CF4 844241A0 */  lh    $v0, 0x41a0($v0)
/* 0020F8 80026CF8 44820000 */  mtc1  $v0, $f0
/* 0020FC 80026CFC 00000000 */  nop   
/* 002100 80026D00 46800020 */  cvt.s.w $f0, $f0
/* 002104 80026D04 44050000 */  mfc1  $a1, $f0
/* 002108 80026D08 0C04DAA0 */  jal   func_80136A80
/* 00210C 80026D0C 0000302D */   daddu $a2, $zero, $zero
.L80026D10:
/* 002110 80026D10 3C02800A */  lui   $v0, 0x800a
/* 002114 80026D14 8C42A66C */  lw    $v0, -0x5994($v0)
/* 002118 80026D18 3C03800A */  lui   $v1, 0x800a
/* 00211C 80026D1C 8C63A674 */  lw    $v1, -0x598c($v1)
/* 002120 80026D20 2442FDD0 */  addiu $v0, $v0, -0x230
/* 002124 80026D24 00431023 */  subu  $v0, $v0, $v1
/* 002128 80026D28 000210C2 */  srl   $v0, $v0, 3
/* 00212C 80026D2C 28422080 */  slti  $v0, $v0, 0x2080
/* 002130 80026D30 54400003 */  bnel  $v0, $zero, .L80026D40
/* 002134 80026D34 0000302D */   daddu $a2, $zero, $zero
.L80026D38:
/* 002138 80026D38 08009B4E */  j     .L80026D38
/* 00213C 80026D3C 00000000 */   nop   

.L80026D40:
/* 002140 80026D40 3C070004 */  lui   $a3, 4
/* 002144 80026D44 3C08800A */  lui   $t0, 0x800a
/* 002148 80026D48 2508A66C */  addiu $t0, $t0, -0x5994
/* 00214C 80026D4C 34E70001 */  ori   $a3, $a3, 1
/* 002150 80026D50 8D030000 */  lw    $v1, ($t0)
/* 002154 80026D54 3C02800A */  lui   $v0, 0x800a
/* 002158 80026D58 8C42A674 */  lw    $v0, -0x598c($v0)
/* 00215C 80026D5C 0060482D */  daddu $t1, $v1, $zero
/* 002160 80026D60 24630008 */  addiu $v1, $v1, 8
/* 002164 80026D64 24440230 */  addiu $a0, $v0, 0x230
/* 002168 80026D68 2465FDD8 */  addiu $a1, $v1, -0x228
/* 00216C 80026D6C 00A22823 */  subu  $a1, $a1, $v0
/* 002170 80026D70 000528C3 */  sra   $a1, $a1, 3
/* 002174 80026D74 000528C0 */  sll   $a1, $a1, 3
/* 002178 80026D78 3C02E900 */  lui   $v0, 0xe900
/* 00217C 80026D7C AD030000 */  sw    $v1, ($t0)
/* 002180 80026D80 AD220000 */  sw    $v0, ($t1)
/* 002184 80026D84 24620008 */  addiu $v0, $v1, 8
/* 002188 80026D88 AD200004 */  sw    $zero, 4($t1)
/* 00218C 80026D8C AD020000 */  sw    $v0, ($t0)
/* 002190 80026D90 3C02DF00 */  lui   $v0, 0xdf00
/* 002194 80026D94 AC620000 */  sw    $v0, ($v1)
/* 002198 80026D98 0C00B331 */  jal   nuGfxTaskStart
/* 00219C 80026D9C AC600004 */   sw    $zero, 4($v1)
/* 0021A0 80026DA0 24050140 */  addiu $a1, $zero, 0x140
/* 0021A4 80026DA4 240600F0 */  addiu $a2, $zero, 0xf0
/* 0021A8 80026DA8 3C038007 */  lui   $v1, 0x8007
/* 0021AC 80026DAC 246341F4 */  addiu $v1, $v1, 0x41f4
/* 0021B0 80026DB0 8C620000 */  lw    $v0, ($v1)
/* 0021B4 80026DB4 3C04800A */  lui   $a0, 0x800a
/* 0021B8 80026DB8 8C84A64C */  lw    $a0, -0x59b4($a0)
/* 0021BC 80026DBC 38420001 */  xori  $v0, $v0, 1
/* 0021C0 80026DC0 0C00B224 */  jal   func_8002C890
/* 0021C4 80026DC4 AC620000 */   sw    $v0, ($v1)
.L80026DC8:
/* 0021C8 80026DC8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0021CC 80026DCC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0021D0 80026DD0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0021D4 80026DD4 03E00008 */  jr    $ra
/* 0021D8 80026DD8 27BD0020 */   addiu $sp, $sp, 0x20