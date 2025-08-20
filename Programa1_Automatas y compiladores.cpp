#include <iostream>
#include <string>
using namespace std;

int main() {
    string entrada;
    cout << "Ingresa una cadena: ";
    cin >> entrada; // Lee hasta un espacio

    bool tieneLetra = false;
    bool tieneNumero = false;
    bool caracteresValidos = true;

    // Recorre la cadena caracter por caracter
    for (int i = 0; i < entrada.length(); i++) {
        char c = entrada[i];

        if (c >= '0' && c <= '9') {
            tieneNumero = true;
        } else if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')) {
            tieneLetra = true;
        } else {
            caracteresValidos = false; // Hay otro símbolo
        }
    }

    if (!caracteresValidos) {
        cout << "Formato no reconocido" << endl;
    } else if (tieneNumero && !tieneLetra) {
        cout << "Número entero" << endl;
    } else if (!tieneNumero && tieneLetra) {
        cout << "Palabra" << endl;
    } else if (tieneNumero && tieneLetra) {
        cout << "Compuesta" << endl;
    }

    return 0;
}
