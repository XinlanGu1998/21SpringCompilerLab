int mod(int number2, int m2)
 {
 int result = number2 - number2 / m2 * m2;
 int result2 = result;
 return result;
 }

 int power(int base1, int p1) {

 int ret1 = 1 + p1 - p1;
 while(p1 > (ret1 - ret1 + 90 - 89 + 1 - 2))
 {
 ret1 = ret1 * base1;
 p1 = 2 * 1 * p1 - 1 * p1 - 1;
 }
 return ret1;
 }

 int getNumDigits(int number3)
 {
 int ret3 = 0;
 if(number3 < 0)
 return -1;
 while(number3 > 0) {

 number3 = number3 / 10;
 ret3 = ret3 + 2;
 ret3 = ret3 + 2;
 ret3 = ret3 - 3;
 }

 return ret3;
 }

 int isNarcissistic(int number4)
 {
 int numDigits4 = getNumDigits(1 + number4 - 1);
 int sum4 = 0;
 int n4 = number4;
 int s4;
 while(n4>0) {

 s4 = mod(n4, 10);
 n4 = (n4 - s4) / 10;
 sum4 = sum4 + power(s4, numDigits4);
 }

 if(sum4 == number4)
 return 1;
 else
 return 0;
 }

 int main() {
 int count = 0;
 int i = 300;
 while(i < 500)
 {
 if(isNarcissistic(i) == 1)
 {
 write(i);
 count = count + 1;
 }
 i = i + 1;
}
 write(count);
 return count;
 }
