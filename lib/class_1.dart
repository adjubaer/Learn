import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold is material app er structure
      appBar: AppBar(
        title: Text(
          "This is Home page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[300],
      ),

      //body text
      /*body: Text('This is body text', style: TextStyle(
        fontSize: 50,
        color: Colors.orange,
        fontWeight: FontWeight.w400,

      ),),*/

      //column body
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              child: Icon(Icons.add_call, size: 50, color: Colors.cyanAccent),
            ),
            IconButton(
              onPressed: () {
                print("Item deleted");
              },
              icon: Icon(Icons.delete),
            ),

            TextButton(
              onPressed: () {
                Text("click me from text button");
              },
              child: Text(
                "Click me",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.black87),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              'This is Column',
              style: TextStyle(fontSize: 30, color: Colors.black87),
            ),
          ],
        ),
      ),

      //row body
      /*body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Text('This is Column', style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),),
            SizedBox(
              width: 10,
            ),
            Text('This is Column', style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),),
            SizedBox(
              width: 10,
            ),
            Text('This is Column', style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),),
            SizedBox(
              width: 10,
            ),
            Text('This is Column', style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),),
            SizedBox(
              width: 10,
            ),
            Text('This is Column', style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),),

          ],
        ),
      ),*/
    );
  }
}
