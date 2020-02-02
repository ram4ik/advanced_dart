import 'dart:io';
import 'dart:convert';

void main() {

  Process.start('cat', []).then((Process process) {
    
    process.stdout.transform(utf8.decoder).listen((data) {
      print(data);
    });

    process.stdin.writeln('Hello Dart');

    Process.killPid(process.pid);

    process.exitCode.then((int code) {
      print('Exit code: ${code}');

      exit(0);

    });

  });
}