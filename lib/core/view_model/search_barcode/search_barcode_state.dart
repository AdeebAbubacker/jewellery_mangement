part of 'search_barcode_bloc.dart';

@freezed

class SearchBarcodeState with _$SearchBarcodeState {
  const factory SearchBarcodeState.initial() = Initial;
  const factory SearchBarcodeState.loading() = Loading;
  const factory SearchBarcodeState.loaded(List<dynamic> barcodes) = Loaded;
  const factory SearchBarcodeState.detailsLoaded(Map<String, dynamic> details) = DetailsLoaded;
  const factory SearchBarcodeState.error(String message) = Error;
}
