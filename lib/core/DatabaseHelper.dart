import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
class DatabaseHelper{
  static final DatabaseHelper _instance = new DatabaseHelper();

  factory DatabaseHelper() => _instance;
  static Database? _db;
 Future<Database?> get db async {
    if(_db != null) {
      return _db;
    }
    _db = await initDb();//init database
    return _db;
 }
 DatabaseHelper.internal();

 initDb() async {
   Directory documentDirectory = await getApplicationDocumentsDirectory();//get path

   String path = join(documentDirectory.path, "data_flutter.db");

   ByteData data = await rootBundle.load(join('data', 'flutter.db'));
   List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
   // Save copied asset to documents
   await new File(path).writeAsBytes(bytes);
   var ourDb = await openDatabase(path);
   return ourDb;
 }
}