#!/bin/bash
ROOT=/home/gnizama/Documents/lab01-Java
ANTLR_PATH=$ROOT/antlr-4.13.1-complete.jar
CLASS_PATH_OPTION=-cp .:$(ANTLR_PATH)
GRAMMAR_NAME=EZLexer
GEN_PATH=lexer
DATA=./io
IN=$DATA/in
OUT=$DATA/out01_java

cd $GEN_PATH
for infile in $IN/*.ezl do
base=$(basename $infile)
outfile=$OUT/${base/.ezl/.out}
echo Running $base
java $CLASS_PATH_OPTION org.antlr.v4.gui.TestRig $GRAMMAR_NAME \
tokens -tokens $infile 2>&1 | diff -w $outfile -
done
