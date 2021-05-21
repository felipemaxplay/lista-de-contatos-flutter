import '../model/cardContato.dart';
import '../model/itemContato.dart';
import 'adicionarContatos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaDeContatos extends StatefulWidget {
  final List<CardContato> _contatos = List();

  @override
  State<StatefulWidget> createState() {
    return ListaDeContatosState();
  }
}

class ListaDeContatosState extends State<ListaDeContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget._contatos.length,
        itemBuilder: (context, index) {
          final contatos = widget._contatos[index];
          return ItemContato(contatos);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Future<CardContato> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AdicionarContato();
          }));
          future.then((contatoRecebido) {
            debugPrint('Chegou no then do Future');
            debugPrint('$contatoRecebido');

            if (contatoRecebido != null) {
              setState(() => widget._contatos.add(contatoRecebido));
            }
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.cyan[900],
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
