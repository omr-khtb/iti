class SmartDevice {
  String brand;
  String model;

  SmartDevice(this.brand, this.model);

  void showDetails() {
    print("Brand: $brand, Model: $model");
  }
}

class Smartphone extends SmartDevice {
  String os;

  Smartphone(String brand, String model, this.os) : super(brand, model);

  @override
  void showDetails() {
    print("Brand: $brand, Model: $model, OS: $os");
  }
}

class Laptop extends SmartDevice {
  String ram;

  Laptop(String brand, String model, this.ram) : super(brand, model);

  @override
  void showDetails() {
    print("Brand: $brand, Model: $model, RAM: $ram");
  }
}

void main() {
  Smartphone phone = Smartphone("Apple", "iPhone 12", "iOS");
  Laptop laptop = Laptop("Dell", "XPS 13", "16GB");

  phone.showDetails();
  laptop.showDetails();
}