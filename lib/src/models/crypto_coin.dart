class CryptoCoin {
  CryptoCoin(this.id, this.name, this.symbol, this.price, this.isSaved);

  final int id;
  final String name;
  final String symbol;
  final double price;
  final bool isSaved;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
