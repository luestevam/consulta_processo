import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  void main() {}

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerCpf = TextEditingController();

  Map data;

  _buscar() async {
    CollectionReference collectionReference =
        Firestore.instance.collection('data');
    collectionReference.snapshots().listen((snapshot) {
      List documents;

      setState(() {
        documents = snapshot.documents;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32, top: 0),
                  //  child: Image.asset("images/logo.png", width: 190, height: 100,),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25),
                  inputFormatters: [
                    //FilteringTextInputFormatter.digitsOnly,
                    //CpfInputFormatter(),
                  ],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "CPF",
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Contrato",
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  controller: _controllerCpf,
                ),
                SizedBox(height: 20),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 12, top: 12),
                  child: Text(
                    "Buscar",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _buscar,
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Dúvidas? Fale conosco:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("WhatsApp"),
                      Text("Ligar"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
