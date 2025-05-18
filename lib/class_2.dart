import 'package:flutter/material.dart';

class Class2 extends StatelessWidget {
  const Class2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController PhoneController = TextEditingController(); //text field er value dekhar jonno scaffold er baire declare korte hobe
    return Scaffold(
      //backgroundColor: Colors.grey[400], //third bracket er moddhe numbering kore color er range komano barano jay aitake opacity bole
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text('class2'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print('Submitted');
                },
                child: Text('Submit'),
              ),

              SizedBox(
                height: 100,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    print('Submitted');
                  },
                  child: Text('Submit'),
                ),
              ),

              OutlinedButton(onPressed: () {}, child: Text('Outline Button')),

              GestureDetector(
                //gesterdetector and inkwell same but some different
                onTap: () {
                  print('text pressed');
                },

                child: Text('This is Text'),
              ),

              Text(
                softWrap: false,
                maxLines: 2,
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              ),
              SizedBox(height: 25), //textfield er upore space dibe
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true, //likhake hide kore
                  decoration: InputDecoration(
                    hintText: 'Enter your Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 25), //textfield er upore space dibe
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: PhoneController,
                  keyboardType:
                      TextInputType.number, //only number keyboard show korbe

                  obscureText: true, //likhake hide kore
                  decoration: InputDecoration(
                    hintText: 'Enter phone number',
                    labelText: 'Phone number',
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.check),
                    labelStyle: TextStyle(color: Colors.cyan, fontSize: 20),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (PhoneController.text.isEmpty) {
                    print('please enter your number');
                  } else if (PhoneController.text.length < 11) {
                    print('Enter valid phone number');
                  } else {
                    print('Your number is ${PhoneController.text}');
                  }
                },
                child: Text('Submit'),
              ),

              ElevatedButton(
                onPressed: () {
                  PhoneController.clear(); //text field er valur clear hoye jabe
                },
                child: Text('Clear'),
              ),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: 50,
                ), //container er baire theke space dibe
                padding: EdgeInsets.all(
                  5,
                ), //padding container er vitor theke space dibe
                width: 180,
                height: 200,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'This is container',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'This is container',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'This is container',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'This is container',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      //floating action button body er moddhe daoa jay na always scaffold er moddhe dite hoy
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('flosting action button pressed');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }
}
