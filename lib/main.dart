import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(const FaktaHewanApp());
}

// ───────────────────────────────────────────────
// Stateless Widget (Root App)
// ───────────────────────────────────────────────
class FaktaHewanApp extends StatelessWidget {
  const FaktaHewanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Fakta Hewan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan), // 🔹 Ganti jadi cyan
      home: const FaktaHewanPage(),
    );
  }
}

// ───────────────────────────────────────────────
// Stateful Widget (semua kartu hewan dalam 1 halaman)
// ───────────────────────────────────────────────
class FaktaHewanPage extends StatefulWidget {
  const FaktaHewanPage({super.key});

  @override
  State<FaktaHewanPage> createState() => _FaktaHewanPageState();
}

class _FaktaHewanPageState extends State<FaktaHewanPage> {
  final List<Map<String, String>> faktaHewan = const [
    {
      'nama': 'Kucing',
      'fakta': 'Kucing bisa melompat hingga enam kali panjang tubuhnya!',
      'gambar': 'assets/images/kucing.png',
    },
    {
      'nama': 'Gajah',
      'fakta':
          'Gajah memiliki ingatan yang sangat kuat dan dapat mengenali wajah manusia bahkan setelah bertahun-tahun tidak bertemu.',
      'gambar':
          'https://cdn.pixabay.com/photo/2017/06/01/07/31/elephant-2362696_1280.png',
    },
    {
      'nama': 'Penguin',
      'fakta': 'Penguin jantan memberikan batu pada betina sebagai tanda cinta.',
      'gambar': 'assets/images/penguin.png',
    },
    {
      'nama': 'Koala',
      'fakta': 'Koala tidur hingga 20 jam sehari untuk menghemat energi.',
      'gambar': 'https://pngimg.com/uploads/koala/koala_PNG6.png',
    },
    {
      'nama': 'Burung Hantu',
      'fakta':
          'Burung hantu dapat memutar kepalanya hingga 270 derajat untuk melihat mangsa tanpa menggerakkan tubuh.',
      'gambar': 'assets/images/burunghantu.png',
    },
    {
      'nama': 'Singa',
      'fakta':
          'Singa dikenal sebagai raja hutan karena kekuatan dan kepemimpinannya dalam kelompok.',
      'gambar': 'assets/images/singa.png',
    },
    {
      'nama': 'Kanguru',
      'fakta': 'Kangguru tidak bisa berjalan mundur karena ekornya yang besar.',
      'gambar':
          'https://www.pngarts.com/files/6/Australian-Kangaroo-PNG-Image-Transparent-Background.png',
    },
    {
      'nama': 'Ayam',
      'fakta': 'Ayam memiliki kemampuan melihat warna lebih baik daripada manusia.',
      'gambar':
          'https://www.pngarts.com/files/4/Rooster-Transparent-Background-PNG.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Fakta Hewan'),
        centerTitle: true,
        backgroundColor: Colors.cyan.shade400, // 🔹 Ganti warna AppBar
      ),
      backgroundColor: Colors.cyan.shade50, // 🔹 Warna background lembut
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: faktaHewan.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, i) {
            final hewan = faktaHewan[i];
            return FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front: Card(
                color: Colors.white,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      hewan['gambar']!.startsWith('http')
                          ? Image.network(hewan['gambar']!, height: 80)
                          : Image.asset(hewan['gambar']!, height: 80),
                      const SizedBox(height: 10),

                      // 🔹 Row ditambahkan di sini 🔹
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.lightbulb_outline,
                              color: Colors.cyan), // 🔹 Warna ikon
                          const SizedBox(width: 5),
                          Text(
                            hewan['nama']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan, // 🔹 Warna teks nama
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 5),
                      const Text(
                        'Klik untuk lihat fakta',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              back: Card(
                color: Colors.white,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.lightbulb,
                          color: Colors.cyan, size: 40), // 🔹 Warna ikon belakang
                      const SizedBox(height: 10),
                      Text(
                        hewan['fakta']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
