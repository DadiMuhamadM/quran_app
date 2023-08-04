import 'dart:convert';

List<Doa> doaFromJson(String str) =>
    List<Doa>.from(json.decode(str).map((x) => Doa.fromJson(x)));

String doaToJson(List<Doa> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Doa {
  String doa;
  String arab;
  String latin;
  String id;

  Doa({
    required this.doa,
    required this.arab,
    required this.latin,
    required this.id,
  });

  factory Doa.fromJson(Map<String, dynamic> json) => Doa(
        doa: json["doa"],
        arab: json["arab"],
        latin: json["latin"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "doa": doa,
        "arab": arab,
        "latin": latin,
        "id": id,
      };
}
