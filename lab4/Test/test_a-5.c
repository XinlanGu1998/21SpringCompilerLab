int fact(int m){
 int result = 1;
 int j = 1;
 while(j <= m){
 result = result * j;
 j = j + 1;
 }
 return result;
 }
 int main(){
 int x[5];
 int i = 0, N = 5;
 while(i < N){
 x[i] = i + 2;
 write(fact(x[i]));
 i = i + 1;
 }
 return 0;
 }
