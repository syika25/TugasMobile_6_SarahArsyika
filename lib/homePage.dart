import 'package:flutter/material.dart';
import 'package:tugas6/main.dart';
import 'package:tugas6/detailPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void bukaDetail(BuildContext context, Map<String, String> item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(wisata: item),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F7FC),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1565C0),
          foregroundColor: Colors.white,
          leading: const Icon(Icons.explore),
          title: const Text(
            'Explore Wisata',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.grid_on),
                text: 'Grid View',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'List View',
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            gridView(context),
            listView(context),
          ],
        ),
      ),
    );
  }

  // Tampilan Grid View
  Widget gridView(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 12,
        childAspectRatio: 0.85,
      ),
      itemCount: dataWisata.length,
      itemBuilder: (context, index) {
        final item = dataWisata[index];

        return Card(
          elevation: 4,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: () => bukaDetail(context, item),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  item['gambar']!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(
                        Icons.broken_image,
                        size: 40,
                      ),
                    );
                  },
                ),

                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black87,
                      ],
                    ),
                  ),
                ),

                Positioned(
                  left: 12,
                  right: 12,
                  bottom: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['nama']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Color(0xFF64B5F6),
                            size: 15,
                          ),
                          const SizedBox(width: 3),
                          Expanded(
                            child: Text(
                              item['lokasi']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      const Row(
                        children: [
                          Text(
                            'Lihat Detail',
                            style: TextStyle(
                              color: Color(0xFF90CAF9),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xFF90CAF9),
                            size: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Tampilan List View
  Widget listView(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: dataWisata.length,
      itemBuilder: (context, index) {
        final item = dataWisata[index];

        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          elevation: 3,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: () => bukaDetail(context, item),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  item['gambar']!,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      height: 180,
                      child: Center(
                        child: Icon(
                          Icons.broken_image,
                          size: 40,
                        ),
                      ),
                    );
                  },
                ),

                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['nama']!,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF17365D),
                        ),
                      ),

                      const SizedBox(height: 7),

                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 17,
                            color: Color(0xFF1565C0),
                          ),
                          const SizedBox(width: 4),

                          Expanded(
                            child: Text(
                              item['lokasi']!,
                              style: const TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ),

                          const Text(
                            'Lihat Detail',
                            style: TextStyle(
                              color: Color(0xFF1565C0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(width: 5),

                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 13,
                            color: Color(0xFF1565C0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}