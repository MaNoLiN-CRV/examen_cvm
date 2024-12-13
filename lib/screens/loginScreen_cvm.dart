import 'package:flutter/material.dart';
import 'package:examen_cvm/routes/appRoutes.dart';
import 'package:examen_cvm/widgets/widgets.dart';


class LoginScreen extends StatelessWidget {
   
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    String user = '';
    String password = '';
    return Scaffold(
      body: Center(
         child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 100,
                  ),
                  SizedBox(height: 30,),
                  TextFormWidgetCustom(
                    isPassword: false,
                    labelText: 'Usuario',
                    obscureText: false,
                    onSaved: (value) => user = value!,
                    validator: (value) => value!.isEmpty ? 'El usuario es requerido' : null,
                  ),
                  SizedBox(height: 30,),
                  TextFormWidgetCustom(
                    labelText: 'Contraseña',
                    obscureText: true,
                    onSaved: (value) => password = value!,
                    validator: (value) => value!.isEmpty ? 'La contrasen a es requerida' : null,
                    isPassword: true,
                  ),   
                  SizedBox(height: 30,),
                  ElevatedButton(
                    child: Text('Iniciar sesion'),
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                        Navigator.pushNamed(context, AppRoutes.MenuOptions[3].route);
                      }
                    },
                  ),
                  SizedBox(height: 30,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () => Navigator.pushNamed(
                        context, AppRoutes.MenuOptions[0].route,
                      ),
                      child: Text('Volver al inicio')
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),  
    );
  }
}
