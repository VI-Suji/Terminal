# !/bin/bash

function trig()
{
	awk 'BEGIN {
   		PI = 3.14159265
   		printf "Enter degree to find cos"
   		getline d < "-"
   		result = cos(d * PI / 180.0);
   		printf "The cosine of %f degrees is %f.\n", d, result
   		
	}'
	
	awk 'BEGIN {
   		PI = 3.14159265
   		printf "Enter degree to find sin"
   		getline d < "-"
   		result = sin(d * PI / 180.0);
   		printf "The sine of %f degrees is %f.\n", d, result
   	}'
   	
   	awk 'BEGIN {
   		PI = 3.14159265
   		getline x < "-"
   		getline y < "-"
   		result = atan2 (y,x) * 180 / PI;
   		printf "The arc tangent for (x=%f, y=%f) is %f degrees\n", x, y, result
	}'
	
}


function exp()
{
	awk 'BEGIN {
		printf "Enter the value " 
   		getline param < "-"
   		result = exp(param);
   		printf "The exponential value of %f is %f.\n", param, result
	}'
}




# Take user Input 
if [ $ch -lt "7" ]
then
	echo "Enter Two numbers : "
	read a 
	read b
fi 

# Input type of operation 
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Power"
echo "6. Logarithmic"
echo "7. Exponential"
echo "8. Trignometric"
read ch 

#Check for division by zero

if [ $ch -eq "4" ]
then
	if [ $b -eq "0" ]
	then
		echo "Division by zero not possible"
		exit 1
		
	fi
fi


# Switch Case to perform 
# calulator operations 
case $ch in
1)res=`echo $a + $b | bc` 
;; 
2)res=`echo $a - $b | bc` 
;; 
3)res=`echo $a \* $b | bc` 
;; 
4)res=`echo "scale=2; $a / $b" | bc` 
;;
5)res=`echo $(($a ** $b)) | bc`
;;
6)res=`echo "scale=2; l($a) / l($b)" | bc -l`
;;
7)exp
;;
8)trig
;;
*)echo "enter a valid value "
esac
echo "Result : $res"
