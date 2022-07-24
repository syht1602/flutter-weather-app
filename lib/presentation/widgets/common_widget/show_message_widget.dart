import 'package:flutter/material.dart';

class ShowMessageWidget extends StatelessWidget {
  final String msg;

  const ShowMessageWidget({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(msg),
    );
  }
}
