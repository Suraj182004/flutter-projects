import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Second App", home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.yellow,
        title: Text("Second App"),
      ),
      body: Container(
        color: Colors.black, 
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.red,Colors.yellow], 
              ),
              shape: BoxShape.circle,
              //borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 20,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "Hello World",
              style: TextStyle(
                fontSize: 20, 
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
