import 'package:flutter_final/src/actions/get_cryptos.dart';
import 'package:flutter_final/src/actions/db_actions.dart';
import 'package:flutter_final/src/models/app_states.dart';
import 'package:flutter_final/src/models/crypto_coin.dart';

AppState reducer(AppState appState, dynamic action) {
  if (action is GetCryptosSuccessful) {
    final cryptos = <CryptoCoin>[];

    cryptos.addAll(appState.cryptoCoins);
    cryptos.addAll(action.cryptos);
    return appState.copyWith(cryptoCoins: cryptos, isLoading: false);
  } else if (action is GetCryptosError) {
    return appState.copyWith(cryptoCoins: appState.cryptoCoins, isLoading: false);
  } else if (action is GetCryptos) {
    return appState.copyWith(cryptoCoins: appState.cryptoCoins, isLoading: true);
  }

  if (action is GetCryptoFromDBSuccessful) {
    final cryptos = <CryptoCoin>[];

    cryptos.addAll(appState.favoriteCryptoCoins);
    cryptos.addAll(action.cryptos);
    return appState.copyWith(cryptoCoins: cryptos);
  }

  return appState;
}
