import 'package:transparencia_camara/models/deputados_model.dart';


//========================================================================//
// Deputado Estadual
//========================================================================//
List<DeputadoEstadual> deputadosEstaduais = [
  DeputadoEstadual(
              nome: "Affonso Candido", 
              cargo: "Deputado Estadual", 
              biografia: '-', 
              imagemPerfil: 'lib/imagens/affonso.jpg', 
              ultimasNoticias: [
                        Noticia.noticiaDefault(),
              ], 
              contatos: Contatos.contatosDefault(),
              ),

        
];




//========================================================================//
// Deputado Federal
//========================================================================//
List<DeputadoFederal> deputadosFederais = [
  DeputadoFederal(
                  nome: 'Cristiane Lopes', 
                  cargo: 'Deputada Federal', 
                  biografia: '-', 
                  imagemPerfil: 'lib/imagens/cristiane_lopes_perfil.jpg', 
                  ultimasNoticias: [
                                    Noticia.noticiaDefault(),
                                    ], 
                  contatos: Contatos.contatosDefault(),
  ),

];