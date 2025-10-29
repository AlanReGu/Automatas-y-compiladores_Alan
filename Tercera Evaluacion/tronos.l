%option noyywrap
%{
    #include <stdio.h>
    int westeros = 0;
    int invernalia = 0;
    int desembarco = 0;
    int nido = 0;
    int altojardin = 0;
    int aguasdulces = 0;
    int rocadragon = 0;
    int rocaCasterly = 0;
    int bsation = 0;
    int dorne = 0;

    int stark = 0;
    int arryn = 0;
    int tully = 0;
    int greyjoy = 0;
    int lainnester = 0;
    int tyller = 0;
    int martell = 0;
    int beratheon = 0;
    int targaryen = 0;

    int eddard = 0;
    int catelyn = 0;
    int arya = 0;
    int sansa = 0;
    int robert = 0;
    int joffrey = 0;
    int stannis = 0;
    int aegon = 0;
    int daenerys = 0;
    int aerys = 0;
    int tywin = 0;
    int jaime = 0;
    int tyrion = 0;
    int cersei = 0;

    FILE *yyin;
%}


%%
Westeros {westeros++;}
Invernalia { invernalia++;}
Desembarco" "del" "Rey { desembarco++; }
Nido" "de" "Águilas { nido++; }
Altojardín { altojardin++; }
Aguasdulces { aguasdulces++; }
Rocadragón { rocadragon++; }
Roca" "Casterly { rocaCasterly++; }
Bastión" "de" "Tormentas { bsation++; }
Dorne { dorne++; }

Stark { stark++; }
Arryn { arryn++; }
Tully { tully++; }
Greyjoy { greyjoy++; }
Lannister { lainnester++; }
Tyrell { tyller++; }
Martell { martell++; }
Baratheon { beratheon++; }
Targaryen { targaryen++; }

Eddard { eddard++; }
Catelyn { catelyn++; }
Arya { arya++; }
Sansa { sansa++; }
Robert { robert++; }
Joffrey { joffrey++; }
Stannis { stannis++; }
Aegon { aegon++; }
Daenerys { daenerys++; }
Aerys { aerys++; }
Tywin { tywin++; }
Jaime { jaime++; }
Tyrion { tyrion++; }
Cersei { cersei++; }



%%
int main(void) {
    yyin = fopen("/Users/gus/flex/George R. R. Martin - Canción de Hielo y Fuego 1 - Juego de Tronos.txt", "r");
    if (!yyin) {
        perror("No se pudo abrir el archivo ejemplo.txt");
        return 1;
    }
    yylex();
    printf("Total de menciones de Westeros: %d\n", westeros);
    printf("Total de menciones de Invernalia: %d\n", invernalia);
    printf("Total de menciones de Desembarco del Rey: %d\n", desembarco);
    printf("Total de menciones del Nido de Águilas: %d\n", nido);
    printf("Total de menciones de Altojardín: %d\n", altojardin);
    printf("Total de menciones de Aguasdulces: %d\n", aguasdulces);
    printf("Total de menciones de Roca dragón: %d\n", rocadragon);
    printf("Total de menciones de Roca Casterly: %d\n", rocaCasterly);
    printf("Total de menciones de Bastión de Tormentas: %d\n", bsation);
    printf("Total de menciones de Dorne: %d\n", dorne);

    printf("Total de menciones de la casa Stark: %d\n", stark);
    printf("Total de menciones de la casa Arryn: %d\n", arryn);
    printf("Total de menciones de la casa Tully: %d\n", tully);
    printf("Total de menciones de la casa Greyjoy: %d\n", greyjoy);
    printf("Total de menciones de la casa Lainnester: %d\n", lainnester);
    printf("Total de menciones de la casa Tyrell: %d\n", tyller);
    printf("Total de menciones de la casa Martell: %d\n", martell);
    printf("Total de menciones de la casa Beratheon: %d\n", beratheon);
    printf("Total de menciones de la casa Targaryen: %d\n", targaryen);
    
    printf("Total de menciones de Eddard: %d\n", eddard);
    printf("Total de menciones de Catelyn: %d\n", catelyn);
    printf("Total de menciones de Arya: %d\n", arya);
    printf("Total de menciones de Sansa: %d\n", sansa);
    printf("Total de menciones de Robert: %d\n", robert);
    printf("Total de menciones de Joffrey: %d\n", joffrey);
    printf("Total de menciones de Stannis: %d\n", stannis);
    printf("Total de menciones de Aegon: %d\n", aegon);
    printf("Total de menciones de Daenerys: %d\n", daenerys);
    printf("Total de menciones de Aerys: %d\n", aerys);
    printf("Total de menciones de Tywin: %d\n", tywin);
    printf("Total de menciones de Jaime: %d\n", jaime);
    printf("Total de menciones de Tyrion: %d\n", tyrion);
    printf("Total de menciones de Cersei: %d\n", cersei);   
    
    fclose(yyin);
    return 0;
}