import 'dart:io';
import 'data.dart';
import 'login.dart';

void main() => login();

User? currentUser;
void home() {
  print(
      "\nSelamat Datang di Aplikasi Kalkulator Sederhana ${currentUser?.name}!");
  print("1.Pertambahan");
  print("2.Pengurangan");
  print("3.Pembagian");
  print("4.Perkalian");
  print("5.Ganti Akun");
  print("6.Keluar Aplikasi");
  stdout.write("Pilih Menu [1-6] :");
  var menu = stdin.readLineSync();
  switch (menu) {
    case '1':
      pertambahan();
      break;
    case '2':
      pengurangan();
      break;
    case '3':
      pembagian();
      break;
    case '4':
      perkalian();
      break;
    case '5':
      currentUser = null;
      login();
      break;
    case '6':
    default:
      exit(0);
  }
  home();
}

void pertambahan() {
  int stopCondition = 0;
  do {
    stdout.write("Nilai a: ");
    int a = int.parse(stdin.readLineSync() ?? '');
    stdout.write("Nilai b: ");
    int b = int.parse(stdin.readLineSync() ?? '');
    int hasil = a + b;
    print("Hasil $a + $b = $hasil");
    print('Apakah Anda Ingin Melakukan Operasi Lagi ?');
    print('Input angka Sembarang untuk Melanjutkan');
    print('dan Apabila Ingin Stop Maka Input angka -999 ');
    stopCondition = int.parse(stdin.readLineSync() ?? '');
  } while (stopCondition != -999);
}

void pengurangan() {
  int stopCondition = 0;
  do {
    stdout.write("Nilai a: ");
    int a = int.parse(stdin.readLineSync() ?? '');
    stdout.write("Nilai b: ");
    int b = int.parse(stdin.readLineSync() ?? '');
    int hasil = a - b;
    print("Hasil $a + $b = $hasil");
    print('Apakah Anda Ingin Melakukan Operasi Lagi ?');
    print('Input angka Sembarang untuk Melanjutkan');
    print('dan Apabila Ingin Stop Maka Input angka -999 ');
    stopCondition = int.parse(stdin.readLineSync() ?? '');
  } while (stopCondition != -999);
}

void pembagian() {
  int stopCondition = 0;
  do {
    stdout.write("Nilai a: ");
    int a = int.parse(stdin.readLineSync() ?? '');
    stdout.write("Nilai b: ");
    int b = int.parse(stdin.readLineSync() ?? '');
    double hasil = a / b;
    print("Hasil $a + $b = $hasil");
    print('Apakah Anda Ingin Melakukan Operasi Lagi ?');
    print('Input angka Sembarang untuk Melanjutkan');
    print('dan Apabila Ingin Stop Maka Input angka -999 ');
    stopCondition = int.parse(stdin.readLineSync() ?? '');
  } while (stopCondition != -999);
}

void perkalian() {
  int stopCondition = 0;
  do {
    stdout.write("Nilai a: ");
    int a = int.parse(stdin.readLineSync() ?? '');
    stdout.write("Nilai b: ");
    int b = int.parse(stdin.readLineSync() ?? '');
    int hasil = a * b;
    print("Hasil $a + $b = $hasil");
    print('Apakah Anda Ingin Melakukan Operasi Lagi ?');
    print('Input angka Sembarang untuk Melanjutkan');
    print('dan Apabila Ingin Stop Maka Input angka -999 ');
    stopCondition = int.parse(stdin.readLineSync() ?? '');
  } while (stopCondition != -999);
}
