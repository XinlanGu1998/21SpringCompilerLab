int print(int array[3], int len){
 int i1 = 0;
 while(i1 < len){
 write(array[i1]);
 i1 = i1 + 1;
 }
 return 0;
 }

 int InnerP(int array1[3], int array2[3]){
 int result = 0;
 int i = 0, N = 3;
 while(i < N){
 result = result + array1[i] * array2[i];
 i = i + 1;
 }
 return result;
 }

 int main(){
 int p[3], q[3];
 int k = 0, M = 3;
 while(k < M){
 p[k] = k * k;
 q[k] = 2 * k + 1;
 k = k + 1;

 }
 print(p, 3);
 print(q, 3);
 write(InnerP(p,q));

 return 0;
 }
