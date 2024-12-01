import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup

WHITESPACE = [ \t\n\r]+
DIGIT = [0-9]+
LETTER = [a-zA-Z_]
IDENTIFIER = {LETTER}({LETTER}|{DIGIT})*

%%

<YYINITIAL> {
    {WHITESPACE}  { /**/ }
    ";"           { return new Symbol(sym.SEMI); }
    "+"           { return new Symbol(sym.PLUS); }
    "-"           { return new Symbol(sym.MINUS); }
    "*"           { return new Symbol(sym.TIMES); }
    "("           { return new Symbol(sym.LPAREN); }
    ")"           { return new Symbol(sym.RPAREN); }
    "{"           { return new Symbol(sym.LBRACE); }
    "}"           { return new Symbol(sym.RBRACE); }
    ">"           { return new Symbol(sym.GT); }
    "<"           { return new Symbol(sym.LT); }
    {DIGIT}       { return new Symbol(sym.NUMBER, Integer.parseInt(yytext())); }
    "if"|"IF"          { return new Symbol(sym.IF); }
    "else"|"ELSE"        { return new Symbol(sym.ELSE); }
    "while"|"WHILE"       { return new Symbol(sym.WHILE); }
    "int"         { return new Symbol(sym.INT); }
    "void"        { return new Symbol(sym.VOID); }
    "="           { return new Symbol(sym.ASSIGN); }
    {IDENTIFIER}   { return new Symbol(sym.IDENTIFIER, yytext()); }
    .             { System.err.println("Illegal character: " + yytext()); }
}
