import 'package:get/get.dart';
import 'package:transparencia_camara/api_dados/api_controller.dart';
import 'package:transparencia_camara/api_dados/api_interface.dart';
import 'package:transparencia_camara/api_dados/api_repository.dart';

class ApiBindings implements Bindings {

  @override
  void dependencies(){
    Get.put<IPropocicaoRepository>(ProposicoesRepository());
    Get.put<IAutorRepository>(AutoresRepsitory());
    
    Get.put(ProposicoesController(Get.find()));
    Get.put(AutoresController(Get.find()));

    Get.put(ProposicoesFiltroController(Get.find()));
    Get.put(AutoresFiltroController(Get.find()));
  }
}