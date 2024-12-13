import 'package:flutter/material.dart';
import 'package:examen_cvm/routes/appRoutes.dart';
import 'package:examen_cvm/widgets/widgets.dart';
class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: [
          CustomButton( text: 'Sign In', onPressed: (){
             Navigator.pushReplacementNamed(context, AppRoutes.MenuOptions[2].route);
          }, decoration: const BoxDecoration( color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(10)) ),  ),
          CustomButton( text: 'Sign Up', onPressed: (){
          // Not functional
          }, decoration: const BoxDecoration( color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(10)) ),  ),

         ],
      ),
    );
  }
}