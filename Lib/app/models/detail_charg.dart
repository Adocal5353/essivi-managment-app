// this is the model of a detail of a chargement

// ignore: camel_case_types
class Detail_charg {
  final int id_chargement;
  final int id_produit;
  final int qte;
  final double prix;

  const Detail_charg(this.id_chargement, this.id_produit, this.qte, this.prix);

  factory Detail_charg.fromJson(Map<String, dynamic> json) {
    return Detail_charg(
        json['id_chargement'], json['id_produit'], json['qte'], json['prix']);
  }
}
