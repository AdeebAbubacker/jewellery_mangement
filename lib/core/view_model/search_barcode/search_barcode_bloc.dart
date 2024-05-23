import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jewellery_app/core/service/jewellery_service.dart';

part 'search_barcode_event.dart';
part 'search_barcode_state.dart';
part 'search_barcode_bloc.freezed.dart';

// class SearchBarcodeBloc extends Bloc<SearchBarcodeEvent, SearchBarcodeState> {
//   SearchBarcodeBloc() : super(_Initial()) {
//     on<SearchBarcodeEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

class SearchBarcodeBloc extends Bloc<SearchBarcodeEvent, SearchBarcodeState> {
  final BarcodeService barcodeService;
  final BarcodeDetailsService barcodeDetailsService;


  SearchBarcodeBloc({
    required this.barcodeService,
    required this.barcodeDetailsService,
  }) : super(const Initial()) {
    on<_FetchBarcodes>((event, emit) async {
      {
        emit(const SearchBarcodeState.loading());
      
        try {
          final barcodes = await barcodeService.getBarcodes(event.query);

          emit(SearchBarcodeState.loaded(barcodes));
        } catch (e) {
          emit(SearchBarcodeState.error(e.toString()));
        }
      }
    });
    on<_FetchBarcodeDetails>((event, emit) async {
      try {
        final details = barcodeDetailsService.getBarcodeDetails(event.barcode);
        if (details != null) {
          emit(SearchBarcodeState.detailsLoaded(details));
        } else if (details == null || details.isEmpty) {
          emit(SearchBarcodeState.error(
              'Details not found for barcode ${event.barcode}'));
        }
      } catch (e) {
        emit(SearchBarcodeState.error(e.toString()));
      }
    });
    on<_CancelFetch>(((event, emit) async {
  
      emit(const Initial());
    }));
  }
}
