import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_final/src/data/coins_api.dart';
import 'package:flutter_final/src/data/coins_db_api.dart';
import 'package:flutter_final/src/epics/app_epics.dart';
import 'package:flutter_final/src/models/app_states.dart';
import 'package:flutter_final/src/presentation/home_page.dart';
import 'package:flutter_final/src/presentation/favourites_page.dart';
import 'package:flutter_final/src/reducer/reducer.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:redux/redux.dart';

void main() {
  final CoinsApi coinsApi = CoinsApi();
  final CoinsDBApi coinsDBApi = CoinsDBApi();

  final AppEpics appEpics = AppEpics(coinsApi, coinsDBApi);

  final store = Store<AppState>(
    reducer,
    middleware: <Middleware<AppState>>[
      (Store<AppState> store, dynamic action, NextDispatcher next) {
        next(action);
        print(store.state);
      },
      EpicMiddleware<AppState>(appEpics.epics),
    ],
    initialState: AppState(),
  );
  runApp(CryptoApp(store: store));
}

class CryptoApp extends StatelessWidget {
  const CryptoApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
          theme: ThemeData.dark(),
          home: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Your crypto app'),
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'All Cryptos'),
                    Tab(text: 'Saved'),
                  ],

                ),
              ),
              body: TabBarView(
                children: [
                  const HomePage(),
                  const FavouritesPage()
                ],
              ),

            ),
          )),
    );
  }
}
