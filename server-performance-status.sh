echo "==================="

echo "DISK USAGE"

free -h | grep "Mem" -w | awk '{printf "Total : %.1fGi\nUsed : %s\nFree :%.1fGi\n",$2,$3,$4}'

echo

echo"=================="

echo "Top 5 Processes by MEM"

echo

ps aux --sort -%mem | head -n 6 | awk '{print $1 "\t" $2 "\t" $4 "\t" $11}'

echo

echo "========================"

echo "Top 5 Processes by CPU"

echo

ps aux --sort -%cpu | head -n 6 | awk '{print $1 "\t" $2 "\t" $3 "\t" $11}'
