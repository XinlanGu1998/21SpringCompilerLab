int main()
 {
 int month, year;
year = read();
 month = read();
 if(year == (year / 100 * 100)){

 if(year == (year / 400 * 400)){
 if(month == 2){
 write(29);
 }
 else if(month == (month / 2 * 2)){
 write(30);
 }
 else
 write(31);
}else {
 if(month == 2){
 write(28);
 }
 else if(month == (month / 2 * 2)){
 write(30);
 }
 else {
 write(31);
 }
 }
 }
 else if(year == (year/4 * 4)){
 if(month == 2){
 write(29);
 }
 else if(month == (month / 2 * 2)){
 write(30);
 }
 else {
 write(31);
 }
 }
 else{
 if(month == 2){
 write(28);
 }
 else if(month == (month / 2 * 2)){
 write(30);
 }
 else {
 write(31);
 }
 }
 return 0;
 }
