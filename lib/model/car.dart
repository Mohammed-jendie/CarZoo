class Car {
  String image;
  int price;
  String brand;
  String model;
  String co2;
  String fuelcons;

  Car(this.image, this.price, this.brand, this.model, this.co2, this.fuelcons);
}

List<Car> carList = [
  Car('assets/images/3.png', 2500, 'k1', 'b1', '77/km', '5.5L'), //0
  Car('assets/images/4.png', 3000, 'k1', 'b1', '77/km', '5.5L'), //1
  Car('assets/images/5.png', 4000, 'k1', 'b1', '77/km', '5.5L'), //2
  Car('assets/images/6.png', 5200, 'k1', 'b1', '77/km', '5.5L'), //3
  Car('assets/images/7.png', 6000, 'k1', 'b1', '77/km', '5.5L'), //4
];
