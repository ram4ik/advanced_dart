import 'dart:io';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils/buffer.dart';


main(List<String> args) async {
  
  var s = ConnectionSettings(
    user: "root",
    password: "dart_jaguar",
    host: "localhost",
    port: 3306,
    db: "example",
  );
  var conn = await MySqlConnection.connect(s);

  print(conn);

  await conn.close();

  exit(0);
}