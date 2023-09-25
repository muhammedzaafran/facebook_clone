import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;


  CircularButton({
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor = Colors.black,
  });


  @override
  Widget build(BuildContext context) {

    Widget;
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          icon: Icon(buttonIcon,
            color:Colors.blue,
            size:25,
          ),
          onPressed: buttonAction
      ),
    );
  }
}