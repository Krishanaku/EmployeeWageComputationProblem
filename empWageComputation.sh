echo "Welcome to Employee Wage Computation Program"

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
echo "Employee is Present*";
empRatePerHr=20
empHrs=8;
salary=$(($empHrs*$empRatePerHr))
echo "salary="$salary
else
echo "Employee is Abscent*";
echo "salary="0
fi
