import 'dart:convert';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:transparencia_camara/api_dados/api_interface.dart';
import 'package:transparencia_camara/models/api_models.dart';
import 'package:http/http.dart' as http;

String urlTemas = 'https://dadosabertos.camara.leg.br/arquivos/proposicoesTemas/json/proposicoesTemas-2024.json';
String urlProposicoes = 'https://dadosabertos.camara.leg.br/arquivos/proposicoes/json/proposicoes-2024.json';
String urlAutores = 'https://dadosabertos.camara.leg.br/arquivos/proposicoesAutores/json/proposicoesAutores-2024.json';

//========================================================================//
// Implementar proposição - obter uma lista de objetos 
// CORRIGIR ERRO
//========================================================================//
class ProposicoesRepository implements IPropocicaoRepository {

  @override
  Future<List<ProposicaoModel>> findAllProposicoes() async {
    // Baixar as informações
    var response = http.get(Uri.parse(urlProposicoes));
    var responseEmenta = await response;
    Map<String, dynamic> responseMap = jsonDecode(responseEmenta.body);
    List<ProposicaoModel> ementas = [];
    List<dynamic> ementasList = responseMap['dados'];
    
    // Converter os dados da lista em Models.
    ementasList.forEach((element) {
      ementas.add(ProposicaoModel.fromMap(element));
    },
    );

    return ementas;
  }

  List<ProposicaoModel> getProposicoesIds({required List<String> ids}){
    List<ProposicaoModel> filtroProposicoes = [];

    int maxIds = ids.length;
    this.findAllProposicoes().then((value) {
        // Percorrer por todas as proposições
        value.forEach((element) {
          // Verificar se a proposição atual tem um ID correspondênte na lista.
          for(int i=0; i<maxIds; i++){
            if(ids[i].toString() == element.id){
              filtroProposicoes.add(element);
            }
          }

        },);
      },
    );

    return filtroProposicoes;
  }
}


//========================================================================//
// Implementar autores
//========================================================================//
class AutoresRepsitory implements IAutorRepository {
  
  @override
  Future<List<AutorModel>> findAllAutores() async {
    List<AutorModel> autores = [];

    var response = http.get(Uri.parse(urlAutores));
    var responseAutores = await response;
    final Map<String, dynamic> responseAutoresMap = jsonDecode(responseAutores.body);
    List<dynamic> autoresList = responseAutoresMap['dados'];
    
    // Converter os dados da lista em Models.
    autoresList.forEach((element) {
      autores.add(AutorModel.fromMap(element));
    },
    );

    return autores;
  }

  List<String> getAutorIds({required String nome}){
    List<String> idsAutor = [];

    this.findAllAutores().then((value) {
          value.forEach((element) {
              // Filtrar todos os IDS por nome do autor
              if(element.nomeAutor == nome){
                idsAutor.add(element.idProposicao.toString());
              }
            },
        );
        },
    );

    return idsAutor;
  }
}