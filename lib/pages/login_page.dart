import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spacelogin/components/my_button.dart';
import 'package:spacelogin/components/my_textfield.dart';
import 'package:spacelogin/components/square_tile.dart';

class Loginpage extends StatefulWidget{
  final Function()? onTap;
  
   const Loginpage({super.key, required this.onTap});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signUserIn() async {
    showDialog(context: context, builder:(context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
    );
    
  
      
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password:passwordController.text
      );
      Navigator.pop(context);

    }on FirebaseAuthException catch (e) {

      Navigator.pop(context);
      showErrorMessage(e.code);

    }
     
    } 
    void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return  AlertDialog(
          title:Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          )
        );
      },
    );
  }

  

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      
      backgroundColor:const  Color.fromARGB(255, 254, 253, 253),
      body: SafeArea(
        child: Center(
          child: Column(
         
             children:   [
              const SizedBox(height: 50,),

              
             const Icon(Icons.rocket_launch,
            size: 100,
            color: Color.fromARGB(255, 0, 0, 0),
            ),
             const SizedBox(height: 50),
             const Text("Welcome2Space",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold,
            fontSize: 35,
            ),
            ),
            const SizedBox(height: 20,),



            MytextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            const SizedBox(height: 15,),

            MytextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),


            const SizedBox(height: 15,),

            Text('Forgot Password?',
            style: TextStyle(color: Colors.grey[600]),
            ),

            const SizedBox( height: 15,),

            Mybutton(
              text: "Sign in",
              onTap: signUserIn,
            ),

             const SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
            
                  ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Or Continue with',
                    style: TextStyle(color: Colors.grey
                    ),
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


             const SizedBox(height: 15,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  const [
                 Squaretile(imagePath:'lib/images/apple.png'),
                 SizedBox(width: 40,),
                 Squaretile(imagePath: 'lib/images/google.png')
                
              ],
            ),

             const SizedBox(height: 15,),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member?'),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Register Now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),





            
            

            
          ]),
        ),
      ),
    );
  }
}