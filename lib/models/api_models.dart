import 'dart:convert';
import 'dart:io';


//========================================================================//
// EMENTA MODEL
//========================================================================//
class ProposicaoModel {
  String id;
  String uri;
  String siglaTipo;
  String numero;
  String ano;
  String data;
  String codTipo;
  String descricaoTipo;
  String ementa;
  String ementaDetalhada;
  String keywords;
  String dataApresentacao;
  String uriOrgaoNumerador;
  String uriPropAnterior;
  String uriPropPrincipal;
  String uriPropPosterior;
  String urlInteiroTeor;
  String ultimoStatus;

  ProposicaoModel({
    required this.id,
    required this.uri,
    required this.siglaTipo,
    required this.numero,
    required this.ano,
    required this.data,
    required this.codTipo,
    required this.descricaoTipo,
    required this.ementa,
    required this.ementaDetalhada,
    required this.keywords,
    required this.dataApresentacao,
    required this.uriOrgaoNumerador,
    required this.uriPropAnterior,
    required this.uriPropPrincipal,
    required this.uriPropPosterior,
    required this.urlInteiroTeor,
    required this.ultimoStatus,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uri': uri,
      'siglaTipo': siglaTipo,
      'numero': numero,
      'ano': ano,
      'data': data,
      'codTipo': codTipo,
      'descricaoTipo': descricaoTipo,
      'ementa': ementa,
      'ementaDetalhada': ementaDetalhada,
      'keywords': keywords,
      'dataApresentacao': dataApresentacao,
      'uriOrgaoNumerador': uriOrgaoNumerador,
      'uriPropAnterior': uriPropAnterior,
      'uriPropPrincipal': uriPropPrincipal,
      'uriPropPosterior': uriPropPosterior,
      'urlInteiroTeor': urlInteiroTeor,
      'ultimoStatus': ultimoStatus,
    };
  }

  factory ProposicaoModel.fromMap(Map<String, dynamic> map) {
    return ProposicaoModel(
      id: map['id'] as String,
      uri: map['uri'] as String,
      siglaTipo: map['siglaTipo'] as String,
      numero: map['numero'] as String,
      ano: map['ano'] as String,
      data: map['data'] as String,
      codTipo: map['codTipo'] as String,
      descricaoTipo: map['descricaoTipo'] as String,
      ementa: map['ementa'] as String,
      ementaDetalhada: map['ementaDetalhada'] as String,
      keywords: map['keywords'] as String,
      dataApresentacao: map['dataApresentacao'] as String,
      uriOrgaoNumerador: map['uriOrgaoNumerador'] as String,
      uriPropAnterior: map['uriPropAnterior'] as String,
      uriPropPrincipal: map['uriPropPrincipal'] as String,
      uriPropPosterior: map['uriPropPosterior'] as String,
      urlInteiroTeor: map['urlInteiroTeor'] as String,
      ultimoStatus: map['ultimoStatus'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProposicaoModel.fromJson(String source) => ProposicaoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

//========================================================================//
// AUTORE MODEL
//========================================================================//
class AutorModel {
  
  String nomeAutor;
  String idProposicao;
  String uriAutor;
  String uriProposicao;
  String idDeputadoAutor;
  String codTipoAutor;
  String tipoAutor;
  String siglaPartidoAutor;
  String siglaUFAutor;
  AutorModel({
    required this.nomeAutor,
    required this.idProposicao,
    required this.uriAutor,
    required this.uriProposicao,
    required this.idDeputadoAutor,
    required this.codTipoAutor,
    required this.tipoAutor,
    required this.siglaPartidoAutor,
    required this.siglaUFAutor,
  });
  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nomeAutor': nomeAutor,
      'idProposicao': idProposicao,
      'uriAutor': uriAutor,
      'uriProposicao': uriProposicao,
      'idDeputadoAutor': idDeputadoAutor,
      'codTipoAutor': codTipoAutor,
      'tipoAutor': tipoAutor,
      'siglaPartidoAutor': siglaPartidoAutor,
      'siglaUFAutor': siglaUFAutor,
    };
  }

  factory AutorModel.fromMap(Map<String, dynamic> map) {
    return AutorModel(
      nomeAutor: map['nomeAutor'] as String,
      idProposicao: map['idProposicao'] as String,
      uriAutor: map['uriAutor'] as String,
      uriProposicao: map['uriProposicao'] as String,
      idDeputadoAutor: map['idDeputadoAutor'] as String,
      codTipoAutor: map['codTipoAutor'] as String,
      tipoAutor: map['tipoAutor'] as String,
      siglaPartidoAutor: map['siglaPartidoAutor'] as String,
      siglaUFAutor: map['siglaUFAutor'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AutorModel.fromJson(String source) => AutorModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
