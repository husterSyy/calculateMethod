#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#define pi  3.1415926535000000
long double temp;
/*long double f(long double temp)
{   
	return (cos(temp) - temp);
}
long double f1(long double temp)
{
	return (-sin(temp) - 1);
}*/
double newton_iteration( long double a0, long double tol)
{
	
	long double x=a0,temp,a,b;
	printf("%.16f\n", x);
	do{
        temp = x;
		x = temp - (cos(temp) - temp) / (-sin(temp) - 1);
	printf("%.16f\n", x);

	} while (abs(x - temp) >= tol);
	return 0;
}
int main()
{
	newton_iteration(pi / 4, 0.0000000001);
	system("pause");
	return 0;
}