#!/bin/bash

curl --include --request DELETE "http://localhost:4741/my_attrs/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
