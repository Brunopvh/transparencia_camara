import 'package:flutter/material.dart';
import 'package:transparencia_camara/models/deputados_model.dart';
import 'package:transparencia_camara/screens/page_autores.dart';
import 'package:transparencia_camara/screens/page_proposicoes.dart';
import 'package:get/get.dart';

class PagePerfil extends StatelessWidget {

  Candidato candidato;
  PagePerfil({required this.candidato});

  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            title: Text(this.candidato.nome),
            leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior
              },
            ),
          ),

          body: Stack(
              children: [
                    Positioned.fill(
                      child: Image.asset(
                                'lib/imagens/fundo.jpg',
                                fit: BoxFit.cover,
                              ),
                    ),


                    SingleChildScrollView(
                      padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          // Foto do perfil do candidato.
                          Center(
                            child: CircleAvatar(
                                radius: 80,
                                backgroundImage: AssetImage(candidato.imagemPerfil),
                              ),
                          ),
                          this.getVoidBox(),

                          // Exibição do nome do canditado em texto grande.
                          Center(
                            child: Text(
                              candidato.nome,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          this.getVoidBox(),

                          // Biografia do Canditado.
                          GestureDetector(
                            onTap: () {
                              
                              },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                              decoration: BoxDecoration(
                                        border: Border.all(color: Colors.yellow, width: 2),
                                        borderRadius: BorderRadius.circular(25.0),
                                        color: Colors.transparent,
                                        ),
                              child: Text(
                                      'Biografia',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                      ),
                              ),
                          ),
                          this.getVoidBox(),


                          GestureDetector(
                            onTap: () {
                              
                            },

                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.yellow, width: 2),
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.transparent,
                              ),
                            child: Text(
                                    'Contatos',
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                            ),
                        ),
                    this.getVoidBox(),


                    // Abrir tela de notícias.
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow, width: 2),
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.transparent,
                        ),
                        child: Text(
                                'Últimas Notícias',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                        ),
                      ),
                      this.getVoidBox(),


                    // Tela de proposições do Deputado.
                    GestureDetector(
                      onTap: () {
                        //Get.toNamed('/federais/proposicoes');
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => PageAutores(nome: this.candidato.nome,),
                          ),
                          );
                      },
                      child: Container(
                        padding:EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow, width: 2),
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.transparent,
                        ),
                        child: Text(
                                'Proposições',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
              ],
          ),
    );
  }

  Widget getVoidBox(){
    return SizedBox(height: 6.0,);
  }

}