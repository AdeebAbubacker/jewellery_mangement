// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableDatum _$TableDatumFromJson(Map<String, dynamic> json) => TableDatum(
      lotDescription: json['Lot_Description'] as String?,
      group: json['Group'] as String?,
      units: json['Units'] as String?,
      pcs: (json['Pcs'] as num?)?.toInt(),
      weight: (json['Weight'] as num?)?.toDouble(),
      rate: (json['Rate'] as num?)?.toInt(),
      value: (json['Value'] as num?)?.toInt(),
      sRate: (json['S_Rate'] as num?)?.toInt(),
      sValue: (json['S_Value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TableDatumToJson(TableDatum instance) =>
    <String, dynamic>{
      'Lot_Description': instance.lotDescription,
      'Group': instance.group,
      'Units': instance.units,
      'Pcs': instance.pcs,
      'Weight': instance.weight,
      'Rate': instance.rate,
      'Value': instance.value,
      'S_Rate': instance.sRate,
      'S_Value': instance.sValue,
    };
