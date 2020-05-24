#!/bin/bash
COVID=$(expr `curl -m 30 -s https://corona.lmao.ninja/v2/countries/us | jq -r .deaths` \* 1000)
printf "%'11d" $COVID

