#!/bin/bash

declare -a good_test_files=('1-marker.kt' '2-markers.kt')
declare -a bad_test_files=('2-end-marker.kt' '2-start-marker.kt' 'mixed-markers.kt' 'wrong-order-of-markers.kt')

start_pattern='srr-start'
end_pattern='srr-end'

for Item in "${good_test_files[@]}" ; do
    file_path="test/good/$Item"
    echo $file_path
    grep -n -o "$start_pattern\|$end_pattern" $file_path
done

for Item in "${bad_test_files[@]}" ; do
    file_path="test/bad/$Item"
    echo $file_path
    grep -n -o "$start_pattern\|$end_pattern" $file_path
done



# grep -n srr-end sample.kt

# sed -n '/srr-start/,/srr-end/p' sample.kt