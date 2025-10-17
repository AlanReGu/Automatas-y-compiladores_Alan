%option noyywrap
%{
    #include <stdio.h>
    int comentarios = 0, textos = 0;
%}

%%

"//".* {printf("Reconocido: %s\n", yytext);comentarios++;}
"/*"([^*]|\*+[^*/])*"*/" {printf("Comentario (multilínea): %s\n", yytext);comentarios++;}
\"([^\"\\]|\\.)*\" {printf("Texto mostrado en pantalla: %s\n", yytext);textos++;}
.|\n   { /* ignorar todo lo demás */ }

%%

int main(void)
{
    printf("Introduce código:\n\n");
    yylex();

    printf("\n--- RESULTADOS ---\n");
    printf("Comentarios: %d\n", comentarios);
    printf("Textos mostrados: %d\n", textos);

    return 0;
}