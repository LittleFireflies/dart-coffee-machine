import 'dart:io';

import 'package:coffee_machine/coffee.dart';
import 'package:coffee_machine/coffeemachine.dart';

void main() async {
  var coffeeMachine = CoffeeMachine([
    Coffee(name: 'Cappuccino', coffeeBeans: 12, water: 200, milk: 100),
    Coffee(name: 'Espresso', coffeeBeans: 16, water: 250, milk: 0),
    Coffee(name: 'Latte', coffeeBeans: 20, water: 350, milk: 7)
  ]);

  var action = '';
  do {
    stdout.write('Pilih Menu (beli, isi, stok, keluar) : ');
    action = stdin.readLineSync();
    switch (action) {
      case 'beli':
        await coffeeMachine.buyCoffee();
        break;
      case 'isi':
        coffeeMachine.fill();
        break;
      case 'stok':
        coffeeMachine.displayStock();
        break;
    }
  } while (action != 'keluar');
}
