import 'dart:io';
void main() {
  print("Selamat datang Di ATM Bersama !");
int pin1 = 1234;
int pin2 = 12345; 
stdout.write("Masukkan Pin Anda : ");

var kode_pin = int.parse(stdin.readLineSync()); 

if (kode_pin == pin1 || kode_pin == pin2) {

print("1. Tarik Tunai");
print("2. Setor tunai");
print("3. Transfer");
print("4. Keluar Aplikasi");

stdout.write("Masukkan Piihan Layanan :"); var pilihan = int.parse (stdin.readLineSync()) ;

if(pilihan == 1){ 
  stdout.write("Masukkan Nominal : "); 
  var nominal = stdin.readLineSync(); 
  print("Terima Kasih anda telah menarik sejumlah " + nominal); 
  }else if (pilihan == 2){ 
    stdout.write("Masukkan Uang  Anda: ");
    var nominal = stdin.readLineSync(); 
     print("Anda Menyetorkan Uang Sebesar "+ nominal );
  }else if (pilihan == 3 ){ 
    stdout.write("Masukkan Nominal Transfer: "); 
    var nominal = stdin.readLineSync(); 
    stdout.write("Masukkan No. Rekening Transfer: "); 
    var rekening = stdin.readLineSync(); 

      print("Apakah yakin ingin mentransfer sejumlah " + nominal+ " Ke Rekening " +rekening+" ? " );
      stdout.write("(Y/N) ?"); 
      var pilihan = stdin.readLineSync(); 
      if(pilihan == "Y" || pilihan == "y"){
        print("Selamat Anda Telah mentransfer sejumlah " + nominal+ " Ke Rekening " +rekening );
      }else{
        print("Transfer anda dibatalkan !");
      } 
    }
  else{ 
    print("Terima Kasih");
    };

}else { 
  print("kode anda salah"); 
  }
}