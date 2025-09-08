#!/bin/bash

echo "welcome to array"

# name1="Chester Bennington"
# name2="Mike Shinoda"
# name3="Brad Delson"
# name4="Rob Bourdon"
# name5="Joe Hahn"
# name6="Dave Farrell"

namelist=(Chester_Bennington Mike_Shinoda Brad_Delson Rob_Bourdon Joe_Hahn Dave_Farrell);

echo ${namelist[2]}
echo ${namelist[*]}
echo ${namelist[4]}
