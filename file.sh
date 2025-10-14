INFILE=customer_profiles.csv
CLEANFILE=customer_profiles.csv



IFS=$'\n' 
for LINE in $(cat "$INFILE")
do
    IFS=', ' read -r -a array <<< $LINE
    echo "${array[1]}"
done

