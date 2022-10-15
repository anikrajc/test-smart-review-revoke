str="Hello World"
str2=" "
str3=""
# test-srr-start
if [ ! -z "$str" -a "$str" != " " ]; then
        echo "Str is not null or space"

if [ ! -z "$str2" -a "$str2" != " " ]; then
        echo "Str2 is not null or space"asdasdas
fi
# test-srr-end
if [ ! -z "$str3" -a "$str3" != " " ]; then
        echo "Str3 is not null or space"
fi