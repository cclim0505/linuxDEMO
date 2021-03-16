# A simple demo script for shell scripting

prefix="sample_text"

for x in {1..9}
do
    if [ -e $prefix$x ] 
    then
        rm $prefix$x
    fi

    echo "###############" >> $prefix$x

    for  ((i=1 ; i<=$x ;i++))
    do
        echo "This is line " $i "for file" $prefix$x >> $prefix$x
    done

    echo "That's it" >> $prefix$x
done


for y in fruits veggies drinks
do
    touch $y"_list.txt"     # create empty files
done

