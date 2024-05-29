import 'dart:io';

String fixture(String fileName) => File('test/fixures/$fileName').readAsStringSync();