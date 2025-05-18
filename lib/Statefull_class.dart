import 'package:flutter/material.dart';

import 'Widget/CityCard.dart';

class StdFull extends StatefulWidget {
  const StdFull({super.key});

  @override
  State<StdFull> createState() => _StdFullState();
}

class _StdFullState extends State<StdFull> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull class"),
        backgroundColor: Colors.cyan,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(), //to string er maddhome int type ke string kora hoy
              style: TextStyle(fontSize: 70, color: Colors.deepPurple),
            ),
            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() { //set state screen update kore
                        counter++;
                      });

                    },
                    child: Text('+', style: TextStyle(fontSize: 40)),
                  ),
                ),
                SizedBox(width: 10,),
                SizedBox(
                  width: 180,
                    child: ElevatedButton(onPressed: () {
                      setState(() { //set state screen update kore
                        counter--;
                      });

                    }, child: Text('-', style: TextStyle(fontSize: 40),))),
              ],
            ),
            SizedBox(height: 50,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CityCard(image: 'https://www.worldometers.info/img/flags/af-flag.gif', city: 'Afganishtan',),//customize  widget
                  SizedBox(width: 10,),
                  CityCard(image: 'https://www.worldometers.info/img/flags/af-flag.gif', city: 'Afganishtan',),
                  SizedBox(width: 10,),
                  CityCard(image: 'https://www.worldometers.info/img/flags/af-flag.gif', city: 'Afganishtan',),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


