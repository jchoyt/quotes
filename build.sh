#!/bin/bash

xsltproc -o build/quotes.txt ircbot.xsl quotes.xml 
xsltproc -o build/quotes.html quotes.xsl quotes.xml
