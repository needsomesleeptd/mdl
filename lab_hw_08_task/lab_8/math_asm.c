//
// Created by dionis on 19.04.23.
//
#include <time.h>

#include "math_asm.h"
#include "measurements.h"


clock_t sum_asm_32(float a, float b)
{
	float result = 0;
	clock_t start_time, res_time = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		__asm__(
			"fld %1\n"                                          // загружаем a на вершину стека
			"fld %2\n"                                          // загружаем b на вершину стека
			"faddp %%ST(1), %%ST(0)\n"                          // складываем ST(1) и ST(0), сохраняем результат в ST(1) и извлекаем из стека сопроцессора (поэтому 'p' в названии команды)
			"fstp %0\n"                                         // извлекаем число из FPU в память, в данном случае из ST(0) в res
			: "=m"(result)                                      // res - выходной параметр
			: "m"(a),                                           // a - входной параметр
			"m"(b)                                            // b - входной параметр
			);
		res_time += clock() - start_time;
	}

	return res_time;
}


clock_t sum_asm_64(double a, double b)
{
	double result = 0;
	clock_t start_time, res_time = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		__asm__(
			"fld %1\n"                                          // загружаем a на вершину стека
			"fld %2\n"                                          // загружаем b на вершину стека
			"faddp %%ST(1), %%ST(0)\n"                          // складываем ST(1) и ST(0), сохраняем результат в ST(1) и извлекаем из стека сопроцессора (поэтому 'p' в названии команды)
			"fstp %0\n"                                         // извлекаем число из FPU в память, в данном случае из ST(0) в res
			: "=m"(result)                                      // res - выходной параметр
			: "m"(a),                                           // a - входной параметр
			"m"(b)                                            // b - входной параметр
			);
		res_time += clock() - start_time;
	}

	return res_time;
}


clock_t mul_asm_32(float a, float b)
{
	float result = 0;
	clock_t start_time, res_time = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		__asm__
			(
			"fld %1\n"
			"fld %2\n"
			"fmulp %%ST(1), %%ST(0)\n"
			"fstp %0\n"
			:"=m"(result)
			: "m"(a),
		"m"(b)
			);
		res_time += clock() - start_time;
	}

	return res_time;
}


clock_t mul_asm_64(double a, double b)
{
	double result = 0;
	clock_t start_time, res_time = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		__asm__
			(
			"fld %1\n"
			"fld %2\n"
			"fmulp %%ST(1), %%ST(0)\n"
			"fstp %0\n"
			:"=m"(result)
			: "m"(a),
		"m"(b)
			);
		res_time += clock() - start_time;
	}

	return res_time;
}


clock_t sub_asm_32(float a, float b)
{
	float result = 0;
	clock_t start_time, res_time = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		__asm__
			(
			"fld %1\n"
			"fld %2\n"
			"fsubp %%ST(1), %%ST(0)\n"
			"fstp %0\n"
			:"=m"(result)
			: "m"(a),
			"m"(b)
			);
		res_time += clock() - start_time;
	}

	return res_time;
}


clock_t sub_asm_64(double a, double b)
{
	double result = 0;
	clock_t start_time, res_time = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		__asm__
			(
			"fld %1\n"
			"fld %2\n"
			"fsubp %%ST(1), %%ST(0)\n"
			"fstp %0\n"
			:"=m"(result)
			: "m"(a),
			"m"(b)
			);
		res_time += clock() - start_time;
	}

	return res_time;
}


clock_t div_asm_32(float a, float b)
{
	float result = 0;
	clock_t start_time, res_time = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		__asm__
			(
			"fld %1\n"
			"fld %2\n"
			"fdivp %%ST(1), %%ST(0)\n"
			"fstp %0\n"
			:"=m"(result)
			: "m"(a),
			"m"(b)
			);
		res_time += clock() - start_time;
	}

	return res_time;
}


clock_t div_asm_64(double a, double b)
{
	double result = 0;
	clock_t start_time, res_time = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		__asm__
			(
			"fld %1\n"
			"fld %2\n"
			"fdivp %%ST(1), %%ST(0)\n"
			"fstp %0\n"
			:"=m"(result)
			: "m"(a),
			"m"(b)
			);
		res_time += clock() - start_time;
	}

	return res_time;
}


