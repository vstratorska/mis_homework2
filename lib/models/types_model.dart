import 'dart:convert';

class LType {
  final List<Local> locals;
   final String type;

  LType({
    this.locals = const [],
     this.type = ''
  });
}


 class Local {
  final String name;
  final String address;
  final int distance;
  final String type;
  final String working_hours;
  final String image;
  bool isFavorite = false;


  Local({
    this.name = '',
    this.address = '',
    this.distance = 0,
    this.type = '',
    this.working_hours = '',
    this.image = '',
  });


  factory Local.fromJson(Map<String, dynamic> json) => Local(
    name: json["name"] ?? '',
    address: json["address"] ?? '',
    distance: json["distance"] ?? 0,
    type: json["type"] ?? '',
    working_hours: json["working_hours"] ?? '',
    image: json["image"] ?? '',
  );

}


