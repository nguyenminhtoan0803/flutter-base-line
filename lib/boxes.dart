import 'package:hive/hive.dart';
import 'package:demo/models/user.dart';

class Boxes {
  static Box<User> getTransactions() => Hive.box<User>('transactions');
}
