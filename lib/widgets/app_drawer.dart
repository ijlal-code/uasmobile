import 'package:flutter/material.dart';
import '../pages/kelas_kata_page.dart';
import '../pages/home_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFF5F3F7),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', height: 60),
                const SizedBox(height: 8),
                const Text(
                  "KBBI",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const Text("Kamus Besar Bahasa Indonesia"),
              ],
            ),
          ),
          drawerItem(context, Icons.home_outlined, "Beranda", const HomePage()),
          drawerItem(context, Icons.bookmark_border, "Markah Buku", null),
          drawerItem(context, Icons.history, "Riwayat", null),
          const Divider(),
          drawerItem(context, Icons.label_outline, "Bahasa", null),
          drawerItem(context, Icons.label_outline, "Bidang", null),
          drawerItem(context, Icons.label_outline, "Kelas Kata", const KelasKataPage()),
          drawerItem(context, Icons.label_outline, "Ragam", null),
          drawerItem(context, Icons.label_outline, "Jenis", null),
          const Divider(),
          drawerItem(context, Icons.text_fields, "Tanda dan Lambang", null),
          drawerItem(context, Icons.library_add, "Usulkan Entri", null),
          drawerItem(context, Icons.info_outline, "Tentang Kami", null),
        ],
      ),
    );
  }

  Widget drawerItem(BuildContext context, IconData icon, String title, Widget? page) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87),
      title: Text(title),
      onTap: () {
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        }
      },
    );
  }
}
