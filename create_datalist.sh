# /bin/bash
# chmod +x create_datalist.sh
# ./create_datalist.sh pos 1
# ./create_datalist.sh neg 0

ls $1 > $1.txt
path=`pwd`
sed -i 's#^#'${path}'/'$1'/#' $1.txt
head $1.txt -n 1 | xargs identify
sed -i 's#$# '$2'#' $1.txt
tail $1.txt
num=`wc -l $1.txt`
echo "lines of ${1}.txt : $num"
