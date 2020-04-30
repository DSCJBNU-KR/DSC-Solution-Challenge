import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodie/screens/Category_List.dart';
import 'package:goodie/screens/Profile.dart';


class Navigation_Bar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        if (index == 2) {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Category_list())
          );
        }
        else if (index == 4) {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile())
          );
        }
      },

      //onTap: (index) => {
      //  Navigator.push(
      //    context, MaterialPageRoute(builder: (context) => Category_list()),
      //  ),
      //},
      items: [
        _buildNavButton(Icons.chat_bubble, 'Community'),
        _buildNavButton(Icons.bookmark, 'Bookmark'),
        _buildNavButton(Icons.home, 'Home'),
        _buildNavButton(Icons.search, 'Search'),
        _buildNavButton(Icons.person, 'My'),
      ],
    );
  }

  BottomNavigationBarItem _buildNavButton(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: Colors.grey,
        size: 35,
      ),
      title: Text(
        label,
        style: TextStyle(fontSize: 15, color: Colors.grey),
      ),
    );
  }
}