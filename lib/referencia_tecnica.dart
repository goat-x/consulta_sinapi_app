//import 'package:flutter/material.dart';

class ReferenciaTecnica {

  ReferenciaTecnica(
      this.codigo,
      this.codClassificacao,
      this.macroClasse,
      this.classe,
      this.tipo,
      this.descricaoBasica,
      this.vinculo,
      this.classificacao,
      this.classificacaoComplementar,
      this.instituicao,
      this.tipoAbrangencia,
      this.unidadeMedida,
      this.unidadeColeta,
      this.precoMediano,
      this.coeficiente,
      this.origemCustoPreco,
      this.encargoSocial,
      this.categoria,
      this.dataInicioVigencia,
      this.dataFimVigencia,
      this.dataUltimaManutencao,
      this.usuarioCriacao,
      this.situacao,
      this.desccricaoBasica,
      this.desccricaoComplementar,
      this.localCustoPreco,
      this.familia,
      this.disponibilidade,
      this.dataPreco,
      this.tipoEncargoSocial,
      this.encargoComplementar
  );

  String codigo;
  String codClassificacao;
  String macroClasse;
  String classe;
  String tipo;
  String descricaoBasica;
  String vinculo;
  String classificacao;
  String classificacaoComplementar;
  String instituicao;
  String tipoAbrangencia;
  String unidadeMedida;
  String unidadeColeta;
  String precoMediano;
  String coeficiente;
  String origemCustoPreco;
  String encargoSocial;
  String categoria;
  String dataInicioVigencia;
  String dataFimVigencia;
  String dataUltimaManutencao;
  String usuarioCriacao;
  String situacao;
  String desccricaoBasica;
  String desccricaoComplementar;
  String localCustoPreco;
  String familia;
  String disponibilidade;
  String dataPreco;
  String tipoEncargoSocial;
  String encargoComplementar;

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

  bool selected = false;
}

class ReferenciaTecnicaList {
  final List<ReferenciaTecnica> _listaRF = <ReferenciaTecnica>[
    new ReferenciaTecnica('11.11.001.00010115','11.11.001.00010111','11 - EQUIPAMENTO (AQUISIÇÃO)','11 - CAMINHÕES','001 - CAMINHÕES TOCOS E TRUCADOS','Nac Rep Normal','vinculo','N/A','N/A','CAIXA REFERNCIAL','Nacional','Kg - Kilograma','Kg - Kilograma','R 667.080,43','N/A','Atribuido São Paulo','N/A','Representativo','25/06/2018','25/06/2018','25/06/2018','F759705','Ativo','Nac Rep Normal','Normal','RIO DE JANEIRO','Nac 1','A - 25/08/2018','07/2018','R 0,00','N/A'),
    new ReferenciaTecnica('22.22.001.00010115','22.22.001.00010112','11 - EQUIPAMENTO (AQUISIÇÃO)','11 - CAMINHÕES','001 - CAMINHÕES TOCOS E TRUCADOS','PREGO A50','vinculo','N/A','N/A','CAIXA REFERNCIAL','Nacional','Kg - Kilograma','Kg - Kilograma','R 667.080,43','N/A','Atribuido São Paulo','N/A','Representativo','25/06/2018','25/06/2018','25/06/2018','F759705','Ativo','PREGO A50','Normal','RIO DE JANEIRO','Nac 1','A - 25/08/2018','07/2018','R 0,00','N/A'),
    new ReferenciaTecnica('33.33.001.00010115','33.33.001.00010113','11 - EQUIPAMENTO (AQUISIÇÃO)','11 - CAMINHÕES','001 - CAMINHÕES TOCOS E TRUCADOS','TIJOLO 25','vinculo','N/A','N/A','CAIXA REFERNCIAL','Nacional','Kg - Kilograma','Kg - Kilograma','R 667.080,43','N/A','Atribuido São Paulo','N/A','Representativo','25/06/2018','25/06/2018','25/06/2018','F759705','Ativo','TIJOLO 25','Normal','RIO DE JANEIRO','Nac 1','A - 25/08/2018','07/2018','R 0,00','N/A'),
    new ReferenciaTecnica('44.44.001.00010115','44.44.001.00010114','11 - EQUIPAMENTO (AQUISIÇÃO)','11 - CAMINHÕES','001 - CAMINHÕES TOCOS E TRUCADOS','TIJOLO 30','vinculo','N/A','N/A','CAIXA REFERNCIAL','Nacional','Kg - Kilograma','Kg - Kilograma','R 667.080,43','N/A','Atribuido São Paulo','N/A','Representativo','25/06/2018','25/06/2018','25/06/2018','F759705','Ativo','TIJOLO 30','Normal','RIO DE JANEIRO','Nac 1','A - 25/08/2018','07/2018','R 0,00','N/A'),
    new ReferenciaTecnica('55.55.001.00010115','55.55.001.00010115','11 - EQUIPAMENTO (AQUISIÇÃO)','11 - CAMINHÕES','001 - CAMINHÕES TOCOS E TRUCADOS','CIMENTO 25','vinculo','N/A','N/A','CAIXA REFERNCIAL','Nacional','Kg - Kilograma','Kg - Kilograma','R 667.080,43','N/A','Atribuido São Paulo','N/A','Representativo','25/06/2018','25/06/2018','25/06/2018','F759705','Ativo','CIMENTO 25','Normal','RIO DE JANEIRO','Nac 1','A - 25/08/2018','07/2018','R 0,00','N/A'),
//    new ReferenciaTecnica('codigo', 'codClassificacao', 'macroClasse', 'classe', 'tipo', 'descricaoBasica', this.vinculo,
//     'classificacao', 'classificacaoComplementar','instituicao','tipoAbrangencia','unidadeMedida',
//      this.unidadeColeta,
//      this.precoMediano,
//      this.coeficiente,
//      this.origemCustoPreco,
//      this.encargoSocial,
//      this.categoria,
//      this.dataInicioVigencia,
//      this.dataFimVigencia,
//      this.dataUltimaManutencao,
//      this.usuarioCriacao,
//      this.situacao,
//      this.desccricaoBasica,
//      this.desccricaoComplementar,
//      this.localCustoPreco,
//      this.familia,
//      this.disponibilidade,
//      this.dataPreco,
//      this.tipoEncargoSocial,
//      this.encargoComplementar
//      );
  ];

  List<ReferenciaTecnica> lista(){
    return _listaRF;
  }
}

/**
class ReferenciaTecnicaDataSource extends DataTableSource {

  ReferenciaTecnicaDataSource(@required BuildContext context);
  BuildContext context;

  final List<ReferenciaTecnica> _listaRF = new ReferenciaTecnicaList()._listaRF;

  @override
  DataRow getRow(int index) {

    assert(index >= 0);
    if (index >= _listaRF.length)
      return null;

    final ReferenciaTecnica _rf = _listaRF[index];
    return new DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        new DataCell(Text(_rf.codigo), onTap: (){ abrirOcorrencia(context, _rf);}),
        new DataCell(Text(_rf.desccricaoBasica),onTap: (){ abrirOcorrencia(context, _rf);}),
      ]
    );
  }

  @override
  int get rowCount => _listaRF.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;

  void abrirOcorrencia(BuildContext context, ReferenciaTecnica _rf){
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetalheReferenciaTecnica(referenciaTecnica: _rf),
        )
    );
  }
}

*/