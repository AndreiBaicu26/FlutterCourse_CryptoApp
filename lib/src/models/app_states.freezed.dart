// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call(
      {List<CryptoCoin> cryptoCoins = const <CryptoCoin>[],
      List<CryptoCoin> favoriteCryptoCoins = const <CryptoCoin>[],
      bool isLoading = false}) {
    return AppState$(
      cryptoCoins: cryptoCoins,
      favoriteCryptoCoins: favoriteCryptoCoins,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  List<CryptoCoin> get cryptoCoins => throw _privateConstructorUsedError;
  List<CryptoCoin> get favoriteCryptoCoins =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {List<CryptoCoin> cryptoCoins,
      List<CryptoCoin> favoriteCryptoCoins,
      bool isLoading});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? cryptoCoins = freezed,
    Object? favoriteCryptoCoins = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cryptoCoins: cryptoCoins == freezed
          ? _value.cryptoCoins
          : cryptoCoins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>,
      favoriteCryptoCoins: favoriteCryptoCoins == freezed
          ? _value.favoriteCryptoCoins
          : favoriteCryptoCoins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) =
      _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CryptoCoin> cryptoCoins,
      List<CryptoCoin> favoriteCryptoCoins,
      bool isLoading});
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? cryptoCoins = freezed,
    Object? favoriteCryptoCoins = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(AppState$(
      cryptoCoins: cryptoCoins == freezed
          ? _value.cryptoCoins
          : cryptoCoins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>,
      favoriteCryptoCoins: favoriteCryptoCoins == freezed
          ? _value.favoriteCryptoCoins
          : favoriteCryptoCoins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.cryptoCoins = const <CryptoCoin>[],
      this.favoriteCryptoCoins = const <CryptoCoin>[],
      this.isLoading = false});

  @JsonKey(defaultValue: const <CryptoCoin>[])
  @override
  final List<CryptoCoin> cryptoCoins;
  @JsonKey(defaultValue: const <CryptoCoin>[])
  @override
  final List<CryptoCoin> favoriteCryptoCoins;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AppState(cryptoCoins: $cryptoCoins, favoriteCryptoCoins: $favoriteCryptoCoins, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality()
                .equals(other.cryptoCoins, cryptoCoins) &&
            const DeepCollectionEquality()
                .equals(other.favoriteCryptoCoins, favoriteCryptoCoins) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cryptoCoins),
      const DeepCollectionEquality().hash(favoriteCryptoCoins),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith =>
      _$AppState$CopyWithImpl<AppState$>(this, _$identity);
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {List<CryptoCoin> cryptoCoins,
      List<CryptoCoin> favoriteCryptoCoins,
      bool isLoading}) = _$AppState$;

  @override
  List<CryptoCoin> get cryptoCoins;
  @override
  List<CryptoCoin> get favoriteCryptoCoins;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}
