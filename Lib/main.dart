import 'package:flutter/material.dart';
import 'package:water/app/UI/Accueil/acceuil.dart';
import 'package:water/app/UI/shared/animations/animation.dart';
import 'package:water/app/UI/shared/animations/navigation.dart';

const d_red = Color(0xFFE9717D);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acceuil',
      debugShowCheckedModeBanner: false,
      home: Aceuil(),
    );
  }
}
