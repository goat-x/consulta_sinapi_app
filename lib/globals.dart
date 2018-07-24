import 'package:flutter/material.dart';

class GlobalConstantesCaixa {

  final Color _azulCaixa = Color.fromARGB(255, 0, 57, 186);
  final Color _azulFundo = Color.fromARGB(255, 39, 126, 180);
  //Color.fromARGB(255, 22, 100, 172);

  Color azulCaixa(){
    return _azulCaixa;
  }

  Color azulFundo(){
    return _azulFundo;
  }
}

//class BarraTitulo extends StatelessWidget {
//  BarraTitulo(@required this.titulo);
//  String titulo;
//
//  @override
//  Widget build(BuildContext context) {
//    return AppBar(
//      title: Text(titulo),
//      backgroundColor: GlobalConstantesCaixa()._azulCaixa,
//      actions: <Widget>[
//        IconButton(
//          icon: new Image.asset('images/x_caixa.png', fit: BoxFit.cover),
//          tooltip: 'CAIXA',
//          onPressed: null,
//        ),
//      ],
//    );
//  }
//}