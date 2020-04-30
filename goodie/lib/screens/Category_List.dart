import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:goodie/screens/View_Stores.dart';
import 'package:goodie/screens/Navigation_Bar.dart';

class Category_list extends StatefulWidget {
  final String email;
  Category_list({this.email});

  @override
  _Category_list_State createState() => _Category_list_State();
}

class _Category_list_State extends State<Category_list> {
  @override
  Widget build(BuildContext context) {
    Widget CatIconSection = GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      padding: EdgeInsets.all(20),
      children: [
        _buildButtonColumn(Icons.restaurant, 'Restaurant', '34 places'),
        _buildButtonColumn(Icons.book, 'Education', '15 places'),
        _buildButtonColumn(Icons.local_offer, 'Etc', '28 places'),
        _buildButtonColumn(Icons.local_cafe, 'Dessert', '42 places'),
        _buildButtonColumn(Icons.face, 'Beauty', '29 places'),
        _buildButtonColumn(Icons.location_city, 'Facility', '21 places'),
      ],
    );

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent, actions: <Widget>[
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.location_on,
            size: 30,
            color: Colors.white,
          ),
        ),
        FlatButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: Text("Logout")),
      ]),
      body: CatIconSection,
      bottomNavigationBar: Navigation_Bar()
    );
  }

  Card _buildButtonColumn(IconData icon, String label, String placeNum) {
    return Card(
      elevation: 2,
      child: Container(
        child: FlatButton(
          onPressed: () => {
            Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => View_Stores())
            ),
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconShadowWidget(
                Icon(
                  icon,
                  color: Colors.purpleAccent,
                  size: 100,
                ),
                shadowColor: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Text(
                label,
                style: TextStyle(fontSize: 25),
              ),
              Text(
                placeNum,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
