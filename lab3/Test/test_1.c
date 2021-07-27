int f()
{
    int a,b;
    a=2;
    b=a=3;
    return b+a;
}
int main()
{
    write(f());
    return 0;
}