%{
 #include <stdio.h>
%}

%%
([0-9a-z]+[-._])*[0-9A-Za-z]+@([0-9a-z]+[.-_])*[0-9a-zA-Z]+ {/*apenas coloquei as regras para abranger todos os casos e imprimir os e-mails válidos*/
printf( "%s\n", yytext);	

}
. ; /*aqui coloca o ponto para não termos lixo na tela*/
 \n ;
%%
int main(){
    yylex();
    return 0;
}
    
