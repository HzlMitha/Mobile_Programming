# 🎯 Praktikum Pemrograman Mobile - Minggu 4
## Variabel, Tipe Data, dan Operator Dart

[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)

---

## 📋 Deskripsi

Repository ini berisi tiga program Dart yang mendemonstrasikan penggunaan **percabangan** dan **perulangan** untuk menyelesaikan berbagai masalah:

1. **Kalkulator Faktorial** - Menghitung faktorial dari bilangan bulat
2. **Cek Bilangan Prima** - Mengecek apakah suatu bilangan adalah bilangan prima
3. **Game Tebak Angka** - Game interaktif menebak angka dengan hint

---

## 👤 Identitas

- **Nama:** Dian Paramitha
- **NIM:** 244107060049
- **Prodi:** Sistem Informasi Bisnis
- **Mata Kuliah:** Pemrograman Mobile
- **Dosen:** Ade Ismail, S.Kom., M.Ti

---

## 🚀 Cara Menjalankan

### Prasyarat
- Install [Dart SDK](https://dart.dev/get-dart)

### Menjalankan Program

```bash
# Clone repository
git clone <url-repository-anda>
cd <nama-folder>

# Jalankan program faktorial
dart faktorial.dart

# Jalankan program cek prima
dart cek_prima.dart

# Jalankan game tebak angka
dart game_tebak_angka.dart
```

---

## 📁 Struktur File

```
.
├── faktorial.dart           # Program kalkulator faktorial
├── cek_prima.dart          # Program cek bilangan prima
├── game_tebak_angka.dart   # Game tebak angka
├── PENJELASAN_ALUR.md      # Dokumentasi lengkap alur program
└── README.md               # File ini
```

---

## 💡 Fitur Program

### 1️⃣ Kalkulator Faktorial
- ✅ Input validasi (kosong, bukan angka, negatif)
- ✅ Perhitungan faktorial dengan perulangan
- ✅ Menampilkan proses perhitungan
- ✅ Klasifikasi hasil (besar/kecil)

**Contoh Output:**
```
Masukkan bilangan: 5
Proses: 5 × 4 × 3 × 2 × 1
Faktorial dari 5 adalah 120
```

### 2️⃣ Cek Bilangan Prima
- ✅ Validasi input lengkap
- ✅ Algoritma pengecekan prima efisien
- ✅ Menampilkan semua faktor pembagi
- ✅ Mencari bilangan prima terdekat (sebelum & sesudah)

**Contoh Output:**
```
Masukkan bilangan: 17
17 adalah bilangan PRIMA! ✓
Prima sebelumnya: 13
Prima setelahnya: 19
```

### 3️⃣ Game Tebak Angka
- ✅ Generate angka random 1-100
- ✅ Maksimal 7 kesempatan
- ✅ Hint cerdas (sangat dekat/dekat/jauh)
- ✅ Rating performa (Excellent/Bagus/Lumayan)
- ✅ Opsi main lagi

**Contoh Output:**
```
Tebakan: 50 → "Terlalu rendah, coba lebih tinggi!"
Tebakan: 75 → "Terlalu tinggi, sangat dekat!"
Tebakan: 67 → "SELAMAT! Rating: ⭐⭐⭐⭐⭐ EXCELLENT!"
```

---

## 🔧 Konsep yang Digunakan

### Percabangan (Branching)
- `if-else` sederhana
- `if-else if-else` bertingkat
- **Nested if** (percabangan bersarang)
- Validasi input

### Perulangan (Looping)
- `for` loop
- `while` loop
- Loop dengan kondisi kompleks
- Rekursi

### Variabel & Tipe Data
- `int` - Bilangan bulat
- `String` - Teks
- `bool` - Boolean
- `List<int>` - Daftar/array
- Nullable variables (`String?`, `int?`)

### Operator
- **Aritmatika:** `*`, `/`, `%`, `++`, `--`, `~/`
- **Perbandingan:** `==`, `!=`, `<`, `>`, `<=`, `>=`
- **Logika:** `&&`, `||`, `!`

---

## Pembelajaran

Melalui praktikum ini, saya mempelajari:

1. Kombinasi percabangan dan perulangan untuk problem solving
2. Validasi input yang robust
3. Algoritma matematika (faktorial, prima)
4. Game logic dengan state management
5. Best practices Dart programming

---

## Git Workflow

Repository ini menggunakan branching untuk menunjukkan perkembangan fitur:

- `main` - Branch utama (stable)
- `feature/faktorial` - Development fitur faktorial
- `feature/cek-prima` - Development fitur cek prima
- `feature/game` - Development game tebak angka

Minimal 5 commit menunjukkan progres development.

---
