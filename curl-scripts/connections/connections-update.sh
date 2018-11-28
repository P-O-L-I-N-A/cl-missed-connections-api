#!/bin/bash

curl "http://localhost:4741/connections/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "connection": {
      "location": "'"${LOCATION}"'",
      "gender": "'"${GENDER}"'",
      "hair": "'"${HAIR}"'",
      "clothes": "'"${CLOTHES}"'",
      "car": "'"${CAR}"'",
      "text": "'"${TEXT}"'"
    }
  }'

echo
