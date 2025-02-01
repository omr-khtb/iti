void main() {
  print(isPalindrome("madam"));
  print(fibonacci(10));
  print(sumOfEvens([1, 2, 3, 4, 5, 6]));
  print(countVowels("hello world"));
  print(reverseString("dart"));
  print(removeSpaces("hello world"));
  print(isPrime(7));
  print(multiplyList([1, 2, 3, 4], 2));
}

bool isPalindrome(String str) {
  return str == str.split('').reversed.join('');
}

List<int> fibonacci(int n) {
  List<int> fib = [0, 1];
  for (int i = 2; i < n; i++) {
    fib.add(fib[i - 1] + fib[i - 2]);
  }
  return fib;
}

int sumOfEvens(List<int> numbers) {
  return numbers.where((number) => number % 2 == 0).fold(0, (sum, number) => sum + number);
}

int countVowels(String str) {
  return str.split('').where((char) => 'aeiou'.contains(char)).length;
}

String reverseString(String str) {
  return str.split('').reversed.join('');
}

String removeSpaces(String str) {
  return str.replaceAll(' ', '');
}

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

List<int> multiplyList(List<int> numbers, int multiplier) {
  return numbers.map((number) => number * multiplier).toList();
}