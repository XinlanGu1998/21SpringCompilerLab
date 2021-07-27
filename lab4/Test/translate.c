#include<stdio.h>
#include<stdlib.h>
#include<memory.h>
#include<string.h>
int len_int(int x)
{
    if(x==0) return 1;
    int p=0,q=x;
    while(q)
    {
        q=q/10;
        p++;
    }
    return p;
}
int main()
{
    char*str=(char*)malloc(1000);
    while(gets(str)!=NULL)
    {
        int len=0;
        if(str[0]>='0'&&str[0]<='9')
        {
            int temp=atoi(str);
            len=len_int(temp);
        }
        printf("%s\n",str+len);
    }
    return 0;
}