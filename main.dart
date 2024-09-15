import 'dart:io';

var price = 300000;

void main() {
  // Konversi Fahrenheit ke Celsius
  stdout.write('Masukan suhu dalam Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);
  var suhu_fahrenheit = (fahrenheit - 32) * 5 / 9;
  print('$fahrenheit derajat Fahrenheit = $suhu_fahrenheit derajat Celsius');

  // Konversi Kelvin ke Celsius
  stdout.write('Masukan suhu dalam Kelvin: ');
  var kelvin = num.parse(stdin.readLineSync()!);
  var suhu_kelvin = kelvin - 273.15;
  print('$kelvin derajat Kelvin = $suhu_kelvin derajat Celsius');

  var discount = checkDiscount(price);  // variabel price dapat diakses di main()
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  return discount;
}
