#!/bin/sh -xv

tmp=/tmp/$$

ERROR_EXIT(){
 echo "$1" >&2
 rm -f $tmp-*
 exit 1
}
#########
# TEST1 #
#########
echo 6  > $tmp-ans
./17745131.sh 12 18 > $tmp-out || ERROR_EXIT "TEST-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST-2"

echo OK
rm -f $tmp-*
exit 0
