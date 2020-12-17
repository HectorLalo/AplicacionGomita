/*
  {
        "type": "customer",
        "_id": "5fd5428f7736e01cf04fbcc4",
        "name": "Daniel",
        "email": "daniel@gmail.com",
        "phone": "4776672563",
        "__v": 0
    }
    */
class User {
  String type;
  String id;
  String name;
  String email;
  String phone;

  User({this.email, this.id, this.name, this.phone, this.type});

  User.fromJson(Map<String, String> json)
      : id = json['_id'],
        type = json['type'],
        name = json['name'],
        email = json['email'],
        phone = json['phone'];

  Map<String, String> toJson() =>
      {'id': id, 'name': name, 'email': email, 'phone': phone, 'type': type};
}
