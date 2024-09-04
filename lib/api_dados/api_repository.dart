import 'dart:convert';
import 'package:transparencia_camara/api_dados/api_interface.dart';
import 'package:transparencia_camara/models/api_models.dart';
import 'package:http/http.dart' as http;

String urlProposicoes = 'https://dadosabertos.camara.leg.br/arquivos/proposicoesTemas/json/proposicoesTemas-2024.json';
String urlAutores = 'https://dadosabertos.camara.leg.br/arquivos/proposicoesAutores/json/proposicoesAutores-2024.json';

//========================================================================//
// Implementar proposição - obter uma lista de objetos 
//========================================================================//
class ProposicoesRepository implements IPropocicaoRepository {

  @override
  Future<List<ProposicaoModel>> findAllProposicoes() async {
    final responseEmenta = await http.get(Uri.parse(urlProposicoes));
    final Map<String, dynamic> responseMap = jsonDecode(responseEmenta.body);

    List<Map<String, dynamic>> ementasList = responseMap['dados'];
    int max = ementasList.length;
    List<ProposicaoModel> ementas = [];
    for(int i=0; i<max; i++){
      ementas.add(
        ProposicaoModel.fromMap(ementasList[i])
      );
    }

    return ementas;
  }
}


//========================================================================//
// Implementar autores
//========================================================================//
class AutoresRepsitory implements IAutorRepository {
  
  @override
  Future<List<AutorModel>> findAllAutores() async {
    List<AutorModel> autores = [];

    final responseAutores = await http.get(Uri.parse(urlAutores));
    final Map<String, dynamic> responseAutoresMap = jsonDecode(responseAutores.body);
    List<Map<String, dynamic>> autoresList = responseAutoresMap['dados'];
    int maxNum = autoresList.length;

    for(int i=0; i<maxNum; i++){
      autores.add(
        AutorModel.fromMap(autoresList[i])
      );
    }

    return autores;
  }
}