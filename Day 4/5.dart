class Temperature {
  double _celsius;

  Temperature(this._celsius);

  double toFahrenheit() {
    return _celsius * 9 / 5 + 32;
  }

  double toKelvin() {
    return _celsius + 273.15;
  }
}

void main() {
  Temperature temp = Temperature(25);
  print("Fahrenheit: ${temp.toFahrenheit()}");
  print("Kelvin: ${temp.toKelvin()}");
}