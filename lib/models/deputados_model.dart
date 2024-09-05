// ignore_for_file: public_member_api_docs, sort_constructors_first

class Noticia {
  final String titulo;
  final String descricao;
  final String imagem;

  Noticia({
    required this.titulo,
    required this.descricao,
    required this.imagem,
  });

  factory Noticia.noticiaDefault(){
    return Noticia(
              titulo: '-', 
              descricao: '-', 
              imagem: 'lib/imagens/bandeira_ro.png'
              );
  }

}

class Contatos {
  String email;
  String telefone;
  String urlYoutube;
  String urlInstagram;
  String urlFacebook;

  Contatos({
    required this.email,
    required this.telefone,
    required this.urlYoutube,
    required this.urlInstagram,
    required this.urlFacebook,
  });

  factory Contatos.contatosDefault() {
    return Contatos(
            email: '-', 
            telefone: '-', 
            urlYoutube: 'https://www.youtube.com', 
            urlInstagram: 'https://www.instagram.com', 
            urlFacebook: 'https://www.facebook.com/?locale=pt_BR',
            );
  }
}


class Candidato {
  final String nome;
  final String cargo;
  final String biografia;
  final String imagemPerfil;
  final List<Noticia> ultimasNoticias;  // Alterado para lista de notícias
  final Contatos contatos;

  Candidato({
    required this.nome,
    required this.cargo,
    required this.biografia,
    required this.imagemPerfil,
    required this.ultimasNoticias,
    required this.contatos,
  });


  Candidato candidatoDefault(){
    return Candidato(
                nome: '-', 
                cargo: 'Deputado', 
                biografia: '-', 
                imagemPerfil: 'lib/imagens/bandeira_ro.png', 
                ultimasNoticias: [Noticia.noticiaDefault()],
                contatos: Contatos.contatosDefault(),
                );
  }

}

//========================================================================//
// Deputado Estadual
//========================================================================//

class DeputadoEstadual extends Candidato {
  DeputadoEstadual({required super.nome, required super.cargo, required super.biografia, required super.imagemPerfil, required super.ultimasNoticias, required super.contatos});

}


//========================================================================//
// Deputado Federal
//========================================================================//
class DeputadoFederal extends Candidato {
  DeputadoFederal({required super.nome, required super.cargo, required super.biografia, required super.imagemPerfil, required super.ultimasNoticias, required super.contatos});

}
