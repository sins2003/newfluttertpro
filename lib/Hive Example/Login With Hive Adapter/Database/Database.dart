class DBfunction{
  DBfunction.internal();
  //if the class have one object we can called instance
  //singlton class
  static DBfunction instance=DBfunction.internal();
  factory DBfunction(){ //facrory constructor
    return instance;
  }
}