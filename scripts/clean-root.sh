#!/bin/bash

rm -rf '/lost+found'
rm -rf '/usr/games'

ROOT_FILE=( 'vmlinuz' 'vmlinuz.old' 'initrd.img' 'initrd.img.old' )

for file in ${ROOT_FILE[@]}
do
  rm -f "/$file"
done

echo 'useless file and dir were deleted from root dir'

#for folder in ${USELESS_FOLDER[@]}
#do
#  rm -rf $folder
#done
