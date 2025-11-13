%option noyywrap case-insensitive
%{
    #include<stdio.h>
    FILE *yyin;
    FILE *yyout;
%}

%%
([[:space:]]|^)(La|le|a|al|algo|algunas|alguno|algunos|ante|antes|como|con|contra|cual|cuales|cualquier|cualquiera|cuando|de|del|desde|donde|durante|e|el|ella|ellas|ello|ellos|en|entre|era|erais|eran|eras|es|esa|esas|ese|eso|esos|esta|estaba|estaban|estabas|estado|estamos|estan|estar|este|estos|fue|fueron|fui|fuimos|ha|habéis|habían|habías|haber|había|hago|hasta|la|las|le|les|lo|los|me|mi|mis|mucha|muchas|mucho|muchos|muy|nada|ni|no|nos|nosotras|nosotros|o|os|otra|otras|otro|otros|para|pero|poca|pocas|poco|pocos|por|porque|que|quién|quiénes|se|ser|será|serán|serás|sería|serían|si|sí|sin|sobre|sois|somos|son|soy|su|sus|te|ti|tiene|tienen|todo|todos|tu|tus|un|una|unas|uno|unos|usted|ustedes|y|ya|yo)/([[:space:]]|$) { fprintf(yyout, " "); }
\n { fprintf(yyout, "\n"); } 
. { fprintf(yyout, "%s", yytext); }
%%

int main() {
    yyin = fopen("texto.txt", "r");
    yyout = fopen("textoV.txt", "w");

    if (!yyin) {
        printf("No se pudo abrir el archivo texto.txt\n");
        return 1;
    }
    if (!yyout) {
        printf("No se pudo abrir el archivo textoV.txt\n");
        return 1;
    }

    yylex();
    printf("Iniciando proceso de analisis\n");
    printf("Analizando texto...\n");
    printf("Eliminacion de palabras vacias completado con exito\n");
    fclose(yyin);
    fclose(yyout);

    return 0;
}
