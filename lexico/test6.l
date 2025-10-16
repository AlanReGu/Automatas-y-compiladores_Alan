%option noyywrap
%{
    #include <stdio.h>
    #include "token.h"
%}

%%

[a-z]{2}[0-9]{6}@uaeh\.edu\.mx {return TOKEN_EMAILINSTITUCIONAL;}

%%

int main(void)
{
    int token;
    while (1) {
        token = yylex();
        if (token == TOKEN_EMAILINSTITUCIONAL)
           printf("TOKEN_EMAILINSTITUCIONAL = %s\n", yytext);
        if (token == 0)
            break;
    }
    return 0;
}
