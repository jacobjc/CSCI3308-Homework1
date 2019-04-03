#Jacob Christiansen - HW1, Part 1B - CSCI3308
echo "Enter filename: "
read filename
cat $filename | sort -k3,3 -k2,2 > sortedfileAwk.txt

awk '{if(NR>0){print $1,"["int(($4+$5+$6)/3)"]",$3",",$2}}' sortedfileAwk.txt