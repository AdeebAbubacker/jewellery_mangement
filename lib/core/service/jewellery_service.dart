import 'package:jewellery_app/core/json/data.dart';

class BarcodeService {
  Map _jsonData = json_data;

  List<dynamic> getBarcodes(String barcode) {
    // Convert the input barcode to lowercase
    final barcodeLowerCase = barcode.toLowerCase();
    // Filter items in the JSON data where the lowercase barcode contains the input barcode
    return _jsonData['Items'].where((item) => item['Barcode'].toString().toLowerCase().contains(barcodeLowerCase)).toList();
  }
}


class BarcodeDetailsService {
  Map<String, dynamic> _jsonData = json_data;

  Map<String, dynamic>? getBarcodeDetails(String barcode) {
    // Find the item in json_data corresponding to the provided barcode
    for (var item in _jsonData['Items']) {
      if (item['Barcode'] == barcode) {
        return item;
      }
    }
    return null; // Return null if details for the barcode are not found
  }
}