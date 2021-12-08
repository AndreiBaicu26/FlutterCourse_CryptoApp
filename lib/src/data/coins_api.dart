import 'dart:convert';
import 'package:flutter_final/src/data/coins_db_api.dart';
import 'package:flutter_final/src/models/crypto_coin.dart';
import 'package:http/http.dart';

class CoinsApi {
  final CoinsDBApi _coinsDBApi = CoinsDBApi();

  Future<List<CryptoCoin>> getCoins(int start) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'api.coinlore.net',
      pathSegments: <String>['api', 'tickers'],
      queryParameters: <String, String>{
        'start': '$start',
        'limit': '15',
      },
    );

    final Response response = await get(uri);

    if (response.statusCode != 200) {
      throw StateError('Error fetching crypto data.');
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> cryptoCoins = body['data'] as List<dynamic>;

    final List<CryptoCoin> savedCryptos = await _coinsDBApi.getFavCrypto();
    return cryptoCoins.map((dynamic e) {
      final bool isSaved =
          savedCryptos.any((CryptoCoin coin) => coin.id == int.parse(e['id'] as String));
      return CryptoCoin(int.parse(e['id'] as String), e['name'] as String, e['symbol'] as String,
          double.parse(e['price_usd'] as String), isSaved);
    }).toList();
  }
}
