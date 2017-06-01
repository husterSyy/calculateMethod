/*
#include<stdio.h>
#include<math.h>
#include<stdlib.h>
//保留到小数点后十位数字
void A()
{
	double I, temp=log(6.0000000000/5); //I0 n==0
	for (int i = 1; i <= 20; i++)
	{  
		I = (-5) * temp + (1.0000000000 / i);
		temp = I;
		printf("I%d=%.10f\n", i, I);
	}
}
void B()
{
    double I, temp = 0.0312500000;//I20  n==20
	 for (int i = 20; i>0; i--)
	{
		I =0.2*(1.0000000000/i-temp) ;
		temp = I;
		printf("I%d=%.10f\n", i-1, I);
	}
}
int main()
{  
	A();
	B();
	system("pause");
	return 0;
}
*/