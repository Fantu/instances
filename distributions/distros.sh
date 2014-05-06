#!/bin/bash

base='amd64'
declare -a architectures=('i386' 'armel' 'armhf' 'powerpc')

for arch in "${architectures[@]}"
do
	rm -fr $arch
	mkdir $arch
	cp $base/* $arch/
	find $arch -type f | xargs sed -i "s/$base/$arch/g"
done
