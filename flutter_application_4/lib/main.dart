import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "LAB 4",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab4"),
      ),
      body: Container(),
      drawer:Drawer(
        child: ListView(
          children: [
            // DrawerHeader(
            //   child:Text("Browser"),
            //   decoration: BoxDecoration(
            //     color:Colors.blue
            //   ),
            
            // )
            UserAccountsDrawerHeader(
              accountName: Text("Suraj"), 
              accountEmail: Text("surajyaligar2004@gmail.com"),
              currentAccountPicture: Image.network("https://images.unsplash.com/photo-1738417715244-338e5a70bdda?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),

              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text("Personal Information"),
                trailing: Icon(Icons.edit),

              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("surajyaligar2004@gmail.com"),
                trailing: Icon(Icons.send),

              )

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show a message when button is pressed
          print("Hello");
          
        },
        child: Icon(Icons.edit), 
      ),
    );
  }
}
