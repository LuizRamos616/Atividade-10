class NoticiaModel {
  final int id;
  final String titulo;
  final String resumo;
  final String conteudoCompleto;
  final String autor;
  final String urlImagem;

  NoticiaModel({
    required this.id,
    required this.titulo,
    required this.resumo,
    required this.conteudoCompleto,
    required this.autor,
    required this.urlImagem,
  });

  factory NoticiaModel.fromJson(Map<String, dynamic> json) {
    int idNoticia = json['id'] ?? 0;
    String corpo = json['body'] ?? 'Sem conteúdo disponível.';
    
    return NoticiaModel(
      id: idNoticia,
      titulo: json['title'] ?? 'Sem título',
      resumo: corpo.length > 40 ? corpo.substring(0, 40) : corpo,
      conteudoCompleto: corpo,
      autor: 'Autor ID ${json['userId']?.toString() ?? '1'}',
      urlImagem: 'https://picsum.photos/seed/$idNoticia/600/300',
    );
  }
}