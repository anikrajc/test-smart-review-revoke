str="Hello World"
str2=" "
str3=""
# test-srr-start
if [ ! -z "$str" -a "$str" != " " ]; then
fi
# test-srr-end
if [ ! -z "$str3" -a "$str3" != " " ]; then
        echo "Str3 is not null or spaces"
fi