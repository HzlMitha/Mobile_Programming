import 'dart:io';
import 'dart:math';

void main() {
  print('=================================');
  print('      GAME TEBAK ANGKA          ');
  print('=================================\n');

  // Generate angka random antara 1-100
  Random random = Random();
  int angkaRahasia = random.nextInt(100) + 1;

  int percobaan = 0;
  int maxPercobaan = 7;
  bool menang = false;

  print('Saya telah memilih angka antara 1-100');
  print('Anda punya $maxPercobaan kesempatan untuk menebak!\n');
}
