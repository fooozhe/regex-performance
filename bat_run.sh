#! /bin/sh
#

echo 'start'
for RULE_FILE in `ls ~/regex-performance/ruleset/*.re`
do
    NAME=${RULE_FILE##*/}
    NAME=${NAME%.*}
	echo $NAME

    ~/regex-performance/build/src/regex_perf -n 5 -m 1 -i $RULE_FILE -f ~/regex-performance/3200.txt -o ~/regex-performance/${NAME}-hs-mul.xls

done
echo 'done'
