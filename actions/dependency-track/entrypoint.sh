#!/bin/sh 
export API_KEY=$1
export PROJECT_KEY=$2
export API_URL="$3/api/v1/bom"
export BOM=$4

export CONTENT_TYPE="Content-Type: multipart/form-data"
export UPLOAD_FILE="$(uuidgen).json"
export RES_FILE="$(uuidgen).result"

if [[ $BOM == "{"* ]]; then
    echo $BOM > $UPLOAD_FILE
fi

if [ -f $BOM ]; then
    cp $BOM $UPLOAD_FILE
fi

set +e
curl -X "POST" -H $CONTENT_TYPE -H "X-Api-Key: $API_KEY" -F "project=$PROJECT_KEY" -F "bom=@$UPLOAD_FILE" $API_URL > $RES_FILE

export RES=$?
echo "result=$(cat $RES_FILE)" >> $GITHUB_OUTPUT
echo "api-url=$API_URL" >> $GITHUB_OUTPUT

rm -rf $UPLOAD_FILE
rm -rf $RES_FILE

echo $GITHUB_OUTPUT

set -e
exit $RES
