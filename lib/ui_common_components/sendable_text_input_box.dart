import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:publiko_app/constants/color_styles.dart';
import 'package:publiko_app/constants/size_config.dart';

class SendableTextInputBox extends StatelessWidget {
  final void Function(String text) onChanged;
  final void Function() send;
  final String hintText;
  const SendableTextInputBox(
      {super.key,
      required this.onChanged,
      required this.send,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getHeight(100),
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(15), vertical: getHeight(15)),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 12,
            offset: Offset(0, -4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          TextField(
            onChanged: onChanged,
            decoration: InputDecoration(
                hintText: hintText,
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.mic_fill)),
                contentPadding: EdgeInsets.symmetric(
                    vertical: getHeight(10), horizontal: getWidth(15)),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(width: 1, color: Color(0xFFA6A7A6)),
                )),
          ),
          ElevatedButton(
              onPressed: send,
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), backgroundColor: ColorStyles.primary),
              child: Icon(
                CupertinoIcons.paperplane,
                color: ColorStyles.white,
              ))
        ],
      ),
    );
  }
}
