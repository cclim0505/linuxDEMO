# Script to demonstrate delayed output to logfile

log="log.txt"
echo "Printing every second." > $log
for x in {1..20}
do
    echo $x >> $log
    sleep 1
done

echo "Printing done." >> $log
