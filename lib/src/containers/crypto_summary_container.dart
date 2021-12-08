import 'package:flutter/material.dart';
import 'package:flutter_final/src/models/app_states.dart';
import 'package:flutter_final/src/models/crypto_coin.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class CryptoSummaryContainer extends StatelessWidget {
  const CryptoSummaryContainer({Key? key, required this.builder})
      : super(key: key);

  final ViewModelBuilder<List<CryptoCoin>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<CryptoCoin>>(
      converter: (Store<AppState> store) {
        return store.state.cryptoCoins;
      },
      builder: builder,
    );
  }
}
