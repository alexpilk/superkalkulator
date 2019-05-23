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
static const char *ng0 = "C:/Users/lab/Desktop/POMOCE PROJEKT UCISW 2/PS2_RX/PS2_RX.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_0774719531;

unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_436279890_2162500114(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_2121104725_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 752U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3468);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 3568);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t3, 0U, 1, 0LL);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1052U);
    t3 = *((char **)t1);
    t10 = (1 - 1);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3568);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t4, 1U, 1, 0LL);
    goto LAB3;

}

static void work_a_2121104725_3212880686_p_1(char *t0)
{
    char t23[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    unsigned char t22;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 752U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3476);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1052U);
    t3 = *((char **)t1);
    t13 = (1 - 1);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t3 + t16);
    t5 = *((unsigned char *)t1);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = (unsigned char)0;

LAB12:    if (t2 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 6472);
    t8 = (t0 + 3604);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(49, ng0);
    t8 = (t0 + 1236U);
    t9 = *((char **)t8);
    t8 = (t0 + 6424U);
    t10 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t23, t9, t8, 1);
    t11 = (t23 + 12U);
    t24 = *((unsigned int *)t11);
    t25 = (1U * t24);
    t26 = (4U != t25);
    if (t26 == 1)
        goto LAB13;

LAB14:    t12 = (t0 + 3604);
    t27 = (t12 + 32U);
    t28 = *((char **)t27);
    t29 = (t28 + 40U);
    t30 = *((char **)t29);
    memcpy(t30, t10, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB10:    t4 = (t0 + 1052U);
    t7 = *((char **)t4);
    t17 = (0 - 1);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t4 = (t7 + t20);
    t21 = *((unsigned char *)t4);
    t22 = (t21 == (unsigned char)3);
    t2 = t22;
    goto LAB12;

LAB13:    xsi_size_not_matching(4U, t25, 0);
    goto LAB14;

}

static void work_a_2121104725_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 752U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3484);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t4 = (t0 + 1052U);
    t5 = *((char **)t4);
    t6 = (1 - 1);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t4 = (t5 + t9);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(64, ng0);
    t20 = (t0 + 1144U);
    t21 = *((char **)t20);
    t22 = (10 - 10);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t20 = (t21 + t24);
    t25 = (t0 + 3640);
    t26 = (t25 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t20, 10U);
    xsi_driver_first_trans_delta(t25, 1U, 10U, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 684U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t1 = (t0 + 3640);
    t5 = (t1 + 32U);
    t12 = *((char **)t5);
    t13 = (t12 + 40U);
    t20 = *((char **)t13);
    *((unsigned char *)t20) = t2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB6;

LAB8:    t12 = (t0 + 1052U);
    t13 = *((char **)t12);
    t14 = (0 - 1);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t12 = (t13 + t17);
    t18 = *((unsigned char *)t12);
    t19 = (t18 == (unsigned char)3);
    t3 = t19;
    goto LAB10;

}

static void work_a_2121104725_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    unsigned char t39;
    char *t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned char t46;
    unsigned char t47;
    char *t48;
    char *t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned char t54;
    unsigned char t55;
    char *t56;
    char *t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned char t62;
    unsigned char t63;
    unsigned char t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t3 = (8 - 10);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1144U);
    t9 = *((char **)t8);
    t10 = (7 - 10);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 1144U);
    t17 = *((char **)t16);
    t18 = (6 - 10);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t15, t22);
    t24 = (t0 + 1144U);
    t25 = *((char **)t24);
    t26 = (5 - 10);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t23, t30);
    t32 = (t0 + 1144U);
    t33 = *((char **)t32);
    t34 = (4 - 10);
    t35 = (t34 * -1);
    t36 = (1U * t35);
    t37 = (0 + t36);
    t32 = (t33 + t37);
    t38 = *((unsigned char *)t32);
    t39 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t31, t38);
    t40 = (t0 + 1144U);
    t41 = *((char **)t40);
    t42 = (3 - 10);
    t43 = (t42 * -1);
    t44 = (1U * t43);
    t45 = (0 + t44);
    t40 = (t41 + t45);
    t46 = *((unsigned char *)t40);
    t47 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t39, t46);
    t48 = (t0 + 1144U);
    t49 = *((char **)t48);
    t50 = (2 - 10);
    t51 = (t50 * -1);
    t52 = (1U * t51);
    t53 = (0 + t52);
    t48 = (t49 + t53);
    t54 = *((unsigned char *)t48);
    t55 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t47, t54);
    t56 = (t0 + 1144U);
    t57 = *((char **)t56);
    t58 = (1 - 10);
    t59 = (t58 * -1);
    t60 = (1U * t59);
    t61 = (0 + t60);
    t56 = (t57 + t61);
    t62 = *((unsigned char *)t56);
    t63 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t55, t62);
    t64 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t63);
    t65 = (t0 + 3676);
    t66 = (t65 + 32U);
    t67 = *((char **)t66);
    t68 = (t67 + 40U);
    t69 = *((char **)t68);
    *((unsigned char *)t69) = t64;
    xsi_driver_first_trans_fast(t65);

LAB2:    t70 = (t0 + 3492);
    *((int *)t70) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2121104725_3212880686_p_4(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 752U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3500);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(82, ng0);
    t3 = (t0 + 1604U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 3712);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}

static void work_a_2121104725_3212880686_p_5(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    unsigned char t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    unsigned char t34;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3748);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 3508);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(94, ng0);
    t4 = (t0 + 1236U);
    t5 = *((char **)t4);
    t4 = (t0 + 6424U);
    t6 = (t0 + 6476);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 3;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (3 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t13 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t5, t4, t6, t8);
    if (t13 != 0)
        goto LAB6;

LAB8:
LAB7:    goto LAB2;

LAB4:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t11 = (0 - 10);
    t12 = (t11 * -1);
    t18 = (1U * t12);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t21 = (t20 == (unsigned char)2);
    if (t21 == 1)
        goto LAB15;

LAB16:    t13 = (unsigned char)0;

LAB17:    if (t13 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 3748);
    t2 = (t1 + 32U);
    t4 = *((char **)t2);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB10:    goto LAB2;

LAB5:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 3748);
    t2 = (t1 + 32U);
    t4 = *((char **)t2);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(95, ng0);
    t10 = (t0 + 3748);
    t14 = (t10 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)1;
    xsi_driver_first_trans_fast(t10);
    goto LAB7;

LAB9:    xsi_set_current_line(99, ng0);
    t10 = (t0 + 3748);
    t14 = (t10 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t10);
    goto LAB10;

LAB12:    t6 = (t0 + 1144U);
    t9 = *((char **)t6);
    t29 = (10 - 10);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t6 = (t9 + t32);
    t33 = *((unsigned char *)t6);
    t34 = (t33 == (unsigned char)3);
    t3 = t34;
    goto LAB14;

LAB15:    t4 = (t0 + 1144U);
    t5 = *((char **)t4);
    t22 = (9 - 10);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t4 = (t5 + t25);
    t26 = *((unsigned char *)t4);
    t6 = (t0 + 1328U);
    t7 = *((char **)t6);
    t27 = *((unsigned char *)t7);
    t28 = (t26 == t27);
    t13 = t28;
    goto LAB17;

}

static void work_a_2121104725_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 3784);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 3516);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 3784);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2121104725_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(121, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t3 = (10 - 8);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3820);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 3524);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2121104725_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2121104725_3212880686_p_0,(void *)work_a_2121104725_3212880686_p_1,(void *)work_a_2121104725_3212880686_p_2,(void *)work_a_2121104725_3212880686_p_3,(void *)work_a_2121104725_3212880686_p_4,(void *)work_a_2121104725_3212880686_p_5,(void *)work_a_2121104725_3212880686_p_6,(void *)work_a_2121104725_3212880686_p_7};
	xsi_register_didat("work_a_2121104725_3212880686", "isim/PS2_RX_TB_isim_beh.exe.sim/work/a_2121104725_3212880686.didat");
	xsi_register_executes(pe);
}
