import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparencia_camara/models/deputados_model.dart';
import 'package:transparencia_camara/models/deputados_nomes.dart';
import 'package:transparencia_camara/screens/page_perfil.dart';


class PageDeputadosFederais extends StatelessWidget {

  List<DeputadoFederal> deputadosFederaisList = deputadosFederais;

  @override
  Widget build(BuildContext context){
    return Scaffold(
            appBar: AppBar(
                title: Text('Deputados Federais de Rondônia'),
            ),
            body: ListView.builder(
                    itemCount: this.deputadosFederaisList.length, 
                    itemBuilder: (context, index){
                        DeputadoFederal deputado = this.deputadosFederaisList[index];
                        return ListTile(
                              title: Text(deputado.nome),
                              subtitle: Text("${deputado.cargo} | E-Mail: ${deputado.contatos.email}"),
                              onTap: (){
                                // Abrir página do perfil
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PagePerfil(candidato: deputado),),
                                );
                              },
                        );
                        }
                                    
                  ),
                              
          );
    
  }
}

