#!/bin/bash

curl --include --request DELETE "http://localhost:4741/connections/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
