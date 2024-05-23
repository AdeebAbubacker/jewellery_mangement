import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jewellery_app/core/model/jewellery_model/item.dart';
import 'package:jewellery_app/core/service/jewellery_service.dart';

part 'barcode_event.dart';
part 'barcode_state.dart';
part 'barcode_bloc.freezed.dart';



class BarcodeBloc extends Bloc<BarcodeEvent, BarcodeState> {
  final BarcodeService barcodeService;
  final BarcodeDetailsService barcodeDetailsService;


  BarcodeBloc({
    required this.barcodeService,
    required this.barcodeDetailsService,
  }) : super(const Initial()) {
    on<_FetchBarcodes>((event, emit) async {
      {
        emit(const BarcodeState.loading());
      
        try {
          final barcodes = await barcodeService.getBarcodes(event.query);

          emit(BarcodeState.loaded(barcodes));
        } catch (e) {
          emit(BarcodeState.error(e.toString()));
        }
      }
    });
    on<_FetchBarcodeDetails>((event, emit) async {
      try {
        final details = barcodeDetailsService.getBarcodeDetails(event.barcode);
        if (details != null) {
          emit(BarcodeState.detailsLoaded(details));
        } else if (details == null || details.barcode!.isEmpty) {
          emit(BarcodeState.error(
              'Details not found for barcode ${event.barcode}'));
        }
      } catch (e) {
        emit(BarcodeState.error(e.toString()));
      }
    });
    on<_CancelFetch>(((event, emit) async {
  
      emit(const Initial());
    }));
  }
}
