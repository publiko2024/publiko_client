import 'package:flutter/cupertino.dart';
import 'package:publiko_app/constants/size_config.dart';

class DialogForNotice extends StatelessWidget {
  final String description;
  const DialogForNotice({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Text(
        description,
        style: TextStyle(fontSize: getWidth(14)),
      ),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
          },
          textStyle: TextStyle(
            fontSize: getWidth(12),
          ),
          child: const Text('확인'),
        )
      ],
    );
  }
}
