import 'package:flutter/material.dart';
import 'package:get/get.dart';



class PageDeputadosFederais extends StatelessWidget {


  @override
  Widget build(BuildContext context){
    return Scaffold(
            appBar: AppBar(
                title: Text('Deputados Federais de Rondônia'),
            ),
            body: Container(
                    child: Column(
                              children: [
                                TextButton(
                                          onPressed: (){
                                            Get.toNamed('/federais/proposicoes');
                                          }, 
                                          child: Text('Ver Proposições'))
                              ],
                    ),
                  ),
    );
  }
}

