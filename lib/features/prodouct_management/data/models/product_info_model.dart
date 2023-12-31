

import '../../presentation/entities/product_info.dart';

class ProductInfoModel extends ProductInfo {
  ProductInfoModel({
      super.id,
      super.title,
      super.price,
      super.description,
      super.category,
      super.imageUrl,
      super.rating});

  factory ProductInfoModel.fromJson(Map<String, dynamic> json){
      return ProductInfoModel(
          id: json['id'],
          title: json['title'],
          price: intToDouble(json['price']),
          description: json['description'],
          category: json['category'],
          imageUrl: json['image'],
          rating: RatingModel.fromJson(json['rating']),
      );
  }
}

class RatingModel extends Rating{
    RatingModel({super.rate,super.count});

    factory RatingModel.fromJson(Map<String, dynamic> json){
        return RatingModel(
            rate: intToDouble(json['rate']),
            count: intToDouble(json['count'])
        );
    }
}

double intToDouble(dynamic data){
    return (data as num).toDouble();
}