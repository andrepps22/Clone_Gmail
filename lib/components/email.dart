class Email {
  String usuario;
  String assunto;
  String preview;
  DateTime data;
  bool favorito;
  bool naoLido;

  Email(
    this.usuario,
    this.assunto,
    this.preview,
    this.data,
    this.favorito,
    this.naoLido,
  );
}
