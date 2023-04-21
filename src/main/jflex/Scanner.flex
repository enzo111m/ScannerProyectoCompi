//User code
package com.mycompany.compiproyecto;

%%
//Opciones y deficiones regulares

%public
%class AnalizadorLex
%char
%line
%column
%standalone

//Definicion regular

palabra = [a-zA-Z]+
identificador = [a-zA-Z][a-zA-Z0-9]*
//digito negativo/positivo
digito = [-0-9][0-9]+
comillasDobles = [\"]+
espacios_blanco = [\r|\n|\r\n| |\t]*

//decimal negativo/positivo
NUM = [-0-9][0-9]+ ("." [0-9]+)?
boolean = [\true|\false|]*

aritmetica = [\+|\-|\*\|\(|\)]*
relacional = [\>|\>=|\<|\=<|\=|\!=]*
logica = [\&&|\|| |\!]*

if = [\if|\else]*
switch = [\switch]*

for = [\for]*
while = [\while]*
doWhile = [\do|\while]*

%%

//Reglas léxicas

/* float y double*/
{NUM}       { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
/* int, long y short*/
{digito}    { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{boolean}    { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{aritmetica} { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{relacional} { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{logica} { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{if} { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{switch} { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{for} { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{while} { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{doWhile} { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

{identificador} { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }



{comillasDobles}    { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"void"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

"extends"  { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"class"     { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

"["         { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"]"         { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }

";"         { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
"."         { System.out.println("Lexema: " 
              + yytext() 
              + " columna: " 
              + yychar 
              + " fila: " 
              + yyline ); }
{espacios_blanco}   {/*Ignorar*/}