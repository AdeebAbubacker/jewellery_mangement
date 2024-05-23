part of 'search_barcode_bloc.dart';

@freezed
class SearchBarcodeEvent with _$SearchBarcodeEvent {
  const factory SearchBarcodeEvent.started() = _Started;
  const factory SearchBarcodeEvent.fetchBarcodes(String query) = _FetchBarcodes;
  const factory SearchBarcodeEvent.fetchBarcodeDetails(String barcode) = _FetchBarcodeDetails;
  const factory SearchBarcodeEvent.cancelFetch() = _CancelFetch;
}