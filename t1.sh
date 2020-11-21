function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "please enter your guess : "
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is lesser then the actual number!!!"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater then the acual number!!!"
        else
            echo "congratulations, you are right!!!"
        break;
        fi
    done
}
echo "Guess the files number in the current directory!!!"
guess
