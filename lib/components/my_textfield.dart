import 'package:flutter/material.dart';

class MytextField extends StatelessWidget{
final controller;
final String hintText;
final bool obscureText;


  const MytextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,

    });
  
  @override
  Widget build(BuildContext context){
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 550.0),
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 92, 90, 90))
                  ),
                focusedBorder:  const OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
            );
  }
}
  