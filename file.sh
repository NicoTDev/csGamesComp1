INFILE=customer_profiles.csv
CLEANFILE=customer_profiles.csv



IFS=$'\n' 
for LINE in $(cat "$INFILE")
do
    IFS=', ' read -r -a array <<< $LINE
    if [ -z "${array[3]}" ]; then
        echo emailEmpty!
    fi

done

