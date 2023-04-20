//
// Created by dionis on 19.04.23.
//

#ifndef LAB_8_MATH_COMMON_H
#define LAB_8_MATH_COMMON_H


#include "time.h"


void sum_no_asm(float a1, float b1, double a2, double b2, clock_t *res1, clock_t *res2);
void mul_no_asm(float a1, float b1, double a2, double b2, clock_t *res1, clock_t *res2);
void sub_no_asm(float a1, float b1, double a2, double b2, clock_t *res1, clock_t *res2);
void div_no_asm(float a1, float b1, double a2, double b2, clock_t *res1, clock_t *res2);


#endif //LAB_8_MATH_COMMON_H
