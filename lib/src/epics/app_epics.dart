import 'package:flutter_final/src/actions/get_cryptos.dart';
import 'package:flutter_final/src/data/coins_api.dart';
import 'package:flutter_final/src/models/app_states.dart';
import 'package:flutter_final/src/models/crypto_coin.dart';
import 'package:flutter_final/src/actions/db_actions.dart';
import 'package:flutter_final/src/data/coins_db_api.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  AppEpics(this._api, this._coinsDBApi);

  final CoinsApi _api;
  final CoinsDBApi _coinsDBApi;

  Epic<AppState> get epics {
    return combineEpics([
      TypedEpic<AppState, GetCryptos>(getCryptos),
      TypedEpic<AppState, GetCryptoFromDB>(getCryptosFromDB),
      TypedEpic<AppState, SaveCrypto>(saveCryptosToDB),
    ]);
  }

  Stream<dynamic> getCryptos(Stream<GetCryptos> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetCryptos action) => Stream<void>.value(null)
            .asyncMap((_) => _api.getCoins(action.start, action.limit))
            .map<Object>((List<CryptoCoin> coins) => GetCryptosSuccessful(coins))
            .onErrorReturnWith((error, stackTrace) => GetCryptosError(error)));
  }

  Stream<dynamic> getCryptosFromDB(Stream<GetCryptoFromDB> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetCryptoFromDB action) => Stream<void>.value(null)
        .asyncMap((_) => _coinsDBApi.getFavCrypto())
        .map<Object>((List<CryptoCoin> coins) => GetCryptoFromDBSuccessful(coins)));
  }

  Stream<dynamic> saveCryptosToDB(Stream<SaveCrypto> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SaveCrypto action) => Stream<void>.value(null)
        .asyncMap((_) => _coinsDBApi.addCryptoToDB(action.coin))
        .map<void>((CryptoCoin coin) => SaveCryptoSuccessful(coin)).doOnData(action.result));
    }
}
