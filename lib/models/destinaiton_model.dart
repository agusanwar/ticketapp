import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String? name;
  final String? city;
  final String? imageUrl;
  final double rating;
  final int price;

  const DestinationModel({
    required this.id,
    this.name = '',
    this.city = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.price = 0,
  });

  // Method
  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'] as String,
        city: json['city'] as String,
        imageUrl: json['imageUrl'] as String,
        rating: (json['rating'] as num).toDouble(),
        price: json['price'] as int,
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'city': city,
        'imageUrl': imageUrl,
        'rating': rating,
        'price': price,
      };

  @override
  List<Object?> get props => [
        id,
        name,
        city,
        imageUrl,
        rating,
        price,
      ];
}
