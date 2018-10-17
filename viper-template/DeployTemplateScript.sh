#!/bin/bash

sourceTemplateDir=./Template
destTemplateDir=$HOME/Library/Developer/Xcode/Templates/File\ Templates/Custom\ Templates/Source
templateName=VIPER.xctemplate

if [ -d "$destTemplateDir" ]; then
	rm -rf "$destTemplateDir/$templateName"
else
	mkdir -p "$destTemplateDir"
fi


cp -R "$sourceTemplateDir/$templateName" "$destTemplateDir"
open "$destTemplateDir"
