// main.dart
import 'package:flutter/material.dart';
import 'package:triple_thrift_mob/screens/login.dart';
import 'package:triple_thrift_mob/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
// import 'package:triple_thrift_mob/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Triple Thrift',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.teal, // Menggunakan teal sebagai primary
          ).copyWith(
            secondary: Colors.lightBlue,), // Menggunakan light blue sebagai secondary
            scaffoldBackgroundColor: Colors.white, // Warna latar belakang putih
        ),
        home: const LoginPage(),
      )
    );
  }
}