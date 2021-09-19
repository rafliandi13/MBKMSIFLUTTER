import 'dart:io';
import 'data.dart';
import 'login.dart';
void main() => login();


User? currentUser;
void home() {
  print("\nSelamat Datang ${currentUser?.name}!");
  print("1.Cek Saldo");
  print("2.Tarik Tunai");
  print("3.Setor Tunai");
  print("4.Transfer Saldo"); 
  print("5.Ganti Akun");
  print("6.Keluar Aplikasi");
  stdout.write("Pilih Menu [1-6] :");
  var menu = stdin.readLineSync();
  switch (menu) {
    case '1':
      balanceCheck();
      break;
    case '2':
      cashWithdraw();
      break;
    case '3':
      cashDeposit();
      break;
    case '4':
      balanceTransfer();
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

void balanceCheck() {
  print("Saldo Anda saat ini, ");
  print("Rp ${currentUser?.balance}");
}

void cashWithdraw() {
  stdout.write("Nominal Penarikan : Rp");
  var amount = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (amount > (currentUser?.balance ?? 0)) {
    print("Saldo Anda Tidak Mencukupi");
    return;
  }
  users.forEach((User user) {
    if (user.pin == currentUser?.pin) {
      user.balance -= amount;
    }
  });
}

void cashDeposit() {
  stdout.write("Nominal Akun : Rp.");
  var amount = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  users.forEach((User user) {
    if (user.pin == currentUser?.pin) {
      user.balance += amount;
    }
  });
}

void balanceTransfer() {
  stdout.write("Nama Akun Tujuan : ");
  var name = stdin.readLineSync();
  User? target;
  users.forEach((User user) {
    if (user.name == name) target = user;
  });
  if (target == null) {
    return print("Pengguna Tidak Ditemukan");
  }
  stdout.write("Nominal Transfer : Rp ");
  var amount = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (amount > (currentUser?.balance ?? 0)) {
    print('Saldo Anda Tidak Mencukupi');
  }
  users.forEach((User user) {
    if (user.pin == currentUser?.pin) user.balance -= amount;
    if (user.name == name) user.balance += amount;
  });
}
