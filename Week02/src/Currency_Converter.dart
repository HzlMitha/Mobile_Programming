import 'dart:io';

void main() {
  // Kurs mata uang terhadap IDR (Indonesian Rupiah)
  Map<String, double> kurs = {
    'IDR': 1.0,           // Rupiah Indonesia
    'USD': 15750.0,       // US Dollar
    'EUR': 17200.0,       // Euro
    'JPY': 106.0,         // Japanese Yen
    'SGD': 11800.0,       // Singapore Dollar
    'MYR': 3550.0,        // Malaysian Ringgit
  };

  print('');
  print('   KALKULATOR KONVERSI MATA UANG    ');
  print('===================================\n');

  print('Mata Uang yang Tersedia:');
  int index = 1;
  kurs.forEach((kode, nilai) {
    print('   $index. $kode');
    index++;
  });
  print('');

  stdout.write('Dari mata uang (contoh: USD): ');
  String? dariMataUang = stdin.readLineSync()?.toUpperCase();

  stdout.write('Input Jumlah uang: ');
  double? jumlah = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Ke mata uang (contoh: IDR): ');
  String? keMataUang = stdin.readLineSync()?.toUpperCase();

  // Validasi input
  if (dariMataUang == null || keMataUang == null || jumlah == null) {
    print('\n Error: Input tidak valid!');
    return;
  }

  if (!kurs.containsKey(dariMataUang) || !kurs.containsKey(keMataUang)) {
    print('\n Error: Mata uang tidak tersedia!');
    return;
  }

  if (jumlah < 0) {
    print('\n Error: Jumlah tidak boleh negatif!');
    return;
  }

  // Rumus: jumlah × kurs_asal ÷ kurs_tujuan
  double nilaiDalamIDR = jumlah * kurs[dariMataUang]!;
  double hasil = nilaiDalamIDR / kurs[keMataUang]!;

  // Tampilkan hasil
  print('\n');
  print('        HASIL KONVERSI             ');
  print('====================================');
  print('$jumlah $dariMataUang = ${hasil.toStringAsFixed(2)} $keMataUang');
  print('');
  
  print('Kurs yang Digunakan:');
  print('   1 $dariMataUang = ${kurs[dariMataUang]!.toStringAsFixed(2)} IDR');
  print('   1 $keMataUang = ${kurs[keMataUang]!.toStringAsFixed(2)} IDR');
  print('');
}
