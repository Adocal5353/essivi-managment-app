import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:water/app/UI/formulaire_&_vente/mesVente.dart';
import 'package:water/app/UI/formulaire_&_vente/venteCli.dart';
import 'package:water/app/UI/formulaire_&_vente/venteSip.dart';

class VentePage extends StatefulWidget {
  const VentePage({super.key});

  @override
  State<VentePage> createState() => _VentePageState();
}

class _VentePageState extends State<VentePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBody: true,
          backgroundColor: const Color.fromARGB(255, 175, 226, 251),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 2,
            title: Text(
              'Vente',
              style: GoogleFonts.arbutusSlab(color: Colors.black, fontSize: 24),
            ),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                icon: const FaIcon(
                  FontAwesomeIcons.basketShopping,
                  color: Colors.black,
                ),
                child: Text(
                  'Vente Client',
                  style: GoogleFonts.arbutus(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
              Tab(
                icon: const FaIcon(
                  FontAwesomeIcons.bagShopping,
                  color: Colors.black,
                ),
                child: Text(
                  'Vente Simple',
                  style: GoogleFonts.arbutus(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
              Tab(
                icon: const FaIcon(
                  FontAwesomeIcons.listCheck,
                  color: Colors.black,
                ),
                child: Text(
                  'Mes Ventes',
                  style: GoogleFonts.arbutus(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
            ]),
          ),
          body: TabBarView(children: [
            VenteCliPage(),
            VenteSipPage(),
            MVentePage(),
          ]),
        ),
      );
}
