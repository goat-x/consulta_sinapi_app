import 'package:flutter/material.dart';
import 'globals.dart';
import 'referencia_tecnica.dart';
import 'editar_referencia_tecnica.dart';

class DetalheReferenciaTecnica extends StatefulWidget {

  DetalheReferenciaTecnica({Key key, @required this.referenciaTecnica});
  final ReferenciaTecnica referenciaTecnica;

  @override
  DetalheReferenciaTecnicaState createState() {
    return DetalheReferenciaTecnicaState(referenciaTecnica: referenciaTecnica);
  }
}

class DetalheReferenciaTecnicaState extends State<DetalheReferenciaTecnica> with TickerProviderStateMixin{

  final Color _azulCaixa = GlobalConstantesCaixa().azulCaixa();

  DetalheReferenciaTecnicaState({Key key, @required this.referenciaTecnica});
  final ReferenciaTecnica referenciaTecnica;

  @override
  Widget build(BuildContext context) {

    List<String> menuItems = ["Editar", "Encargo Complementar", "Listar Família", "Listar Utilizações", "Arquivos", "Coleta", "Excluir"];
    TabController tabController = new TabController(vsync: this, length: menuItems.length);

    return Scaffold(

      appBar: AppBar(
              title: Text('Dados Referência Técnica'),
              backgroundColor: _azulCaixa,
              actions: <Widget>[
                IconButton(
                  icon: new Image.asset('images/x_caixa.png', fit: BoxFit.cover),
                  tooltip: 'CAIXA',
                  onPressed: null,
                ),
              ],
            ),

      body:
          new TabBarView(
            children: [
                  Container( child: dadosDetalheReferenciaTecnica() ),
                  EditarReferenciaTecnica(referenciaTecnica: referenciaTecnica),
                  funcinalidadeEmMantencao(),
                  funcinalidadeEmMantencao(),
                  funcinalidadeEmMantencao(),
                  funcinalidadeEmMantencao(),
                  funcinalidadeEmMantencao(),
                  funcinalidadeEmMantencao(),
                ],
            controller: tabController,
          ),

      bottomNavigationBar:
        menuInferior(menuItems, tabController),

      backgroundColor: Colors.white,
    );
  }

  Widget funcinalidadeEmMantencao(){
    return Container(
        child: Center(
          child: Text("Em Manutenção", style: new TextStyle(color: Colors.red),),
        ),
    );
  }

  Widget dadosDetalheReferenciaTecnica() {
    return Scaffold(
      body:
      Container(child: scroolReferenciaTecnica(), color: Colors.white),
    );
  }

  ListView scroolReferenciaTecnica(){
    return ListView(
      children: <Widget>[
        montarCampo("Cod. Classificação: ", referenciaTecnica.codClassificacao),
        montarCampo("Macro Classe: ", referenciaTecnica.macroClasse),
        montarCampo("Classe: ", referenciaTecnica.classe),
        montarCampo("Tipo: ", referenciaTecnica.tipo),
        montarCampo("Classificação Complementar: ", referenciaTecnica.classificacaoComplementar),
        montarCampo("Instituição: ", referenciaTecnica.instituicao),
        montarCampo("Descrição Básica: ", referenciaTecnica.desccricaoBasica),
        montarCampo("Tipo de Abrangência: ", referenciaTecnica.tipoAbrangencia),
        montarCampo("Unidade de Medida: ", referenciaTecnica.unidadeMedida),
        montarCampo("Unidade de Coleta: ", referenciaTecnica.unidadeColeta),
        montarCampo("Preço Mediano: ", referenciaTecnica.precoMediano),
        montarCampo("Coeficiente: ", referenciaTecnica.coeficiente),
        montarCampo("Origem Custo Preço: ", referenciaTecnica.origemCustoPreco),
        montarCampo("Encargo Social: ", referenciaTecnica.encargoSocial),
        montarCampo("Categoria: ", referenciaTecnica.categoria),
        montarCampo("Data Início Vigência: ", referenciaTecnica.dataInicioVigencia),
        montarCampo("Data Fim Vigência: ", referenciaTecnica.dataFimVigencia),
        montarCampo("Data Última Manutenção: ", referenciaTecnica.dataUltimaManutencao),
        montarCampo("Usuário: ", referenciaTecnica.usuarioCriacao),
        montarCampo("Situação: ", referenciaTecnica.situacao),
        montarCampo("Desccrição Complementar: ", referenciaTecnica.desccricaoComplementar),
        montarCampo("Local Custo Preço: ", referenciaTecnica.localCustoPreco),
        montarCampo("Família: ", referenciaTecnica.familia),
        montarCampo("Disponibilidade: ", referenciaTecnica.disponibilidade),
        montarCampo("Data de Preço: ", referenciaTecnica.dataPreco),
        montarCampo("Tipo Encargo Social: ", referenciaTecnica.tipoEncargoSocial),
        montarCampo("Encargo Complementar: ", referenciaTecnica.encargoComplementar),
      ],
    );
  }

  Widget montarCampo(String rotulo, String valor){
    return Row(
      children: <Widget>[
        Expanded(
            child: Text(rotulo, style: new TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.right, textDirection: TextDirection.ltr,),
            flex: 2
        )
        ,
        Expanded(
          child: Container(padding: EdgeInsets.all(8.0), child:
          Text(valor, style: new TextStyle(color: _azulCaixa), textAlign: TextAlign.left, textDirection: TextDirection.ltr)
          ),
          flex: 3,
        )
        ,
        Padding(padding: new EdgeInsets.all(20.0))
      ],
    );
  }

  Widget menuInferior(List<String> menuItems, TabController tabController){
    return TabBar(
      tabs: [
        Tab(icon: Icon(Icons.details), text: "Detalhes"),
        Tab(icon: Icon(Icons.edit), text: "Editar",),
        Tab(icon: Icon(Icons.add), text: "Encargo Compl."),
        Tab(icon: Icon(Icons.group), text: "Listar Família"),
        Tab(icon: Icon(Icons.playlist_play), text: "Listar Utilizações"),
        Tab(icon: Icon(Icons.insert_drive_file), text: "Arquivos"),
        Tab(icon: Icon(Icons.widgets), text: "Coleta"),
        Tab(icon: Icon(Icons.delete), text: "Excluir"),
      ],
      controller: tabController,
      isScrollable: true,
      labelColor: _azulCaixa,
      unselectedLabelColor: Colors.black26,

    );
  }

}




















/**
class DadosDetalheReferenciaTecnica extends StatefulWidget {

  DadosDetalheReferenciaTecnica({Key key, @required this.referenciaTecnica});
  final ReferenciaTecnica referenciaTecnica;

  @override
  DadosDetalheReferenciaTecnicaState createState() {
    return DadosDetalheReferenciaTecnicaState(referenciaTecnica: referenciaTecnica);
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class DadosDetalheReferenciaTecnicaState extends State<DadosDetalheReferenciaTecnica> {

  DadosDetalheReferenciaTecnicaState(
      {Key key, @required this.referenciaTecnica});

  final ReferenciaTecnica referenciaTecnica;

  final Color _azulCaixa = GlobalConstantesCaixa().azulCaixa();

  Widget montarCampo(String rotulo, String valor){
      return Row(
        children: <Widget>[
          Expanded(
            child: Text(rotulo, style: new TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.right, textDirection: TextDirection.ltr,),
            flex: 2
          )
          ,
          Expanded(
            child: Container(padding: EdgeInsets.all(8.0), child:
            Text(valor, style: new TextStyle(color: _azulCaixa), textAlign: TextAlign.left, textDirection: TextDirection.ltr)
            ),
            flex: 3,
          )
          ,
          Padding(padding: new EdgeInsets.all(20.0))
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
         Container(child: scroolReferenciaTecnica(), color: Colors.white),
    );
  }

  ListView scroolReferenciaTecnica(){
    return ListView(
      children: <Widget>[
        montarCampo("Cod. Classificação: ", referenciaTecnica.codClassificacao),
        montarCampo("Macro Classe: ", referenciaTecnica.macroClasse),
        montarCampo("Classe: ", referenciaTecnica.classe),
        montarCampo("Tipo: ", referenciaTecnica.tipo),
        montarCampo("Classificação Complementar: ", referenciaTecnica.classificacaoComplementar),
        montarCampo("Instituição: ", referenciaTecnica.instituicao),
        montarCampo("Descrição Básica: ", referenciaTecnica.desccricaoBasica),
        montarCampo("Tipo de Abrangência: ", referenciaTecnica.tipoAbrangencia),
        montarCampo("Unidade de Medida: ", referenciaTecnica.unidadeMedida),
        montarCampo("Unidade de Coleta: ", referenciaTecnica.unidadeColeta),
        montarCampo("Preço Mediano: ", referenciaTecnica.precoMediano),
        montarCampo("Coeficiente: ", referenciaTecnica.coeficiente),
        montarCampo("Origem Custo Preço: ", referenciaTecnica.origemCustoPreco),
        montarCampo("Encargo Social: ", referenciaTecnica.encargoSocial),
        montarCampo("Categoria: ", referenciaTecnica.categoria),
        montarCampo("Data Início Vigência: ", referenciaTecnica.dataInicioVigencia),
        montarCampo("Data Fim Vigência: ", referenciaTecnica.dataFimVigencia),
        montarCampo("Data Última Manutenção: ", referenciaTecnica.dataUltimaManutencao),
        montarCampo("Usuário: ", referenciaTecnica.usuarioCriacao),
        montarCampo("Situação: ", referenciaTecnica.situacao),
        montarCampo("Desccrição Complementar: ", referenciaTecnica.desccricaoComplementar),
        montarCampo("Local Custo Preço: ", referenciaTecnica.localCustoPreco),
        montarCampo("Família: ", referenciaTecnica.familia),
        montarCampo("Disponibilidade: ", referenciaTecnica.disponibilidade),
        montarCampo("Data de Preço: ", referenciaTecnica.dataPreco),
        montarCampo("Tipo Encargo Social: ", referenciaTecnica.tipoEncargoSocial),
        montarCampo("Encargo Complementar: ", referenciaTecnica.encargoComplementar),
      ],
    );
  }

}
*/


/*
Cod. Classificação
Macro Classe
Classe
Tipo
Classificação Complementar
Instituição
Tipo de Abrangência
Unidade de Media
Unidade de Coleta
Preço Mediano
Coeficiente
Origem Custo Preço
Encargo Social
Categoria
Data Início Vigência
Data Fim Vigência
Data Última Manutenção
Usuário
Situação
Descrição Básica
Desccrição Complementar
Local Custo Preço
Família
Disponibilidade
Data de Preço
Tipo Encargo Social
Encargo Complementar
*/