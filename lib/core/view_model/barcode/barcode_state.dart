part of 'barcode_bloc.dart';

@freezed

class BarcodeState with _$BarcodeState {
  const factory BarcodeState.initial() = Initial;
  const factory BarcodeState.loading() = Loading;
  const factory BarcodeState.loaded(List<Item> barcodes) = Loaded;
  const factory BarcodeState.detailsLoaded(Item  details) = DetailsLoaded;
  const factory BarcodeState.error(String message) = Error;
}
