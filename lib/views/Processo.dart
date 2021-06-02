import 'package:flutter/material.dart';

class Processo extends StatefulWidget {

  @override
  _ProcessoState createState() => _ProcessoState();
}

class _ProcessoState extends State<Processo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado da Busca"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Titular: " + "", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("CPF: " + "", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("Status: " + "", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
