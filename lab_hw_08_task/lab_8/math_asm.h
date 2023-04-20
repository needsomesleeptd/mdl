//
// Created by dionis on 19.04.23.
//

#ifndef LAB_8_MATH_ASM_H
#define LAB_8_MATH_ASM_H


#include "measurements.h"


clock_t sum_asm_32(float a, float b);
clock_t sum_asm_64(double a, double b);


clock_t mul_asm_32(float a, float b);
clock_t mul_asm_64(double a, double b);


clock_t sub_asm_32(float a, float b);
clock_t sub_asm_64(double a, double b);


clock_t div_asm_32(float a, float b);
clock_t div_asm_64(double a, double b);

#endif //LAB_8_MATH_ASM_H
