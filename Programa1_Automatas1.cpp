#include <iostream>
using namespace std;


const char* clasificar(char token[]) {
    bool Letras = false;
    bool Digitos = false;

    for (int i = 0; token[i] != '\0'; i++) {
        char c = token[i];
        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
            Letras = true;
        } else if (c >= '0' && c <= '9') {
            Digitos = true;
        } else {
            return "Compuesta"; 
        }
    }

    if (Letras && !Digitos) return "Palabra";
    if (!Letras && Digitos) return "Numero Entero";
    if (Letras && Digitos) return "Compuesta";

    return "Compuesta";
}

int main() {
    char Cadena[200];
    cout << "Ingrese una cadena: ";
    cin.getline(Cadena, 200);

    char token[50];
    int j = 0;

    for (int i = 0; ; i++) {
        if (Cadena[i] == ' ' || Cadena[i] == '\0') {
            token[j] = '\0'; 
            if (j > 0) {
                cout << token << " --> " << clasificar(token) << endl;
                j = 0; 
            }
            if (Cadena[i] == '\0') break; 
        } else {
            token[j++] = Cadena[i]; 
        }
    }

    return 0;
}
