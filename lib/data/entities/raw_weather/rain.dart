import 'package:collection/collection.dart';

class Rain {
	double? oneHour;

	Rain({this.oneHour});

	factory Rain.fromJson(Map<String, dynamic> json) => Rain(
				oneHour: (json['1h'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'1h': oneHour,
			};

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Rain) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toJson(), toJson());
	}

	@override
	int get hashCode => oneHour.hashCode;
}
