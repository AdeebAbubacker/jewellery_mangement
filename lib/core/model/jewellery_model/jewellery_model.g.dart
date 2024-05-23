// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jewellery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JewelleryModel _$JewelleryModelFromJson(Map<String, dynamic> json) =>
    JewelleryModel(
      items: (json['Items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JewelleryModelToJson(JewelleryModel instance) =>
    <String, dynamic>{
      'Items': instance.items,
    };
