import 'dart:io';

void main() {

  // List all files in a directory
  Process.run('ls', ['-la']).then((ProcessResult results) {
    print(results.stdout);
    print('Exit code: ${results.exitCode}');
  });
}