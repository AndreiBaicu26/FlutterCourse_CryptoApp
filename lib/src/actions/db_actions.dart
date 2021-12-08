import 'package:flutter_final/src/models/crypto_coin.dart';

class SaveCrypto {
  const SaveCrypto(this.coin, this.result);

  final void Function(dynamic action) result;
  final CryptoCoin coin;
}

class SaveCryptoSuccessful {
  const SaveCryptoSuccessful(this.coin);

  final CryptoCoin coin;
}

class GetCryptoFromDB {
  const GetCryptoFromDB();
}

class GetCryptoFromDBSuccessful {
  const GetCryptoFromDBSuccessful(this.cryptos);

  final List<CryptoCoin> cryptos;
}
