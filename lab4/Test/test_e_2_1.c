int main(){
 int array[5][4][3];
 int r = 5, c = 4, d = 3;

 int i = 0, j = 0, k = 0, sum = 0;
 while(i < r){
 j = 0;
 while(j < c){
 k = 0;
 while(k < d){
 array[i][j][k] = (i + 1) * (j + 2) * (k + 3) + 4;
 k = k + 1;
 }
 j = j + 1;
 }
 i = i + 1;
 }
 i = 0;
 j = 0;
 k = 0;
 while(i < r){
 j = 0;
 while(j < c){
 k = 0;
 while(k < d){
 sum = array[i][j][k] + sum;
 k = k + 1;
 }
 j = j + 1;
 }
 i = i + 1;
 }
 write(sum);

 return 0;
 }
