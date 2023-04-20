//
// Created by dionis on 19.04.23.
//
#include <stdio.h>

#include "math_common.h"
#include "measurements.h"


void sum_no_asm(float a1, float b1, double a2, double b2, clock_t *res1, clock_t *res2)
{
	float result1 = 0;
	clock_t start_time;
	*res1 = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a1 + b1;
		*res1 += clock() - start_time;
	}


	double result2 = 0;
	*res2 = 0;
	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result2 = a2 + b2;
		*res2 += clock() - start_time;
	}

	printf("To prevent optimization. %f %lf", result1, result2);
}


void mul_no_asm(float a1, float b1, double a2, double b2, clock_t *res1, clock_t *res2)
{
	float result1 = 0;
	clock_t start_time;
	*res1 = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a1 * b1;
		*res1 += clock() - start_time;
	}


	double result2 = 0;
	*res2 = 0;
	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result2 = a2 * b2;
		*res2 += clock() - start_time;
	}

	printf("To prevent optimization. %f %lf", result1, result2);
}


void sub_no_asm(float a1, float b1, double a2, double b2, clock_t *res1, clock_t *res2)
{
	float result1 = 0;
	clock_t start_time;
	*res1 = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a1 - b1;
		*res1 += clock() - start_time;
	}


	double result2 = 0;
	*res2 = 0;
	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result2 = a2 - b2;
		*res2 += clock() - start_time;
	}

	printf("To prevent optimization. %f %lf", result1, result2);
}


void div_no_asm(float a1, float b1, double a2, double b2, clock_t *res1, clock_t *res2)
{
	float result1 = 0;
	clock_t start_time;
	*res1 = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a1 / b1;
		*res1 += clock() - start_time;
	}


	double result2 = 0;
	*res2 = 0;
	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result2 = a2 / b2;
		*res2 += clock() - start_time;
	}

	printf("To prevent optimization. %f %lf", result1, result2);
}
