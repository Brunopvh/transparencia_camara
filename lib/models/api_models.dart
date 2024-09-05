// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

//========================================================================//
// EMENTA MODEL
//========================================================================//
class ProposicaoModel {
  String id;
  String ano;
  String uri;
  String dataApresentacao;
  String siglaTipo;
  String descricaoTipo;
  String ementa;
  
  ProposicaoModel({
    required this.id,
    required this.ano,
    required this.uri,
    required this.dataApresentacao,
    required this.siglaTipo,
    required this.descricaoTipo,
    required this.ementa,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ano': ano,
      'uri': uri,
      'data': dataApresentacao,
      'siglaTipo': siglaTipo,
      'descricaoTipo': descricaoTipo,
      'ementa': ementa,
    };
  }

  factory ProposicaoModel.fromMap(Map<String, dynamic> map) {
    return ProposicaoModel(
      id: map['id'].toString(),
      ano: map['ano'].toString(),
      uri: map['uri'].toString(),
      dataApresentacao: map['dataApresentacao'].toString(),
      siglaTipo: map['siglaTipo'] as String,
      descricaoTipo: map['descricaoTipo'] as String,
      ementa: map['ementa'] as String,
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
