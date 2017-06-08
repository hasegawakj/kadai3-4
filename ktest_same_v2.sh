#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
 echo "$1" >&2
 rm -f $tmp-*
 exit 1
}
#########
# TEST1 #
#########
echo 6 > $tmp-ans
./17745131.sh 12 18 > $tmp-out || ERROR_EXIT "TEST-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST-2"

echo TEST1 OK

#########
# TEST2 #
#########
echo 6 > $tmp-ans
./17745131.sh 18 12 > $tmp-out || ERROR_EXIT "TEST-3"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST-4"

echo TEST2 OK

#########
# TEST3 #
#########
echo 12 > $tmp-ans
./17745131.sh 36 96 > $tmp-out || ERROR_EXIT "TEST-5"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST-6"

echo TEST3 OK

#########
# TEST4 #
#########
echo 100 > $tmp-ans
./17745131.sh 100 100 > $tmp-out || ERROR_EXIT "TEST-7"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST-8"

echo TEST4 OK

rm -f $tmp-*
exit 0
