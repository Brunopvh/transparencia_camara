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
                        /*
                        return ListTile(
                                title: Text("${item.ementa}"),
                                subtitle: Text(item.siglaTipo),

                        );
                        */
                        return Card(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget> [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Data - ${item.dataApresentacao.toString()}',
                                              style: TextStyle(fontSize: 14)
                                              ),
                                          ),


                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'ID - ${item.id.toString()}',
                                              style: TextStyle(fontSize: 16)
                                              ),
                                          ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Descrição - ${item.descricaoTipo}',
                                              style: TextStyle(fontSize: 17)
                                              ),
                                          ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Ementa - ${item.ementa.toString()}',
                                              style: TextStyle(fontSize: 20)
                                              ),
                                          ),

                                        ]
                            ),
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
