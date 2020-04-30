import 'dart:io';

import 'package:coffee_machine/coffee.dart';

class CoffeeMachine {
  List<Coffee> coffeeMenus;
  int _coffeeBeanStock = 0;
  int _waterStock = 0;
  int _milkStock = 0;
  int _cupStock = 0;

  CoffeeMachine(this.coffeeMenus);

  void buyCoffee() async {
    stdout.write('Apa yang ingin Anda pesan? 1 - Cappuccino, 2 - Espresso, 3 - Latte : ');
    int order = num.parse(stdin.readLineSync());

    var selectedCoffee = coffeeMenus[order - 1];
    if (_isStockEnough(selectedCoffee)) {
      print('Menyiapkan pesanan Anda...');
      await _makeCoffee(selectedCoffee);
    } else {
      print('Maaf, pesanan Anda tidak tersedia');
    }
  }

  void fill() {
    stdout.write('Berapa gram biji kopi yang ingin Anda masukkan : ');
    int additionalCoffee = num.parse(stdin.readLineSync());
    stdout.write('Berapa ml air yang ingin Anda masukkan : ');
    int additionalWater = num.parse(stdin.readLineSync());
    stdout.write('Berapa ml susu yang ingin Anda masukkan : ');
    int additionalMilk = num.parse(stdin.readLineSync());
    stdout.write('Berapa banyak cup yang ingin Anda masukkan : ');
    int additionalCup = num.parse(stdin.readLineSync());

    _coffeeBeanStock += additionalCoffee;
    _waterStock += additionalWater;
    _milkStock += additionalMilk;
    _cupStock += additionalCup;

    print('Stok berhasil diperbarui');
  }

  void displayStock() {
    print('Mesin kopi Anda memiliki $_coffeeBeanStock gram biji kopi');
    print('Mesin kopi Anda memiliki $_waterStock ml air');
    print('Mesin kopi Anda memiliki $_milkStock ml susu');
    print('Mesin kopi Anda memiliki $_cupStock cup');
  }

  bool _isStockEnough(Coffee coffee) {
    if (_coffeeBeanStock < coffee.coffeeBeans) {
      return false;
    } else if (_waterStock < coffee.water) {
      return false;
    } else if (_milkStock < coffee.milk) {
      return false;
    } else if (_cupStock < 1) {
      return false;
    } else {
      return true;
    }
  }

  Future<void> _makeCoffee(Coffee coffee) {
    return Future.delayed(Duration(seconds: 3), () {
      _coffeeBeanStock -= coffee.coffeeBeans;
      _waterStock -= coffee.water;
      _milkStock -= coffee.milk;
      _cupStock--;

      print('1 cup ${coffee.name}. Selamat menikmati!');
    });
  }
}