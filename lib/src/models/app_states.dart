import 'package:flutter_final/src/models/crypto_coin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_states.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<CryptoCoin>[]) List<CryptoCoin> cryptoCoins,
    @Default(<CryptoCoin>[]) List<CryptoCoin> favoriteCryptoCoins,
    @Default(false) bool isLoading,
  }) = AppState$;
}
