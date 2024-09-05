import 'package:flutter/material.dart';
import 'package:transparencia_camara/models/deputados_model.dart';
import 'package:transparencia_camara/models/deputados_nomes.dart';

class PageDeputadosEstaduais extends StatelessWidget {
  List<DeputadoEstadual> deputadosEstaduaisList = deputadosEstaduais; 

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Deputados Estaduais'),
      ),
      body: ListView.builder(
        itemCount: this.deputadosEstaduaisList.length,
        itemBuilder: (context, index) {
          DeputadoEstadual deputado = this.deputadosEstaduaisList[index];
          return ListTile(
            title: Text(deputado.nome),
            subtitle: Text('${deputado.cargo} - ${deputado.contatos.email}'),
            onTap: () {
              /*
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      //CandidatoDetalhesScreen(candidato: candidato),
                      
                ),
              );
              */
            },
          );
        },
      ),
    );
  }
}