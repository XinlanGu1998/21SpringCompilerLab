struct
{
    int price;
    int sales[100];
} salesDay[5];

struct Sum
{
    int price_sum;
    int sales_sum;
};

struct Sum MethodDisplay()
{
    struct Sum sum_result;
    int i, j, sum_all, sum, M = 5, N = 100;
    int price_all = 0;
    while (i < M)
    {
        sum = 0;
        while (j < N)
        {
            sum = sum + salesDay[i].sales[j];
            j = j + 1;
        }
        i = i + 1;
        sum_all = sum_all + sum;
        price_all = salesDay[i].price * sum + price_all;
    }

    sum_result.price_sum = price_all;
    sum_result.sales_sum = sum_all;
    return sum_result;
}
