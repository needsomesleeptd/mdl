#include <iostream>
#include <string>





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




int main()
{
	
	char src[] = "Test strcpy for lab_08 assamblyy";
	char dst[] = "shreck is love";
	int len = std::min(asm_strlen(src), asm_strlen(dst));

	printf("Test string: %s\n", src);
	//std::cout << (int)src << " " << (int)dst;
	my_strcpy(dst, src, len);
	

	printf("Identic strings: %s\n", dst);

	return 0;
}
