%option noyywrap
%{
    #include <stdio.h>
    FILE *yyin;
    int tintico = 0, tapia = 0, guarapos = 0, jartera = 0, gritico = 0, ventarrón = 0, pieza = 0;
    int ratico = 0, berraco = 0, sabrosón = 0, pillan = 0, enjalman = 0, verraquera = 0;   
%}
%%
tintico { tintico++; }
tapia { tapia++; }
guarapos { guarapos++; }
guarapo { guarapos++; }
jartera { jartera++; }
gritico { gritico++; }
ventarrón { ventarrón++;}
pieza { pieza++;}
ratico { ratico++; }
berraco { berraco++; }
sabrosón { sabrosón++; }
pillan { pillan++; }
enjalman { enjalman++; }
verraquera { verraquera++; }
%%
int main(){
    yyin = fopen("./texto.txt", "r");
    if(!yyin){
        printf("No se pudo abrir el archivo texto.txt");
        return 1;
    }
    yylex();
    printf("tintico:%d\n", tintico);
    printf("tapia:%d\n", tapia);
    printf("guarapos:%d\n", guarapos);
    printf("jartera:%d\n", jartera);
    printf("gritico:%d\n", gritico);
    printf("ventarrón:%d\n", ventarrón);
    printf("pieza:%d\n", pieza);
    printf("ratico:%d\n", ratico);
    printf("berraco:%d\n", berraco);
    printf("sabrosón:%d\n", sabrosón);
    printf("pillan:%d\n", pillan);
    printf("enjalman:%d\n", enjalman);
    printf("verraquera:%d\n", verraquera);
    fclose(yyin);
    fclose(yyout);
    return 0;
}

