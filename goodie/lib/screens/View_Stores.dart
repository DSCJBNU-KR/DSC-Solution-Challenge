import 'package:flutter/material.dart';
import 'package:goodie/screens/View_Stores_Detail.dart';
import 'package:goodie/screens/Navigation_Bar.dart';


class View_Stores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: Text('Nearby',
              style: TextStyle(color: Colors.white)
          ),
          backgroundColor: Colors.purpleAccent
      ),
      // 여기까지 상단 메뉴
      body: Container(
          child: SafeArea(
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(Radius.circular(60))
                    ),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.search), onPressed: () {}),
                            Text("search for your restaurants",
                                style: TextStyle(fontSize: 20, color: Colors
                                    .black54), textAlign: TextAlign.center)
                          ],
                        ),
                      ],
                    ),
                  ),
                  View_Stores_Detail(),
                ],
              )
          )
      ),
        bottomNavigationBar: Navigation_Bar()

    );
  }
}