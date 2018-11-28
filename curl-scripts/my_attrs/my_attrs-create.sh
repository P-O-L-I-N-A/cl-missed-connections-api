#!/bin/bash

curl "http://localhost:4741/my_attrs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "my_attr": {
      "location": "'"${LOCATION}"'",
      "gender": "'"${GENDER}"'",
      "hair": "'"${HAIR}"'",
      "clothes": "'"${CLOTHES}"'",
      "car": "'"${CAR}"'"
    }
  }'

echo
