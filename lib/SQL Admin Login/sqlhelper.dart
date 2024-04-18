import 'package:sqflite/sqflite.dart' as sql;

class sqlhelpeeradmin {
  static Future<sql.Database> Admindatabase() async {
    return sql.openDatabase(
      'Admin.db',
      version: 1,
      onCreate: (sql.Database database,int version) async{
        await table1(database);
      },
    );
  }
  static Future<void> table1 (sql.Database database)async{
    await database.execute("""CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT,
    password TEXT)""");
  }
  //new user
  static Future<int> AddNewUser(String name,String eemail,String password)async{
    final db=await sqlhelpeeradmin.Admindatabase();
    final data={'name':name,'email':eemail,'password':password};
    final id= db.insert('users', data);
    return id;
  }
  //user search
  static Future<List<Map>> UserFound(String eemail)async{
    final db=await sqlhelpeeradmin.Admindatabase();
    final data=await db.rawQuery("SELECT * FROM users WHERE email = '$eemail'");
    if(data.isNotEmpty){
      return data;
    }
    else
      return data;
  }
  //check login user details
  static Future<List<Map>>CheckLogin(String email,String password)async{
    final db=await sqlhelpeeradmin.Admindatabase();
    final data=await db.rawQuery("SELECT * FROM users WHERE email='$email' AND password ='$password'");
    if(data.isNotEmpty){
      return data;
    }else{
      return data;
    }
  }
  static Future<void> DeleteUser (int id)async{
    final db=await sqlhelpeeradmin.Admindatabase();
    db.delete('users',where:'id=?',whereArgs: [id]);
  }
  static Future<List<Map>>DisplayUsers()async{
    final db=await sqlhelpeeradmin.Admindatabase();
    final data=db.rawQuery("SELECT * FROM users");
    return data;
  }
}
