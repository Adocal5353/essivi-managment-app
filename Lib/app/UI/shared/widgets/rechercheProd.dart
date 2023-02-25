import 'package:flutter/material.dart';

class searchProd extends StatefulWidget {
  @override
  State<searchProd> createState() => _searchProdState();
}

class _searchProdState extends State<searchProd> {
  var _searchview = new TextEditingController();

  bool _firstSearch = true;
  String _query = "";

  late List<String> _nebulae;
  late List<String> _filterList;

  @override
  void initState() {
    super.initState();
    _nebulae = <String>[];
    _nebulae = [];
    _nebulae.sort();
  }

  @override
  Widget build(BuildContext context) {
    _searchview.addListener(() {
      if (_searchview.text.isEmpty) {
        //Notify the framework that the internal state of this object has changed.
        setState(() {
          _firstSearch = true;
          _query = "";
        });
      } else {
        setState(() {
          _firstSearch = false;
          _query = _searchview.text;
        });
      }
    });

    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 244, 241, 241),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 2),
          Expanded(
            child: TextField(
              controller: _searchview,
              decoration: const InputDecoration(
                hintText: "Produit & Prix",
                hintStyle: TextStyle(color: Color.fromARGB(255, 44, 44, 44)),
              ),
              // textAlign: TextAlign.center,
            ),
          ),
          const Icon(
            Icons.find_replace_sharp,
            color: Color.fromARGB(255, 44, 44, 44),
          ),
        ],
      ),
    );
  }
}
