import 'listaDeContatos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Contatos',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.cyan[900],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listas de Contatos'),
        ),
        body: ListaDeContatos(),
      ),
    );
  }
}
