#!/bin/bash
rm -rf cscope.files cscope.in.out cscope.out cscope.po.out tags
find $(pwd) -name \*.[ch] -o -name \*.cc -o -name \*.[ch]pp >cscope.files
echo "Creating project ctags/cscope"
ctags --c++-kinds=+p --fields=+iaS --extra=+q -L cscope.files
cscope -bq -i cscope.files
