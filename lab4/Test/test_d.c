int gcd1(int a, int b)
2 {
3 int result;
4 int temp;
5 temp = a - a / b * b;
6 while (temp != 0) {
7 a = b;
8 b = temp;
9 temp = a - a / b * b;
10 }
11 result = b;
12 return result;
13 }
14 int gcd2(int x, int y)
15 {
16 int remainder = 0;
17 if(x > y){
18 remainder = x - x / y * y;
19 if(remainder == 0)
20 return y;
21 else
22 return gcd2(y, remainder);
23 }
24 else {
25 remainder = y - y / x * x;
26 if(remainder == 0)
27 return x;
28 else
29 return gcd2(x, remainder);
30 }
31 }
32
8
33 int main()
34 {
35 int m = read();
36 int n = read();
37 write(gcd1(m,n));
38 write(gcd2(m,n));
39 return 0;
40 }