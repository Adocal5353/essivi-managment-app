//this is the model of a vente done by a client

class Vente {
  final int id;
  final DateTime date_vente;
  final int? chargement_id;
  final int? client_id;
  final int? commande_id;

  const Vente(this.id, this.date_vente, this.chargement_id, this.client_id,
      this.commande_id);

  factory Vente.fromJson(Map<String, dynamic> json) {
    return Vente(json['id'], json['date_vente'], json['chargement_id'],
        json['client_id'], json['commande_id']);
  }
}
