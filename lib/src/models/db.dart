import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class CryptoDatabase {
  static final CryptoDatabase _db = new CryptoDatabase._internal();

  CryptoDatabase._internal();

  static CryptoDatabase get instance => _db;
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _init();
    return _database!;
  }

  Future<Database> _init() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'crypto.db'),
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE cryptos(id INTEGER PRIMARY KEY, name TEXT, symbol TEXT, price REAL);',
        );
        // more create statements....
      },
      version: 1,
    );
  }
}
