int Josepy(int n,int m){

 int people[100], i = 1;
 int j = 0, k = 0, num = 0;
 while(i <= n){
 people[i] = 1;
 i = i + 1;
 }
 i = 1;
 while(i <= n){
 if(people[i] == 1){
 j = j + people[i];
 if(j == m){
 write(i);
 j = 0;
 people[i] = 0;
 k = k + 1;
 }
 if(k == n){
 num = i;
 return 0;
 }
 }
 if(i == n)
 i = 0;
 i = i + 1;
 }
 return 0;
 }
 int main(){
 int a, b;
 a = read();
 b = read();
 Josepy(a, b);

 return 0;
 }
