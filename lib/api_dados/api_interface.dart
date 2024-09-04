
import 'package:transparencia_camara/models/api_models.dart';

// Proposição / Ementas.
abstract class IPropocicaoRepository {

  Future<List<ProposicaoModel>> findAllProposicoes();
}


// Autor
abstract class IAutorRepository {

  Future<List<AutorModel>> findAllAutores();
}