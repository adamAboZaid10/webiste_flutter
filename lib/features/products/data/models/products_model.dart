class ProductsModel {
  final ProductDetails? productDetails;
  final String key;

  ProductsModel({
    required this.productDetails,
    required this.key,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      productDetails: ProductDetails.fromJson(json['productDetails']),
      key: json['key'],
    );
  }
}

class ProductDetails {
  final String? name;
  final String? desc;
  final List<String>? points;
  final String? img;
  final String? imgCover;

  ProductDetails({
    this.name,
    this.desc,
    this.points,
    this.img,
    this.imgCover,
  });

  factory ProductDetails.fromJson(Map<String, dynamic> json) {
    return ProductDetails(
      name: json['name'] as String,
      desc: json['desc'] as String,
      img: json['img'] as String,
      imgCover: json['img_cover'] as String,
      points: List<String>.from(json['points'] ?? []),
    );
  }
}
