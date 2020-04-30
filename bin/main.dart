import 'dart:io';

int coffeeBeansStock = 0;
int waterStock = 0;
int milkStock = 0;
int cupStock = 0;

var coffeeNeeded = 12;
var waterNeeded = 200;
var milkNeeded = 100;

void main() {
  stdout.write('Berapa gram biji kopi yang ingin Anda masukkan : ');
  coffeeBeansStock = num.parse(stdin.readLineSync());
  stdout.write('Berapa ml air yang ingin Anda masukkan : ');
  waterStock = num.parse(stdin.readLineSync());
  stdout.write('Berapa ml susu yang ingin Anda masukkan : ');
  milkStock = num.parse(stdin.readLineSync());
  stdout.write('Berapa banyak cup yang ingin Anda masukkan : ');
  cupStock = num.parse(stdin.readLineSync());

  print('Mesin kopi Anda memiliki $coffeeBeansStock gram biji kopi');
  print('Mesin kopi Anda memiliki $waterStock ml air');
  print('Mesin kopi Anda memiliki $milkStock ml susu');
  print('Mesin kopi Anda memiliki $cupStock cup');

  stdout.write('Berapa cup cappuccino yang ingin Anda buat : ');
  int totalCups = num.parse(stdin.readLineSync());

  if (isStockEnough(totalCups)) {
    print('Membuatkan pesanan Anda!');
  } else {
    print('Maaf, pesanan Anda tidak tersedia.');
  }
}

bool isStockEnough(int cupsToBeMade) {
  if ((coffeeNeeded * cupsToBeMade) > coffeeBeansStock) {
    return false;
  } else if ((waterNeeded * cupsToBeMade) > waterStock) {
    return false;
  } else if ((milkNeeded * cupsToBeMade) > milkNeeded) {
    return false;
  } else if (cupsToBeMade > cupStock) {
    return false;
  } else {
    return true;
  }
}
