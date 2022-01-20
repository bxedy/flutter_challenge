import 'dart:io';

void main() {
  while (true) {
    print('===== Insira um número =====\n');
    final input = stdin.readLineSync();
    try {
      getValue(int.parse(input!));
    } catch (e) {
      print('Número invalido!\n');
    }
  }
}

void getValue(int number) {
  try {
    int sum = 0;
    for (var i = number; i > 0; i--) {
      if (i % 3 == 0 && i < number) {
        sum = sum + i;
      } else if (i % 5 == 0 && i < number) {
        sum = sum + i;
      }
    }
    print('A soma é de $sum\n');
  } catch (e) {
    throw (e);
  }
}
