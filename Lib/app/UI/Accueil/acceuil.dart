import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water/app/UI/shared/animations/animation.dart';
import 'package:water/app/UI/connectez-vous/login.dart';

class Aceuil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 253, 253),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Center(
            child: Column(children: [
              DelaiAnimation(
                delay: 1500,
                child: Container(
                  height: 150,
                  child: Image.asset('images/OIP(2).jpeg'),
                ),
              ),
              DelaiAnimation(
                delay: 2000,
                child: Container(
                  height: 30,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
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
                delay: 2050,
                child: Container(
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Text(
                    "ESSIVI l'eau qui donne le sourire et la joie au coeur",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arbutus(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              DelaiAnimation(
                delay: 2100,
                child: Container(
                  height: 250,
                  margin: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Image.asset('images/OIP5.jpeg'),
                ),
              ),
              DelaiAnimation(
                delay: 2400,
                child: Container(
                  width: 350,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(13),
                    ),
                    child: Text(
                      'SE CONNECTER',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => LoginPage()),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ]),
          )),
        ));
  }
}
