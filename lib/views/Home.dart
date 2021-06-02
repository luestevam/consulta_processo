import 'package:consultaprocesso/views/Processo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerCpf = TextEditingController();
  TextEditingController _controllerContrato = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "images/logo.png",
                    width:200,
                    height: 150,),
                ),

                TextField(
                  keyboardType: TextInputType.number,
                  controller: _controllerCpf,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "CPF",
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),

                SizedBox(height: 20,),

                TextField(
                  keyboardType: TextInputType.number,
                  controller: _controllerContrato,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Num Contrato",
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),

                SizedBox(height: 20,),

                RaisedButton(
                  child: Text(
                    "Buscar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(15),
                 onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Processo()
                        )
                    );
                  },
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Dúvidas? Fale conosco:",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
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
