import 'cardContato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemContato extends StatelessWidget {
  final CardContato _contato;

  ItemContato(this._contato);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text(this._contato.nome),
            subtitle: Text(this._contato.celular),
          ),
        ],
      ),
    );
  }
}
