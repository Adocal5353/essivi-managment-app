class Detail_com {
  final int id_com;
  final int id_produit;
  final int qte;
  final double prix;

  const Detail_com(this.id_com, this.id_produit, this.qte, this.prix);

  factory Detail_com.fromJson(Map<String, dynamic> json) {
    return Detail_com(
        json['id_com'], json['id_produit'], json['qte'], json['prix']);
  }
}
