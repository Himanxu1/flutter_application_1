import 'dart:ui';

import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png"),
          const SizedBox(
              height: 20.0,
          ),
           const Text(
          "Welcome",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
              height: 20.0,
          ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
          child: Column(
            children: [
               TextFormField(
             decoration: const InputDecoration(
               hintText: "Enter Username",
               labelText: "Username"
             ),
           ),
            TextFormField(
              obscureText: true,
             decoration: const InputDecoration(
               hintText: "Enter Password",
               labelText: "Password"
             ),
           ),
           const SizedBox(
              height: 20.0,
          ),
           

           ElevatedButton(onPressed: (){},
           style: TextButton.styleFrom(), 
           child: const Text("Login"))
          

            ],
          ),
        )
          
          ],
        ),);
  }
}