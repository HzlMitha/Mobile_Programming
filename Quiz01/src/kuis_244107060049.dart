import 'dart:io';

void main() {
  String nama = "Dian Paramitha";
  String nim = "244107060049";
  double nilaiUnikNIM = 049;

  List<double> hargaBarang = [10000, 20000, 30000, 40000, 50000];

  print("List harga barang tertera:" + hargaBarang.toString());
  print("Memasukkan nilai unik NIM ke dalam list harga barang...");
  hargaBarang.add(nilaiUnikNIM);
}
