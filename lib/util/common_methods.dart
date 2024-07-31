import 'package:flutter/material.dart';
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
