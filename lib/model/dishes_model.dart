class AutoGenerate {
  AutoGenerate({
    required this.dishes,
    required this.popularDishes,
  });
  late final List<Dishes> dishes;
  late final List<PopularDishes> popularDishes;

  AutoGenerate.fromJson(Map<String, dynamic> json) {
    dishes = List.from(json['dishes']).map((e) => Dishes.fromJson(e)).toList();
    popularDishes = List.from(json['popularDishes'])
        .map((e) => PopularDishes.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['dishes'] = dishes.map((e) => e.toJson()).toList();
    _data['popularDishes'] = popularDishes.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Dishes {
  Dishes({
    required this.name,
    required this.rating,
    required this.description,
    required this.equipments,
    required this.image,
    required this.id,
  });
  late final String name;
  late final double rating;
  late final String description;
  late final List<String> equipments;
  late final String image;
  late final int id;

  Dishes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    rating = json['rating'];
    description = json['description'];
    equipments = List.castFrom<dynamic, String>(json['equipments']);
    image = json['image'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['rating'] = rating;
    _data['description'] = description;
    _data['equipments'] = equipments;
    _data['image'] = image;
    _data['id'] = id;
    return _data;
  }
}

class PopularDishes {
  PopularDishes({
    required this.name,
    required this.image,
    required this.id,
  });
  late final String name;
  late final String image;
  late final int id;

  PopularDishes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['image'] = image;
    _data['id'] = id;
    return _data;
  }
}
