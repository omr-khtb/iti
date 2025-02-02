class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    return a / b;
  }
}

void main() {
  Calculator calc = Calculator();
  print("Add: ${calc.add(5, 3)}");
  print("Subtract: ${calc.subtract(5, 3)}");
  print("Multiply: ${calc.multiply(5, 3)}");
  print("Divide: ${calc.divide(5, 3)}");
}