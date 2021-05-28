import 'package:flutter/material.dart';

class Processo extends StatefulWidget {
  const Processo({Key key}) : super(key: key);

  @override
  _ProcessoState createState() => _ProcessoState();
}

class _ProcessoState extends State<Processo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado Ppocesso"),
      ),
      /* body: Container(
        child: Row(
          children:<Widget> [
           Text(
               data['titular'].toString())
          ],
        ),
      )*/
    );
  }
}
