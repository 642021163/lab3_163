import 'package:flutter/material.dart';
import 'package:lab3_163/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            background: Color.fromARGB(255, 80, 185, 255)),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}
