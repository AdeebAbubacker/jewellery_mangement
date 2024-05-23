import 'package:json_annotation/json_annotation.dart';

part 'table_datum.g.dart';

@JsonSerializable()
class TableDatum {
	@JsonKey(name: 'Lot_Description') 
	String? lotDescription;
	@JsonKey(name: 'Group') 
	String? group;
	@JsonKey(name: 'Units') 
	String? units;
	@JsonKey(name: 'Pcs') 
	int? pcs;
	@JsonKey(name: 'Weight') 
	double? weight;
	@JsonKey(name: 'Rate') 
	int? rate;
	@JsonKey(name: 'Value') 
	int? value;
	@JsonKey(name: 'S_Rate') 
	int? sRate;
	@JsonKey(name: 'S_Value') 
	int? sValue;

	TableDatum({
		this.lotDescription, 
		this.group, 
		this.units, 
		this.pcs, 
		this.weight, 
		this.rate, 
		this.value, 
		this.sRate, 
		this.sValue, 
	});

	factory TableDatum.fromJson(Map<String, dynamic> json) {
		return _$TableDatumFromJson(json);
	}

	Map<String, dynamic> toJson() => _$TableDatumToJson(this);
}
