#!/bin/zsh

rm Seraph*.java
rm Seraph*.class

antlr4 SeraphLexer.g4 
antlr4 SeraphParser.g4 
javac Seraph*.java

cat query.txt | grun Seraph oS_Seraph -gui 