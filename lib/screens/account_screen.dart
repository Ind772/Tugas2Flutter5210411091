import 'package:flutter/material.dart';

void main() {
  runApp(const AccountScreen());
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account Screen',
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80), // Menambahkan jarak atas
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                      'lib/assets/images/1665382367098.jpg'), // Ganti dengan path gambar Anda
                ),
                const SizedBox(height: 20),
                _buildMenuItem(
                  icon: Icons.person,
                  text: 'Kelola Akun',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.notifications,
                  text: 'Notifikasi',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.lock,
                  text: 'Privacy Policy',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.document_scanner,
                  text: 'Terms of Service',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.grey, size: 24),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
