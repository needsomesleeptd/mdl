//
// Created by dionis on 19.04.23.
//
#include <math.h>
#include <stdio.h>

#include "comp_sin.h"


double sin_asm(void)
{
	double result = 0.0;
	__asm__(
			"fldpi\n"
			"fsin\n"
			"fstp %0\n"
			:"=m"(result)
			);
	return result;
}


double sin_half_asm(void)
{
	double result = 0.0;
	double divide = 2.0;
	__asm__(
			"fldpi\n"
			"fld %1\n"
			"fdivp %%ST(1), %%ST(0)\n"
			"fsin\n"
			"fstp %0\n"
			: "=m"(result)
			: "m"(divide)
			);
	return result;
}


void print_results(void)
{
	printf("\n\n\n\nCompare sin(pi):");
	printf("\nsin(3.14)         = %.20f", sin(3.14));
	printf("\nsin(3.141596)     = %.20f", sin(3.141596));
	printf("\nsin_asm()         = %.20f", sin_asm());

	printf("\n\nCompare sin(pi/2):");
	printf("\nsin(3.14 / 2)          = %.20f", sin(3.14 / 2.0));
	printf("\nsin(3.141596 / 2)      = %.20f", sin(3.141596 / 2.0));
	printf("\nsin_half_asm()         = %.20f\n", sin_half_asm());
}
