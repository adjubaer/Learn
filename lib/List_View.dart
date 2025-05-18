import 'package:flutter/material.dart';
class ListV extends StatelessWidget {
  const ListV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body:
      /*ListView.builder(
        itemCount: 50,
        itemBuilder:(context,Index){
          return Text('Item $Index', style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),);
        },
      ),*/
    ListView.builder(
    itemCount: 50,
    itemBuilder:(context,Index){
      return Card(
        child: ListTile(
          leading: Icon(Icons.phone),
          trailing: Icon(Icons.delete),
          title: Text('Md Jubaer Islam'),
          subtitle: Text("01918607901 $Index"),
        ),
      );
    },
    ),
      
    );
  }
}
