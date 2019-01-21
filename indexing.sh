#!/bin/bash

#ctags
ctags -R --exclude=output

#cscope
rm -rf cscope.out cscope.files
find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s'\
  -o -name '*.S' -o -name '*.hpp' \) -print > cscope.files

echo "" | cscope -i cscope.files
