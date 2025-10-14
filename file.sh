INFILE=customer_profiles.csv
CLEANFILE=customer_profiles.csv



IFS=$'\n' 
for LINE in $(cat "$INFILE")
do
    IFS=', ' read -r -a array <<< $LINE
    if [ -z "${array[0]}" ]; then
        echo nombreIncorrect
    fi
    if [ -z "${array[1]}" ]; then
        echo Nom incorrect
    fi
    if [ -z "${array[2]}" ]; then
        echo email incorrect
    fi
    if [ -z "${array[3]}" ]; then
        echo ville incorrecte
    fi
    if [ -z "${array[4]}" ]; then
        echo Status incorrect
    fi

done

