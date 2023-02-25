// this class is the model of a client

class Client {
  final int id;
  final int name;
  final double long;
  final double lat;

  const Client(this.id, this.name, this.long, this.lat);

  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(json['id'], json['name'], json['long'], json['lat']);
  }
}
