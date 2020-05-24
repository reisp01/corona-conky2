# corona-conky2
Coronavirus stats in conky, now with more formatting

This requires external script files, so it's messier than I'd like, but it does work. It uses bash's printf command with a single quote (') format descriptor which (in the US at least) puts commas every three digits. So 3000000 is formatted as 3,000,000.

It is designed to run the conky config `conky.conf` from the directory `~/.config/conky` with the `covid` directory below that.

![](screenshot.png)

