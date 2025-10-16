%option noyywrap
%{
	#include<stdio.h>
	FILE *yyin;
	int cont = 0;
%}

COMENTARIO "//".*
VARIABLE [a-zA-Z]+[0-9]*
CONSTANTE [0-9]+
OPERADOR [+\-*/]
OPERADORLOGICO (&&|\|\||!|<=|>=|==|!=|<|>)

%%
{COMENTARIO}  { cont++; printf("Comentarios: %s\n",yytext);}

"int" { printf("Palabra reservada: INT\n"); }
"main" { printf("Palabra reservada: MAIN\n"); }
"float" { printf("Palabra reservada: FLOAT\n"); }
"if" { printf("Palabra reservada: IF\n"); }
"else" { printf("Palabra reservada: ELSE\n"); }
"return" { printf("Palabra reservada: RETURN\n"); }
"for" { printf("Palabra reservada: FOR\n"); }
"char" { printf("Palabra reservada: CHAR\n"); }

{VARIABLE} { printf ("Variable detectada: %s\n",yytext); }

{CONSTANTE} { printf ("Constante numerica detectada: %s\n",yytext); }

{OPERADOR} { printf ("Operador aritmetico: %s\n",yytext);}

{OPERADORLOGICO}  { printf("OPERADOR LOGICO: %s\n", yytext); }


[ \t\n]+ {}
. { printf("Simbolos Especiales: %s\n", yytext); }
%%

int main()
{
	FILE *file = fopen("codigo.cpp","r");

	if (!file) {
		printf("Ocurrió un error al abrir el archivo.\n");
		return 1;
	}

	yyin = file;
	yylex();
	
	printf("\nTotal de comentarios encontrados: %d\n", cont);

	fclose(file);
	return 0;
}
