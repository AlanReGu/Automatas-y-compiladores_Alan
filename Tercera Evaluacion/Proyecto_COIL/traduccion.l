%option noyywrap

%{
    #include <stdio.h>
    FILE *yyin;
    FILE *yyout;
    int tintico = 0, tapia = 0, guarapos = 0, jartera = 0, gritico = 0, ventarrón = 0, pieza = 0;
    int ratico = 0, berraco = 0, sabrosón = 0, pillan = 0, enjalman = 0, verraquera = 0;
    
%}

%%
tintico { fprintf(yyout, "café"); tintico++;}
tapia { fprintf(yyout, "arcilla"); tapia++;}
guarapos { fprintf(yyout, "tragos"); guarapos++;}
guarapo { fprintf(yyout, "alcohol"); guarapos++;}
jartera { fprintf(yyout, "fastidio"); jartera++;}
gritico { fprintf(yyout, "gritito"); gritico++;}
ventarrón { fprintf(yyout, "viento fuerte"); ventarrón++;}
pieza { fprintf(yyout, "habitación"); pieza++;}
ratico { fprintf(yyout, "ratito"); ratico++;}
berraco { fprintf(yyout, "complicado"); berraco++;}
sabrosón { fprintf(yyout, "guapo"); sabrosón++;}
pillan { fprintf(yyout, "agarran desprevenido"); pillan++;}
enjalman { fprintf(yyout, "montan"); enjalman++;}
verraquera { fprintf(yyout, "fuerza"); verraquera++;}
%%

int main(){
    yyin = fopen("./texto.txt", "r");
    yyout = fopen("./textoT.txt", "w");
    if(!yyin){
        printf("No se pudo abrir el archivo texto.txt");
        return 1;
    } else if(!yyout){
        printf("No se pudo abrir el archivo textT.txt");
        return 1;
    }
    yylex();
    printf("Iniciando proceso de analisis\n");
    printf("Analizando texto...\n");
    printf("Proceso de analisis exitosamente completado\n");
    fclose(yyin);
    fclose(yyout);
    return 0;
}