#include <iostream>
#include <cstring>
using namespace std;


struct Contador {
    int palabras = 0;
    int numeros = 0;
    int compuestas = 0;
};


const char* clasificar(char token[], Contador &cont) {
    bool Letras = false;
    bool Digitos = false;

    for (int i = 0; token[i] != '\0'; i++) {
        char c = token[i];
        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
            Letras = true;
        } else if (c >= '0' && c <= '9') {
            Digitos = true;
        } else {
            cont.compuestas++;
            return "Compuesta"; 
        }
    }

    if (Letras && !Digitos) {
        cont.palabras++;
        return "Palabra";
    }
    if (!Letras && Digitos) {
        cont.numeros++;
        return "Numero Entero";
    }
    if (Letras && Digitos) {
        cont.compuestas++;
        return "Compuesta";
    }

    cont.compuestas++;
    return "Compuesta";
}

int main() {
    char Cadena[200];
    cout << "Ingrese una cadena: ";
    cin.getline(Cadena, 200);

    char token[50];
    int j = 0;

    Contador cont; 

    for (int i = 0; ; i++) {
        if (Cadena[i] == ' ' || Cadena[i] == '\0') {
            token[j] = '\0'; 
            if (j > 0) {
                cout << token << " --> " << clasificar(token, cont) << endl;
                j = 0; 
            }
            if (Cadena[i] == '\0') break; 
        } else {
            token[j++] = Cadena[i]; 
        }
    }

    
    cout << "\n--- Cantidad de cadenas ---" << endl;
    cout << "Palabras: " << cont.palabras << endl;
    cout << "Numeros Enteros: " << cont.numeros << endl;
    cout << "Compuestas: " << cont.compuestas << endl;

    return 0;
}
