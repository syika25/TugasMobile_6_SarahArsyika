import 'package:flutter/material.dart';
import 'package:tugas6/homePage.dart';

class DetailPage extends StatelessWidget {
  final Map<String, String> wisata;

  const DetailPage({
    super.key,
    required this.wisata,
  });

  @override
  Widget build(BuildContext context) {
    final nama = wisata['nama'] ?? 'Nama Wisata';
    final lokasi = wisata['lokasi'] ?? 'Lokasi tidak tersedia';
    final gambar = wisata['gambar'] ?? '';
    final deskripsi =
        wisata['deskripsi'] ?? 'Deskripsi belum tersedia.';

    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FC),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: const Color(0xFF1565C0),
            foregroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: gambar.isNotEmpty
                  ? Image.network(
                      gambar,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.blue.shade100,
                          child: const Icon(
                            Icons.image_not_supported,
                            size: 60,
                            color: Colors.blue,
                          ),
                        );
                      },
                    )
                  : Container(
                      color: Colors.blue.shade100,
                      child: const Icon(
                        Icons.image,
                        size: 60,
                      ),
                    ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'EXPLORE DESTINATION',
                    style: TextStyle(
                      color: Color(0xFF1976D2),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontSize: 12,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF17365D),
                    ),
                  ),

                  const SizedBox(height: 15),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3F2FD),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Color(0xFF1565C0),
                        ),

                        const SizedBox(width: 7),

                        Text(
                          lokasi,
                          style: const TextStyle(
                            color: Color(0xFF1565C0),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    'Tentang Tempat Wisata',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF17365D),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    deskripsi,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.8,
                      color: Color(0xFF455A64),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}