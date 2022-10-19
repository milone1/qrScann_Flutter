import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.id,
    required this.type,
    required this.value,
  }) {
    if (type.contains('http')) {
      type = 'http';
    } else {
      type = 'geo';
    }
  }

  int id;
  String type;
  String value;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        type: json["type"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "value": value,
      };
}
