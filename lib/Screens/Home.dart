import 'package:flutter/material.dart';
import 'package:task_truckshathi/Screens/Feeds.dart';
import 'package:task_truckshathi/Screens/ProfilePage.dart';

class HomePage extends StatefulWidget{

  @override
  HomeState createState() => HomeState();

}

class HomeState extends State<HomePage>{

  static TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    //Home
    FeedsPage(),
    Text(
      'AddScreen',
      style: optionStyle,
    ),
    //Profile
    ProfilePage(),
    Text(
      'Search Screen',
      style: optionStyle,
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            FlatButton(onPressed: null, child: Icon(Icons.near_me_sharp))
          ],
          leading: FlatButton(onPressed: null, child: Icon(Icons.camera_enhance),),
          title: Text("Instagram",style: TextStyle(color: Colors.black),),),
        body:  Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: "",backgroundColor: Colors.white60,),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: "",backgroundColor: Colors.white60),
            BottomNavigationBarItem(icon: Icon(Icons.person_rounded),label: "",backgroundColor: Colors.white60),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "",backgroundColor: Colors.white60),
          ],
          currentIndex: _selectedIndex,
          //selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );

  }
}