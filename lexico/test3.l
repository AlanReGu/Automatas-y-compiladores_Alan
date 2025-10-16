%option noyywrap
%{
    #include <stdio.h>
    #include "token.h"
%}

%%

[a-zA-Z][a-zA-Z0-9_]*  { return TOKEN_VARIABLE; }

%%

int main(void)
{
    int token;
    while (1) {
        token = yylex();
        if (token == TOKEN_VARIABLE)
           printf("TOKEN_VARIABLE = %s\n", yytext);
        if (token == 0)
            break;
    }
    return 0;
}
