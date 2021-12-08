import 'package:flutter_final/src/models/crypto_coin.dart';
//import 'package:freezed_annotation/freezed_annotation.dart';

class AppState {
  AppState({
    this.cryptoCoins = const <CryptoCoin>[],
    this.isLoading = false,
    this.favoriteCryptoCoins = const <CryptoCoin>[],
  });

  final List<CryptoCoin> cryptoCoins;
  final List<CryptoCoin> favoriteCryptoCoins;
  final bool isLoading;

  AppState copyWith(
      {final List<CryptoCoin>? cryptoCoins, final List<CryptoCoin>? favoriteCryptoCoins, final bool? isLoading}) {
    return AppState(
      cryptoCoins: cryptoCoins ?? this.cryptoCoins,
      favoriteCryptoCoins: favoriteCryptoCoins ?? this.favoriteCryptoCoins,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

// @freezed
// class AppState with _$AppState {
//   const factory AppState({
//     final required List<CryptoCoin> cryptoCoins;
//     final required List<CryptoCoin> favoriteCryptoCoins;
//     final required bool isLoading;
// }) = AppState$;
//
// }
