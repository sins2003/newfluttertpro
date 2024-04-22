import 'package:sqflite/sqflite.dart' as sql;

class SQLHelprHotel {
  static Future<sql.Database> OpenDB() async {
    return sql.openDatabase(
      'users',
      version: 1,
      onCreate: (sql.Database db, int version) async {
        await CreateTable(db);
      },
    );
  }

  static Future<void> CreateTable(sql.Database db) async {
    db.execute("""CREATE TABLE userinfo(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT,
    password TEXT) """);
  }

  static Future<int> AddNewUser(
      String name, String email, String password) async {
    final db = await SQLHelprHotel.OpenDB();
    final data = {'name': name, 'email': email, 'password': password};
    final id = db.insert('userinfo', data);
    return id;
  }

  static Future<void> DeleteUser(int id) async {
    final db = await SQLHelprHotel.OpenDB();
    db.delete('userinfo', where: 'id=?', whereArgs: [id]);
  }

  static Future<List<Map>> UserSearch(String email) async {
    final db = await SQLHelprHotel.OpenDB();
    final data =
        await db.rawQuery('SELECT * FROM userinfo WHERE email="$email"');
    if (data.isNotEmpty) {
      return data;
    } else {
      return data;
    }
  }

  static Future<List<Map>> CheckUser(String email, String password) async {
    final db = await SQLHelprHotel.OpenDB();
    final data = await db.rawQuery(
        "SELECT * FROM userinfo WHERE email = '$email' AND password = '$password'");
    if (data.isNotEmpty) {
      return data;
    } else {
      return data;
    }
  }

  static Future<List<Map>> DsiplayUsers() async {
    final db = await SQLHelprHotel.OpenDB();
    final data = db.rawQuery("SELECT * FROM userinfo");
    return data;
  }
}
