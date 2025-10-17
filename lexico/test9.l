%option noyywrap
%{
    #include <stdio.h>
    int verbos = 0, adjetivos = 0, conjunciones = 0, preposiciones = 0, pronombres = 0;
%}

%%

[aA]nalizar         { printf("Reconocido: analizar\n"); verbos++; }
[cC]lasificar       { printf("Reconocido: clasificar\n"); verbos++; }
[cC]omparar         { printf("Reconocido: comparar\n"); verbos++; }
[dD]iferenciar      { printf("Reconocido: diferenciar\n"); verbos++; }
[dD]istinguir       { printf("Reconocido: distinguir\n"); verbos++; }
[eE]xaminar         { printf("Reconocido: examinar\n"); verbos++; }
[iI]dentificar      { printf("Reconocido: identificar\n"); verbos++; }
[rR]elacionar       { printf("Reconocido: relacionar\n"); verbos++; }
[oO]rganizar        { printf("Reconocido: organizar\n"); verbos++; }
[sS]eleccionar      { printf("Reconocido: seleccionar\n"); verbos++; }

[bB]ueno            { printf("Reconocido: bueno\n"); adjetivos++; }
[eE]xcelente        { printf("Reconocido: excelente\n"); adjetivos++; }
[gG]enial           { printf("Reconocido: genial\n"); adjetivos++; }
[mM]aravilloso      { printf("Reconocido: maravilloso\n"); adjetivos++; }
[fF]antástico       { printf("Reconocido: fantástico\n"); adjetivos++; }
[hH]onesto          { printf("Reconocido: honesto\n"); adjetivos++; }
[aA]gradable        { printf("Reconocido: agradable\n"); adjetivos++; }
[aA]mable           { printf("Reconocido: amable\n"); adjetivos++; }
[rR]espetuoso       { printf("Reconocido: respetuoso\n"); adjetivos++; }

[yY]                { printf("Reconocido: y\n"); conjunciones++; }
[oO]                { printf("Reconocido: o\n"); conjunciones++; }
[pP]ero             { printf("Reconocido: pero\n"); conjunciones++; }
[aA]unque           { printf("Reconocido: aunque\n"); conjunciones++; }
[sS]i               { printf("Reconocido: si\n"); conjunciones++; }
[mM]ientras         { printf("Reconocido: mientras\n"); conjunciones++; }

[aA]                { printf("Reconocido: a\n"); preposiciones++; }
[dD]e               { printf("Reconocido: de\n"); preposiciones++; }
[eE]n               { printf("Reconocido: en\n"); preposiciones++; }
[cC]on              { printf("Reconocido: con\n"); preposiciones++; }
[pP]ara             { printf("Reconocido: para\n"); preposiciones++; }
[pP]or              { printf("Reconocido: por\n"); preposiciones++; }
[sS]obre            { printf("Reconocido: sobre\n"); preposiciones++; }
[hH]acia            { printf("Reconocido: hacia\n"); preposiciones++; }

[yY]o               { printf("Reconocido: yo\n"); pronombres++; }
[tT]ú               { printf("Reconocido: tu\n"); pronombres++; }
[eE]l               { printf("Reconocido: él\n"); pronombres++; }
[eE]lla             { printf("Reconocido: ella\n"); pronombres++; }
[nN]osotros         { printf("Reconocido: nosotros\n"); pronombres++; }
[vV]osotros         { printf("Reconocido: vosotros\n"); pronombres++; }
[eE]llos            { printf("Reconocido: ellos\n"); pronombres++; }
[eE]llas            { printf("Reconocido: ellas\n"); pronombres++; }

.|\n                     { /* Ignorar todo lo demás */ }

%%

int main(void)
{
    printf("Introduce texto:\n\n");
    yylex();

    printf("\n--- RESULTADOS ---\n");
    printf("Reconocido: %d\n", verbos);
    printf("Reconocido: %d\n", adjetivos);
    printf("Reconocido: %d\n", conjunciones);
    printf("Reconocido: %d\n", preposiciones);
    printf("Reconocido: %d\n", pronombres);

    return 0;
}