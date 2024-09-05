import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spacelogin/pages/login_page.dart';

import 'home_page.dart';
import 'login_or_register_page.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return HomePage(onTap: () {  },);
            }
            else {
              return const LoginOrRegisterPage();
            }
        },
      ),
      
   );
  }
}