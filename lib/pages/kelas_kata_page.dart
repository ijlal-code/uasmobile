import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/app_drawer.dart';
import '../widgets/custom_search_button.dart';
import 'nomina.dart';

class KelasKataPage extends StatelessWidget {
  const KelasKataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> kelas = [
      "Nomina",
      "Verba",
      "Adjektiva",
      "Adverbia",
      "Pronomina",
      "Partikel",
      "Numeralia",
      "Klitik",
      "Bentuk terikat",
      "Prefiks",
      "Prefiks pembentuk nomina",
      "Prefiks pembentuk verba",
    ];

    return Scaffold(
      appBar: const CustomAppBar(title: "KBBI"),
      drawer: const AppDrawer(),
      floatingActionButton: const CustomSearchButton(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 24, 24, 12),
            child: Text(
              "Kelas kata",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
              itemCount: kelas.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Nomina(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      kelas[index],
                      style: const TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
