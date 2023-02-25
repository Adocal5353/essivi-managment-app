class Detail_vente {
  final int id_vente;
  final int id_produit;
  final int qte;
  final double prix;

  const Detail_vente(this.id_vente, this.id_produit, this.qte, this.prix);

  factory Detail_vente.fromJson(Map<String, dynamic> json) {
    return Detail_vente(
        json['id_vente'], json['id_produit'], json['qte'], json['prix']);
  }
}
