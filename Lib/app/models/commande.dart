// this class is the model of the command of a client

class Chargement {
  final int id;
  final DateTime date;
  final int user_id;

  const Chargement(this.date, this.id, this.user_id);

  factory Chargement.fromJson(Map<String, dynamic> json) {
    return Chargement(json['date'], json['id'], json['user_id']);
  }
}
