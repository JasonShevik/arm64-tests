

int main() {
	int money = 12900;
	int length = 1;
	
	for(int i = 10;; i *= 10) {
		length += 1;
		
		if((money / i) < 10) {
			break;
		}
	}
	
	
	// Allocate space for the string and null char
	
	
	for(int i = 1; i < length; i++) {
		digit = money % 10;
		
		
		// Add the digit to the string using ASCII math
		
		
		money /= 10;
	}
	//add final digit
	
	
	// add null terminator
	
	
	
	
	return 0;
}




