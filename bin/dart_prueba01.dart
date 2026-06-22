import 'dart:io';

void main() {
  stdout.write('Valor 1: ');
  String? input1 = stdin.readLineSync();

  stdout.write('Valor 2: ');
  String? input2 = stdin.readLineSync();

  double? num1 = double.tryParse(input1 ?? '');
  double? num2 = double.tryParse(input2 ?? '');

  if (num1 != null && num2 != null) {
    print('\nResultados:');
    print('Suma: ${num1 + num2}');
    print('Resta: ${num1 - num2}');
    print('Multiplicación: ${num1 * num2}');

    if (num2 != 0) {
      print('División: ${num1 / num2}');
    } else {
      print('División: No se puede dividir entre 0');
    }
  } else {
    print('Error: valores no válidos');
  }
}