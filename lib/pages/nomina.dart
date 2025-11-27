import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/app_drawer.dart';
import '../widgets/custom_search_button.dart';
import 'detail_kata_page.dart';

class Nomina extends StatelessWidget {
  const Nomina({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> kelas = [
      "a",
      "aa",
      "aabi",
      "aabinomin",
      "aaji",
      "aal",
      "aan",
      "aau",
      "aaui",
      "ab",
      "aba",
      "aba-aba",
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
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: InkWell(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const DetailKataPage(),
                          ),
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        kelas[index],
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
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
