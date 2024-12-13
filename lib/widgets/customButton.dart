import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final BoxDecoration decoration;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.decoration
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: decoration,
      child: TextButton(
        onPressed:() => onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
