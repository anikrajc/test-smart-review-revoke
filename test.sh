response=$(curl --location --request POST 'https://us-central1-testsrr-495b8.cloudfunctions.net/getApprovedReviews' --header 'Content-Type: application/json' --data-raw '{ "organisation" : "anikrajc", "repository" : "test-smart-review-revoke", "number" : "1" }')
echo "$response"asdas
#  test-srr-start
if [ -n "$response" ]; then
    commitId=$(echo "$response" | sed -n 1p)
    reviewIds=$(echo "$response" | sed -n 2p)
    echo "commit id is $commitId
    echo "reviewIds id is $reviewIds"
# test-srr-end
else
    echo "empty"
fi


