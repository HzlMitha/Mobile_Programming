# Praktikum Pemrograman Mobile - Minggu 4
## Percabangan, Perulangan, dan Operasi Git

---

## Deskripsi

Repository ini berisi program Dart yang mendemonstrasikan penggunaan **percabangan** dan **perulangan** untuk menyelesaikan berbagai masalah:

1. **Game Tebak Angka** - Game interaktif menebak angka dengan hint

---

## 👤 Identitas

- **Nama:** Dian Paramitha
- **NIM:** 244107060049
- **Prodi:** Sistem Informasi Bisnis
- **Mata Kuliah:** Pemrograman Mobile
- **Dosen:** Ade Ismail, S.Kom., M.Ti

---

## Cara Menjalankan

### Prasyarat
- Install [Dart SDK](https://dart.dev/get-dart)

### Menjalankan Program

```bash
# Clone repository
git clone <url-repository-anda>
cd <nama-folder>

# Jalankan game tebak angka
dart game_tebak_angka.dart
```

## Struktur File

```
├── game_tebak_angka.dart   # Game tebak angka
└── README.md               # File ini
```

---

## Fitur Program

### Game Tebak Angka

- Generate angka random 1-100
- Maksimal 7 kesempatan
- Hint cerdas (sangat dekat/dekat/jauh)
- Rating performa (Excellent/Bagus/Lumayan)
- Opsi main lagi

**Contoh Output:**

Tebakan: 50 → "Terlalu rendah, coba lebih tinggi!"
Tebakan: 75 → "Terlalu tinggi, sangat dekat!"
Tebakan: 67 → "SELAMAT! Rating: EXCELLENT!"


---

## Konsep yang dipelajari

### Percabangan (Branching)

- `if-else` sederhana
- `if-else if-else` bertingkat
- **Nested if** (percabangan bersarang)
- Validasi input

### Perulangan (Looping)

- `for` loop
- `do-while` loop
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
3. Game logic dengan state management
4. Best practices Dart programming

---

## Git Workflow

Repository ini menggunakan branching untuk menunjukkan perkembangan fitur:

- `main` - Branch utama (stable)
- `feature/logic` - Input User dasar, guessing loop, dan validasi
- `feature/hasil-logic` - hasil guessing game dan message

Minimal 5 commit menunjukkan progres development.

---
