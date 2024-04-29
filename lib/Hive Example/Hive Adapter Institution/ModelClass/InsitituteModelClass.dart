import 'package:hive/hive.dart';
part 'InsitituteModelClass.g.dart';
@HiveType(typeId: 1)
class UserInstitution{
  @HiveField(0)
  String name;

  @HiveField(1)
  String email;

  @HiveField(2)
  String password;

  @HiveField(3)
  String course;

  @HiveField(4)
  String graduation;

  @HiveField(5)
  String? id;

  UserInstitution(
      {required this.email,
      required this.name,
      required this.password,
      required this.course,
      required this.graduation}) {
    id=DateTime.now().microsecondsSinceEpoch.toString();
  }
}
