part of 'barcode_bloc.dart';

@freezed
class BarcodeEvent with _$BarcodeEvent {
  const factory BarcodeEvent.started() = _Started;
  const factory BarcodeEvent.fetchBarcodes(String query) = _FetchBarcodes;
  const factory BarcodeEvent.fetchBarcodeDetails(String barcode) = _FetchBarcodeDetails;
  const factory BarcodeEvent.cancelFetch() = _CancelFetch;
}