abstract class Database {
  void connect();
  void disconnect();
  void save(String data);
}

class MySqlDatabase implements Database {
  @override
  void connect() => print('MySQL: підключення...');

  @override
  void disconnect() => print('MySQL: відключення.');

  @override
  void save(String data) => print('MySQL: збереження "$data"');
}

class MongoDatabase implements Database {
  @override
  void connect() => print('MongoDB: підключення...');

  @override
  void disconnect() => print('MongoDB: відключення.');

  @override
  void save(String data) => print('MongoDB: збереження "$data"');
}
