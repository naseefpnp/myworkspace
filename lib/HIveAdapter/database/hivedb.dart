import 'package:hive/hive.dart';
import 'package:myworkspace/HIveAdapter/models/user_model.dart';

class HiveDb{

  HiveDb.internal();

  static HiveDb instance = HiveDb.internal();

  factory HiveDb(){ // factory object for creating singleton object
    return instance; // (these class only one instance)
  }
  Future<void> addUser(User user)async {
    final db = await Hive.openBox<User>('userdata');
    db.put(user.id,user);
  }
  Future<List<User>> getUser()async {
    final db = await Hive.openBox<User>('userdata');
    return db.values.toList();
  }
}