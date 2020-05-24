#!/bin/bash
COVID=`curl -m 30 -s https://corona.lmao.ninja/v2/countries/uk | jq -r .deaths`
printf "%'9d" $COVID

