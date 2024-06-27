import 'package:flutter/material.dart';
import 'package:login_screen/components/my_button.dart';
import 'package:login_screen/components/my_textfields.dart';
import 'package:login_screen/components/square_tile.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});


  // text editing controllers
  final usernameController = TextEditingController();
  final passwoordController = TextEditingController();
  // sing user in method

  void signUserIn (){

  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 254, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [

             const SizedBox(height: 50),

              //logo
               const Icon(
                Icons.lock,
                size: 100, 
                
              ),
          

             const SizedBox(height: 50),

              //Welcome Message
           const  Text('Inicio de Sesion',
             style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 16,
              ),
             ),
          
          const SizedBox(height: 25),

              //Username
                MyTextField(
                  controller: usernameController,
                  hintText: 'Correo electronico',
                  obscuredText: false,
                ),
          
            const SizedBox(height: 15),

              //Pwd
              MyTextField(
                controller: passwoordController,
                  hintText: 'Contrasena',
                  obscuredText: true,
              ),
              
              const SizedBox(height: 15),
              
              //Olvidaste tu contraseña
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('¿Olvidaste tu contraseña?',
                    style: TextStyle(color:  Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
              ),
              
              
              const SizedBox(height: 15),

              //Sign In Button
              MyButton(
                onTap: signUserIn,
              ),
          
              //Continue With Other options to login.
              const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    ),


                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Continuar con',
                      style: TextStyle(color:  Color.fromARGB(255, 0, 0, 0)),
                      ),
                  ),
                      Expanded(
                        child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                    ),
                    ),
                ],
              ),
            ),


            const SizedBox(height: 25),
            //Login Options
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                //Google

                SquareTile(imagePath: 'lib/images/google.png'),

                SizedBox(width: 20),
                //Aple
                SquareTile(imagePath: 'lib/images/google.png'),
              ],
            ),

         const SizedBox(height: 25),

         //Registro

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No tienes cuenta?',
                style: TextStyle(
                  color: Colors.grey[700]
                  ),
                ),
              const SizedBox(width: 5),
              const Text(
                'Registrate ahora!',
              style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold,
              ),
              ),
            ],
          )
              
            ],
          ),
        ),
      ),
    );
  }
}