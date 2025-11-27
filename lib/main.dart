import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const KBBIApp());
}

class KBBIApp extends StatelessWidget {
  const KBBIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KBBI VI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
