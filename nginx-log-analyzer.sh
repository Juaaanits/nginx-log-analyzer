#!/bin/bash
echo "=========== Nginx Log Analyzer ========================"

# Top 5 IPs
echo -e "Top 5 IP Addresses with the most requests:"
awk '{print $1}' logs | sort | uniq -c | sort -nr | head -5 | \
awk '{printf "%s - %d requests\n", $2, $1}'

# Top 5 paths
echo -e "\nTop 5 most requested paths:"
awk '{print $7}' logs | sort | uniq -c | sort -nr | head -5 | \
awk '{if($2 ~ /^\/api/) path=$2; else path="/api"$2; printf "%s - %d requests\n", path, $1}'

# Top 5 status codes
echo -e "\nTop 5 response status codes:"
awk '{print $9}' logs | sort | uniq -c | sort -nr | head -5 | \
awk '{printf "%s - %d requests\n", $2, $1}'

