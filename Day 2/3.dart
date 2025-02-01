void main() {
  Map<String, int> products = {
    "Laptop": 1500,
    "Phone": 800,
    "Tablet": 400,
  };
  
  products["Smartwatch"] = 200;

  products["Phone"] = 850;
  

  products.remove("Tablet");
  
  List<String> expensiveProducts = products.keys.where((product) => products[product]! > 500).toList();
  
  print("Expensive products: $expensiveProducts");
}