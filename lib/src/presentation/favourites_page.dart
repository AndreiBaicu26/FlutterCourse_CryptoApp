import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_final/src/actions/db_actions.dart';
import 'package:flutter_final/src/models/app_states.dart';
import 'package:flutter_final/src/models/crypto_coin.dart';
import 'package:flutter_final/src/containers/saved_cryptos_container.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  void initState() {
    super.initState();

    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(const GetCryptoFromDB());
  }

  @override
  Widget build(BuildContext context) {
    return SavedCryptosContainer(
      builder: (BuildContext context, List<CryptoCoin> coins) {
        return ListView.builder(
          itemCount: coins.length,
          itemBuilder: (BuildContext context, int index) {
            final CryptoCoin coin = coins[index];
            return ListTile(
              title: Text(coin.name),
              subtitle: Text('${coin.price}\$'),
            );
          },
        );
      },
    );
  }
}
