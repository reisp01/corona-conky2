#!/bin/bash
COVID=$(expr `curl -m 30 -s https://corona.lmao.ninja/v2/all | jq -r .deaths` \* 1000)
printf "%'11d" $COVID

