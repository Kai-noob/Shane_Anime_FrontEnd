import 'dart:async';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class PDFApi {
  static Future<File> loadNetwork(String url) async {
    final response = await http.get(Uri.parse(url));
    final bytes = response.bodyBytes;

    return _storeFile(url, bytes);
  }

  static Future<File> _storeFile(String path, List<int> bytes) async {
    final filename = basename(path);
    final dir = await getApplicationDocumentsDirectory();
    final subStringfilename = filename.substring(0, 30);
    final file = File('${dir.path}/$subStringfilename');
    await file.writeAsBytes(bytes, flush: true);

    return file;
  }
}
