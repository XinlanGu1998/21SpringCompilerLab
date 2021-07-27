#include<stdio.h>
#include<stdlib.h>
#include<memory.h>
#include<string.h>
int find_least(int cond1[9][9][10],int visit1[9][9])
{
    int least_i=0,least_j=0;
    int least_k;
    int max=0;
    int temp;
    while(least_i<9)
    {
        least_j=0;
        while(least_j<9)
        {
            if(!visit1[least_i][least_j])
            {
                temp=0;
                least_k=1;
                while(least_k<10)
                {
                    if(cond1[least_i][least_j][least_k])
                    {
                        
                    }
                    least_k=least_k+1;
                }
            }
            least_j=least_j+1;
        }
        least_i=least_i+1;
    }
}
int dfs(int elements[9][9],int cond[9][9][10],int visit[9][9])
{

    return 0;
}
int main()
{
    
}