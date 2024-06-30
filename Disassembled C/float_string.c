#include <stdio.h>

int main() {
	float num = 3.14;
	char str[20];
	
	snprintf(str, sizeof(str), "%f", num);
	printf("%s\n", str);
    
    return 0;
}
