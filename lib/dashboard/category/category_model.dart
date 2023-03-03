class CategoryModel {
  String? name;
  String? image;
  String? price;

  CategoryModel({this.name, this.image, this.price});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['price'] = price;
    return data;
  }
}
