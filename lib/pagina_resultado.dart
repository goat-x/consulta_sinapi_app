import 'package:flutter/material.dart';
import 'globals.dart';
import 'detalhe_referncia_tecnica.dart';
import 'referencia_tecnica.dart';


class PaginaResultado extends StatefulWidget {

  PaginaResultado({Key key, @required this.titulo,  @required this.listaRF});
  final String titulo;
  final List<ReferenciaTecnica> listaRF;

  @override
  PaginaResultadoState createState() {
    return PaginaResultadoState(titulo: titulo, listaRF: listaRF);
  }
}

class PaginaResultadoState extends State<PaginaResultado> {

  PaginaResultadoState({Key key, @required this.titulo, @required this.listaRF});
  final String titulo;
  final List<ReferenciaTecnica> listaRF;

  final Color _azulCaixa = GlobalConstantesCaixa().azulCaixa();

  void abrirOcorrencia(ReferenciaTecnica _rf){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetalheReferenciaTecnica(referenciaTecnica: _rf),
            )
        );
  }

  Widget listaResultado(){
    return new ListView(
      children: resultado(), padding: const EdgeInsets.only(top: 10.0),
    );
  }

  ListTile linhaListTile(ReferenciaTecnica _rf){
    return new ListTile(
      leading: IconButton(
          icon: new Image.asset('images/insumo_leading.png', fit: BoxFit.cover),
          tooltip: 'Insumo',
          onPressed: null,
      ),
      title: Text(_rf.desccricaoBasica,),
      subtitle: Text(_rf.codClassificacao, style: new TextStyle(color: _azulCaixa)),
      onTap: (){ abrirOcorrencia(_rf); },
    );
  }

  List<Widget> resultado(){
    List<Widget> resultado = new List<Widget>();
    for (var _rf in listaRF) {
      ListTile linha = linhaListTile(_rf);
      resultado.add(linha);
      resultado.add(new Divider(height: 7.5,));
    }
    return resultado;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Lista de ' + titulo),
        backgroundColor: _azulCaixa,
        actions: <Widget>[
          IconButton(
            icon: new Image.asset('images/x_caixa.png', fit: BoxFit.cover),
            tooltip: 'CAIXA',
            onPressed: null,
          ),
        ]
      ),

      body:
        Container(color: Colors.white,child: listaResultado())
    );
  }
}