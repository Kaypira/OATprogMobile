void main() {
 
  double temperaturaFahrenheit = 68.0;
  double temperaturaCelsius = 20.0;

  double celsiusConvertido = fahrenheitParaCelsius(temperaturaFahrenheit);

  double fahrenheitConvertido = celsiusParaFahrenheit(temperaturaCelsius); 
  print('${temperaturaFahrenheit}°F em Celsius é ${celsiusConvertido.toStringAsFixed(2)}°C');
  print('${temperaturaCelsius}°C em Fahrenheit é ${fahrenheitConvertido.toStringAsFixed(2)}°F');
}

double fahrenheitParaCelsius(double temperaturaFahrenheit) {
  return (temperaturaFahrenheit - 32) * 5 / 9;
}

double celsiusParaFahrenheit(double temperaturaCelsius) {
  return (temperaturaCelsius * 9 / 5) + 32;
}
