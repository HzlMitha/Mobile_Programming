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

  // Perulangan untuk proses tebakan
  while (percobaan < maxPercobaan && !menang) {
    percobaan++;
    print('--- Percobaan ke-$percobaan ---');
    stdout.write('Tebakan Anda: ');
    String? input = stdin.readLineSync();
    
    // Validasi input
    if (input == null || input.isEmpty) {
      print('Input tidak boleh kosong!\n');
      percobaan--; // tidak mengurangi kesempatan
      continue;
    }
    
    int? tebakan = int.tryParse(input);
    
    // Percabangan untuk validasi dan cek tebakan
    if (tebakan == null) {
      print('Input harus berupa angka!\n');
      percobaan--; // tidak mengurangi kesempatan
      continue;
    } else if (tebakan < 1 || tebakan > 100) {
      print('Angka harus antara 1-100!\n');
      percobaan--; // tidak mengurangi kesempatan
      continue;
    }
    
    // Cek tebakan dengan percabangan bersarang
    if (tebakan == angkaRahasia) {
      menang = true;
      print('SELAMAT! Anda berhasil menebak!\n');
      break;
    } else if (tebakan < angkaRahasia) {
      int selisih = angkaRahasia - tebakan;
      
      // Percabangan untuk memberikan hint
      if (selisih <= 5) {
        print(' Terlalu rendah, tapi sudah SANGAT DEKAT!');
      } else if (selisih <= 15) {
        print(' Terlalu rendah, coba lebih tinggi!');
      } else {
        print(' Terlalu rendah, masih jauh!');
      }
    } else {
      int selisih = tebakan - angkaRahasia;
      
      // Percabangan untuk memberikan hint
      if (selisih <= 5) {
        print(' Terlalu tinggi, tapi sudah SANGAT DEKAT!');
      } else if (selisih <= 15) {
        print(' Terlalu tinggi, coba lebih rendah!');
      } else {
        print(' Terlalu tinggi, masih jauh!');
      }
    }
    
    // Tampilkan sisa kesempatan
    int sisa = maxPercobaan - percobaan;
    if (sisa > 0 && !menang) {
      print('Sisa kesempatan: $sisa\n');
    }
  }

  // Hasil akhir dengan percabangan
  print('=================================');
  if (menang) {
    print('KAMU MENANG!');
    print('Angka rahasia: $angkaRahasia');
    print('Berhasil dalam $percobaan percobaan');
    
    // Rating performa
    if (percobaan <= 3) {
      print('Rating:  EXCELLENT!');
    } else if (percobaan <= 5) {
      print('Rating:  BAGUS!');
    } else {
      print('Rating:  LUMAYAN!');
    }
  } else {
    print(' GAME OVER!');
    print('Angka rahasia adalah: $angkaRahasia');
    print('Lebih beruntung lain kali!');
  }
  print('=================================');
  
  // Tanya mau main lagi
  stdout.write('\nMain lagi? (y/n): ');
  String? mainLagi = stdin.readLineSync();
  
  if (mainLagi != null && mainLagi.toLowerCase() == 'y') {
    print('\n');
    main(); // Recursive call untuk main lagi
  } else {
    print('\nTerima kasih sudah bermain! Sampai jumpa!');
  }
}
