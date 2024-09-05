import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spacelogin/components/my_button.dart';
import 'package:spacelogin/components/my_textfield.dart';
import 'package:spacelogin/components/square_tile.dart';

class Registerpage extends StatefulWidget{
  final Function()? onTap;
  
   const Registerpage({super.key, required this.onTap});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final emailController = TextEditingController();
 final passwordController = TextEditingController();
 final confirmpasswordController = TextEditingController();


  void signUserUp() async {
    showDialog(context: context, builder:(context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
    );
    
  
      
    try{

      if(passwordController.text == confirmpasswordController.text){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text, 
      password:passwordController.text
      );
    }
    else {
      showErrorMessage('Password Dont match');
    }
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
              const SizedBox(height: 15,),

              
             const Icon(Icons.rocket_launch,
            size: 100,
            color: Color.fromARGB(255, 0, 0, 0),
            ),
             const SizedBox(height: 50),
             const Text("Lets Create an account",
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

            const SizedBox(
              height: 15,
            ),
            
            MytextField(
              controller: confirmpasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),


            const SizedBox(height: 15,),

            

            const SizedBox( height: 15,),

            Mybutton(
              text: 'Sign up',
              onTap: signUserUp,
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
                children:  [
                  const Text('Already have an account??'),
                  const SizedBox( width: 10,),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text('Login Now',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                  )
                ],
               ),
             





            
            

            
          ]),
        ),
      ),
    );
  }
}