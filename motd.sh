arr[0]="Ploink Ploink"
arr[1]="I Need Oil"

rand=$[$RANDOM % ${#arr[@]}]
echo ${arr[$rand]}
