import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModuleNineClassTwo extends StatefulWidget {
  const ModuleNineClassTwo({super.key});

  @override
  State<ModuleNineClassTwo> createState() => _ModuleNineClassTwoState();
}

class _ModuleNineClassTwoState extends State<ModuleNineClassTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 9 Class 2',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),

//*************Use screen util (Responsive) package from pub.dev***********************
//**********************this is the another way to media query*********************
            Container(
              height: 200.h,
              width: 300.w,
              color: Colors.blueGrey,
            ),
            Text('This is Responsive Text', style: TextStyle(
              fontSize: 30.sp,
            ),),

//*******************Fractionally SizeBox*********************************



            
            FractionallySizedBox(
              widthFactor: 0.5,
              child: ElevatedButton(onPressed: (){}, child: Text('Button')),
            ),

            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),

              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2)
              ),
              height: 200,
              child: FractionallySizedBox(
                heightFactor: 0.6,
                child: Container(
                  color: Colors.blue,
                  child: Center(child: Text('This is fg')),
                ),
              ),
            ),

//*******************************This is Flexible example , flexible and expander all most similar but flexible can control
            Row(
              children: [
                Flexible(
                  flex: 2,// flex er maddhome size can control
                  child: Container(
                    height: 100,
                    color: Colors.lightGreenAccent,
                  ),
                ),
                Flexible(
                  child: Container(
                    height: 100,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                Flexible(
                  child: Container(
                    height: 100,
                    color: Colors.yellowAccent,
                  ),
                ),


              ],
            ),

// ****************This is another example of Expanded with container*******************
            Column(
              children: [
                Container(
                  height: 100,

                  color: Colors.deepPurpleAccent,
                ),  Container(
                  height: 100,

                  color: Colors.lightBlueAccent,
                ),
              ],
            ),


//****************Expanded************************************
            //Expanded is the process that  any row or column get available space need

            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Person-1'))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Person-2'))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Person-3'))),
              ],
            ),






//**********************Aspect Ratio********************************



            AspectRatio(//.............. Aspect ratio create screen size ratio
              aspectRatio: 16/9,
              child: Container(
                color: Colors.orange,
              ),
            ),
            AspectRatio(//.............. Aspect ratio create screen size ratio
              aspectRatio: 9/16,
              child: Container(
                color: Colors.red,
              ),
            ),
            AspectRatio(//.............. Aspect ratio create screen size ratio
              aspectRatio: 4/3,
              child: Container(
                color: Colors.green,
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
