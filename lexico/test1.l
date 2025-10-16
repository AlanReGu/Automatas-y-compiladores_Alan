%option noyywrap
%{
    #include <stdio.h>
    #include "token.h"
%}

%%

[0-9]+    { return TOKEN_ENTERO; }
%%

int main(void)
{
    int token;
    while (1) {
        token = yylex();
        if (token == TOKEN_ENTERO)
           printf("TOKEN_ENTERO = %s\n", yytext);
        if (token == 0)
            break;
    }
    return 0;
}
