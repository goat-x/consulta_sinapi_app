import 'package:flutter/material.dart';
import 'globals.dart';
import 'package:consulta_sinapi_app/menu_sinapi.dart';

void main() {
  runApp(MaterialApp(
    title: 'CAIXA - SINAPI Consultas',
    home: PaginaInicial(),
  ));
}

class PaginaInicial extends StatelessWidget {

  final Color _azulCaixa = GlobalConstantesCaixa().azulCaixa();

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
//        leading:
//        new PopupMenuButton<String>(
//          onSelected: null,
//          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
//            const PopupMenuItem<String>(
//              value: 'Encerrar',
//              child: const Text("Encerrar"),
//            )
//          ],
//        ),
        title:
//        Text("SINAPI - Consultas"),
          Center(child: new Image.asset('images/caixa.png', fit: BoxFit.cover)),
//        actions: <Widget>[
//          IconButton(
//            icon: new Image.asset('images/x_caixa.png', fit: BoxFit.cover),
//            tooltip: 'CAIXA',
//            onPressed: null,
//          ),
//        ],
        backgroundColor: _azulCaixa,
      ),
      // body is the majority of the screen.
      body: Container(
        decoration: BoxDecoration(
          color: GlobalConstantesCaixa().azulFundo(),
        ),
        child:
         MenuConteudo()
      ),
      bottomNavigationBar:
        rodapeInfoLogin()
    );
  }

  Widget rodapeInfoLogin(){
    return Container(
        decoration:
        BoxDecoration(color: _azulCaixa),
        child:
        ListTile(
            leading:
              IconButton(
              icon: new Image.asset('images/usuario_logado.png', fit: BoxFit.cover),
              tooltip: 'Insumo',
              onPressed: null,
            ),
            title:
              Text("Usuário: Antônio Carlos Brasileiro de Almeida Jobim", style: TextStyle(color: Colors.white)),
            subtitle:
              Text("Perfil: Gestor Nacional", style: TextStyle(color: Colors.white)),
        )
//        Row(
//          children: <Widget>[
//            Divider(height: 3.0),
//            Text("Usuário Logado: ", style: TextStyle(color: Colors.white),),
//            Text("José Francisco Nunes (F743825)", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
//          ],
//        )
    );
  }
}


