import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/app_drawer.dart';
import '../widgets/custom_search_button.dart';

class DetailKataPage extends StatelessWidget {
  const DetailKataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "KBBI"),
      drawer: const AppDrawer(),
      floatingActionButton: const CustomSearchButton(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: ListView(
          children: [
            
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(
                  Icons.bookmark_add_outlined,
                  color: Colors.black87,
                  size: 28,
                ),
                onPressed: () {
                  
                },
              ),
            ),
            
            const Text(
              "A (1)",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 16),
                children: [
                  TextSpan(
                    text: "Varian: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "a",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

           
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 16),
                children: [
                  TextSpan(
                    text: "1. ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "n ",
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(text: "huruf pertama abjad Indonesia"),
                ],
              ),
            ),
            const SizedBox(height: 8),

            
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 16),
                children: [
                  TextSpan(
                    text: "2. ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "n ",
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(text: "nama huruf a"),
                ],
              ),
            ),
            const SizedBox(height: 8),

            
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 16),
                children: [
                  TextSpan(
                    text: "3. ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "n ",
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                      text:
                          "penanda pertama dalam urutan (mutu, nilai, dan sebagainya)"),
                ],
              ),
            ),
            const SizedBox(height: 8),

            
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 16),
                children: [
                  TextSpan(
                    text: "4. ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "n ",
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text: "Mus ",
                    style: TextStyle(color: Colors.green),
                  ),
                  TextSpan(
                      text:
                          "nada ke-6 dalam tangga nada diatonik C mayor"),
                ],
              ),
            ),

            const SizedBox(height: 24),

            
            const Text(
              "A (2)",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 16),
                children: [
                  TextSpan(
                    text: "n ",
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text:
                        "golongan darah dari sistem penggolongan darah ABO yang memiliki kandungan antigen eritrosit A dan antibodi anti-B pada sel darah merahnya",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
