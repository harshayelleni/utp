matches=43
while [ $matches -ge 1 ]
do 
if [ $matches -eq 1 ]
then 
echo "matches left: $matches"
echo "You Lose" 
break
fi
echo "matches left: $matches"
echo "enter 1/2/3/4/5/6 as your choice."
read n
echo "you entered $n"
if [ $n -ge 7 ] || [ $n -le 0 ]
then
echo "invalid input " 
continue
fi
c=$((7-$n))
echo "computer picked $c"
matches=$(($matches-$c-$n))
done


# the relation is matches = (max num chosen+1)*(num of choices) +1
