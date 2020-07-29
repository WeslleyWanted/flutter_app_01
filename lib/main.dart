import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "Hello Wolrd!";

  void mostrarTexto() {
    setState(() {
      text = "Hello Wolrd!";
    });
  }

  void limparTexto() {
    setState(() {
      text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Color(0xff0e10a0),
              title: Text(
                "Aplicativo 01",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                    Text(text,
                        style: TextStyle(
                            color: Color(0xff0cf507),
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.only(top: 150, bottom: 10),
                      child: RaisedButton(
                        color: Color(0xff938f8f),
                        child: Text(
                          "Clique",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: mostrarTexto,
                      ),
                    ),
                    RaisedButton(
                      color: Color(0xff938f8f),
                      child: Text(
                        "Limpar",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: limparTexto,
                    ),
                  ])),
            )));
  }
}
