#!/bin/bash
one=0
two=0
three=0 
four=0 
five=0 
six=0 
seven=0 
eight=0 
nine=0 
count=0
if [ $1 ]; then
	filename="$1"
else 
	#επώνυμη μεταβλητή (μέσω εντολής read )
    echo "παρακαλω εισαγετε το ονομα του αρχειου."
    #perimeni na pari tin timi years.
    read filename
	echo "Το αρχειο που εχετε εισάγει ειναι $filename"
fi

while read -r line
do
    name="$line"
    number=${name:0:1}
    # benford code to see each value 
	# n=$(($number + 1))
    # logN=$(echo "l($n)/l(10)" | bc -l)
    # logNumber=$(echo "l($number)/l(10)" | bc -l)
    # benford = $(echo "$logN - $logNumber" | bc -l)
    # benford=$(awk "BEGIN {printf \"%.2f\",${logN}-${logNumber}}")
	# echo "first number = $number ,  Benford Value $benford %"
 case $number in
	1)
		one=$(($one+1));;
	2)
		two=$(($two+1));;
	3)
		three=$(($three+1));;
	4)
		four=$(($four+1));;
	5)
		five=$(($five+1));;
	6)
		six=$(($six+1));;
	7)
		seven=$(($seven+1));;
	8)
		eight=$(($eight+1));;
	9)
		nine=$(($nine+1));;
	*)
		echo "Λυπούμαστε, 0 τιμές";;
  esac
  count=$(($count+1))
done < "$filename"
# check and show for benford law
echo "Σύνολο (N) τιμές στο DB $count"
# one
totalone=$(awk "BEGIN {printf \"%.2f\",${one}/${count}*100}")
if [[ $(echo "33.1 > $totalone" | bc -l ) -eq 1 ]] && [[ $(echo "27.1 < $totalone" | bc -l ) -eq 1 ]]; then
	messages="το αποτελεσμα συμφωνει με το νομο του benford (απόκλιση 3%)"
else
	messages="το αποτελεσμα ΔΕΝ συμφωνει με το νομο του benford (απόκλιση 3%)"
fi
echo "To 1 παρουσιάστηκε $one φορές ($totalone%) $messages"
# two
totaltwo=$(awk "BEGIN {printf \"%.2f\",${two}/${count}*100}")
if [[ $(echo "20.6 > $totaltwo" | bc -l ) -eq 1 ]] && [[ $(echo "14.6 < $totaltwo" | bc -l ) -eq 1 ]]; then
	messages="το αποτελεσμα συμφωνει με το νομο του benford (απόκλιση 3%)"
else
	messages="το αποτελεσμα ΔΕΝ συμφωνει με το νομο του benford (απόκλιση 3%)"
fi
echo "To 2 παρουσιάστηκε $two φορές ($totaltwo%) $messages"
# three
totalthree=$(awk "BEGIN {printf \"%.2f\",${three}/${count}*100}")
if [[ $(echo "15.5 > $totalthree" | bc -l ) -eq 1 ]] && [[ $(echo "9.5 < $totalthree" | bc -l ) -eq 1 ]]; then
	messages="το αποτελεσμα συμφωνει με το νομο του benford (απόκλιση 3%)"
else
	messages="το αποτελεσμα ΔΕΝ συμφωνει με το νομο του benford (απόκλιση 3%)"
fi
echo "To 3 παρουσιάστηκε $three φορές ($totalthree%) $messages"
# four
totalfour=$(awk "BEGIN {printf \"%.2f\",${four}/${count}*100}")
if [[ $(echo "12.7 > $totalfour" | bc -l ) -eq 1 ]] && [[ $(echo "6.7 < $totalfour" | bc -l ) -eq 1 ]]; then
	messages="το αποτελεσμα συμφωνει με το νομο του benford (απόκλιση 3%)"
else
	messages="το αποτελεσμα ΔΕΝ συμφωνει με το νομο του benford (απόκλιση 3%)"
fi
echo "To 4 παρουσιάστηκε $four φορές ($totalfour%) $messages"
# five
totalfive=$(awk "BEGIN {printf \"%.2f\",${five}/${count}*100}")
if [[ $(echo "10.9 > $totalfive" | bc -l ) -eq 1 ]] && [[ $(echo "4.9 < $totalfive" | bc -l ) -eq 1 ]]; then
	messages="το αποτελεσμα συμφωνει με το νομο του benford (απόκλιση 3%)"
else
	messages="το αποτελεσμα ΔΕΝ συμφωνει με το νομο του benford (απόκλιση 3%) "
fi
echo "To 5 παρουσιάστηκε $five φορές ($totalfive%) $messages"
# six
totalsix=$(awk "BEGIN {printf \"%.2f\",${six}/${count}*100}")
if [[ $(echo "9.7 > $totalsix" | bc -l ) -eq 1 ]] && [[ $(echo "3.9 < $totalsix" | bc -l ) -eq 1 ]]; then
	messages="το αποτελεσμα συμφωνει με το νομο του benford (απόκλιση 3%)"
else
	messages="το αποτελεσμα ΔΕΝ συμφωνει με το νομο του benford (απόκλιση 3%) "
fi
echo "To 6 παρουσιάστηκε $six φορές ($totalsix%) $messages"
# seven
totalseven=$(awk "BEGIN {printf \"%.2f\",${seven}/${count}*100}")
if [[ $(echo "8.8 > $totalseven" | bc -l ) -eq 1 ]] && [[ $(echo "2.8 < $totalseven" | bc -l ) -eq 1 ]]; then
	messages="το αποτελεσμα συμφωνει με το νομο του benford (απόκλιση 3%)"
else
	messages="το αποτελεσμα ΔΕΝ συμφωνει με το νομο του benford (απόκλιση 3%) "
fi
echo "To 7 παρουσιάστηκε $seven φορές ($totalseven%) $messages"
# eight
totaleight=$(awk "BEGIN {printf \"%.2f\",${eight}/${count}*100}")
if [[ $(echo "8.1 > $totaleight" | bc -l ) -eq 1 ]] && [[ $(echo "2.1 < $totaleight" | bc -l ) -eq 1 ]]; then
	messages="το αποτελεσμα συμφωνει με το νομο του benford (απόκλιση 3%)"
else
	messages="το αποτελεσμα ΔΕΝ συμφωνει με το νομο του benford (απόκλιση 3%) "
fi 
echo "To 8 παρουσιάστηκε $eight φορές ($totaleight%) $messages"
# nine
totalnine=$(awk "BEGIN {printf \"%.2f\",${nine}/${count}*100}")
if [[ $(echo "7.6 > $totalnine" | bc -l ) -eq 1 ]] && [[ $(echo "1.6 < $totalnine" | bc -l ) -eq 1 ]]; then
	messages="το αποτελεσμα συμφωνει με το νομο του benford (απόκλιση 3%)"
else
	messages="το αποτελεσμα ΔΕΝ συμφωνει με το νομο του benford (απόκλιση 3%) "
fi
echo "To 9 παρουσιάστηκε $nine φορές ($totalnine%) $messages"

#total=$(($one+$two+$three+$four+$five+$six+$seven+$eight+$nine))
#echo $total
 # Nplus=$(awk "BEGIN {printf \"%.3f\",1/${number}}")
 #    d=$(awk "BEGIN {printf \"%.3f\",${number}+${Nplus}}")
 #    my_log=$(echo "l($d)/l(10)" | bc -l)
 #    # benford= 
	# echo "$number ...  $d  > $my_log"