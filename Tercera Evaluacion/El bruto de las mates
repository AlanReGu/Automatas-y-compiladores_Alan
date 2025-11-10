%option noyywrap
%{
	#include<stdio.h>
	int lineas = 1;
	int palabras = 0;
	int caracteres = 0;
	int palabras_ni = 0;
	int palabras_num = 0;
	int palabras_b_to = 0;
	int palabras_jo = 0;
	int numeros = 0;
	int total_digits = 0;
	int total_carac = 0;

	void inprimirResultados();
%}


%%
//palabras con acento, junto con la ñ son cambiadas con su valor hexa
[Nn] [iI] [a-zA-Z]{total_carac += yyleng; palabras_ni++;}
[Nn] [uU] [0-9]*{total_carac += yyleng; palabras_num++;}
[Bb] [a-zA-Z0-9]*[tT][oO]{total_carac += yyleng; palabras_b_to++;}
[a-zA-Z0-9]*[jJ][oO]{total_carac += yyleng; palabras_jo++;}
[0-9]+{total_carac += yyleng; palabras_ni++;}
[a-zA-Z0-9]+{total_digits += yyleng; numeros++;}
\n	{lineas++; }
	{caracteres++;}


%%
int main()
{
 yyin = fopen("/Users/alan/flex/ejercicio.txt", "r");
    if (!yyin) {
        perror("No se pudo abrir el archivo ejercicio.txt");
        return 1;
	}

    yylex();
    printf("Total de líneas: %d\n", lineas);
    printf("Total de palabras: %d\n", palabras);
    printf("Total de caracteres: %d\n", caracteres);
    printf("Total de palabras que comienzan con 'ni': %d\n", palabras_ni);
    printf("Total de palabras que comienzan con 'núm': %d\n", palabras_num);
    printf("Total de palabras que comienzan con 'b' y terminan con 'to': %d\n", palabras_b_to);
    printf("Total de palabras que terminan con 'jo': %d\n", palabras_jo);
    printf("Total de dígitos: %d\n", total_digits);
    fclose(yyin);
    return 0;
}