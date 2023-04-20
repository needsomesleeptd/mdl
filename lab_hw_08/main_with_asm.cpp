#include <iostream>
#include <ctime>
#include <cmath>
using namespace std;

double get_time(clock_t time, const char* action)
{
	if (time >= 1000)
		return time / CLOCKS_PER_SEC;
	else
		return time;
}

template<typename T, typename F>
clock_t measure_time(F function, T val1, T val2, int count)
{

	clock_t start_time, res_time = 0;
	for (int i = 0; i < count; i++)
	{
		start_time = clock();
		T result = function(val1, val2);
		res_time += clock() - start_time;
	}
	if (res_time >= CLOCKS_PER_SEC)
		return res_time / CLOCKS_PER_SEC;
	else
		return res_time;

}

template<typename T>
T mul(T val1, T val2)
{
	return val1 * val2;
}

template<typename T>
T sum(T val1, T val2)
{
	return val1 + val2;
}

template<typename T>
T mul_asm(T val1, T val2)
{
	T result;
	__asm__
		(
		"fld %1\n"
		"fld %2\n"
		"fmulp %%ST(1), %%ST(0)\n"
		"fstp %0\n"
		:"=m"(result)
		: "m"(val1),
	"m"(val2)
		);
	return result;
}

template<typename T>
T sum_asm(T val1, T val2)
{
	T result;
	__asm__
		(
		"fld %1\n"
		"fld %2\n"
		"faddp %%ST(1), %%ST(0)\n"
		"fstp %0\n"
		:"=m"(result)
		: "m"(val1),
		"m"(val2)
		);
	//std::cout<<result<<endl;
	return result;
}

int main()
{
	int count = 100000;
	double double_arg_1 = 100;
	double double_arg_2 = 100342;
	double float_arg_1 = 100;
	double float_arg_2 = 100342;

	double time_float_sum = measure_time<float>(sum<float>, float_arg_1, float_arg_2, count);
	double time_double_sum = measure_time<double>(sum<double>, double_arg_1, double_arg_2, count);
	
	double time_float_mul = measure_time<float>(mul<float>, float_arg_1, float_arg_2, count);
	double time_double_mul = measure_time<double>(mul<double>, double_arg_1, double_arg_2, count);

	double time_float_sum_asm = measure_time<float>(sum_asm<float>, float_arg_1, float_arg_2, count);
	double time_double_sum_asm = measure_time<double>(sum_asm<double>, double_arg_1, double_arg_2, count);

	double time_float_mul_asm = measure_time<float>(mul_asm<float>, float_arg_1, float_arg_2, count);
	double time_double_mul_asm = measure_time<double>(mul_asm<double>, double_arg_1, double_arg_2, count);


	std::cout << time_float_sum  << "ms" << " - time_float_sum" << endl;


	std::cout << time_float_mul  << "ms" << " - time_float_mul" << endl;


	std::cout << time_double_sum  << "ms" << " - time_double_sum" << endl;


	std::cout << time_double_mul  << "ms" << " - time_double_mul" << endl;

	std::cout << time_float_sum_asm  << "ms" << " - time_float_sum_asm" << endl;
	std::cout << time_float_mul_asm  << "ms" << " - time_float_mul_asm" << endl;
	std::cout << time_double_sum_asm  << "ms" << " - time_double_sum_asm" << endl;
	std::cout << time_double_mul_asm  << "ms" << " - time_double_mul_asm" << endl;

}



