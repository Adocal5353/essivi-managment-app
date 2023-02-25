import 'package:flutter/material.dart';
import 'package:water/app/UI/shared/widgets/rechercheProd.dart';

class VenteSipPage extends StatefulWidget {
  const VenteSipPage({super.key});

  @override
  State<VenteSipPage> createState() => _VenteSipPageState();
}

class _VenteSipPageState extends State<VenteSipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 226, 251),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(children: [
              const SizedBox(height: 30),
              searchProd(),
              const SizedBox(height: 30),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: 500,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 241, 241),
                      border: Border.all(
                          color: const Color.fromARGB(255, 241, 241, 241)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Quantité",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
