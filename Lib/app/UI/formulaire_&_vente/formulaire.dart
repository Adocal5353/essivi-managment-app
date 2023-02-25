import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water/app/UI/shared/widgets/HearderWidget.dart';

class FormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormPage();
  }
}

class _FormPage extends State<FormPage> {
  var Geolocalisation = "";

  void getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      print(
          "autoriser l'activation de la de la géolocalisation pour avoir accès à certaine fonctionnalité");
      permission = await Geolocator.requestPermission();
    } else if (permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition();

      var lat = position.latitude;
      var long = position.longitude;
      print("$lat , $long");

      setState(() {
        Geolocalisation = "Latitude : $lat , Longitude : $long";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 175, 226, 251),
      appBar: AppBar(
        elevation: 0.3,
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ])),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              top: 16,
              right: 16,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(
              height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          width: 5, color: Color.fromARGB(255, 255, 255, 255)),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(height: 35),
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
                              hintText: "Nom",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
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
                              hintText: "Prénom",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
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
                              hintText: "Nom société",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
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
                              hintText: "Numéro de téléphone",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text("Localisation: $Geolocalisation"),
                      ),
                      IconButton(
                        onPressed: () {
                          getCurrentLocation();
                        },
                        icon: const Icon(
                          Icons.select_all_rounded,
                          color: Colors.blue,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        width: 350,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            padding: EdgeInsets.all(13),
                          ),
                          child: Text(
                            'Enregistrer',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
