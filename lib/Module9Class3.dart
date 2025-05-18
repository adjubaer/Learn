import 'package:flutter/material.dart';

class Module9class3 extends StatefulWidget {
  const Module9class3({super.key});

  @override
  State<Module9class3> createState() => _Module9class3State();
}

class _Module9class3State extends State<Module9class3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('This is extra widget'),
          bottom: TabBar(tabs:[
            Tab(icon: Icon(Icons.home),text: 'Home',),
            Tab(icon: Icon(Icons.star),text: 'Favourite',),
            Tab(icon: Icon(Icons.settings),text: 'Setting',),

          ],
          ),
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(children: [
          Icon(Icons.home,size: 300,),
          Icon(Icons.star,size: 300,),
          Icon(Icons.settings,size: 300,),
        ],),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius:38,
                      backgroundImage: NetworkImage(
                        'https://media.licdn.com/dms/image/v2/D4D03AQGtOo55YnzO9w/profile-displayphoto-shrink_800_800/B4DZRrLTdpGkAk-/0/1736964914270?e=1752710400&v=beta&t=SetfOeJERGfuokwIHxy_RpQtXnr1SeF56_HJomfGG1s',
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Md Jubaer Islam',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'mdjubaerislam2020@gmail.com',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
      
              ListTile(title: Text('Home'), onTap: () {}),
              Divider(
                thickness: 1,
                color: Colors.black54,
              ),
              ListTile(title: Text('Dashboard'), onTap: () {}),
              Divider( thickness: 1,
                color: Colors.black54,),
              ListTile(title: Text('Profile'), onTap: () {}),
              Divider( thickness: 1,
                color: Colors.black54,),
            ],
          ),
        ),
      ),
    );
  }
}
