import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      onPressed: () {
        // Tidak ada aksi apa pun saat ditekan
      },
      child: const Icon(Icons.search, color: Colors.black),
    );
  }
}
