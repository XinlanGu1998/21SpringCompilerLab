struct Product{
 int weight;
 int price;
 };

 int main()
 {
 struct Product p1;
 p1.weight = 123;
 p1.price = 56;
 write(p1.weight * p1.price);
 return 0;
 }
