import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spacelogin/pages/Dashboard_page.dart';
import 'package:spacelogin/pages/Messages_page.dart';
import 'package:spacelogin/pages/activites_pages.dart';
import 'package:spacelogin/pages/users_page.dart';


class HomePage extends StatelessWidget {
  final Function()? onTap;
   HomePage({super.key, required this.onTap});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 2, 2),
        title: Text("Welcome back: ${user.email!}",
        style: const TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            onPressed: signUserOut, icon: const Icon(
              Icons.logout
              )
              )
              ],
              ),
      body:   SafeArea(
        child: Center(
          child:Column(
             children:  [
              const SizedBox(height: 50,),

               ElevatedButton(
                child:  const Text("Dashboard"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardPage(),
                      ));
                },
              ),

              const SizedBox(
                height: 50,
              ),

              ElevatedButton(
                child:  const Text("Activites"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ActivitesPage(),
                      ));
                },
              ),

              const SizedBox(
                height: 50,
              ),

              ElevatedButton(
                child: const Text("Users"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UsersPage(),
                      ));
                },
              ),

              const SizedBox(
                height: 50,
              ),

              ElevatedButton(
                child: const Text("Messages"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MessagesPage(),
                      ));
                },
              ),

              


              


          ],
          ) 
          ),

      )
          
            

          
            
          
        );
       
      
    
  }
}

             

             

          
      