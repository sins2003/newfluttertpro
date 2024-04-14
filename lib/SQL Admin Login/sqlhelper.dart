import 'package:sqflite/sqflite.dart' as sql;

class sqlhelpeeradmin {
  static Future<sql.Database> Admindatabase() async {
    return sql.openDatabase(
      'Admin.db',
      version: 1,
      onCreate: (sql.Database database,int version) async{
        await Userinfo(database);
      },
    );
  }
  static Future<void> Userinfo (sql.Database database)async{
    await database.execute("""CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    email TEXT,
    password INTEGER,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)""");
  }
}
