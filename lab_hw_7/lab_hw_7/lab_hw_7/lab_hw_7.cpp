#include <iostream>
#include <string>
#include <sstream>
#include <cassert>




extern "C"
{
	
	void my_strcpy(char* to, char* fr, char len);
	// на другом языке программирования,
	// выполненной в соответствии с соглашениями
	// о вызовах Си
}


size_t asm_strlen(const char* str)
{
	size_t len = 0;
	__asm {
		push eax
		push edi
		push ecx
		mov edi, str
		xor al, al; Зануляем al так как ищем код 0
		dec ecx
		till_end_loop:
				inc ecx
				SCASB
				jne till_end_loop
		mov len,ecx
		pop ecx
		pop edi
		pop eax
	}
	return len;
}



int testing_ground(std::stringstream& in)
{
	std::string dst;
	std::string src;
	in >> dst;
	in >> src;

	std::string dst_copy = dst;
	std::string src_copy = src;
	char* dst_s = (char*)dst.c_str();
	char* src_s = (char*)src.c_str();
	assert(strlen(dst_s) == asm_strlen(dst_s));
	assert(strlen(src_s) == asm_strlen(src_s));
	my_strcpy(dst_s, src_s, std::min(asm_strlen(src_s), asm_strlen(dst_s)));

	char* dst_s_copy = (char*)dst_copy.c_str();
	char* src_s_copy = (char*)src_copy.c_str();
	strncpy(dst_s_copy, src_s_copy, std::min(asm_strlen(src_s_copy), asm_strlen(dst_s_copy)));
	assert(strcmp(dst_s_copy, dst_s) == 0);
	std::cout << dst_s_copy << std:: endl;
	




	return 0;
}

void run_tests()
{
	{
		std::stringstream input;
		input << "1 2";
		
		testing_ground(input);
		
	}
	{
		std::stringstream input;
		input << "132 243";
		
		testing_ground(input);
	}
	{
		std::stringstream input;
		input << "12 ";
		
		testing_ground(input);
	}
	{
		std::stringstream input;
		char* both = new char[32];
		input << "543234 7896";
		testing_ground(input);

	}

}


int main()
{
	
	char src[] = "Test strcpy for lab_08 assamblyy";
	char dst[] = "shreck is love";
	int len = std::min(asm_strlen(src), asm_strlen(dst));

	printf("Strings overlap: %s\n", src);
	//std::cout << (int)src << " " << (int)dst;
	my_strcpy(dst, dst + 5, len);
	

	printf("Identic strings: %s\n", dst);
	run_tests();
	return 0;
}
