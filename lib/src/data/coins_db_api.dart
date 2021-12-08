import 'package:flutter_final/src/models/crypto_coin.dart';
import 'package:flutter_final/src/models/db.dart';
import 'package:sqflite/sqflite.dart';

class CoinsDBApi {
  Future<CryptoCoin> addCryptoToDB(CryptoCoin coin) async {
    final Database db = await CryptoDatabase.instance.database;
    await db.insert(
      'cryptos',
      coin.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return coin;
  }

  Future<List<CryptoCoin>> getFavCrypto() async {
    final Database db = await CryptoDatabase.instance.database;
    final List<Map<String, dynamic>> maps = await db.query('cryptos;');

    return List.generate(maps.length, (i) {
      print(maps[i]);
      print(maps[i]['id'] is int);
      return CryptoCoin(maps[i]['id'], maps[i]['name'], maps[i]['symbol'], maps[i]['price']);
    });
  }
}
