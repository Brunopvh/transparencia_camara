
import 'package:transparencia_camara/models/api_models.dart';

// Proposição / Ementas.
abstract class IPropocicaoRepository {

  Future<List<ProposicaoModel>> findAllProposicoes();
  List<ProposicaoModel> getProposicoesIds({required List<String> ids});
}


// Autor
abstract class IAutorRepository {

  Future<List<AutorModel>> findAllAutores();
  List<String> getAutorIds({required String nome});
}