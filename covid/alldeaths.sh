#!/bin/bash
COVID=`curl -m 30 -s https://corona.lmao.ninja/v2/all | jq -r .deaths`
printf "%'9d" $COVID

