#!/bin/sh

cat Archivo3.txt | tr -d "[:punct:]" | tr " " "\n" | tr -d "¡" | tr -d "¿" | tr "A-Z" "a-z" | sort | uniq -c | tail -1114