//this class is the model of the product

class Produit {
  final int id;
  final String reference;
  final String description;
  final double prix_unit;
  final int qte_dispo;

  const Produit(this.id, this.description, this.prix_unit, this.qte_dispo,
      this.reference);

  factory Produit.fromJson(Map<String, dynamic> json) {
    return Produit(json['id'], json['description'], json['prix_unit'],
        json['qte_dispo'], json['reference']);
  }
}
