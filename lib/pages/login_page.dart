
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';


class Login_Page extends StatefulWidget {
 
 
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:  SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png"),
            const SizedBox(
                height: 20.0,
            ),
             Text(
            "Welcome $name",
             style: const TextStyle(
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
               onChanged: (value){
                 name = value;
                 setState(() {});
               },

             ),
              TextFormField(
                obscureText: true,
               decoration: const InputDecoration(
                 hintText: "Enter Password",
                 labelText: "Password"
               ),
             ),
             const SizedBox(
                height: 60.0,
            ),
             
      
            //  ElevatedButton(onPressed: (){
            //    Navigator.pushNamed(context, MyRoutes.homeRoute);
            //  },
            //  style: TextButton.styleFrom(minimumSize: Size(150, 40)), 

            //  child: const Text("Login"))
            

             InkWell(
               
               onTap:() async{
                 setState(() {
                   changeButton = true;
                 }); 
                 await Future.delayed(Duration(seconds : 1));
                 Navigator.pushNamed(context, MyRoutes.homeRoute);
               },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: changeButton? 50 : 150,
                height: 50,
                alignment: Alignment.center,
                
                child: changeButton ? Icon(Icons.done , color: Colors.white) : Text("Login",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  

                ),
             
                ),
                decoration: BoxDecoration(
                 color: Colors.deepPurple,
                //  shape: changeButton?BoxShape.circle : BoxShape.rectangle,
                 borderRadius: BorderRadius.circular(changeButton? 20 : 8)),
            
              ),
            ),
      
              ],
            ),
          )
            
            ],
          ),
      ),
      
      );
  }
}