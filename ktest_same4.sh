#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
 echo "$1" >&2
 rm -f $tmp-*
 exit 1
}
#########
# TEST4 #
#########
echo 100 > $tmp-ans
./17745131.sh 100 100 > $tmp-out || ERROR_EXIT "TEST-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST-2"

echo OK
rm -f $tmp-*
echo "テストP終了ステータス"
echo $?
exit 0
