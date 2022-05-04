import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StateLess",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String nome = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Tela inicial"),
              centerTitle: true,
            ),
            body: Center(
                child: Container(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Insira o seu nome",
                          ),
                          onSubmitted: (String str) {
                            setState(() {
                              nome = str;
                            });
                          },
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Text("Ola"),
                                    content: Text(nome),
                                  ),
                                );
                              });
                            },
                            child: Text("Ok")),
                      ],
                    )))));
  }
}
