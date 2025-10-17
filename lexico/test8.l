%option noyywrap
%{
    #include <stdio.h>
%}

%%

[aA]plicar         { printf("Reconocido: aplicar\n"); }
[uU]sar            { printf("Reconocido: usar\n"); }
[eE]mplear         { printf("Reconocido: emplear\n"); }
[eE]jecutar        { printf("Reconocido: ejecutar\n"); }
[dD]emostrar       { printf("Reconocido: demostrar\n"); }
[dD]esarrollar     { printf("Reconocido: desarrollar\n"); }
[iI]lustrar        { printf("Reconocido: ilustrar\n"); }
[iI]mplementar     { printf("Reconocido: implementar\n"); }
[rR]esolver        { printf("Reconocido: resolver\n"); }
[pP]racticar       { printf("Reconocido: practicar\n"); }
[cC]alcular        { printf("Reconocido: calcular\n"); }
[cC]onstruir       { printf("Reconocido: construir\n"); }
[mM]anipular       { printf("Reconocido: manipular\n"); }
[mM]odificar       { printf("Reconocido: modificar\n"); }
[oO]perar          { printf("Reconocido: operar\n"); }
[pP]reparar        { printf("Reconocido: preparar\n"); }
[pP]roducir        { printf("Reconocido: producir\n"); }
[tT]raducir        { printf("Reconocido: traducir\n"); }


[a-zA-Z]+          { /* no es un verbo de aplicación */ }
.|\n               { /* ignorar todo lo demás */ }

%%

int main(void)
{
    printf("Introduce texto:\n");
    yylex();
    return 0;

    }