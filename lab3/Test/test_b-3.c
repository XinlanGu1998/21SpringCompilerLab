int squaRever(int num)
{
    int flag = 0;
    int array[3];
    int j = 0;
    array[0] = num / 100;
    array[1] = num / 10 - 10 * array[0];
    array[2] = num - 100 * array[0] - 10 * array[1];
    if (array[0] != array[2])
    {
        flag = 0;
    }
    else
    {
        while (j < 12)
        {
            if ((j * j - num) == 0)
                flag = 1;
            j = j + 1;
        }
    }
    if (flag == 1)
        return 1;
    else
        return 0;
}
int main()
{
    int i = 100;
    while (i < 150)
    {
        if (squaRever(i) == 1)
            write(i);
        i = i + 1;
    }
    return 0;
}