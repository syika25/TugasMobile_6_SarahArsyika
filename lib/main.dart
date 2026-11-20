import 'package:flutter/material.dart';
import 'package:tugas6/homePage.dart';

void main() {
  runApp(const MyApp());
}

final List<Map<String, String>> dataWisata = [
  {
    'nama': 'Disneyland',
    'lokasi': 'California',
    'gambar': 'https://images.unsplash.com/photo-1682306359690-7f93057da38e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    'deskripsi': 'Disneyland merupakan salah satu taman hiburan paling terkenal di dunia yang terletak di Anaheim, California, Amerika Serikat. Tempat wisata ini menawarkan pengalaman liburan yang penuh keseruan dengan berbagai wahana permainan, pertunjukan menarik, parade karakter, serta suasana dunia fantasi yang menakjubkan. Pengunjung dapat menikmati berbagai atraksi yang terinspirasi dari film-film Disney terkenal. Selain itu, Disneyland juga memiliki berbagai restoran, toko suvenir, dan area hiburan yang cocok untuk semua usia.',
  },
  {
    'nama': 'Switzerland',
    'lokasi': 'Eropa Tengah',
    'gambar': 'https://images.unsplash.com/photo-1527668752968-14dc70a27c95?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    'deskripsi': 'Switzerland atau Swiss merupakan negara yang terkenal dengan keindahan alamnya yang luar biasa. Negara ini memiliki pegunungan Alpen yang megah, danau dengan air yang sangat jernih, padang rumput hijau, serta desa-desa kecil yang terlihat seperti negeri dongeng. Wisatawan dapat menikmati berbagai aktivitas menarik seperti bermain ski, mendaki gunung, bersepeda, hingga menaiki kereta wisata.',
  },
  {
    'nama': 'Pulau Komodo',
    'lokasi': 'Nusa Tenggara Timur',
    'gambar': 'https://plus.unsplash.com/premium_photo-1661876927993-bedb3ab87208?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    'deskripsi': 'Pulau Komodo merupakan salah satu destinasi wisata unggulan Indonesia yang terletak di Nusa Tenggara Timur. Pulau ini terkenal sebagai habitat asli komodo. Pengunjung dapat menikmati keindahan perbukitan, pantai, laut jernih, snorkeling, diving, dan trekking.',
  },
  {
    'nama': 'Raja Ampat',
    'lokasi': 'Papua',
    'gambar': 'https://images.unsplash.com/photo-1703769605297-cc74106244d9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    'deskripsi': 'Raja Ampat merupakan salah satu destinasi wisata bahari paling indah di Indonesia yang berada di Papua Barat Daya. Kawasan ini terkenal dengan gugusan pulau kecil, laut biru jernih, serta kekayaan bawah laut yang luar biasa. Wisatawan dapat menikmati snorkeling, diving, dan pemandangan alam yang memukau.',
  },
  {
    'nama': 'Aurora Borealis',
    'lokasi': 'Finlandia',
    'gambar': 'https://plus.unsplash.com/premium_photo-1673254850380-ff70514979fe?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    'deskripsi': 'Aurora Borealis atau dikenal sebagai cahaya utara merupakan fenomena alam yang sangat menakjubkan. Fenomena ini terjadi ketika partikel bermuatan dari matahari berinteraksi dengan atmosfer bumi sehingga menghasilkan cahaya berwarna-warni di langit malam. Finlandia menjadi salah satu tempat favorit untuk menyaksikannya.',
  },
  {
    'nama': 'Kaldera Santorini',
    'lokasi': 'Yunani',
    'gambar': 'https://media.istockphoto.com/id/522136778/photo/white-architecture-and-famous-little-churches-with-blue-domes.webp?a=1&b=1&s=612x612&w=0&k=20&c=aaHC_DxacwKmzqsXmPZPWa_GY_HRQJ62539yh2-q1bc=',
    'deskripsi': 'Santorini merupakan sebuah pulau indah yang terletak di Laut Aegea, Yunani. Pulau ini terkenal dengan bangunan berwarna putih, atap kubah biru, serta pemandangan laut yang menawan. Wisatawan dapat menikmati matahari terbenam, pantai, restoran, dan arsitektur khas Mediterania.',
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Wisata',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}