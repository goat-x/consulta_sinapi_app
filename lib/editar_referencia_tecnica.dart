import 'package:flutter/material.dart';
import 'globals.dart';
import 'referencia_tecnica.dart';

class EditarReferenciaTecnica extends StatefulWidget {

  EditarReferenciaTecnica({Key key, @required ReferenciaTecnica this.referenciaTecnica});

  final ReferenciaTecnica referenciaTecnica;
  @override
  EditarReferenciaTecnicaState createState() {
    return EditarReferenciaTecnicaState(referenciaTecnica: referenciaTecnica);
  }
}

class EditarReferenciaTecnicaState extends State<EditarReferenciaTecnica> with TickerProviderStateMixin{

  EditarReferenciaTecnicaState({Key key, @required ReferenciaTecnica this.referenciaTecnica});

  final ReferenciaTecnica referenciaTecnica;

  final Color _azulCaixa = GlobalConstantesCaixa().azulCaixa();

  final codClassificacaoCtrl = TextEditingController();
  final macroClasseCtrl = TextEditingController();
  final classeCtrl = TextEditingController();
  final tipoCtrl = TextEditingController();
  final classificacaoComplementarCtrl = TextEditingController();
  final instituicaoCtrl = TextEditingController();
  final desccricaoBasicaCtrl = TextEditingController();
  final tipoAbrangenciaCtrl = TextEditingController();
  final unidadeMedidaCtrl = TextEditingController();
  final unidadeColetaCtrl = TextEditingController();
  final precoMedianoCtrl = TextEditingController();
  final coeficienteCtrl = TextEditingController();
  final origemCustoPrecoCtrl = TextEditingController();
  final encargoSocialCtrl = TextEditingController();
  final categoriaCtrl = TextEditingController();
  final dataInicioVigenciaCtrl = TextEditingController();
  final dataFimVigenciaCtrl = TextEditingController();
  final dataUltimaManutencaoCtrl = TextEditingController();
  final usuarioCriacaoCtrl = TextEditingController();
  final situacaoCtrl = TextEditingController();
  final desccricaoComplementarCtrl = TextEditingController();
  final localCustoPrecoCtrl = TextEditingController();
  final familiaCtrl = TextEditingController();
  final disponibilidadeCtrl = TextEditingController();
  final dataPrecoCtrl = TextEditingController();
  final tipoEncargoSocialCtrl = TextEditingController();
  final encargoComplementarCtrl = TextEditingController();


  @override
  void initState() {
    super.initState();
    codClassificacaoCtrl.text = referenciaTecnica.codClassificacao;
    macroClasseCtrl.text = referenciaTecnica.macroClasse;
    classeCtrl.text = referenciaTecnica.classe;
    tipoCtrl.text = referenciaTecnica.tipo;
    classificacaoComplementarCtrl.text = referenciaTecnica.classificacaoComplementar;
    instituicaoCtrl.text = referenciaTecnica.instituicao;
    desccricaoBasicaCtrl.text = referenciaTecnica.desccricaoBasica;
    tipoAbrangenciaCtrl.text = referenciaTecnica.tipoAbrangencia;
    unidadeMedidaCtrl.text = referenciaTecnica.unidadeMedida;
    unidadeColetaCtrl.text = referenciaTecnica.unidadeColeta;
    precoMedianoCtrl.text = referenciaTecnica.precoMediano;
    coeficienteCtrl.text = referenciaTecnica.coeficiente;
    origemCustoPrecoCtrl.text = referenciaTecnica.origemCustoPreco;
    encargoSocialCtrl.text = referenciaTecnica.encargoSocial;
    categoriaCtrl.text = referenciaTecnica.categoria;
    dataInicioVigenciaCtrl.text = referenciaTecnica.dataInicioVigencia;
    dataFimVigenciaCtrl.text = referenciaTecnica.dataFimVigencia;
    dataUltimaManutencaoCtrl.text = referenciaTecnica.dataUltimaManutencao;
    usuarioCriacaoCtrl.text = referenciaTecnica.usuarioCriacao;
    situacaoCtrl.text = referenciaTecnica.situacao;
    desccricaoComplementarCtrl.text = referenciaTecnica.desccricaoComplementar;
    localCustoPrecoCtrl.text = referenciaTecnica.localCustoPreco;
    familiaCtrl.text = referenciaTecnica.familia;
    disponibilidadeCtrl.text = referenciaTecnica.disponibilidade;
    dataPrecoCtrl.text = referenciaTecnica.dataPreco;
    tipoEncargoSocialCtrl.text = referenciaTecnica.tipoEncargoSocial;
    encargoComplementarCtrl.text = referenciaTecnica.encargoComplementar;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
          Scaffold(
            body:
              Container(
                child: fieldsReferenciaTecnica(),
                color: Colors.white,
              )
          )
    );
  }

  Widget montarCampo(String rotulo, TextEditingController textCrl){
    return Row(
      children: <Widget>[
        Expanded(
            child: Text(rotulo, style: new TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.right, textDirection: TextDirection.ltr,),
            flex: 2
        )
        ,
        Expanded(
          child:
            Container(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: textCrl,
                  style: TextStyle(color: _azulCaixa),
                )
            ),
          flex: 3,
        )
        ,
        Padding(padding: new EdgeInsets.all(20.0))
      ],
    );
  }

  ListView fieldsReferenciaTecnica(){

    Color azulCaixa = GlobalConstantesCaixa().azulCaixa();

    return ListView(
      children: <Widget>[
        montarCampo("Cod. Classificação: ", codClassificacaoCtrl),
        montarCampo("Macro Classe: ", macroClasseCtrl),
        montarCampo("Classe: ", classeCtrl),
        montarCampo("Tipo: ", tipoCtrl),
        montarCampo("Classificação Complementar: ", classificacaoComplementarCtrl),
        montarCampo("Instituição: ", instituicaoCtrl),
        montarCampo("Descrição Básica: ", desccricaoBasicaCtrl),
        montarCampo("Tipo de Abrangência: ", tipoAbrangenciaCtrl),
        montarCampo("Unidade de Medida: ", unidadeMedidaCtrl),
        montarCampo("Unidade de Coleta: ", unidadeColetaCtrl),
        montarCampo("Preço Mediano: ", precoMedianoCtrl),
        montarCampo("Coeficiente: ", coeficienteCtrl),
        montarCampo("Origem Custo Preço: ", origemCustoPrecoCtrl),
        montarCampo("Encargo Social: ", encargoSocialCtrl),
        montarCampo("Categoria: ", categoriaCtrl),
        montarCampo("Data Início Vigência: ", dataInicioVigenciaCtrl),
        montarCampo("Data Fim Vigência: ", dataFimVigenciaCtrl),
        montarCampo("Data Última Manutenção: ", dataUltimaManutencaoCtrl),
        montarCampo("Usuário: ", usuarioCriacaoCtrl),
        montarCampo("Situação: ", situacaoCtrl),
        montarCampo("Desccrição Complementar: ", desccricaoComplementarCtrl),
        montarCampo("Local Custo Preço: ", localCustoPrecoCtrl),
        montarCampo("Família: ", familiaCtrl),
        montarCampo("Disponibilidade: ", disponibilidadeCtrl),
        montarCampo("Data de Preço: ", dataPrecoCtrl),
        montarCampo("Tipo Encargo Social: ", tipoEncargoSocialCtrl),
        montarCampo("Encargo Complementar: ", encargoComplementarCtrl),
        Divider(),
        Center(child:
          RaisedButton.icon(
            icon: const Icon(Icons.save, size: 18.0, color: Colors.white,),
            label: const Text('Salvar',style: TextStyle(color: Colors.white),),
            color: azulCaixa,
            onPressed: (){},
          ))
      ],
    );
  }

}