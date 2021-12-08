class CryptoCoin {
  CryptoCoin(this.id, this.name, this.symbol, this.price);

  final int id;
  final String name;
  final String symbol;
  final double price;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'symbol': symbol,
      'price': price,
    };
  }

  @override
  String toString() {
    return 'Name: $name, symbol: $symbol, price: $price';
  }
}
