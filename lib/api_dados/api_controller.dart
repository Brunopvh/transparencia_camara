import 'package:get/get.dart';
import 'package:transparencia_camara/api_dados/api_interface.dart';
import 'package:transparencia_camara/api_dados/api_repository.dart';
import 'package:transparencia_camara/models/api_models.dart';


class ProposicoesController extends GetxController with StateMixin {
  final IPropocicaoRepository _proposicaoRepository;

  ProposicoesController(this._proposicaoRepository);

  @override
  void onInit(){
    super.onInit();
    findProposicoes();
  }

  Future<void> findProposicoes() async {
    change([], status: RxStatus.loading());

    try {
      var dados = await this._proposicaoRepository.findAllProposicoes();
      print(dados.first);
      change(dados, status: RxStatus.success());
    } catch (e){
      print(e);
      change([], status: RxStatus.error('Erro ao se conectar a API - [ ${e} ]'));
    }
  }
  
}



class AutoresController extends GetxController with StateMixin {
  final IAutorRepository _autorRepository;

  AutoresController(this._autorRepository); 

  @override
  void onInit(){
    super.onInit();
    findAutores();
  }

  Future<void> findAutores() async {
    change([], status: RxStatus.loading());

    try {
      var dados = await this._autorRepository.findAllAutores();
      change(dados, status: RxStatus.success());
    } catch (e){
      print(e);
      change([], status: RxStatus.error('Erro ao verificar os Autores - [ ${e} ]'));
    }
  }
}

//====================================================================================//



class ProposicoesFiltroController extends GetxController with StateMixin {
  final IPropocicaoRepository _proposicoesFiltro;
  List<String> ids = [];
  ProposicoesFiltroController(this._proposicoesFiltro);

  @override
  void onInit(){
    super.onInit();
    findProposicoesFiltro(this.ids);
  }

  Future<void> findProposicoesFiltro(List<String> ids) async {
    change([], status: RxStatus.loading());

    try {
      var dados = await this._proposicoesFiltro.getProposicoesIds(ids: ids);
      
      change(dados, status: RxStatus.success());
    } catch (e){
      print(e);
      change([], status: RxStatus.error('Erro ao tentar filtrar proposições - [ ${e} ]'));
    }
  }
  
}



class AutoresFiltroController extends GetxController with StateMixin {
  final IAutorRepository _autorRepository;
  var nome;
  AutoresFiltroController(this._autorRepository); 

  @override
  void onInit(){
    super.onInit();
    findIds();
  }

  Future<void> findIds() async {
    change([], status: RxStatus.loading());

    try {
      var dados = await this._autorRepository.getAutorIds(nome: this.nome);
      change(dados, status: RxStatus.success());
    } catch (e){
      print(e);
      change([], status: RxStatus.error('Erro ao filtrar os IDS dos Autores - [ ${e} ]'));
    }
  }
}