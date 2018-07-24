import 'package:flutter/material.dart';
import 'dart:async';
import 'pagina_pesquisa.dart';

class MenuConteudo extends StatefulWidget {
  @override
  createState() => MenuConteudoState();
}

class MenuConteudoState extends State<MenuConteudo> {

  List<bool> _selected = [false, false, false];

  GestureDetector montarItemMenu(int idx, String titulo, String menuImagem, String selectedImagem, PaginaPesquisa destino){

    final Color _fundoBotao = Color.fromARGB(255, 18,79,135);

    return GestureDetector(
     child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: new Image.asset(!_selected[idx] ? menuImagem : selectedImagem, fit: BoxFit.cover)),
//          Text(' '),
          Text(titulo, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
        ],
      ),
      color: _fundoBotao,
      elevation: 4.0,
    )
        ,onTap: () {
          setState(() {
            _selected[idx] = true;
          });
          Future.delayed(Duration(milliseconds: 50)).then((_) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destino),
            );
          });
        unselect(idx);
    },
    );
  }

  Future<Null> unselect(int idx) {
    return Future.delayed(Duration(milliseconds: 50)).then((_) {
      _selected[idx] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(14.0),
      crossAxisCount: 2,
      children: [
        montarItemMenu(0, "Consultar Insumos", 'images/insumos.png', 'images/insumos_laranja.png', PaginaPesquisa(titulo: "Insumos")),
        montarItemMenu(1, "Consultar Composições", 'images/composicoes.png', 'images/composicoes_laranja.png', PaginaPesquisa(titulo: "Composições")),
        montarItemMenu(2, "Consultar Orçamentos", 'images/orcamentos.png', 'images/orcamentos_laranja.png', PaginaPesquisa(titulo: "Orçamentos")),
      ],
    );
  }

}