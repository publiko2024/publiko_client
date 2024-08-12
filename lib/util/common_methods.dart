import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:publiko_app/ui_common_components/dialog_for_notice.dart';

void buildDialogForNotice(
    {required BuildContext context, required String description}) {
  showDialog(
      context: context,
      barrierColor: Colors.black38, //배경색
      builder: (BuildContext context) {
        return DialogForNotice(description: description);
      });
}

Future<File> loadAssetAsFile(String assetPath) async {
  // Get the directory to store the file
  final directory = await getTemporaryDirectory();
  final filePath = '${directory.path}/temp_image.png';

  // Load asset as bytes
  final byteData = await rootBundle.load(assetPath);
  final buffer = byteData.buffer.asUint8List();

  // Write bytes to a file
  final file = File(filePath);
  await file.writeAsBytes(buffer);

  return file;
}
