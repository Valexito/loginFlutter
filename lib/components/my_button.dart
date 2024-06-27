import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 4, 9, 82),
          borderRadius: BorderRadius.circular(8),
          ),
          child: Center(child: Text(
          "Iniciar Sesion",
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          ),
          ),
        ),
      ),
    );
  }
}