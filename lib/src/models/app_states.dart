import 'package:flutter_final/src/models/crypto_coin.dart';
//part of models;

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
