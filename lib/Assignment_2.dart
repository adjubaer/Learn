import 'package:flutter/material.dart';

import 'Widget/FlagPic.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Assignment-2',style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,centerTitle: true,),
      body: LayoutBuilder(
        builder: (context, constraints){
          int crossAxisCount;
          double width = constraints.maxWidth;

          if (width >= 1024) {
            crossAxisCount = 4; // Desktop
          } else if (width >= 768) {
            crossAxisCount = 3; // Tablet
          } else {
            crossAxisCount = 2; // Mobile
          }
          return GridView.count(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: EdgeInsets.all(10),
            children: [
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/bg-flag.gif', countryname: 'Bangladesh', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/pk-flag.gif', countryname: 'Pakistan', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/af-flag.gif', countryname: 'Afghanistan', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/ar-flag.gif', countryname: 'Argentina', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/sa-flag.gif', countryname: 'Saudi Arabia', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/qa-flag.gif', countryname: 'Qatar', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/ja-flag.gif', countryname: 'Japan', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/al-flag.gif', countryname: 'Albania', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/as-flag.gif', countryname: 'Australia', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/ca-flag.gif', countryname: 'Canada', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/ch-flag.gif', countryname: 'China', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/rp-flag.gif', countryname: 'Philippines', rating: '5.0',),
              FlagPic(flagpic: 'https://www.worldometers.info/img/flags/rs-flag.gif', countryname: 'Russia', rating: '5.0',),
            ],
          );
        },

      ),
    );

  }
}








