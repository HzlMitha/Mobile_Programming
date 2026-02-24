import 'dart:io';

void main() {
  print('');
  print('KALKULATOR KONVERSI UANG');
  print('=========================\n');

  stdout.write('Masukkan jumlah uang (dalam Rupiah): ');
  double? rupiah = double.tryParse(stdin.readLineSync() ?? '');

  if (rupiah == null || rupiah < 0) {
    print('\nError: Input tidak valid! Masukkan angka positif.');
    return;
  }

  // Kurs konversi
  const double kursUSD = 15750.0; 
  const double kursEUR = 17200.0;
  const double kursJPN = 106.0;
  const double kursKRW = 11000;

  // Hitung konversi
  double dolar = rupiah / kursUSD;
  double euro = rupiah / kursEUR;
  double yen = rupiah / kursJPN;
  double won = rupiah / kursKRW;

  print('');
  print('    HASIL KONVERSI');
  print('=========================');
  print('Jumlah Uang     : Rp ${rupiah.toStringAsFixed(2)}');
  print('Dalam Dolar     : \$ ${dolar.toStringAsFixed(2)}');
  print('Dalam Euro      : € ${euro.toStringAsFixed(2)}');
  print('Dalam Yen       : ¥ ${yen.toStringAsFixed(2)}');
  print('Dalam Won       : ₩ ${won.toStringAsFixed(2)}');
  print('=========================\n');

  // Informasi tambahan
  print('Kurs yang digunakan:');
  print('   - USD: Rp $kursUSD');
  print('   - EUR: Rp $kursEUR');
  print('   - JPY: Rp $kursJPN');
  print('   - KRW: Rp $kursKRW');
  
}