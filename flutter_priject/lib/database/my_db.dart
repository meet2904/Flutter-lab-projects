import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDb{
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'student.db');
    return await openDatabase(databasePath);
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "student.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data = await rootBundle.load(join('assets/database', 'student.db'));
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      print("asf");
      return true;
    }
    return false;
  }

  Future<List<Map<String, dynamic>>> getStd() async{
    Database db = await initDatabase();
    List<Map<String, dynamic>> data = await db.rawQuery('select * from std');
    return data;
  }

  Future<void> delstd(String a) async{
    Database db = await initDatabase();
    await db.rawDelete("delete from std where enroll='$a'");
  }

  Future<int> insertUser(Map<String, Object?> map) async {
    Database db = await initDatabase();

    var res =await db.insert("std", map);
    return res;
  }

  Future<int> editUser(Map<String,Object?> map,id) async {
    Database db = await initDatabase();

    var res =await db.update("std", map,where: "enroll = ?",whereArgs: [id]);
    return res;
  }
}