import 'dart:io';
import 'data.dart';
import 'latihan.dart';

void login() {
  stdout.write("\nMasukan Pin Anda :");
  var pin = int.tryParse(stdin.readLineSync() ?? '');
  users.forEach((User user) {
    if (user.pin == pin) currentUser = user;
  });
  if (currentUser != null) {
    home();
  } else {
    login();
  }
}