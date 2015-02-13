package compilador;
import static compilador.Token.*;
import java_cup.runtime.Symbol;
%%
%class Analizador
%line
%column
%cup

%{
 private Symbol symbol(int type){
  return new Symbol(type,yyline,yycolumn);
}
private Symbol symbol(int type,Object value){
  return new Symbol(type,yyline,yycolumn,value);
}

%}

Espacio=[" "]

%{
public String lexeme;
%}

%%
"Perro" {return  new Symbol(sym.TokenDomesticos, yychar, yyline, yytext());}
"Gato" {return  new Symbol(sym.TokenDomesticos, yychar, yyline, yytext());}
"Pato" {return  new Symbol(sym.TokenDomesticos, yychar, yyline, yytext());}
"Caballo" {return  new Symbol(sym.TokenDomesticos, yychar, yyline, yytext());}
"Vaca" {return  new Symbol(sym.TokenMamiferos, yychar, yyline, yytext());}
"Conejo" {return  new Symbol(sym.TokenMamiferos, yychar, yyline, yytext());}
"Cabra" {return  new Symbol(sym.TokenMamiferos, yychar, yyline, yytext());}
"Cerdo" {return  new Symbol(sym.TokenMamiferos, yychar, yyline, yytext());}
"León" {return new Symbol(sym.TokenSalvajes, yychar, yyline, yytext());}
"Puma" {return new Symbol(sym.TokenSalvajes, yychar, yyline, yytext());}
"Jirafa" {return new Symbol(sym.TokenSalvajes, yychar, yyline, yytext());}
"Oso" {return new Symbol(sym.TokenSalvajes, yychar, yyline, yytext());}
"Tortuga" {return  new Symbol(sym.TokenReptiles, yychar, yyline, yytext());}
"Serpiente" {return  new Symbol(sym.TokenReptiles, yychar, yyline, yytext());}
"Iguana" {return  new Symbol(sym.TokenReptiles, yychar, yyline, yytext());}
"Lagarto" {return  new Symbol(sym.TokenReptiles, yychar, yyline, yytext());}
"Delfín" {return  new Symbol(sym.TokenMarinos, yychar, yyline, yytext());}
"Ballena" {return  new Symbol(sym.TokenMarinos, yychar, yyline, yytext());}
"Pulpo" {return  new Symbol(sym.TokenMarinos, yychar, yyline, yytext());}
"Tiburón" {return  new Symbol(sym.TokenMarinos, yychar, yyline, yytext());}
"Ratón" {return  new Symbol(sym.TokenRoedores, yychar, yyline, yytext());}
"Ardilla" {return  new Symbol(sym.TokenRoedores, yychar, yyline, yytext());}
"Hámster" {return  new Symbol(sym.TokenRoedores, yychar, yyline, yytext());}
"Cuy" {return  new Symbol(sym.TokenRoedores, yychar, yyline, yytext());}
"Paloma" {return  new Symbol(sym.TokenAves, yychar, yyline, yytext());}
"Loro" {return  new Symbol(sym.TokenAves, yychar, yyline, yytext());}
"Águila" {return  new Symbol(sym.TokenAves, yychar, yyline, yytext());}
"Cóndor" {return  new Symbol(sym.TokenAves, yychar, yyline, yytext());}
{Espacio} {}
"-" {return new Symbol(sym.TokenOperador, yychar, yyline, yytext());}
"=" {return new Symbol(sym.TokenResultado, yychar, yyline, yytext());}

. {return new Symbol(sym.TokenERROR, yychar, yyline, yytext());}
