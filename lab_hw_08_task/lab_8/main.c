#include <stdio.h>
#include <time.h>

#include "math_asm.h"
#include "math_common.h"
#include "comp_sin.h"


int main()
{
	float f1 = 1.1f;
	float f2 = 2.3f;
	double d1 = 2.3;
	double d2 = 5.6;

	double results_asm[8] = {
			(double) sum_asm_32(f1, f2) / CLOCKS_PER_SEC,
			(double) mul_asm_32(f1, f2) / CLOCKS_PER_SEC,
			(double) sub_asm_32(f1, f2) / CLOCKS_PER_SEC,
			(double) div_asm_32(f1, f2) / CLOCKS_PER_SEC,
			(double) sum_asm_64(d1, d2) / CLOCKS_PER_SEC,
			(double) mul_asm_64(d1, d2) / CLOCKS_PER_SEC,
			(double) sub_asm_64(d1, d2) / CLOCKS_PER_SEC,
			(double) div_asm_64(d1, d2) / CLOCKS_PER_SEC
	};

	double results[8] = {0};
	clock_t temp1 = 0, temp2 = 0;

	sum_no_asm(f1, f2, d1, d2, &temp1, &temp2);
	results[0] = (double)temp1 / CLOCKS_PER_SEC;
	results[4] = (double)temp2 / CLOCKS_PER_SEC;

	mul_no_asm(f1, f2, d1, d2, &temp1, &temp2);
	results[1] = (double)temp1 / CLOCKS_PER_SEC;
	results[5] = (double)temp2 / CLOCKS_PER_SEC;

	sub_no_asm(f1, f2, d1, d2, &temp1, &temp2);
	results[2] = (double)temp1 / CLOCKS_PER_SEC;
	results[6] = (double)temp2 / CLOCKS_PER_SEC;

	div_no_asm(f1, f2, d1, d2, &temp1, &temp2);
	results[3] = (double)temp1 / CLOCKS_PER_SEC;
	results[7] = (double)temp2 / CLOCKS_PER_SEC;

	printf("\n\n\n\nCompare floats.\n");
	printf("Add: %g, %g\n", results_asm[0], results[0]);
	printf("Mul: %g, %g\n", results_asm[1], results[1]);
	printf("Sub: %g, %g\n", results_asm[2], results[2]);
	printf("Div: %g, %g\n", results_asm[3], results[3]);

	printf("\nCompare doubles.\n");
	printf("Add: %g, %g\n", results_asm[4], results[4]);
	printf("Mul: %g, %g\n", results_asm[5], results[5]);
	printf("Sub: %g, %g\n", results_asm[6], results[6]);
	printf("Div: %g, %g\n", results_asm[7], results[7]);

	print_results();
}
