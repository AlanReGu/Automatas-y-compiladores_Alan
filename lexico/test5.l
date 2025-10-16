%option noyywrap
%{
    #include <stdio.h>
    #include "token.h"
%}

%%

[A-Z][AEIOU][A-Z]{2}[0-9]{6}[HM][A-Z]{5}[0-9]{2} { return TOKEN_CURP; }

%%

int main(void)
{
    int token;
    while (1) {
        token = yylex();
        if (token == TOKEN_CURP)
           printf("TOKEN_CURP = %s\n", yytext);
        if (token == 0)
            break;
    }
    return 0;
}
