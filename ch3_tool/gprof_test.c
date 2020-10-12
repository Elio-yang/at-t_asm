#include <stdio.h>
void func1()
{
        int i,j=0;
        for(i=0;i<100000;i++){
                j+=i;
        }
}
void func2()
{
        int i,j;
        for(i=0;i<200000;i++){
                j=i;
        }
}
int main()
{
        int i,j;
        for(i=0;i<100;i++){
                func1();
        }
        for(j=0;j<50000;j++){
                func2();
        }
        return 0;
}