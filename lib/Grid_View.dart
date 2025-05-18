import 'package:flutter/material.dart';
class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      /*body: GridView.count(//pasapasi kotogula grid show korbe
          crossAxisCount: 2,
          padding: EdgeInsets.all(10),
          crossAxisSpacing: 10,
        mainAxisSpacing: 10,*/
      body: GridView.builder(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ) ,
          itemCount: 11,
          itemBuilder:(context,index ){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange.shade800,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: Colors.white,),
                    SizedBox(height: 20,),
                    Text('Send Money', style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            );
          },
      ),

    );
  }
}

