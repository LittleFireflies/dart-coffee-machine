import 'dart:io';

void main() {
  stdout.write('Berapa gram biji kopi yang ingin Anda masukkan : ');
  int coffeeBeansStock = num.parse(stdin.readLineSync());
  stdout.write('Berapa ml air yang ingin Anda masukkan : ');
  int waterStock = num.parse(stdin.readLineSync());
  stdout.write('Berapa ml susu yang ingin Anda masukkan : ');
  int milkStock = num.parse(stdin.readLineSync());
  stdout.write('Berapa banyak cup yang ingin Anda masukkan : ');
  int cupStock = num.parse(stdin.readLineSync());

  print('Mesin kopi Anda memiliki $coffeeBeansStock gram biji kopi');
  print('Mesin kopi Anda memiliki $waterStock ml air');
  print('Mesin kopi Anda memiliki $milkStock ml susu');
  print('Mesin kopi Anda memiliki $cupStock cup');
}
