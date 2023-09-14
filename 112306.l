//112306
//The program will output each word in the input text on a separate line.
%{
#include <stdio.h>
%}

/*** Definition Section has one variable which can be accessed inside yylex() and main() ***/
%{
int count = 0;
%}

/*** Rule Section has three rules, first rule matches with any sequence of alphabetical characters, second rule matches with any character except newline and third rule does not take input after the enter***/
%%
[a-zA-Z]+   { printf("%s\n", yytext); }
.           { /* ignore other characters */ }
\n          { return 0; }
%%

/*** Code Section prints the number of capital letter present in the given input***/
int yywrap() {}

int main() {
    // Explanation:
    // yywrap() - wraps the above rule section
    /* yylex() - this is the main flex function which runs the Rule Section*/
    // yytext is the text in the buffer
    yylex();
    return 0;
}

