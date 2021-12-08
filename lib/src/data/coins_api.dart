import 'dart:convert';

import 'package:flutter_final/src/models/crypto_coin.dart';
import 'package:http/http.dart';

class CoinsApi {
  Future<List<CryptoCoin>> getCoins(int start, int limit) async {
    List<CryptoCoin> coinList = <CryptoCoin>[];
    final Uri uri = Uri(
      scheme: 'https',
      host: 'api.coinlore.net',
      pathSegments: <String>['api', 'tickers'],
      queryParameters: <String, String>{
        'start': '$start',
        'limit': '$limit',
      },
    );

    final Response response = await get(uri);

    if (response.statusCode != 200) {
      throw StateError('Error fetching crypto data.');
    }

    final Map<String, dynamic> body = jsonDecode(response.body);
    final List<dynamic> cryptoCoins = body['data'] as List<dynamic>;
    return cryptoCoins.map((dynamic e) => CryptoCoin(int.parse(e['id']), e['name'], e['symbol'], double.parse(e['price_usd']))).toList();
  }
}
