#Jacob Christiansen - HW1, Part 1A - CSCI3308
echo "Enter filename: "
read filename
lines=$(wc -l < $filename)
cat $filename | sort -k3,3 -k2,2 > sortedfile.txt

for ((i=1; i<=(lines+1); i++))
do 
var=$(sed -n $((i))p sortedfile.txt | cut -d ' ' -f 1)
sum=$(($(sed -n $((i))p sortedfile.txt | cut -d ' ' -f 4)+
$(sed -n $((i))p sortedfile.txt | cut -d ' ' -f 5)+
$(sed -n $((i))p sortedfile.txt | cut -d ' ' -f 6)))
avg=$((sum/3))
firstname=$(sed -n $((i))p sortedfile.txt | cut -d ' ' -f 2)
lastname=$(sed -n $((i))p sortedfile.txt | cut -d ' ' -f 3)

echo "$var [$avg] $lastname, $firstname"
done