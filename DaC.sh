#!/usr/bin/env bash
# Example of Documentation as Code

if [ $# -eq 0 ]; then
 echo "$(basename $0) [run|doc]"
fi

case $1 in
 run)

echo "Here goes the code to run"
 exit
 ;;

doc)

sed '/^:/,/^DAC/!d;s/^:/cat/' "$0" | bash -s "$@"
 exit
 ;;

*) exit
 ;;
esac


: <<DACv1
## Documentation Starts

Here you can add all the needed markdown documentation. You can split it as shown in this script.
DACv1

: <<\DACv2
### Documentation Continues
Here goes the documentation example with a table:

1 | 2 | 3 | 4 | 5
---|---|---|---
T | H | I | S |
I | S |   | A |
T | A | B | L | E
DACv2
