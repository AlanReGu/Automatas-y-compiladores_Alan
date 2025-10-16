%option noyywrap
%{
    #include <stdio.h>
    #include "token.h"
%}

%%

[0-9]+\.[0-9]+ { return TOKEN_DECIMAL; }

%%

int main(void)
{
    int token;
    while (1) {
        token = yylex();
        if (token == TOKEN_DECIMAL)
           printf("TOKEN_DECIMAL = %s\n", yytext);
        if (token == 0)
            break;
    }
    return 0;
}
