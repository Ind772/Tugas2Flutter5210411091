import 'package:flutter/material.dart';
import '../widgets/grid_view_widget.dart';
import '../widgets/list_view_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // Mengatur agar elemen di dalam kolom diselaraskan ke kiri
          children: [
            // Kotak dengan ikon
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang kotak
                borderRadius: BorderRadius.circular(12.0), // Border radius
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Menyebar ikon
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 32,
                  ), // Ikon profile di kiri
                  Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 32,
                      ), // Ikon notifikasi
                      const SizedBox(width: 16.0), // Jarak antar ikon
                      Icon(
                        Icons.settings,
                        color: Colors.black,
                        size: 32,
                      ), // Ikon pengaturan
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const SizedBox(height: 16.0), // Jarak antara kotak dan teks
            const Text(
              '5210411091 - Indra Briliansyah',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16.0), // Jarak antara teks dan GridView
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Menyebar teks dan ikon panah
              children: [
                const Text(
                  'Widget Grid View',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(width: 8.0), // Jarak antara teks dan ikon panah
                Icon(Icons.arrow_forward,
                    color: Colors.black), // Ikon panah ke kanan
              ],
            ),
            const SizedBox(
                height: 16.0), // Menambahkan jarak antara teks dan GridView
            Expanded(child: WidgetGridView()),
            const SizedBox(
                height: 16.0), // Menambahkan jarak antara GridView dan ListView
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Menyebar teks dan ikon panah
              children: [
                const Text(
                  'Widget List View',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(width: 8.0), // Jarak antara teks dan ikon panah
                Icon(Icons.arrow_forward,
                    color: Colors.black), // Ikon panah ke kanan
              ],
            ),
            const SizedBox(
                height: 8.0), // Menambahkan jarak antara teks dan ListView
            Expanded(child: WidgetListView()),
          ],
        ),
      ),
    );
  }
}
