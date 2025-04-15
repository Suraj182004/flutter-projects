import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Listview - Practical 8",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> products = ["Bed", "Sofa", "Chair"];
  final List<String> productdetail = ["King Size", "King Size", "King Size"];
  final List<int> price = [12000, 12500, 36000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(products[index][0]),
              ),
              title: Text(products[index]),
              subtitle: Text(productdetail[index]),
              trailing: Text(price[index].toString())
            );
          }
        ),
      )
    );
  }
}