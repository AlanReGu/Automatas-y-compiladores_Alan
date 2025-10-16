
#include <iostream>

int main() {
   
    int a = 10;
    float b = 2.5e-2;
    int c;

    c = a + (int)b * 5 % 2; 

    if (c > 10 && a != 0) {
        c++;
    } else {
        return 0;
    }

    return 0; 
}
