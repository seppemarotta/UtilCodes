%{
#include <string.h>
#include <conio.h>
#include <stdio.h>
%}
NOMBRE eraser|desk|pencil|keyboard|monitor|notebook|teacher|school|classroom|whiteboard
VERB touch|answer|arrive|attend|talk|borrow|visit|dream|end|fail|scream
PRONOUN he|she|it|her|his|our|their|that|I|you|himself|itself
ADJECTIVES different|important|larg|popular|useful|scared|old|new|rare|powerfu|sad|first|next|little|red|orange|blue|yellow|white|loud|perfect
SUBJECT 	I|you|he|she|it|we|you|they
OBJECT 		me|you|him|her|it|us|them
POSSESSIVE  my|your|his|her|its|our|their
PREPOSITION on|it|at|since|for|ago|before|to|past|untill|by|towards|into|onto|from|about
CONJUNCTION for|and|nor|but|yet|so|either
ADVERB ly
ARTICLE the|a|an
PLURAL s
PAST ed
PROGRESSIVE ing
INFINITIVE to
%{
//noun adjectives vernb adverb pronoum preposition conjuntion interjection
//SPACE 
%}
%%
{PREPOSITION}		{printf("%s ",yytext);printf("%s","<Preposition>");printf("\n");}
{ADJECTIVES}		{printf("%s ",yytext);printf("%s","<Adjective>");printf("\n");}
{ADJECTIVES}{ADVERB} {printf("%s ",yytext);printf("%s","<Adverb>");printf("\n");}
{ARTICLE}			{printf("%s ",yytext);printf("%s","<Article>");printf("<singular>");printf("\n");}
{SUBJECT}			{printf("%s ",yytext);printf("%s","<Pronoun>");printf("%s","<Subject>");printf("\n");}
{OBJECT}			{printf("%s ",yytext);printf("%s","<Pronoun>");printf("%s","<Object>");printf("\n");}
{POSSESSIVE}		{printf("%s ",yytext);printf("%s","<Pronoun>");printf("%s","<Possessive>");printf("\n");}
{NOMBRE}			{printf("%s ",yytext);printf("%s","<Noun>");printf("<singular>");printf("\n");}
{NOMBRE}{PLURAL}	{printf("%s ",yytext);printf("%s","<Noun>");printf("<plural>");printf("\n");}
{VERB}				{printf("%s ",yytext);printf("%s","<Verb>");printf("\n");}
{VERB}{PAST}		{printf("%s ",yytext);printf("%s","<Verb>");printf("<Past Tense>");printf("\n");}
{VERB}{PROGRESSIVE}		{printf("%s ",yytext);printf("%s","<Verb>");printf("<Present Participe>");printf("\n");}
%{
//{INFINITIVE}{VERB}		{printf("%s ",yytext);printf("%s","<Verb>");printf("<Infinitive>");printf("\n");}
%}
.	;
%%
int yywrap()
{
return 1;
}
main()
{
while(yylex());
}