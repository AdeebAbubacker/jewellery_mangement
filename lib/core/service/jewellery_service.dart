import 'package:jewellery_app/core/json/data.dart';
import 'package:jewellery_app/core/model/jewellery_model/item.dart';

class BarcodeService {
  final Map _jsonData = json_data;

  List<Item> getBarcodes(String barcode) {
    final barcodeLowerCase = barcode.toLowerCase();
    final List<Item> items = (_jsonData['Items'] as List<dynamic>)
        .map((itemJson) => Item.fromJson(itemJson))
        .toList();
    return items
        .where((item) =>
            (item.barcode?.toLowerCase().contains(barcodeLowerCase)) ?? false)
        .toList();
  }
}

class BarcodeDetailsService {
  final Map _jsonData = json_data;
  Item? getBarcodeDetails(String barcode) {
    final List<dynamic> items = _jsonData['Items'];
    for (var itemJson in items) {
      final Item item = Item.fromJson(itemJson);
      if (item.barcode == barcode) {
        return item;
      }
    }
    return null; 
  }
}
