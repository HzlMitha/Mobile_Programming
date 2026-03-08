import 'dart:io';
import 'dart:math';

void main() {
  String? mainLagi;
  Random random = Random();

  do {
    print('\n=================================');
    print('       GAME TEBAK ANGKA          ');
    print('=================================');

    // Generate angka random antara 1-100
    int angkaRahasia = random.nextInt(100) + 1;
    int percobaan = 0;
    int maxPercobaan = 7;
    bool menang = false;

    print('Saya telah memilih angka antara 1-100');
    print('Anda punya $maxPercobaan kesempatan untuk menebak!\n');

    // Perulangan utama game
    while (percobaan < maxPercobaan && !menang) {
      percobaan++;
      print('--- Percobaan ke-$percobaan ---');
      stdout.write('Tebakan Anda: ');
      String? input = stdin.readLineSync();

      // Validasi input kosong
      if (input == null || input.isEmpty) {
        print('Input tidak boleh kosong!\n');
        percobaan--; 
        continue;
      }

      int? tebakan = int.tryParse(input);

      // Validasi tipe data dan rentang angka
      if (tebakan == null) {
        print('Input harus berupa angka!\n');
        percobaan--;
        continue;
      } else if (tebakan < 1 || tebakan > 100) {
        print('Angka harus antara 1-100!\n');
        percobaan--;
        continue;
      }

      // Logika pengecekan tebakan dengan Hint Jarak
      if (tebakan == angkaRahasia) {
        menang = true;
        print('SELAMAT! Anda berhasil menebak!\n');
      } else {
        int selisih = (tebakan - angkaRahasia).abs();
        String arah = tebakan < angkaRahasia ? 'rendah' : 'tinggi';
        
        stdout.write('Terlalu $arah, ');
        if (selisih <= 5) {
          print('tapi sudah SANGAT DEKAT!');
        } else if (selisih <= 15) {
          print('coba sedikit lagi!');
        } else {
          print('masih jauh!');
        }

        int sisa = maxPercobaan - percobaan;
        if (sisa > 0) print('Sisa kesempatan: $sisa\n');
      }
    }

    // Hasil Akhir
    print('=================================');
    if (menang) {
      print('KAMU MENANG!');
      print('Angka rahasia: $angkaRahasia');
      print('Berhasil dalam $percobaan percobaan');
      
      // Rating Performa
      if (percobaan <= 3) print('Rating: EXCELLENT!');
      else if (percobaan <= 5) print('Rating: BAGUS!');
      else print('Rating: LUMAYAN!');
    } else {
      print(' GAME OVER!');
      print('Angka rahasia adalah: $angkaRahasia');
      print('Jangan menyerah, coba lagi!');
    }
    print('=================================');

    // Tanya Main Lagi
    stdout.write('\nMain lagi? (y/n): ');
    mainLagi = stdin.readLineSync()?.toLowerCase();
    
  } while (mainLagi == 'y');

  print('\nTerima kasih sudah bermain, Dian! Sampai jumpa!');
}