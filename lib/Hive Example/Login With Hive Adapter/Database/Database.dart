import 'package:hive/hive.dart';
import 'package:newfluttertpro/Hive%20Example/Login%20With%20Hive%20Adapter/Model%20Class/usermodel.dart';

class DBfunction{
  DBfunction.internal();
  //if the class have one object we can called instance
  //singlton class
  static DBfunction instance=DBfunction.internal();
  factory DBfunction(){ //facrory constructor
    return instance;
  }
  Future<void>UserSignup(User user)async{
    final db=await Hive.openBox<User>('users');
    db.put(user.id, user);
  }
  Future<List<User>>GetUser()async{
    final db=await Hive.openBox<User>('users');
    return db.values.toList();
  }
}