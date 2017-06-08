#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
 echo "$1" >&2
 rm -f $tmp-*
 exit 1
}
#########
# TEST3 #
#########
echo 12 > $tmp-ans
./17745131.sh 36 96 > $tmp-out || ERROR_EXIT "TEST-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST-2"

echo OK
rm -f $tmp-*
exit 0
