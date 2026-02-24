import 'dart:io';

void main() {
  print('');
  print('   DEMONSTRASI SEMUA OPERATOR DART   ');
  print('=' * 44);

  // Input dua angka
  stdout.write('Masukkan angka pertama: ');
  int? a = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Masukkan angka kedua: ');
  int? b = int.tryParse(stdin.readLineSync() ?? '');

  if (a == null || b == null) {
    print('\n Error: Input harus berupa angka!');
    return;
  }

  print('\n' + '=' * 44);
  print('1  OPERATOR ARITMATIKA');
  print('=' * 44);
  print('a + b  = ${a + b}  (Penjumlahan)');
  print('a - b  = ${a - b}  (Pengurangan)');
  print('a * b  = ${a * b}  (Perkalian)');
  print('a ÷ b  = ${a / b}  (Pembagian - hasil double)');
  print('a ~/ b = ${a ~/ b}  (Pembagian bulat)');
  print('a % b  = ${a % b}  (Modulus/Sisa bagi)');

  print('\n' + '=' * 44);
  print('2  OPERATOR INCREMENT & DECREMENT');
  print('=' * 44);
  int x = a;
  int y = b;
  print('Nilai awal: x = $x, y = $y');
  print('x++ = ${x++}  (Post-increment, nilai lama ditampilkan)');
  print('Nilai x sekarang: $x');
  print('++y = ${++y}  (Pre-increment, nilai baru ditampilkan)');
  print('Nilai y sekarang: $y');
  print('x-- = ${x--}  (Post-decrement)');
  print('Nilai x sekarang: $x');
  print('--y = ${--y}  (Pre-decrement)');
  print('Nilai y sekarang: $y');

  print('\n' + '=' * 44);
  print('3  OPERATOR PERBANDINGAN');
  print('=' * 44);
  print('a == b  → ${a == b}  (Sama dengan)');
  print('a != b  → ${a != b}  (Tidak sama dengan)');
  print('a > b   → ${a > b}   (Lebih besar)');
  print('a < b   → ${a < b}   (Lebih kecil)');
  print('a >= b  → ${a >= b}  (Lebih besar atau sama)');
  print('a <= b  → ${a <= b}  (Lebih kecil atau sama)');

  print('\n' + '=' * 44);
  print('4  OPERATOR LOGIKA');
  print('=' * 44);
  bool kondisi1 = a > 5;
  bool kondisi2 = b < 10;
  print('Kondisi 1: a > 5 = $kondisi1');
  print('Kondisi 2: b < 10 = $kondisi2');
  print('kondisi1 && kondisi2 = ${kondisi1 && kondisi2}  (AND - kedua benar)');
  print('kondisi1 || kondisi2 = ${kondisi1 || kondisi2}  (OR - salah satu benar)');
  print('!kondisi1 = ${!kondisi1}  (NOT - kebalikan)');

  print('\n' + '=' * 44);
  print('5  OPERATOR ASSIGNMENT');
  print('=' * 44);
  int nilai = 10;
  print('Nilai awal: $nilai');
  nilai += 5;
  print('nilai += 5  → $nilai  (nilai = nilai + 5)');
  nilai -= 3;
  print('nilai -= 3  → $nilai  (nilai = nilai - 3)');
  nilai *= 2;
  print('nilai *= 2  → $nilai  (nilai = nilai * 2)');
  nilai ~/= 4;
  print('nilai ~/= 4 → $nilai  (nilai = nilai ~/ 4)');

  print('\n' + '=' * 44);
  print('6  OPERATOR BITWISE');
  print('=' * 44);
  int bit1 = 5;  // Binary: 0101
  int bit2 = 3;  // Binary: 0011
  print('bit1 = $bit1 (Binary: ${bit1.toRadixString(2).padLeft(4, '0')})');
  print('bit2 = $bit2 (Binary: ${bit2.toRadixString(2).padLeft(4, '0')})');
  print('bit1 & bit2  = ${bit1 & bit2}  (AND)');
  print('bit1 | bit2  = ${bit1 | bit2}  (OR)');
  print('bit1 ^ bit2  = ${bit1 ^ bit2}  (XOR)');
  print('~bit1        = ${~bit1}  (NOT)');
  print('bit1 << 1    = ${bit1 << 1}  (Left shift)');
  print('bit1 >> 1    = ${bit1 >> 1}  (Right shift)');

  print('\n' + '=' * 44);
  print('7  OPERATOR TERNARY');
  print('=' * 44);
  String hasil = a > b ? 'a lebih besar' : 'b lebih besar atau sama';
  print('a > b ? "a lebih besar" : "b lebih besar atau sama"');
  print('Hasil: $hasil');

  print('\n' + '=' * 44);
  print('8  OPERATOR TYPE TEST');
  print('=' * 44);
  int angka = 42;
  String teks = 'Hello';
  print('angka is int     → ${angka is int}');
  print('angka is! String → ${angka is! String}');
  print('teks is String   → ${teks is String}');
  print('teks is! int     → ${teks is! int}');

  print('\n' + '=' * 44);
  print('9  OPERATOR NULL-AWARE');
  print('=' * 44);
  String? nullableString;
  String nonNullString = 'Default';
  
  print('nullableString = null');
  print('nullableString ?? "Default" = ${nullableString ?? "Default"}');
  
  nullableString ??= 'Assigned';
  print('nullableString ??= "Assigned" → $nullableString');
  
  print('nonNullString?.length = ${nonNullString.length}');
  
  print('\n' + '=' * 44);
  print('10 OPERATOR CASCADE (..)');
  print('=' * 44);
  List<int> list = [];
  list
    ..add(1)
    ..add(2)
    ..add(3)
    ..sort();
  print('List dengan cascade: $list');

  print('\n Semua operator berhasil didemonstrasikan!\n');
}
