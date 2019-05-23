/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/lab/Desktop/POMOCE PROJEKT UCISW 2/PS2_RX/PS2_RX_TB.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_0510460787_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2064);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1132U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1588);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2064);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1132U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1588);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

void work_a_0510460787_2372691052_sub_3811968552_952992138(char *t0, char *t1, char *t2)
{
    char t3[72];
    char t4[16];
    char t5[16];
    char t12[16];
    char t14[16];
    char t18[16];
    char t23[16];
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned char t35;
    char *t36;
    int t37;
    int t38;
    char *t39;
    char *t40;
    int t41;
    char *t42;
    int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned char t48;
    char *t49;
    int t50;
    char *t51;
    int t52;
    int t53;
    unsigned int t54;
    char *t55;
    int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned char t60;
    unsigned char t61;
    char *t62;
    char *t63;
    int t64;
    char *t65;
    int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    int64 t72;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 7;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t0 + 3908);
    t13 = ((IEEE_P_2592010699) + 2332);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 1;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (1 - 0);
    t9 = (t17 * 1);
    t9 = (t9 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t9;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t7, t14, (char)97, t2, t5, (char)101);
    t19 = ((IEEE_P_2592010699) + 2332);
    t16 = xsi_base_array_concat(t16, t18, t19, (char)97, t11, t12, (char)99, (unsigned char)2, (char)101);
    t20 = (t5 + 12U);
    t9 = *((unsigned int *)t20);
    t9 = (t9 * 1U);
    t21 = (2U + t9);
    t22 = (t21 + 1U);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 10;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (0 - 10);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = (t3 + 4U);
    t28 = ((IEEE_P_2592010699) + 2332);
    t29 = (t25 + 52U);
    *((char **)t29) = t28;
    t30 = (char *)alloca(t22);
    t31 = (t25 + 36U);
    *((char **)t31) = t30;
    memcpy(t30, t16, t22);
    t32 = (t25 + 40U);
    *((char **)t32) = t23;
    t33 = (t25 + 48U);
    *((unsigned int *)t33) = t22;
    t34 = (t4 + 4U);
    t35 = (t2 != 0);
    if (t35 == 1)
        goto LAB3;

LAB2:    t36 = (t4 + 8U);
    *((char **)t36) = t5;
    t37 = 0;
    t38 = 7;

LAB4:    if (t37 <= t38)
        goto LAB5;

LAB7:    t8 = 0;
    t17 = 10;

LAB9:    if (t8 <= t17)
        goto LAB10;

LAB12:
LAB1:    return;
LAB3:    *((char **)t34) = t2;
    goto LAB2;

LAB5:    t39 = (t25 + 36U);
    t40 = *((char **)t39);
    t39 = (t23 + 0U);
    t41 = *((int *)t39);
    t42 = (t23 + 8U);
    t43 = *((int *)t42);
    t44 = (9 - t41);
    t27 = (t44 * t43);
    t45 = (1U * t27);
    t46 = (0 + t45);
    t47 = (t40 + t46);
    t48 = *((unsigned char *)t47);
    t49 = (t5 + 0U);
    t50 = *((int *)t49);
    t51 = (t5 + 8U);
    t52 = *((int *)t51);
    t53 = (t37 - t50);
    t54 = (t53 * t52);
    t55 = (t5 + 4U);
    t56 = *((int *)t55);
    xsi_vhdl_check_range_of_index(t50, t56, t52, t37);
    t57 = (1U * t54);
    t58 = (0 + t57);
    t59 = (t2 + t58);
    t60 = *((unsigned char *)t59);
    t61 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t48, t60);
    t62 = (t25 + 36U);
    t63 = *((char **)t62);
    t62 = (t23 + 0U);
    t64 = *((int *)t62);
    t65 = (t23 + 8U);
    t66 = *((int *)t65);
    t67 = (9 - t64);
    t68 = (t67 * t66);
    t69 = (1U * t68);
    t70 = (0 + t69);
    t71 = (t63 + t70);
    *((unsigned char *)t71) = t61;

LAB6:    if (t37 == t38)
        goto LAB7;

LAB8:    t8 = (t37 + 1);
    t37 = t8;
    goto LAB4;

LAB10:    t6 = (t25 + 36U);
    t7 = *((char **)t6);
    t6 = (t23 + 0U);
    t26 = *((int *)t6);
    t10 = (t23 + 8U);
    t37 = *((int *)t10);
    t38 = (t8 - t26);
    t9 = (t38 * t37);
    t11 = (t23 + 4U);
    t41 = *((int *)t11);
    xsi_vhdl_check_range_of_index(t26, t41, t37, t8);
    t21 = (1U * t9);
    t22 = (0 + t21);
    t13 = (t7 + t22);
    t35 = *((unsigned char *)t13);
    t15 = (t0 + 2100);
    t16 = (t15 + 32U);
    t19 = *((char **)t16);
    t20 = (t19 + 40U);
    t24 = *((char **)t20);
    *((unsigned char *)t24) = t35;
    xsi_driver_first_trans_fast(t15);
    t72 = (5 * 1000000LL);
    xsi_process_wait(t1, t72);

LAB16:    t6 = (t1 + 48U);
    t7 = *((char **)t6);
    t10 = (t7 + 1440U);
    *((unsigned int *)t10) = 1U;
    t11 = (t1 + 48U);
    t13 = *((char **)t11);
    t15 = (t13 + 0U);
    getcontext(t15);
    t16 = (t1 + 48U);
    t19 = *((char **)t16);
    t20 = (t19 + 1440U);
    t9 = *((unsigned int *)t20);
    if (t9 == 1)
        goto LAB17;

LAB18:    t24 = (t1 + 48U);
    t28 = *((char **)t24);
    t29 = (t28 + 1440U);
    *((unsigned int *)t29) = 3U;

LAB14:
LAB15:
LAB13:    t6 = (t0 + 2136);
    t7 = (t6 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 40U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    t72 = (50 * 1000000LL);
    t15 = (t0 + 2136);
    t16 = (t15 + 32U);
    t19 = *((char **)t16);
    t20 = (t19 + 40U);
    t24 = *((char **)t20);
    *((unsigned char *)t24) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t15, 0U, 1, t72);
    t72 = (95 * 1000000LL);
    xsi_process_wait(t1, t72);

LAB22:    t6 = (t1 + 48U);
    t7 = *((char **)t6);
    t10 = (t7 + 1440U);
    *((unsigned int *)t10) = 1U;
    t11 = (t1 + 48U);
    t13 = *((char **)t11);
    t15 = (t13 + 0U);
    getcontext(t15);
    t16 = (t1 + 48U);
    t19 = *((char **)t16);
    t20 = (t19 + 1440U);
    t9 = *((unsigned int *)t20);
    if (t9 == 1)
        goto LAB23;

LAB24:    t24 = (t1 + 48U);
    t28 = *((char **)t24);
    t29 = (t28 + 1440U);
    *((unsigned int *)t29) = 3U;

LAB20:
LAB21:
LAB19:
LAB11:    if (t8 == t17)
        goto LAB12;

LAB25:    t26 = (t8 + 1);
    t8 = t26;
    goto LAB9;

LAB17:    xsi_saveStackAndSuspend(t1);
    goto LAB18;

LAB23:    xsi_saveStackAndSuspend(t1);
    goto LAB24;

}

static void work_a_0510460787_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;

LAB0:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t3 = (15 * 1000000LL);
    t2 = (t0 + 1732);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1732);
    t4 = (t0 + 3910);
    work_a_0510460787_2372691052_sub_3811968552_952992138(t0, t2, t4);
    xsi_set_current_line(76, ng0);
    t3 = (200 * 1000000LL);
    t2 = (t0 + 1732);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1732);
    t4 = (t0 + 3918);
    work_a_0510460787_2372691052_sub_3811968552_952992138(t0, t2, t4);
    xsi_set_current_line(78, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_0510460787_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0510460787_2372691052_p_0,(void *)work_a_0510460787_2372691052_p_1};
	static char *se[] = {(void *)work_a_0510460787_2372691052_sub_3811968552_952992138};
	xsi_register_didat("work_a_0510460787_2372691052", "isim/PS2_RX_TB_isim_beh.exe.sim/work/a_0510460787_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
