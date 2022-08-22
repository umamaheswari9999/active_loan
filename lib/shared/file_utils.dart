import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

class FileUtils {
  static Future<File> saveInTemp(Uint8List data, String name) async {
    var directory = await getApplicationDocumentsDirectory();
    var file = await File('${directory.path}/$name').create();
    await file.writeAsBytes(data);
    return file;
  }
}