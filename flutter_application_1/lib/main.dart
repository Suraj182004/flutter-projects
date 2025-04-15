import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
    title: "My First App",
    home: HomePage(),
));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Text(
        "Hello World!",
        style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
      ),

    );
  }
}