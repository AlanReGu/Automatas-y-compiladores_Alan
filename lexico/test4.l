%option noyywrap
%{
    #include <stdio.h>
    #include "token.h"
%}

%%

[A-ZÑ&]{3,4}[0-9]{6}[A-Z0-9]{3} { return TOKEN_RFC; }

%%

int main(void)
{
    int token;
    while (1) {
        token = yylex();
        if (token == TOKEN_RFC)
           printf("TOKEN_RFC = %s\n", yytext);
        if (token == 0)
            break;
    }
    return 0;
}
