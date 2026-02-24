import 'dart:io';

class KonversiUnit {
  // Konversi Panjang (basis: meter)
  static Map<String, double> panjang = {
    'Kilometer (km)': 1000.0,
    'Meter (m)': 1.0,
    'Centimeter (cm)': 0.01,
    'Millimeter (mm)': 0.001,
    'Mile (mi)': 1609.34,
    'Yard (yd)': 0.9144,
    'Foot (ft)': 0.3048,
    'Inch (in)': 0.0254,
  };

  // Konversi Massa (basis: kilogram)
  static Map<String, double> massa = {
    'Kilogram (kg)': 1.0,
    'Gram (g)': 0.001,
    'Milligram (mg)': 0.000001,
    'Ton (t)': 1000.0,
    'Pound (lb)': 0.453592,
    'Ounce (oz)': 0.0283495,
    'Kwintal (kw)': 100.0,
  };

  // Konversi Volume (basis: liter)
  static Map<String, double> volume = {
    'Liter (L)': 1.0,
    'Milliliter (mL)': 0.001,
    'Meter Kubik (m³)': 1000.0,
    'Gallon (gal)': 3.78541,
    'Pint (pt)': 0.473176,
    'Cup (cup)': 0.236588,
    'Fluid Ounce (fl oz)': 0.0295735,
  };

  // Konversi Suhu menggunakan fungsi khusus
  static double konversiSuhu(double nilai, String dari, String ke) {
    // Konversi ke Celsius terlebih dahulu
    double celsius;
    
    switch (dari) {
      case 'Celsius (°C)':
        celsius = nilai;
        break;
      case 'Fahrenheit (°F)':
        celsius = (nilai - 32) * 5 / 9;
        break;
      case 'Kelvin (K)':
        celsius = nilai - 273.15;
        break;
      case 'Reamur (°R)':
        celsius = nilai * 5 / 4;
        break;
      default:
        celsius = nilai;
    }

    // Konversi dari Celsius ke satuan tujuan
    switch (ke) {
      case 'Celsius (°C)':
        return celsius;
      case 'Fahrenheit (°F)':
        return celsius * 9 / 5 + 32;
      case 'Kelvin (K)':
        return celsius + 273.15;
      case 'Reamur (°R)':
        return celsius * 4 / 5;
      default:
        return celsius;
    }
  }

  static List<String> suhu = [
    'Celsius (°C)',
    'Fahrenheit (°F)',
    'Kelvin (K)',
    'Reamur (°R)',
  ];
}

void main() {
  bool running = true;

  while (running) {
    tampilkanMenuUtama();
    
    stdout.write('\n➤ Pilih kategori (1-5, 0 untuk keluar): ');
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        konversiKategori('PANJANG', KonversiUnit.panjang);
        break;
      case '2':
        konversiKategori('MASSA', KonversiUnit.massa);
        break;
      case '3':
        konversiKategori('VOLUME', KonversiUnit.volume);
        break;
      case '4':
        konversiSuhu();
        break;
      case '5':
        konversiSemuaKategori();
        break;
      case '0':
        print('\n👋 Terima kasih telah menggunakan aplikasi ini!\n');
        running = false;
        break;
      default:
        print('\n Pilihan tidak valid!\n');
    }

    if (running && pilihan != '0') {
      print('\nTekan Enter untuk melanjutkan...');
      stdin.readLineSync();
    }
  }
}

void tampilkanMenuUtama() {
  print('\n');
  print('     APLIKASI KONVERSI UNIT LENGKAP        ');
  print('===========================================\n');
  print('');
  print(' 1. Konversi Panjang');
  print(' 2. Konversi Massa');
  print(' 3. Konversi Volume');
  print(' 4. Konversi Suhu');
  print(' 5. Konversi Semua Kategori');
  print(' 0. Keluar');
  print('');
}

void konversiKategori(String namaKategori, Map<String, double> units) {
  print('\n');
  print('        KONVERSI $namaKategori               ');
  print('===========================================\n');

  // Tampilkan daftar unit
  List<String> unitList = units.keys.toList();
  print('Unit yang tersedia:');
  for (int i = 0; i < unitList.length; i++) {
    print('   ${i + 1}. ${unitList[i]}');
  }
  print('');

  // Input unit asal
  stdout.write('Dari unit (1-${unitList.length}): ');
  int? dariIndex = int.tryParse(stdin.readLineSync() ?? '');
  
  if (dariIndex == null || dariIndex < 1 || dariIndex > unitList.length) {
    print('Pilihan tidak valid!');
    return;
  }

  // Input nilai
  stdout.write('Masukkan nilai: ');
  double? nilai = double.tryParse(stdin.readLineSync() ?? '');

  // Validasi input negatif untuk massa dan volume
  if (nilai == null) {
    print('Input harus berupa angka!');
    return;
  }

  if ((namaKategori == 'MASSA' || namaKategori == 'VOLUME') && nilai < 0) {
    print('Nilai $namaKategori tidak boleh negatif!');
    return;
  }

  // Input unit tujuan
  stdout.write('Ke unit (1-${unitList.length}): ');
  int? keIndex = int.tryParse(stdin.readLineSync() ?? '');

  if (keIndex == null || keIndex < 1 || keIndex > unitList.length) {
    print('Pilihan tidak valid!');
    return;
  }

  // Lakukan konversi
  String dariUnit = unitList[dariIndex - 1];
  String keUnit = unitList[keIndex - 1];
  
  double nilaiDalamBasis = nilai * units[dariUnit]!;
  double hasil = nilaiDalamBasis / units[keUnit]!;

  // Tampilkan hasil
  tampilkanHasil(nilai, dariUnit, hasil, keUnit);
}

void konversiSuhu() {
  print('\n');
  print('        KONVERSI SUHU                   ');
  print('===========================================\n');

  // Tampilkan daftar unit suhu
  print(' Unit yang tersedia:');
  for (int i = 0; i < KonversiUnit.suhu.length; i++) {
    print('   ${i + 1}. ${KonversiUnit.suhu[i]}');
  }
  print('');

  // Input unit asal
  stdout.write('Dari unit (1-${KonversiUnit.suhu.length}): ');
  int? dariIndex = int.tryParse(stdin.readLineSync() ?? '');
  
  if (dariIndex == null || dariIndex < 1 || dariIndex > KonversiUnit.suhu.length) {
    print('Pilihan tidak valid!');
    return;
  }

  // Input nilai
  stdout.write('Masukkan nilai: ');
  double? nilai = double.tryParse(stdin.readLineSync() ?? '');

  if (nilai == null) {
    print(' Input harus berupa angka!');
    return;
  }

  // Input unit tujuan
  stdout.write('Ke unit (1-${KonversiUnit.suhu.length}): ');
  int? keIndex = int.tryParse(stdin.readLineSync() ?? '');

  if (keIndex == null || keIndex < 1 || keIndex > KonversiUnit.suhu.length) {
    print('Pilihan tidak valid!');
    return;
  }

  // Lakukan konversi
  String dariUnit = KonversiUnit.suhu[dariIndex - 1];
  String keUnit = KonversiUnit.suhu[keIndex - 1];
  double hasil = KonversiUnit.konversiSuhu(nilai, dariUnit, keUnit);

  // Tampilkan hasil
  tampilkanHasil(nilai, dariUnit, hasil, keUnit);
}

void konversiSemuaKategori() {
  print('\n');
  print('        KONVERSI SEMUA KATEGORI              ');
  print('===========================================\n');

  print('Pilih kategori:');
  print('  1. Panjang');
  print('  2. Massa');
  print('  3. Volume');
  print('  4. Suhu');
  print('');
  
  stdout.write('Pilih (1-4): ');
  String? pilihan = stdin.readLineSync();

  switch (pilihan) {
    case '1':
      konversiKategori('PANJANG', KonversiUnit.panjang);
      break;
    case '2':
      konversiKategori('MASSA', KonversiUnit.massa);
      break;
    case '3':
      konversiKategori('VOLUME', KonversiUnit.volume);
      break;
    case '4':
      konversiSuhu();
      break;
    default:
      print(' Pilihan tidak valid!');
  }
}

void tampilkanHasil(double nilai, String dariUnit, double hasil, String keUnit) {
  print('\n');
  print('            HASIL KONVERSI                 ');
  print('============================================\n');
  print('');
  
  // Format angka dengan pemisah ribuan
  String nilaiFormat = formatAngka(nilai);
  String hasilFormat = formatAngka(hasil);
  
  print('  ✨ $nilaiFormat $dariUnit');
  print('     = $hasilFormat $keUnit');
  print('');
  print('============================================\n');
}

String formatAngka(double angka) {
  // Jika angka sangat kecil, gunakan notasi ilmiah
  if (angka.abs() < 0.0001 && angka != 0) {
    return angka.toStringAsExponential(4);
  }
  
  // Format dengan 4 desimal untuk angka normal
  String formatted = angka.toStringAsFixed(4);
  
  // Hilangkan trailing zeros
  formatted = formatted.replaceAll(RegExp(r'\.?0+$'), '');
  
  return formatted;
}
