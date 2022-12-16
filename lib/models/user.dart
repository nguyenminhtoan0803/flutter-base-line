import 'package:hive_flutter/adapters.dart';

part '../core/data/adapter/user.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  late String username;

  @HiveField(1)
  late String password;
}
