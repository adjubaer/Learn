import 'package:flutter/material.dart';

class MedQuery extends StatefulWidget {
  const MedQuery({super.key});

  @override
  State<MedQuery> createState() => _MedQueryState();
}

class _MedQueryState extends State<MedQuery> {
  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size; //screen size declare
    // double screenWidth = MediaQuery.of(context).size.width;
    double Fontsize = screenSize.width > 600 ? 32 : 16;//with the screen the text size also change for this command. here declare the text size condition
    double PixelRatio = MediaQuery.of(context).devicePixelRatio;// we can see the next class
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: screenSize.height * 0.3,
                width: screenSize.width * 0.5,
                color: Colors.red,
              ),
            ),
            Text("This is MediaQuery", style: TextStyle(fontSize: Fontsize)),
            Text("Pixel Ratio is: $PixelRatio"),
        
            Wrap(
              spacing: 5.0,//side space
              runSpacing: 5.0,//top, bottom spacing
              children:
                List.generate(12, (index){
                  return Container(
                    color: Colors.red,
                    height: 150,
                    width: 150,
                  );
                }),
        
        
            ),
            Card(),
          ],
        ),
      ),
    );
  }
}
