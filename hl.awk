#!/bin/awk -f
{
if (re != "") gsub(re, "\033[31m&\033[39m", $0)
if (gr != "") gsub(gr, "\033[32m&\033[39m", $0)
if (ye != "") gsub(ye, "\033[33m&\033[39m", $0)
if (bl != "") gsub(bl, "\033[34m&\033[39m", $0)
if (ma != "") gsub(ma, "\033[35m&\033[39m", $0)
if (cy != "") gsub(cy, "\033[36m&\033[39m", $0)
print $0
}
# Example of usage:
# tail -n 400 /var/lib/otsd/debug.log| hl.awk -v gr='tx .* fully confirmed|Done LevelDbCalendar.*$' -v cy='New t.*$|Sent timestamp.*$|Found commitment.*$|Success.*$' -v ma='Aggregated ' -v bl='New block'|less -R
