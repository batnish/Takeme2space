import 'package:flutter/material.dart';

class ActivitesPage extends StatelessWidget {
  const ActivitesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 2, 2),
        title: const Text(
          "Welcome to Actvities",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
