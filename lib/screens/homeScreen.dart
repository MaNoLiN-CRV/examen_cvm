import 'package:flutter/material.dart';
import 'package:examen_cvm/routes/appRoutes.dart';
import 'package:examen_cvm/widgets/widgets.dart';
class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
          FlutterLogo( size: 100, ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.MenuOptions[1].route);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text('Sign In'),
          ),
          SizedBox(height: 20),
          CustomButton( text: 'Sign Up', 
          onPressed: AppRoutes.MenuOptions[0] , decoration: const BoxDecoration( color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(10)) ),  ),

         ],
        ),
      ),
    );
  }
}
