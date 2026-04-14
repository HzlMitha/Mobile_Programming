import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1: Menggunakan Column untuk menumpuk teks secara vertikal */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                /* soal 2: Judul utama dengan padding bawah */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Bandung',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kecamatan Lembang, Bandung, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500], // Memberikan warna abu-abu pada subtitle
                  ),
                ),
              ],
            ),
          ),
          /* soal 3: Bagian Rating (Ikon dan Teks) */
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Tangkuban Parahu, yang terletak 20 km utara Bandung,'
        'adalah gunung berapi aktif setinggi 2.084 mdpl dengan bentuk khas seperti perahu terbalik.'
        'Destinasi ikonik ini terkenal dengan Kawah Ratu yang luas, udara sejuk (17°C), dan aroma belerang,'
        'menawarkan pemandangan menakjubkan serta legenda rakyat Sangkuriang.  '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Dian Paramitha - 244107060049.',
        softWrap: true,
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Color color = Theme.of(context).primaryColor;

  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  );

    return MaterialApp(
      title: 'Flutter layout: Dian Paramitha - 244107060049',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Mengganti 'Hello World' dengan titleSection yang sudah dibuat
        body: ListView(
          children: [
            Image.asset(
              'images/gunung_tangkuban_perahu.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}