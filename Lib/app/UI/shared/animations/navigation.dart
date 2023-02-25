import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:water/app/UI/formulaire_&_vente/formulaire.dart';
import 'package:water/app/UI/formulaire_&_vente/vente.dart';

class NaviPage extends StatefulWidget {
  @override
  State<NaviPage> createState() => _NaviPageState();
}

class _NaviPageState extends State<NaviPage> {
  int index = 0;
  final Screens = [
    VentePage(),
    FormPage(),
    Center(
      child: Text('commande'),
    ),
    Center(
      child: Text('paramètre'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[index],
      backgroundColor: Color.fromARGB(255, 175, 226, 251),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 63, 164, 246),
        child: CurvedNavigationBar(
            height: 60,
            backgroundColor: Color.fromARGB(255, 175, 226, 251),
            color: Colors.blue,
            animationDuration: Duration(milliseconds: 550),
            onTap: (index) => setState(() => this.index = index),
            items: const [
              FaIcon(FontAwesomeIcons.cartArrowDown),
              FaIcon(FontAwesomeIcons.person),
              FaIcon(FontAwesomeIcons.boxesStacked),
              FaIcon(FontAwesomeIcons.gear),
            ]),
      ),
    );
  }
}
