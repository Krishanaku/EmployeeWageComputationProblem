echo "Welcome to Employee Wage Computation Program"

function calculateWorkingHour() {
	case $1 in
		0)
			workingHour=0;
			;;

		1)
			workingHour=8;
			;;
		2)
			workingHour=4;
			;;
	esac;
	echo $workingHour;
}
declare -A day
perHourSalary=20;
totalSalary=0;
totalWorkingHour=0;
day=1;

while [[ $day -le 20 && $totalWorkingHour -lt 100 ]]
do
	wHour=$(calculateWorkingHour $((RANDOM%3)));
	totalWorkingHour=$(($totalWorkingHour + $wHour));
	if [ $totalWorkingHour -gt 100 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $wHour));
		break;
	fi
	salary=$(($perHourSalary * $wHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
echo "Employee daily wage:"${salary[@]}
echo "Employee Total wage:"${totalSalary[*]}
echo "Employee Day wise wage:"${day[@]}
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";
