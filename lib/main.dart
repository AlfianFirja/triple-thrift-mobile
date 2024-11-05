// main.dart
import 'package:flutter/material.dart';
import 'package:triple_thrift_mob/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Triple Thrift',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal, // Menggunakan teal sebagai primary
        ).copyWith(
          secondary: Colors.lightBlue, // Menggunakan light blue sebagai secondary
        ),
        scaffoldBackgroundColor: Colors.white, // Warna latar belakang putih
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
