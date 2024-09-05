import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparencia_camara/api_dados/api_controller.dart';
import 'package:transparencia_camara/models/api_models.dart';

class PageProposicoes extends GetView<ProposicoesController> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
            appBar: AppBar(title: Text('Testando Getx'),),
            body: controller.obx((state){
                return ListView.builder(
                      itemCount: state.length,
                      itemBuilder: (_, index){
                        ProposicaoModel item = state[index];
                        return ListTile(
                                title: Text(item.ementa),
                                subtitle: Text(item.siglaTipo),
                        );
                      }

                      );
            }, onError: (error) {
              return SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text(error!),

                        ],
                      ),
              );
            }

            ),   
    );
  }
}
