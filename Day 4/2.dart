class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  Car.oldCar(this.brand, this.model) : year = 2000;

  void printDetails() {
    print("Brand: $brand, Model: $model, Year: $year");
  }
}

void main() {
  Car car1 = Car("Toyota", "Corolla", 2021);
  Car car2 = Car.oldCar("Ford", "Mustang");
  car1.printDetails();
  car2.printDetails();
}