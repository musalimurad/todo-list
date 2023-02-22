import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  String title;
  VoidCallback func;
  TooltipWidget({Key? key, required this.title, required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: '$title todo',
      child: TextButton(
        onPressed: () {
          func();
        },
        child: Text(title),
      ),
    );
  }
}
