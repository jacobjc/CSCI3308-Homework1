#Jacob Christiansen - HW1, Part 2 - CSCI3308
echo "Enter filename: "
read filename

grep -c '[0-9]$' $filename # Problem 1
grep -c '^[AEIOUYaeiouy]' $filename # Problem 2
egrep -c '^[a-zA-Z]{9}$' $filename # Problem 3
egrep -c '^[0-9]{3}-[0-9]{3}-[0-9]{4}$' $filename # Problem 4
egrep -c '^303-[0-9]{3}-[0-9]{4}$' $filename # Problem 5
grep -c '^[0-9].*[aeiouyAEIOUY]$' $filename # Problem 6
grep -c '^.*@UCDenver.edu$' $filename # Problem 7
grep -c '^[n-zN-Z][a-zA-Z]*\.[a-zA-Z]*@[a-zA-Z0-9]*\.[a-zA-Z0-9]*$' $filename # Problem 8