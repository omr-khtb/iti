void main() {
  List<int?> numbers = [1, null, 2, null, 3];
  List<int> nonNullNumbers = numbers.whereType<int>().toList();
  
  print("Updated list: $nonNullNumbers");
}