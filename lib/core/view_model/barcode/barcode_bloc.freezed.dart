// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barcode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BarcodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) fetchBarcodes,
    required TResult Function(String barcode) fetchBarcodeDetails,
    required TResult Function() cancelFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? fetchBarcodes,
    TResult? Function(String barcode)? fetchBarcodeDetails,
    TResult? Function()? cancelFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? fetchBarcodes,
    TResult Function(String barcode)? fetchBarcodeDetails,
    TResult Function()? cancelFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchBarcodes value) fetchBarcodes,
    required TResult Function(_FetchBarcodeDetails value) fetchBarcodeDetails,
    required TResult Function(_CancelFetch value) cancelFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchBarcodes value)? fetchBarcodes,
    TResult? Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult? Function(_CancelFetch value)? cancelFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchBarcodes value)? fetchBarcodes,
    TResult Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult Function(_CancelFetch value)? cancelFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeEventCopyWith<$Res> {
  factory $BarcodeEventCopyWith(
          BarcodeEvent value, $Res Function(BarcodeEvent) then) =
      _$BarcodeEventCopyWithImpl<$Res, BarcodeEvent>;
}

/// @nodoc
class _$BarcodeEventCopyWithImpl<$Res, $Val extends BarcodeEvent>
    implements $BarcodeEventCopyWith<$Res> {
  _$BarcodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$BarcodeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BarcodeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) fetchBarcodes,
    required TResult Function(String barcode) fetchBarcodeDetails,
    required TResult Function() cancelFetch,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? fetchBarcodes,
    TResult? Function(String barcode)? fetchBarcodeDetails,
    TResult? Function()? cancelFetch,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? fetchBarcodes,
    TResult Function(String barcode)? fetchBarcodeDetails,
    TResult Function()? cancelFetch,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchBarcodes value) fetchBarcodes,
    required TResult Function(_FetchBarcodeDetails value) fetchBarcodeDetails,
    required TResult Function(_CancelFetch value) cancelFetch,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchBarcodes value)? fetchBarcodes,
    TResult? Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult? Function(_CancelFetch value)? cancelFetch,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchBarcodes value)? fetchBarcodes,
    TResult Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult Function(_CancelFetch value)? cancelFetch,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BarcodeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchBarcodesImplCopyWith<$Res> {
  factory _$$FetchBarcodesImplCopyWith(
          _$FetchBarcodesImpl value, $Res Function(_$FetchBarcodesImpl) then) =
      __$$FetchBarcodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FetchBarcodesImplCopyWithImpl<$Res>
    extends _$BarcodeEventCopyWithImpl<$Res, _$FetchBarcodesImpl>
    implements _$$FetchBarcodesImplCopyWith<$Res> {
  __$$FetchBarcodesImplCopyWithImpl(
      _$FetchBarcodesImpl _value, $Res Function(_$FetchBarcodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FetchBarcodesImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchBarcodesImpl implements _FetchBarcodes {
  const _$FetchBarcodesImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'BarcodeEvent.fetchBarcodes(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBarcodesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBarcodesImplCopyWith<_$FetchBarcodesImpl> get copyWith =>
      __$$FetchBarcodesImplCopyWithImpl<_$FetchBarcodesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) fetchBarcodes,
    required TResult Function(String barcode) fetchBarcodeDetails,
    required TResult Function() cancelFetch,
  }) {
    return fetchBarcodes(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? fetchBarcodes,
    TResult? Function(String barcode)? fetchBarcodeDetails,
    TResult? Function()? cancelFetch,
  }) {
    return fetchBarcodes?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? fetchBarcodes,
    TResult Function(String barcode)? fetchBarcodeDetails,
    TResult Function()? cancelFetch,
    required TResult orElse(),
  }) {
    if (fetchBarcodes != null) {
      return fetchBarcodes(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchBarcodes value) fetchBarcodes,
    required TResult Function(_FetchBarcodeDetails value) fetchBarcodeDetails,
    required TResult Function(_CancelFetch value) cancelFetch,
  }) {
    return fetchBarcodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchBarcodes value)? fetchBarcodes,
    TResult? Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult? Function(_CancelFetch value)? cancelFetch,
  }) {
    return fetchBarcodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchBarcodes value)? fetchBarcodes,
    TResult Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult Function(_CancelFetch value)? cancelFetch,
    required TResult orElse(),
  }) {
    if (fetchBarcodes != null) {
      return fetchBarcodes(this);
    }
    return orElse();
  }
}

abstract class _FetchBarcodes implements BarcodeEvent {
  const factory _FetchBarcodes(final String query) = _$FetchBarcodesImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$FetchBarcodesImplCopyWith<_$FetchBarcodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchBarcodeDetailsImplCopyWith<$Res> {
  factory _$$FetchBarcodeDetailsImplCopyWith(_$FetchBarcodeDetailsImpl value,
          $Res Function(_$FetchBarcodeDetailsImpl) then) =
      __$$FetchBarcodeDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String barcode});
}

/// @nodoc
class __$$FetchBarcodeDetailsImplCopyWithImpl<$Res>
    extends _$BarcodeEventCopyWithImpl<$Res, _$FetchBarcodeDetailsImpl>
    implements _$$FetchBarcodeDetailsImplCopyWith<$Res> {
  __$$FetchBarcodeDetailsImplCopyWithImpl(_$FetchBarcodeDetailsImpl _value,
      $Res Function(_$FetchBarcodeDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
  }) {
    return _then(_$FetchBarcodeDetailsImpl(
      null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchBarcodeDetailsImpl implements _FetchBarcodeDetails {
  const _$FetchBarcodeDetailsImpl(this.barcode);

  @override
  final String barcode;

  @override
  String toString() {
    return 'BarcodeEvent.fetchBarcodeDetails(barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBarcodeDetailsImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBarcodeDetailsImplCopyWith<_$FetchBarcodeDetailsImpl> get copyWith =>
      __$$FetchBarcodeDetailsImplCopyWithImpl<_$FetchBarcodeDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) fetchBarcodes,
    required TResult Function(String barcode) fetchBarcodeDetails,
    required TResult Function() cancelFetch,
  }) {
    return fetchBarcodeDetails(barcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? fetchBarcodes,
    TResult? Function(String barcode)? fetchBarcodeDetails,
    TResult? Function()? cancelFetch,
  }) {
    return fetchBarcodeDetails?.call(barcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? fetchBarcodes,
    TResult Function(String barcode)? fetchBarcodeDetails,
    TResult Function()? cancelFetch,
    required TResult orElse(),
  }) {
    if (fetchBarcodeDetails != null) {
      return fetchBarcodeDetails(barcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchBarcodes value) fetchBarcodes,
    required TResult Function(_FetchBarcodeDetails value) fetchBarcodeDetails,
    required TResult Function(_CancelFetch value) cancelFetch,
  }) {
    return fetchBarcodeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchBarcodes value)? fetchBarcodes,
    TResult? Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult? Function(_CancelFetch value)? cancelFetch,
  }) {
    return fetchBarcodeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchBarcodes value)? fetchBarcodes,
    TResult Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult Function(_CancelFetch value)? cancelFetch,
    required TResult orElse(),
  }) {
    if (fetchBarcodeDetails != null) {
      return fetchBarcodeDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchBarcodeDetails implements BarcodeEvent {
  const factory _FetchBarcodeDetails(final String barcode) =
      _$FetchBarcodeDetailsImpl;

  String get barcode;
  @JsonKey(ignore: true)
  _$$FetchBarcodeDetailsImplCopyWith<_$FetchBarcodeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelFetchImplCopyWith<$Res> {
  factory _$$CancelFetchImplCopyWith(
          _$CancelFetchImpl value, $Res Function(_$CancelFetchImpl) then) =
      __$$CancelFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelFetchImplCopyWithImpl<$Res>
    extends _$BarcodeEventCopyWithImpl<$Res, _$CancelFetchImpl>
    implements _$$CancelFetchImplCopyWith<$Res> {
  __$$CancelFetchImplCopyWithImpl(
      _$CancelFetchImpl _value, $Res Function(_$CancelFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelFetchImpl implements _CancelFetch {
  const _$CancelFetchImpl();

  @override
  String toString() {
    return 'BarcodeEvent.cancelFetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) fetchBarcodes,
    required TResult Function(String barcode) fetchBarcodeDetails,
    required TResult Function() cancelFetch,
  }) {
    return cancelFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? fetchBarcodes,
    TResult? Function(String barcode)? fetchBarcodeDetails,
    TResult? Function()? cancelFetch,
  }) {
    return cancelFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? fetchBarcodes,
    TResult Function(String barcode)? fetchBarcodeDetails,
    TResult Function()? cancelFetch,
    required TResult orElse(),
  }) {
    if (cancelFetch != null) {
      return cancelFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchBarcodes value) fetchBarcodes,
    required TResult Function(_FetchBarcodeDetails value) fetchBarcodeDetails,
    required TResult Function(_CancelFetch value) cancelFetch,
  }) {
    return cancelFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchBarcodes value)? fetchBarcodes,
    TResult? Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult? Function(_CancelFetch value)? cancelFetch,
  }) {
    return cancelFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchBarcodes value)? fetchBarcodes,
    TResult Function(_FetchBarcodeDetails value)? fetchBarcodeDetails,
    TResult Function(_CancelFetch value)? cancelFetch,
    required TResult orElse(),
  }) {
    if (cancelFetch != null) {
      return cancelFetch(this);
    }
    return orElse();
  }
}

abstract class _CancelFetch implements BarcodeEvent {
  const factory _CancelFetch() = _$CancelFetchImpl;
}

/// @nodoc
mixin _$BarcodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item> barcodes) loaded,
    required TResult Function(Item details) detailsLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item> barcodes)? loaded,
    TResult? Function(Item details)? detailsLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item> barcodes)? loaded,
    TResult Function(Item details)? detailsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DetailsLoaded value) detailsLoaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(DetailsLoaded value)? detailsLoaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(DetailsLoaded value)? detailsLoaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeStateCopyWith<$Res> {
  factory $BarcodeStateCopyWith(
          BarcodeState value, $Res Function(BarcodeState) then) =
      _$BarcodeStateCopyWithImpl<$Res, BarcodeState>;
}

/// @nodoc
class _$BarcodeStateCopyWithImpl<$Res, $Val extends BarcodeState>
    implements $BarcodeStateCopyWith<$Res> {
  _$BarcodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BarcodeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item> barcodes) loaded,
    required TResult Function(Item details) detailsLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item> barcodes)? loaded,
    TResult? Function(Item details)? detailsLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item> barcodes)? loaded,
    TResult Function(Item details)? detailsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DetailsLoaded value) detailsLoaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(DetailsLoaded value)? detailsLoaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(DetailsLoaded value)? detailsLoaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BarcodeState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BarcodeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item> barcodes) loaded,
    required TResult Function(Item details) detailsLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item> barcodes)? loaded,
    TResult? Function(Item details)? detailsLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item> barcodes)? loaded,
    TResult Function(Item details)? detailsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DetailsLoaded value) detailsLoaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(DetailsLoaded value)? detailsLoaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(DetailsLoaded value)? detailsLoaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BarcodeState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item> barcodes});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcodes = null,
  }) {
    return _then(_$LoadedImpl(
      null == barcodes
          ? _value._barcodes
          : barcodes // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(final List<Item> barcodes) : _barcodes = barcodes;

  final List<Item> _barcodes;
  @override
  List<Item> get barcodes {
    if (_barcodes is EqualUnmodifiableListView) return _barcodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barcodes);
  }

  @override
  String toString() {
    return 'BarcodeState.loaded(barcodes: $barcodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._barcodes, _barcodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_barcodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item> barcodes) loaded,
    required TResult Function(Item details) detailsLoaded,
    required TResult Function(String message) error,
  }) {
    return loaded(barcodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item> barcodes)? loaded,
    TResult? Function(Item details)? detailsLoaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(barcodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item> barcodes)? loaded,
    TResult Function(Item details)? detailsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(barcodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DetailsLoaded value) detailsLoaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(DetailsLoaded value)? detailsLoaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(DetailsLoaded value)? detailsLoaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements BarcodeState {
  const factory Loaded(final List<Item> barcodes) = _$LoadedImpl;

  List<Item> get barcodes;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailsLoadedImplCopyWith<$Res> {
  factory _$$DetailsLoadedImplCopyWith(
          _$DetailsLoadedImpl value, $Res Function(_$DetailsLoadedImpl) then) =
      __$$DetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Item details});
}

/// @nodoc
class __$$DetailsLoadedImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$DetailsLoadedImpl>
    implements _$$DetailsLoadedImplCopyWith<$Res> {
  __$$DetailsLoadedImplCopyWithImpl(
      _$DetailsLoadedImpl _value, $Res Function(_$DetailsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
  }) {
    return _then(_$DetailsLoadedImpl(
      null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }
}

/// @nodoc

class _$DetailsLoadedImpl implements DetailsLoaded {
  const _$DetailsLoadedImpl(this.details);

  @override
  final Item details;

  @override
  String toString() {
    return 'BarcodeState.detailsLoaded(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsLoadedImpl &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsLoadedImplCopyWith<_$DetailsLoadedImpl> get copyWith =>
      __$$DetailsLoadedImplCopyWithImpl<_$DetailsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item> barcodes) loaded,
    required TResult Function(Item details) detailsLoaded,
    required TResult Function(String message) error,
  }) {
    return detailsLoaded(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item> barcodes)? loaded,
    TResult? Function(Item details)? detailsLoaded,
    TResult? Function(String message)? error,
  }) {
    return detailsLoaded?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item> barcodes)? loaded,
    TResult Function(Item details)? detailsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DetailsLoaded value) detailsLoaded,
    required TResult Function(Error value) error,
  }) {
    return detailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(DetailsLoaded value)? detailsLoaded,
    TResult? Function(Error value)? error,
  }) {
    return detailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(DetailsLoaded value)? detailsLoaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded(this);
    }
    return orElse();
  }
}

abstract class DetailsLoaded implements BarcodeState {
  const factory DetailsLoaded(final Item details) = _$DetailsLoadedImpl;

  Item get details;
  @JsonKey(ignore: true)
  _$$DetailsLoadedImplCopyWith<_$DetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BarcodeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item> barcodes) loaded,
    required TResult Function(Item details) detailsLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item> barcodes)? loaded,
    TResult? Function(Item details)? detailsLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item> barcodes)? loaded,
    TResult Function(Item details)? detailsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DetailsLoaded value) detailsLoaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(DetailsLoaded value)? detailsLoaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(DetailsLoaded value)? detailsLoaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements BarcodeState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
