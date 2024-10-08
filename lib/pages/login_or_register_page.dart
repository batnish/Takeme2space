import 'package:flutter/material.dart';
import 'package:spacelogin/pages/login_page.dart';
import 'package:spacelogin/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {

  bool showLoginPage = true;
  
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  
  @override
  Widget build(BuildContext context) {
   if(showLoginPage){
    return Loginpage(
      onTap: togglePages,
    );
   }
   else {
    return Registerpage(
      onTap: togglePages,
      );
   }
  }
}