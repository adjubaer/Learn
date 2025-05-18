import 'package:flutter/material.dart';
import 'package:projrct1/class_1.dart';
import 'package:projrct1/loginPage.dart';
class Navi extends StatelessWidget {
  final String name;// kno page theke ai navi page a aste gele kisu condition dawar jonno aivabe final likhe declare kore daoa jay jar fole kno page theke ai page a aste gele ja ja requirements dite hobe seta diye aste hobe

  const Navi({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navi page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),//required text ta ai page show korano holo
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

              }, child: Text('Home')),

              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('back')),
            ],
          ),
        ),
      ),

    );
  }
}
