#!/bin/bash

# COVID-19 STATS SCRIPT / v3 EDITION

# Original scripting by Ralph Smith; integrated script file design by Avinash H. Duduskar

# Worldwide
_world_cases() { printf "%'11d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/all | jq -r .cases)"; }
_world_deaths() { printf "%'9d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/all | jq -r .deaths)"; }

# US
_us_cases() { printf "%'11d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/countries/us | jq -r .cases)"; }
_us_deaths() { printf "%'9d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/countries/us | jq -r .deaths)"; }

# India
_india_cases() { printf "%'11d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/countries/in | jq -r .cases)"; }
_india_deaths() { printf "%'9d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/countries/in | jq -r .deaths)"; }

# UK
_uk_cases() { printf "%'11d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/countries/uk | jq -r .cases)"; }
_uk_deaths() { printf "%'9d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/countries/uk | jq -r .deaths)"; }

# NY
_ny_cases() { printf "%'11d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/states | jq -r '.[] | select(.state=="New York").cases')"; }
_ny_deaths() { printf "%'9d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/states | jq -r '.[] | select(.state=="New York").deaths')"; }

# Erie Cty, NY
_erie_cases() { printf "%'11d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/jhucsse/counties | jq -r '.[] | select(.province=="New York" and .county=="Erie").stats.confirmed')"; }
_erie_deaths() { printf "%'9d" "$(curl -m 30 -s https://disease.sh/v3/covid-19/jhucsse/counties | jq -r '.[] | select(.province=="New York" and .county=="Erie").stats.deaths')"; }

# -----------------------------------

# Select output based on passed argument
case "$1" in

# Worldwide
'world_cases')
  _world_cases ;;

'world_deaths')
  _world_deaths ;;

# India
'india_cases')
  _india_cases ;;

'india_deaths')
  _india_deaths ;;

# US
'us_cases')
  _us_cases ;;

'us_deaths')
  _us_deaths ;;

# UK
'uk_cases')
  _uk_cases ;;

'uk_deaths')
  _uk_deaths ;;

# New York State
'ny_cases')
  _ny_cases ;;

'ny_deaths')
  _ny_deaths ;;
  
'erie_cases')
  _erie_cases ;;
  
'erie_deaths')
  _erie_deaths ;;

# Catchall
*)
  echo "error" ;;
esac

