void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  
  numbers.add(30);
  
  numbers.removeAt(0);
  
  List<int> greaterThan15 = numbers.where((number) => number > 15).toList();
  
  List<int> multipliedNumbers = numbers.map((number) => number * 2).toList();
  
  print("Numbers greater than 15: $greaterThan15");
  print("Multiplied numbers: $multipliedNumbers");
}