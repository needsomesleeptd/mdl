//
// Created by dionis on 19.04.23.
//
#include <stdio.h>

#include "math_common.h"
#include "measurements.h"


void float_sum(float a,float b, clock_t *res)
{
	float result1 = 0;
	clock_t start_time;
	*res = 0;
	
	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a + b;
		*res += clock() - start_time;
	}
}

void double_sum(double a,double b, clock_t *res)
{
	double result1 = 0;
	clock_t start_time;
	*res = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a + b;
		*res += clock() - start_time;
	}
}


void float_mul(float a,float b, clock_t *res)
{
	float result1 = 0;
	clock_t start_time;
	*res = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a * b;
		*res += clock() - start_time;
	}
}

void double_mul(double a,double b, clock_t *res)
{
	double result1 = 0;
	clock_t start_time;
	*res = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a * b;
		*res += clock() - start_time;
	}
}


void float_sub(float a,float b, clock_t *res)
{
	float result1 = 0;
	clock_t start_time;
	*res = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a - b;
		*res += clock() - start_time;
	}
}

void double_sub(double a,double b, clock_t *res)
{
	double result1 = 0;
	clock_t start_time;
	*res = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a - b;
		*res += clock() - start_time;
	}
}


void float_div(float a,float b, clock_t *res)
{
	float result1 = 0;
	clock_t start_time;
	*res = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a / b;
		*res += clock() - start_time;
	}
}

void double_div(double a,double b, clock_t *res)
{
	double result1 = 0;
	clock_t start_time;
	*res = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a / b;
		*res += clock() - start_time;
	}
}





void div_no_asm(float a, float b, double a2, double b2, clock_t *res1, clock_t *res2)
{
	float result1 = 0;
	clock_t start_time;
	*res1 = 0;

	for (int i = 0; i < TIMES; i++)
	{
		start_time = clock();
		result1 = a / b;
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
