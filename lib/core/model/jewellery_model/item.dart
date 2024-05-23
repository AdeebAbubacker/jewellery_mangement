import 'package:json_annotation/json_annotation.dart';

import 'table_datum.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
	@JsonKey(name: 'Barcode') 
	String? barcode;
	@JsonKey(name: 'Location') 
	String? location;
	@JsonKey(name: 'Branch') 
	String? branch;
	@JsonKey(name: 'Status') 
	String? status;
	@JsonKey(name: 'Counter') 
	int? counter;
	@JsonKey(name: 'Source') 
	String? source;
	@JsonKey(name: 'Category') 
	String? category;
	@JsonKey(name: 'Collection') 
	String? collection;
	@JsonKey(name: 'Description') 
	String? description;
	@JsonKey(name: 'Metal_Grp') 
	String? metalGrp;
	@JsonKey(name: 'STK_Section') 
	String? stkSection;
	@JsonKey(name: 'Mfgd_By') 
	String? mfgdBy;
	@JsonKey(name: 'Notes') 
	String? notes;
	@JsonKey(name: 'In_STK_Since') 
	String? inStkSince;
	@JsonKey(name: 'Cert_No') 
	String? certNo;
	@JsonKey(name: 'HUID_No') 
	String? huidNo;
	@JsonKey(name: 'Order_No') 
	int? orderNo;
	@JsonKey(name: 'Cus_Name') 
	String? cusName;
	@JsonKey(name: 'Size') 
	String? size;
	@JsonKey(name: 'Quality') 
	String? quality;
	@JsonKey(name: 'KT') 
	double? kt;
	@JsonKey(name: 'Pcs') 
	int? pcs;
	@JsonKey(name: 'Gross_Wt') 
	double? grossWt;
	@JsonKey(name: 'Net_Wt') 
	double? netWt;
	@JsonKey(name: 'Dia_Pcs') 
	int? diaPcs;
	@JsonKey(name: 'Dia_Wt') 
	double? diaWt;
	@JsonKey(name: 'Cls_Pcs') 
	int? clsPcs;
	@JsonKey(name: 'Cls_Wt') 
	int? clsWt;
	@JsonKey(name: 'Chain_Wt') 
	int? chainWt;
	@JsonKey(name: 'M_Rate') 
	int? mRate;
	@JsonKey(name: 'M_Value') 
	int? mValue;
	@JsonKey(name: 'L_Rate') 
	int? lRate;
	@JsonKey(name: 'L_Charges') 
	int? lCharges;
	@JsonKey(name: 'R_Charges') 
	int? rCharges;
	@JsonKey(name: 'O_Charges') 
	int? oCharges;
	@JsonKey(name: 'MRP') 
	double? mrp;
	@JsonKey(name: 'image_link') 
	String? imageLink;
	@JsonKey(name: 'Table_Data') 
	List<TableDatum>? tableData;

	Item({
		this.barcode, 
		this.location, 
		this.branch, 
		this.status, 
		this.counter, 
		this.source, 
		this.category, 
		this.collection, 
		this.description, 
		this.metalGrp, 
		this.stkSection, 
		this.mfgdBy, 
		this.notes, 
		this.inStkSince, 
		this.certNo, 
		this.huidNo, 
		this.orderNo, 
		this.cusName, 
		this.size, 
		this.quality, 
		this.kt, 
		this.pcs, 
		this.grossWt, 
		this.netWt, 
		this.diaPcs, 
		this.diaWt, 
		this.clsPcs, 
		this.clsWt, 
		this.chainWt, 
		this.mRate, 
		this.mValue, 
		this.lRate, 
		this.lCharges, 
		this.rCharges, 
		this.oCharges, 
		this.mrp, 
		this.imageLink, 
		this.tableData, 
	});

	factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

	Map<String, dynamic> toJson() => _$ItemToJson(this);
}
