
#!/bin/bash

curl --include --request GET "${CL_SERVER_BASE}/match" \
  --header "Authorization: Token token=${TOKEN}" \

echo
