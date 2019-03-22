%{

#include<stdio.h>

int a=0;
int b=0;
int c=0;
%}

email [a-zA-Z0-9.]
%%


{email}+@{email}*fee[.]unicamp[.]br {a++; b++;c++; }
{email}+@{email}*unicamp[.]br {a++; b++;}
{email}+@{email}+ a++;
[^a-zA-Z0-9. \n]*{email}+@{email}+[^a-zA-Z0-9. \n]* ;



[[:^space:]] ;
[[:space:]] ;
\n ;
%%

int main() {
    yylex();
    printf("%d %d %d\n",a,b,c);
}
