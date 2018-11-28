#!/bin/bash

curl --include --request PATCH "https://cl-missed-connections.herokuapp.com/connections/${ID}" \
--header "Content-Type: application/json" \
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
