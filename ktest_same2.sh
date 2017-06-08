#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
 echo "$1" >&2
 rm -f $tmp-*
 exit 1
}
#########
# TEST2 #
#########
echo 6 > $tmp-ans
./17745131.sh 18 12 > $tmp-out || ERROR_EXIT "TEST-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST-2"

echo OK
rm -f $tmp-*
exit 0
