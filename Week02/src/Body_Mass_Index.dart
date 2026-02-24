import 'dart:io';

void main() {
  print('');
  print('KALKULATOR BMI (Body Mass Index)');
  print('=================================\n');

  stdout.write('Masukkan berat badan (kg): ');
  double? berat = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Masukkan tinggi badan (cm): ');
  double? tinggiCm = double.tryParse(stdin.readLineSync() ?? '');

  if (berat == null || tinggiCm == null || berat <= 0 || tinggiCm <= 0) {
    print('\nError: Input tidak valid! Masukkan angka positif.');
    return;
  }
  double tinggiM = tinggiCm / 100;

  // Hitung BMI
  double bmi = berat / (tinggiM * tinggiM);

  String kategori;

  if (bmi < 18.5) {
    kategori = 'Kurus (Underweight)';
  } else if (bmi >= 18.5 && bmi < 23) {
    kategori = 'Normal';
  } else if (bmi >= 23 && bmi < 25) {
    kategori = 'Gemuk (Overweight)';
  } else if (bmi >= 25 && bmi < 30) {
    kategori = 'Obesitas Kelas I';
  } else {
    kategori = 'Obesitas Kelas II';
  }

  print('');
  print('         HASIL PERHITUNGAN');
  print('=================================');
  print('Berat Badan    : ${berat.toStringAsFixed(1)} kg');
  print('Tinggi Badan   : ${tinggiCm.toStringAsFixed(1)} cm');
  print('BMI Anda       : ${bmi.toStringAsFixed(2)}');
  print('Kategori       : $kategori');
  print('=================================\n');

  // Informasi tambahan
  print('Referensi Kategori BMI:');
  print('   - < 18.5      : Kurus');
  print('   - 18.5 - 24.9 : Normal');
  print('   - 25.0 - 29.9 : Gemuk');
  print('   - ≥ 30.0      : Obesitas');
}
