// Kuis 1 - Pemrograman Mobile: Sistem Pengolah Diskon Toko yang Dipersonalisasi dengan NIM
// Nama: Dian Paramitha
// NIM: 244107060049

void main() {
  String nama = "Dian Paramitha";
  String nim = "244107060049";
  double nilaiUnikNIM = 049;

  List<double> hargaBarang = [47000.25, 68000.50, 19000.75, 88700.00, 31500.00];

  print('\n=================================');
  print('INFORMASI HARGA BARANG:');
  print('=================================');
  print("List harga barang tertera:");
  print("Detail Harga Barang:");
  for (int i = 0; i < hargaBarang.length; i++) {
    print("  Barang ${i + 1}      : Rp ${hargaBarang[i].toStringAsFixed(2)}");
  }
  print("");
  double totalSebelumNIM = hitungTotal(hargaBarang);
  print(
    "Total harga sebelum memasukkan nilai unik NIM: Rp ${totalSebelumNIM.toStringAsFixed(2)}",
  );
  print("");
  print("Nilai unik NIM: $nilaiUnikNIM");
  print("");
  print("Memasukkan nilai unik NIM ke dalam list harga barang...");
  hargaBarang.add(nilaiUnikNIM);
  print("Detail harga barang setelah penambahan nilai unik NIM:");
  for (int i = 0; i < hargaBarang.length; i++) {
    print("  Barang ${i + 1}      : Rp ${hargaBarang[i].toStringAsFixed(2)}");
  }
  print("");

  String? pesanDiskon;
  double totalAwal = hitungTotal(hargaBarang);

  double persenDiskon = 0.0;
  double besarDiskon = 0.0;
  double totalAkhir = 0.0;

  if (totalAwal > 200000) {
    pesanDiskon = "Selamat! Anda mendapatkan diskon 10%";
    persenDiskon = 10.0;
    besarDiskon = totalAwal * (10 / 100);
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    pesanDiskon = "Selamat! Anda mendapatkan diskon 5%";
    persenDiskon = 5.0;
    besarDiskon = totalAwal * (5 / 100);
  } else {
    pesanDiskon = "Maaf, Anda tidak mendapatkan diskon.";
    persenDiskon = 0.0;
    besarDiskon = 0.0;
  }

  totalAkhir = totalAwal - besarDiskon;

  print('=' * 60);
  print("SISTEM PENGOLAH DISKON TOKO TERPERSONALISASI DENGAN NIM:");
  print('=' * 60);
  print("Nama: $nama");
  print("NIM: $nim");
  print("-" * 33);
  print("Total harga sebelum diskon: Rp ${totalAwal.toStringAsFixed(2)}");
  print("Diskon ($persenDiskon%)     : Rp ${besarDiskon.toStringAsFixed(2)}");
  print("Total harga setelah diskon: Rp ${totalAkhir.toStringAsFixed(2)}");
  print("-" * 33);
  print("Keterangan       : ${pesanDiskon!}");
  print("=" * 33);
}

double hitungTotal(List<double> hargaBarang) {
  double total = 0;
  for (double harga in hargaBarang) {
    total += harga;
  }
  return total;
}
