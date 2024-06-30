#include <stdio.h>

int main() {
	float num = 3.14;
	char str[20];
	
	sprintf(str, "%f", num);
	printf("%s\n", str);
    
    return 0;
}
