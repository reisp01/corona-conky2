#!/bin/bash
COVID=$(expr `curl -m 30 -s https://corona.lmao.ninja/v2/states | jq -r '.[] | select(.state=="New York").deaths'` \* 1000)
printf "%'11d" $COVID

