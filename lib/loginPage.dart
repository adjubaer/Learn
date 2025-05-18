import 'package:flutter/material.dart';
import 'package:projrct1/Grid_View.dart';
import 'package:projrct1/List_View.dart';
import 'package:projrct1/Navi.dart';
import 'package:projrct1/class_1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController PhoneController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Image.asset(height: 150, width: 150, 'asset/youtube.jpg'),
              Image.network(
                height: 100,
                width: 100,
                'https://upload.wikimedia.org/wikipedia/commons/6/6d/Duet-logo-5.png',
              ),

              Text('Login with your phone and password'),
              SizedBox(height: 20),

              Form(
                key: _formkey,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Text('Phone number'),
                    TextFormField(
                      controller: PhoneController,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your phone number';
                        } else {
                          return null;
                        }
                      },
                    ),

                    SizedBox(height: 20),

                    TextFormField(
                      controller: PasswordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your password';
                        } else if (value.length < 6) {
                          return 'password must be 6 characer';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20),

                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              //popup message dekhar jonno
                              SnackBar(content: Text('Login successful')),
                            );
                            Navigator.push(
                              //back button remove kore
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) =>
                                        Navi(name: PhoneController.text),
                              ),
                            );
                          }
                        },
                        child: Text('Login'),
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ListV()),
                        );
                      },
                      child: Text('List',style: TextStyle(
                        color: Colors.blue,
                      ),),
                    ),


                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GridV()),
                        );
                      },
                      child: Text('Grid',style: TextStyle(
                        color: Colors.blue,
                      ),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
