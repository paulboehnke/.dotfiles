#!/bin/zsh

mkcd()
{
	for i in "$*"
	do
        mkdir "$i"
        cd "$i"   
	done
}

