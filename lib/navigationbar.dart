import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled4/home.dart';
import 'package:untitled4/home1.dart';



class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {

  int _selectedIndex = 0;
  static   TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);


  static   final List<Widget> _widgetOptions = <Widget>[

    HomePage(),

        Text(
      'Catagory',
      style: optionStyle,
    ),
      Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

body: _widgetOptions[_selectedIndex],

bottomNavigationBar:   Container(
  decoration: BoxDecoration(
    color: Colors.orangeAccent,
    boxShadow: [
      BoxShadow(
        blurRadius: 20,
        color: Colors.deepOrange.withOpacity(0),
      )
    ],
  ),
  child: SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child:  GNav(
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.red[100]!,
        gap: 8,
        activeColor: Colors.green,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: Duration(milliseconds: 400),
        tabBackgroundColor: Colors.grey[100]!,
        color: Colors.black,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.calendar_month_sharp,
            text: 'Catagory',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.perm_identity,
            text: 'Profile',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    ),
  ),
),

    );

  }


}

