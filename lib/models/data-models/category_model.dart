class CategoryModel {
  int categoryId;
  String categoryName;
  String categoryImage;

  CategoryModel({
    required this.categoryId,
    required this.categoryName,
    required this.categoryImage,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      categoryId: json['id'] ?? 0,
      categoryName: json['name'] ?? " ",
      categoryImage: json['image'] ?? " ",
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': categoryId, 'name': categoryName, 'image': categoryImage};
  }
}
