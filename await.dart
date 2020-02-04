import 'dart:io';
import 'dart:async';

void main(List<String> args) async {
  
  print('Sterting');

  File file = await appendFile();

  print('Append to file ${file.path}');

  print('*** End');
}

Future<File> appendFile() {
  File file = new File(Directory.current.path + '/test.txt');
  DateTime now = new DateTime.now();
  return file.writeAsString(now.toString() + '\r\n', mode: FileMode.APPEND);
}