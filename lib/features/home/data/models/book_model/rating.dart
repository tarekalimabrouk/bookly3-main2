import 'package:equatable/equatable.dart';

class Rating extends Equatable {
	final int? rate;
	final int? count;

	const Rating({this.rate, this.count});

	factory Rating.fromJson(Map<String, dynamic> json) => Rating(
				rate: json['rate'] as int?,
				count: json['count'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'rate': rate,
				'count': count,
			};

	@override
	List<Object?> get props => [rate, count];
}
