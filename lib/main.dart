// import 'package:flutter/material.dart';

// void main() {
//   runApp(const FaktaHewanApp());
// }

// // ───────────────────────────────────────────────
// // Stateless Widget (root aplikasi)
// // ───────────────────────────────────────────────
// class FaktaHewanApp extends StatelessWidget {
//   const FaktaHewanApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Aplikasi Fakta Hewan',
//       debugShowCheckedModeBanner: false,
//       home: const FaktaHewanPage(),
//     );
//   }
// }

// // ───────────────────────────────────────────────
// // Stateful Widget (UI dinamis dengan tombol next & prev)
// // ───────────────────────────────────────────────
// class FaktaHewanPage extends StatefulWidget {
//   const FaktaHewanPage({super.key});

//   @override
//   State<FaktaHewanPage> createState() => _FaktaHewanPageState();
// }

// class _FaktaHewanPageState extends State<FaktaHewanPage> {
//   int index = 0;

//   // Daftar fakta hewan
//   final List<Map<String, String>> faktaHewan = [
//     {
//       'nama': 'Kucing',
//       'fakta': 'Kucing bisa melompat hingga enam kali panjang tubuhnya!',
//       'gambar': 'assets/images/kucing.png', // asset lokal
//     },
//     {
//       'nama': 'Gajah',
//       'fakta': 'Gajah memiliki ingatan yang sangat kuat.',
//       'gambar':
//           'https://cdn.pixabay.com/photo/2017/06/01/07/31/elephant-2362696_1280.png', // gambar internet
//     },
//     {
//       'nama': 'Penguin',
//       'fakta': 'Pinguin jantan memberikan batu pada betina sebagai tanda cinta.',
//       'gambar': 'assets/images/peguin.png',
//     },
//   ];

//   // Fungsi tombol next & previous
//   void nextFakta() {
//     setState(() {
//       index = (index + 1) % faktaHewan.length;
//     });
//   }

//   void prevFakta() {
//     setState(() {
//       index = (index - 1 + faktaHewan.length) % faktaHewan.length;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final hewan = faktaHewan[index];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Aplikasi Fakta Hewan'),
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Gambar hewan
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(15),
//               child: hewan['gambar']!.startsWith('http')
//                   ? Image.network(hewan['gambar']!, height: 200)
//                   : Image.asset(hewan['gambar']!, height: 200),
//             ),
//           ),

//           // Nama hewan
//           Text(
//             hewan['nama']!,
//             style: const TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),

//           // Fakta hewan
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               hewan['fakta']!,
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontSize: 16),
//             ),
//           ),

//           // Tombol navigasi: Sebelumnya - Berikutnya
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton.icon( 
//                 onPressed: prevFakta,
//                 icon: const Icon(Icons.arrow_back),
//                 label: const Text('Sebelumnya'),
//               ),
//               const SizedBox(width: 20),
//               ElevatedButton.icon(
//                 onPressed: nextFakta,
//                 icon: const Icon(Icons.arrow_forward),
//                 label: const Text('Berikutnya'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


/////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';

void main() {
  runApp(const FaktaHewanApp());
}

// ───────────────────────────────────────────────
// Stateless Widget (root aplikasi)
// ───────────────────────────────────────────────
class FaktaHewanApp extends StatelessWidget {
  const FaktaHewanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Fakta Hewan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Arial',
      ),
      home: const FaktaHewanPage(),
    );
  }
}

// ───────────────────────────────────────────────
// Stateful Widget (UI dinamis)
// ───────────────────────────────────────────────
class FaktaHewanPage extends StatefulWidget {
  const FaktaHewanPage({super.key});

  @override
  State<FaktaHewanPage> createState() => _FaktaHewanPageState();
}

class _FaktaHewanPageState extends State<FaktaHewanPage> {
  int index = 0;

  final List<Map<String, String>> faktaHewan = [
    {
      'nama': 'Kucing',
      'fakta': 'Kucing bisa melompat hingga enam kali panjang tubuhnya!',
      'gambar': 'assets/images/kucing.png',
    },
    {
      'nama': 'Gajah',
      'fakta': 'Gajah memiliki ingatan yang sangat kuat dan dapat mengenali wajah manusia bahkan setelah bertahun-tahun tidak bertemu.',
      'gambar':
          'https://cdn.pixabay.com/photo/2017/06/01/07/31/elephant-2362696_1280.png',
    },
    {
      'nama': 'Penguin',
      'fakta': 'Pinguin jantan memberikan batu pada betina sebagai tanda cinta.',
      'gambar': 'assets/images/peguin.png',
    },
    {
      'nama': 'Burung Hantu',
      'fakta': 'Burung hantu dapat memutar kepalanya hingga 270 derajat untuk melihat mangsa tanpa harus menggerakkan tubuhnya.',
      'gambar': 'assets/images/burunghantu.png',
    },
    {
      'nama': 'Singa',
      'fakta': 'Singa dikenal sebagai raja hutan karena kekuatan, keberanian, dan kepemimpinannya dalam kelompok yang disebut kawanan.',
      'gambar': 'assets/images/singa.png',
    },
    {
      'nama': 'Kanguru',
      'fakta': 'Kangguru tidak bisa berjalan mundur karena struktur kaki dan ekornya yang besar.',
      'gambar': 'https://www.pngarts.com/files/6/Australian-Kangaroo-PNG-Image-Transparent-Background.png',
    },
  ];

  void nextFakta() async {
    setState(() {
      index = (index + 1) % faktaHewan.length;
    });

    // Tambahkan jeda ringan agar UI tidak berat
    await Future.delayed(const Duration(milliseconds: 100));
  }


  void prevFakta() {
    setState(() {
      index = (index - 1 + faktaHewan.length) % faktaHewan.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final hewan = faktaHewan[index];

    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        title: const Text('Aplikasi Fakta Hewan'),
        centerTitle: true,
        backgroundColor: Colors.teal.shade400,
        elevation: 4,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.teal.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Gambar hewan
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: hewan['gambar']!.startsWith('http')
                        ? Image.network(hewan['gambar']!, height: 200)
                        : Image.asset(hewan['gambar']!, height: 200),
                  ),
                  const SizedBox(height: 16),

                  // Nama hewan
                  Text(
                    hewan['nama']!,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Fakta hewan
                  Text(
                    hewan['fakta']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Tombol next dan prev
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: prevFakta,
                        icon: const Icon(Icons.arrow_back),
                        label: const Text('Sebelumnya'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade300,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton.icon(
                        onPressed: nextFakta,
                        icon: const Icon(Icons.arrow_forward),
                        label: const Text('Berikutnya'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade300,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
