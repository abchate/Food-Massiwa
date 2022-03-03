class Food{

String? id;
String? name;
String? imagePath;
String? description;
String? category;
double? price;
double? discount;
double? ratings;

Food({
  this.id,
  this.name,
  this.imagePath,
  this.description,
  this.category,
  this.discount,
  this.price,
  this.ratings

});
}

final foods = [
  Food(
    id: "1",
    name: "Pilaou",
    imagePath: "assets/pilaou.png",
    category: "2",
    price: 1500,
    discount: 3000,
    ratings: 40,
  ),
  Food(
    id: "2",
    name: "Pizza",
    imagePath: "assets/pizza.jpg",
    category: "2",
    price: 2500,
    discount: 3500,
    ratings: 38,
  ),
  Food(
    id: "3",
    name: "banane frite",
    imagePath: "assets/banane.png",
    category: "2",
    price: 750,
    discount: 1000,
    ratings: 35,
  ),
];
