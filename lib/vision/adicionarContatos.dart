import '../controller/Controller.dart';
import '../model/cardContato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdicionarContato extends StatelessWidget {
  final TextEditingController _controllerCampoNome = TextEditingController();
  final TextEditingController _controllerCampoCelular = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Contato"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Controller(
              controlador: _controllerCampoNome,
              rotulo: 'Nome do Contato',
              icone: Icons.contact_phone,
              dica: 'Fulano Ciclano',
              tipoTeclado: TextInputType.text,
            ),
            Controller(
              rotulo: 'Número de celular',
              controlador: _controllerCampoCelular,
              dica: '91234-5678',
              tipoTeclado: TextInputType.number,
            ),
            RaisedButton(
              onPressed: () {
                _CriarContato(context);
              },
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }

  void _CriarContato(BuildContext context) {
    final String nomeContato = _controllerCampoNome.text;
    final String celularContato = _controllerCampoCelular.text;

    if (nomeContato != null && celularContato != null) {
      final contatoCriado = CardContato(nomeContato, celularContato);
      Navigator.pop(context, contatoCriado);
    }
  }
}
