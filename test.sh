response=$(curl --location --request POST 'https://us-central1-testsrr-495b8.cloudfunctions.net/getApprovedReviews' --header 'Content-Type: application/json' --data-raw '{ "organisation" : "anikrajc", "repository" : "test-smart-review-revoke", "number" : "1" }')
echo "$response"asdasasdasdasdasd
#  test-srr-start
if [ -n "$response" ]; then
    commitId=$(echo "$response" | sed -n 1p)
    reviewIds=$(echo "$response" | sed -n 2p)
    echo "commit id is $commitIdasd
    echo "reviewIds id is $reviewIds"as das da s
# test-srr-end
else
    echo "empty"
fi


