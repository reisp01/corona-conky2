#!/bin/bash
COVID=`curl -m 30 -s https://corona.lmao.ninja/v2/countries/us | jq -r .deaths`
printf "%'9d" $COVID

