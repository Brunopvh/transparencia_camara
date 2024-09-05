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



class AutoresController extends GetxController {
  final IAutorRepository _autorRepository;

  AutoresController(this._autorRepository); 
}