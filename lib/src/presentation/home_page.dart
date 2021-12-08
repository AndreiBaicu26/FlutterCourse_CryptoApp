import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_final/src/actions/get_cryptos.dart';
import 'package:flutter_final/src/models/app_states.dart';
import 'package:flutter_final/src/models/crypto_coin.dart';
import 'package:flutter_final/src/containers/crypto_summary_container.dart';
import 'package:flutter_final/src/data/coins_db_api.dart';
import 'package:flutter_final/src/actions/db_actions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    final Store store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(GetCryptos(10, 10));
  }

  void onSave(dynamic action) {
    if (action is SaveCryptoSuccessful) {
      final SnackBar snackBar = SnackBar(
        content: Text('${action.coin.name} added to your list!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CryptoSummaryContainer(
      builder: (BuildContext context, List<CryptoCoin> coins) {
        return ListView.builder(
          itemCount: coins.length,

          itemBuilder: (BuildContext context, int index) {
            final CryptoCoin coin = coins[index];

            return ListTile(
              title: Text(coin.name),
              subtitle: Text('${coin.price}\$'),
              trailing: IconButton(
                icon: Icon(Icons.star),
                onPressed: () {
                  final Store store = StoreProvider.of<AppState>(context, listen: false);
                  store.dispatch(SaveCrypto(coin, onSave));
                },
              ),
            );

          },
        );
      },
    );
  }
}
