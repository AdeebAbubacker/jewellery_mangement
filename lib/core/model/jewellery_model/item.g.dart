// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      barcode: json['Barcode'] as String?,
      location: json['Location'] as String?,
      branch: json['Branch'] as String?,
      status: json['Status'] as String?,
      counter: (json['Counter'] as num?)?.toInt(),
      source: json['Source'] as String?,
      category: json['Category'] as String?,
      collection: json['Collection'] as String?,
      description: json['Description'] as String?,
      metalGrp: json['Metal_Grp'] as String?,
      stkSection: json['STK_Section'] as String?,
      mfgdBy: json['Mfgd_By'] as String?,
      notes: json['Notes'] as String?,
      inStkSince: json['In_STK_Since'] as String?,
      certNo: json['Cert_No'] as String?,
      huidNo: json['HUID_No'] as String?,
      orderNo: (json['Order_No'] as num?)?.toInt(),
      cusName: json['Cus_Name'] as String?,
      size: json['Size'] as String?,
      quality: json['Quality'] as String?,
      kt: (json['KT'] as num?)?.toDouble(),
      pcs: (json['Pcs'] as num?)?.toInt(),
      grossWt: (json['Gross_Wt'] as num?)?.toDouble(),
      netWt: (json['Net_Wt'] as num?)?.toDouble(),
      diaPcs: (json['Dia_Pcs'] as num?)?.toInt(),
      diaWt: (json['Dia_Wt'] as num?)?.toDouble(),
      clsPcs: (json['Cls_Pcs'] as num?)?.toInt(),
      clsWt: (json['Cls_Wt'] as num?)?.toInt(),
      chainWt: (json['Chain_Wt'] as num?)?.toInt(),
      mRate: (json['M_Rate'] as num?)?.toInt(),
      mValue: (json['M_Value'] as num?)?.toInt(),
      lRate: (json['L_Rate'] as num?)?.toInt(),
      lCharges: (json['L_Charges'] as num?)?.toInt(),
      rCharges: (json['R_Charges'] as num?)?.toInt(),
      oCharges: (json['O_Charges'] as num?)?.toInt(),
      mrp: (json['MRP'] as num?)?.toDouble(),
      imageLink: json['image_link'] as String?,
      tableData: (json['Table_Data'] as List<dynamic>?)
          ?.map((e) => TableDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'Barcode': instance.barcode,
      'Location': instance.location,
      'Branch': instance.branch,
      'Status': instance.status,
      'Counter': instance.counter,
      'Source': instance.source,
      'Category': instance.category,
      'Collection': instance.collection,
      'Description': instance.description,
      'Metal_Grp': instance.metalGrp,
      'STK_Section': instance.stkSection,
      'Mfgd_By': instance.mfgdBy,
      'Notes': instance.notes,
      'In_STK_Since': instance.inStkSince,
      'Cert_No': instance.certNo,
      'HUID_No': instance.huidNo,
      'Order_No': instance.orderNo,
      'Cus_Name': instance.cusName,
      'Size': instance.size,
      'Quality': instance.quality,
      'KT': instance.kt,
      'Pcs': instance.pcs,
      'Gross_Wt': instance.grossWt,
      'Net_Wt': instance.netWt,
      'Dia_Pcs': instance.diaPcs,
      'Dia_Wt': instance.diaWt,
      'Cls_Pcs': instance.clsPcs,
      'Cls_Wt': instance.clsWt,
      'Chain_Wt': instance.chainWt,
      'M_Rate': instance.mRate,
      'M_Value': instance.mValue,
      'L_Rate': instance.lRate,
      'L_Charges': instance.lCharges,
      'R_Charges': instance.rCharges,
      'O_Charges': instance.oCharges,
      'MRP': instance.mrp,
      'image_link': instance.imageLink,
      'Table_Data': instance.tableData,
    };
