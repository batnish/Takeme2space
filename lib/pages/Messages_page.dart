import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 2, 2),
        title: const Text(
          "Welcome to Messages",
          style:  TextStyle(color: Colors.white),
        ),
       
      ),

    );
  }
}