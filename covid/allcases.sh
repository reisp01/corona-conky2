#!/bin/bash
COVID=`curl -m 30 -s https://corona.lmao.ninja/v2/all | jq -r .cases`
printf "%'11d" $COVID

