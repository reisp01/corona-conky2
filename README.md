# corona-conky2
*Coronavirus stats in conky, now using v3 of the [disease.sh](https://disease.sh) API*

This conky uses an external script file with bash's printf command with a single quote (') format descriptor which (in the US at least) puts commas every three digits. So 3000000 is formatted as 3,000,000. Special thanks to Avinash H. Duduskar for the single-script design; it's much cleaner!

It is designed to run the conky config `conky.conf` from the directory `~/.config/conky`. If you use a different directory, set the `${template2}` variable in the conky config file appropriately.

We now have examples for all cases, by country, by state (US) and by county/province. The "estimates" of total infections were removed as there is no consensus on how to calculate that number.

Rather than a simple conky with only COVID-19 information, I posted my current conky: perhaps someone will get an idea or two from it and you can't have too many conky config examples. Note that on your system this will look slightly different and probably need tweaking: installed fonts and screen size all affect the look of a conky.


![](screenshot.png)


Stay safe!

