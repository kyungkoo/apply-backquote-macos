#!/bin/sh

OUTPUT_DIR=$HOME"/Library/KeyBindings"
OUTPUT_FILE="DefaultkeyBinding.dict"
OUTPUT_PATH=$OUTPUT_DIR/$OUTPUT_FILE

echo "----- USE BACKQUOTE IN KOREAN -----"

if [ -d "$OUTPUT_DIR" ]; then
echo "----- ALREADY $OUTPUT_DIR EXISTS... -----"
else
echo "----- CREATE $OUTPUT_DIR FOLDER -----"
mkdir $OUTPUT_DIR
fi

if [ -f "$OUTPUT_PATH" ]; then
echo "----- ALREADY $OUTPUT_FILE EXISTS... -----"
else
echo '{' > $OUTPUT_PATH
echo '\t"₩" = ("insertText:", "`");' >> $OUTPUT_PATH
echo '}' >> $OUTPUT_PATH
fi

echo "----- ENJOY! -----"