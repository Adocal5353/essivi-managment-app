import 'package:flutter/material.dart';
import 'package:water/app/UI/shared/animations/animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water/app/UI/shared/animations/navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              DelaiAnimation(
                delay: 1500,
                child: SizedBox(
                  height: 150,
                  child: Image.asset('images/OIP(2).jpeg'),
                ),
              ),
              DelaiAnimation(
                delay: 2000,
                child: Container(
                  height: 80,
                  margin: EdgeInsets.only(),
                  child: Text(
                    "ESSIVI-Sarl",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arbutus(
                      color: Colors.blue,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              DelaiAnimation(
                delay: 2100,
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(),
                  child: const Text(
                    'Bienvenue',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              DelaiAnimation(
                delay: 2175,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: 350,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 241, 241),
                      border: Border.all(
                          color: const Color.fromARGB(255, 241, 241, 241)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Numéro de Téléphone",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              DelaiAnimation(
                delay: 2180,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: 350,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 241, 241),
                      border: Border.all(
                          color: const Color.fromARGB(255, 241, 241, 241)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mot de passe',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              DelaiAnimation(
                delay: 2900,
                child: Container(
                  width: 350,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(13),
                    ),
                    child: Text(
                      'Connexion',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => NaviPage()),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
