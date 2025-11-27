import 'package:flutter/material.dart';
import 'widgets/custom_appbar.dart';
import '../widgets/app_drawer.dart';
import '../widgets/custom_search_button.dart';
import 'kelas_kata_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      drawer: const AppDrawer(),

     
      appBar: const CustomAppBar(title: "KBBI"),

      
      floatingActionButton: const CustomSearchButton(),

      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Center(
              child: Column(
                children: [
                  Image.asset('assets/logo.png', height: 70),
                  const SizedBox(height: 8),
                  const Text(
                    "KBBI VI",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Tekan ikon cari atau pilih menu di bawah untuk menelusuri Kamus Besar Bahasa Indonesia.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2, 
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: [
                buildCard(context,"Kelas kata","nomina, verba, ...",const KelasKataPage(),),
                buildCard(context, "Ragam", "hormat, cakap, ...", null),
                buildCard(context, "Bahasa", "Jawa, Sunda, ...", null),
                buildCard(context, "Bidang", "Komputer, Hukum...", null),
              ],
            ),

            const SizedBox(height: 30),

            
            const Text(
              "Kata Hari Ini",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "fa.sih",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "a lancar, bersih, dan baik lafalnya (tentang berbahasa, bercakap, mengaji, dan sebagainya).",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
  Widget buildCard( BuildContext context, String title, String subtitle, Widget? page) {
    return GestureDetector(
      onTap: () {
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
