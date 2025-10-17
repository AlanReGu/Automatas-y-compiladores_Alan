%option noyywrap
%{
    #include <stdio.h>
    int reservadas = 0, tipos = 0, variables = 0;
%}

%%

(auto|break|case|char|const|continue|default|do|double|else|enum|extern|
float|for|goto|if|inline|int|long|register|restrict|return|short|signed|
sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while|_Bool|
_Complex|_Imaginary)
    { printf("Reconocido: %s\n", yytext); reservadas++; }

(int|float|double|char|long|short|void)
    { printf("Reconocido: %s\n", yytext); tipos++; }

[a-zA-Z_][a-zA-Z0-9_]* 
    { printf("Reconocido: %s\n", yytext); variables++; }

[0-9]+(\.[0-9]+)?  { /* ignorar números */ }

"//".*              { /* ignorar comentario de una línea */ }
"/*"([^*]|\*+[^*/])*"*/"   { /* ignorar comentario de bloque */ }

[ \t\n]+            { /* ignorar espacios y saltos */ }
.                   { /* ignorar otros símbolos */ }

%%

int main(void)
{
    printf("Introduce código:\n\n");
    yylex();

    printf("\n--- RESULTADOS ---\n");
    printf("Reconocido: %d\n", reservadas);
    printf("Reconocido: %d\n", tipos);
    printf("Reconocido: %d\n", variables);

    return 0;
}