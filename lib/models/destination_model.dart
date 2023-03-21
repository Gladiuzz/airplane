import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imgUrl;
  final double rating;
  final int price;

  const DestinationModel({
    required this.id,
    required this.name,
    required this.city,
    required this.imgUrl,
    required this.rating,
    required this.price,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        imgUrl: json['img_url'],
        rating: json['rating'].toDouble(),
        price: json['price'],
      );

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, city, imgUrl, rating, price];
}
