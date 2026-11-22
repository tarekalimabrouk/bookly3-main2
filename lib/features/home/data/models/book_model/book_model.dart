import 'package:equatable/equatable.dart';

import 'rating.dart';

class BookModel extends Equatable {
	final int? id;
	final String? title;
	final int? price;
	final String? description;
	final String? category;
	final String? image;
	final Rating? rating;
	final bool? inStock;
	final String? createdAt;

	const BookModel({
		this.id, 
		this.title, 
		this.price, 
		this.description, 
		this.category, 
		this.image, 
		this.rating, 
		this.inStock, 
		this.createdAt, 
	});

	factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
				id: json['id'] as int?,
				title: json['title'] as String?,
				price: json['price'] as int?,
				description: json['description'] as String?,
				category: json['category'] as String?,
				image: json['image'] as String?,
				rating: json['rating'] == null
						? null
						: Rating.fromJson(json['rating'] as Map<String, dynamic>),
				inStock: json['inStock'] as bool?,
				createdAt: json['createdAt'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'title': title,
				'price': price,
				'description': description,
				'category': category,
				'image': image,
				'rating': rating?.toJson(),
				'inStock': inStock,
				'createdAt': createdAt,
			};

	@override
	List<Object?> get props {
		return [
				id,
				title,
				price,
				description,
				category,
				image,
				rating,
				inStock,
				createdAt,
		];
	}
}
