#!/bin/sh

ls *.c *.s >/dev/null 2>&1 && gcc -o ex *.c *.s

[ -z "$p" ] && export p="$PWD"

for d in ./*/; do
	[ -d "$d" ] && (
		cd $d
		pwd
		sh "$p/all.sh"
	)
done
