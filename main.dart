//main.Dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:VendorConnect/halaman/halaman_login.dart';
import 'package:VendorConnect/models/shop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TokoRotiO(),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(primarySwatch: Colors.amber),
              home: LoginPage(),
            ));
  }
}

