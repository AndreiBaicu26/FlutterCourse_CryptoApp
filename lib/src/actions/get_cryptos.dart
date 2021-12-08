import 'package:flutter_final/src/models/crypto_coin.dart';

class GetCryptos{
  const GetCryptos(this.start, this.limit);

  final int start;
  final int limit;
}

class GetCryptosSuccessful {
  const GetCryptosSuccessful(this.cryptos);

  final List<CryptoCoin> cryptos;
}

class GetCryptosError {
  const GetCryptosError(this.error);

  final Object error;
}
