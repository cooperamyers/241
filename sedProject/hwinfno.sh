#!/usr/bin/env bash

  

lscpu | sed -E -n '/^CPU\(s\)/p'

echo '======='

echo 'Memory:'

echo '======='

free -h | sed -n '1,2p' | sed 's/Gi/[\s]Gigabytes/g'

echo ''

echo 'Disks:'

echo '======='

df -h | sed -E -n '/[0-9]*T/p'

echo ''

echo 'Date:'

echo '======='

date | sed -E 's/Fri/Friday,/; s/Sat/Saturday,/;s/Sun/Sunday,/;s/Mon/Monday,/;s/Tue/Tuesday,/;s/Thu/Thursday,/;s/Feb/February/;s/Mar/March/;s/Apr/April/;s/Jun/June/;s/Jul/July/;s/Aug/August/;s/Sep/September/;s/Nov/November/;s/Dec/December/;s/Jan/January/;s/AM/a\.m\./;s/PM/p\.m\./;s/EST/Eastern Standard/;s/CST/Central Standard/;s/PST/Pacific Standard/;s/MST/Mountain Standard/'| sed -E 's/ /\./4'


