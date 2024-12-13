import 'package:examen_cvm/models/models.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final MenuOption onPressed;
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
      width:  200,
      height: 50,
      decoration: decoration, 
      child: TextButton(
        onPressed:() => {
          Navigator.pushNamed(context, onPressed.route)
        },
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
