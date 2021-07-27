int f(int a[7][8][9][8],int b)
{
    a[1][2][3][4]=1;
    return b;
}
int main()
{
    int pm[2][3];
    int re[4][3][2];
    re[1][1][1]=1;
    pm=re[1];
    write(pm[1][0]);
    return 0;
}