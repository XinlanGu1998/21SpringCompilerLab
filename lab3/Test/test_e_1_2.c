struct Worker{
 int salary;
 int year;
 int esca;
 };

 int main(){
 struct Worker worker[10];
 int i, j, add, N = 10;
 int final = 0;
 while(i < N){
 worker[i].salary = 100;

 worker[i].year = i;
 worker[i].esca = i * i - i + 2;
 i = i + 1;
 }
 while(j < N){
 if(worker[j].year < 3)
 add = 1;
 else
 add = 2;
 final = final + worker[j].salary * (365 - worker[j].esca) *
add;
 j = j + 1;
 }
 write(final);
 return 0;
 }
