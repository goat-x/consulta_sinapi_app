import 'package:flutter/material.dart';
import 'globals.dart';
import 'referencia_tecnica.dart';
import 'pagina_resultado.dart';

class PaginaPesquisa extends StatefulWidget {

  PaginaPesquisa({Key key, @required this.titulo});
  final String titulo;

  @override
  PaginaPesquisaFormState createState() {
    return PaginaPesquisaFormState(titulo: titulo);
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class PaginaPesquisaFormState extends State<PaginaPesquisa> {

  final Color _azulCaixa = GlobalConstantesCaixa().azulCaixa();

  PaginaPesquisaFormState({Key key, @required this.titulo});
  String titulo;

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Consulta " + titulo),
          backgroundColor: _azulCaixa,
          actions: <Widget>[
          IconButton(
            icon: new Image.asset('images/x_caixa.png', fit: BoxFit.cover),
            tooltip: 'CAIXA',
            onPressed: null,
          ),
          ]
        ),
        body: paginaPesquisaInsumo(context)
        ,backgroundColor: Colors.white,
    );
  }

  Widget paginaPesquisaInsumo(BuildContext context) {
    return
      new Column(
          children: <Widget>[
            ListTile(
                leading: Text("Cod. Classif.:", style: new TextStyle(fontWeight: FontWeight.bold)),
                title:
                  TextField(
                      decoration: InputDecoration(
                          labelText: 'Informe codigo'
                      ),
                    controller: myController,

                  )
                ,
            )
            ,
            ListTile(
                leading: Text("     Descrição:", style: new TextStyle(fontWeight: FontWeight.bold)),
                title:
                TextField(
                    decoration: InputDecoration(labelText: 'Informe descrição')
                )
            )
            ,
            Text(' ')
            ,
            new RaisedButton.icon(
              icon: const Icon(Icons.search, size: 18.0, color: Colors.white,),
              label: const Text('Consultar',style: TextStyle(color: Colors.white),),
              color: _azulCaixa,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaginaResultado(titulo: titulo, listaRF: ReferenciaTecnicaList().lista(),),
                    )
                );
              },

            )

          ]

      );
  }

}
//codigo: myController.text