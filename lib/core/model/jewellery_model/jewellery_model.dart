import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'jewellery_model.g.dart';

@JsonSerializable()
class JewelleryModel {
	@JsonKey(name: 'Items') 
	List<Item>? items;

	JewelleryModel({this.items});

	factory JewelleryModel.fromJson(Map<String, dynamic> json) {
		return _$JewelleryModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$JewelleryModelToJson(this);
}
