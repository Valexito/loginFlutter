import 'package:flutter/material.dart';
import 'package:login_screen/components/my_textfields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children:  [

             const SizedBox(height: 50),

              //logo
               const Icon(
                Icons.lock,
                size: 100, 
                
              ),
          

             const SizedBox(height: 50),

              //Welcome Message
             Text('Inicio de Sesion',
             style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
              ),
             ),
          
          const SizedBox(height: 25),

              //Username
                MyTextField(),
          
          const SizedBox(height: 15),
              //Pwd
              MyTextField(),
              //Sign In Button
          
          
              //Continue With Other options to login.
              
            ],
          ),
        ),
      ),
    );
  }
}