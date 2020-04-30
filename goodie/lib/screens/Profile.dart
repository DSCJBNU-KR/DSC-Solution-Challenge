import 'package:flutter/material.dart';
import 'package:goodie/screens/Navigation_Bar.dart';


class Profile extends StatefulWidget {
  @override
  _Profile_State createState() => _Profile_State();
}

var color1 = Color(0xFFa572c0);
var color2 = Color(0xFF6559d4);
var profileImage = NetworkImage(
    'https://static1.squarespace.com/static/55f45174e4b0fb5d95b07f39/t/5aec4511aa4a991e53e6c044/1525433627644/Alexandra+Agoston+archives.jpg?format=1000w');

class _Profile_State extends State<Profile> {

  @override
  Widget build(BuildContext context) {

    var screenHeight=MediaQuery.of(context).size.height;
    var screenWidth=MediaQuery.of(context).size.width;

    return Scaffold(
      body:  Container(
          height:screenHeight,
          width: screenWidth,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 8.0,),
              UpperSection(),
              SizedBox(height: 32.0, ),
              MiddleSection(),
              Spacer(),
            ],
          )
      ),
      bottomNavigationBar: Navigation_Bar()
    );
  }
}




class MiddleSection extends StatelessWidget {
  const MiddleSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
          children: <Widget>[
            Divider(height: 8.0,),
            ListTile(
              title: Text("매출 관리"),
              trailing: ClipOval(
                child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.purple.withOpacity(0.2),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.account_balance),
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(height: 8.0,),
            Padding(
                padding: const EdgeInsets.only(left: 16.0)),
            Column(
                children: <Widget>[
                  Divider(height: 8.0,),
                  ListTile(
                    title: Text("Find Friends on Capi"),
                    trailing: ClipOval(
                      child: Container(
                          height: 40.0,
                          width: 40.0,
                          color: Colors.purple.withOpacity(0.2),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.face),
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  Padding(
                      padding: const EdgeInsets.only(left: 16.0)),
                  Column(
                    children: <Widget>[
                      Divider(height: 8.0,),
                      ListTile(
                        title: Text("More Setting"),
                        trailing: ClipOval(
                          child: Container(
                              height: 40.0,
                              width: 40.0,
                              color: Colors.purple.withOpacity(0.2),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.settings),
                                color: Colors.white,
                              )),
                        ),
                      ),
                      SizedBox(height: 8.0,),
                      Padding(
                          padding: const EdgeInsets.only(left: 16.0)),
                      Column(
                        children: <Widget>[
                          Divider(height: 8.0,),
                          ListTile(
                            title: Text("Sign Out"),
                            trailing: ClipOval(
                              child: Container(
                                  height: 40.0,
                                  width: 40.0,
                                  color: Colors.purple.withOpacity(0.2),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.account_circle),
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          SizedBox(height: 8.0,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),

                          )
                        ],
                      ),

                    ],
                  )
                ]
            ),
          ]
      ),
    );

  }
}

class ItemCard extends StatelessWidget {
  final icon;
  final name;
  final tasks;
  const ItemCard(

      this.icon,
      this.name,
      this.tasks
      );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 160.0,
        width: 120.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [color1, color2])),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(icon, color: Colors.white,),
              Spacer(),
              Text(name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 4.0,),
              Text(tasks, style: TextStyle(color: Colors.white.withOpacity(0.6)),),
            ],
          ),
        ),
      ),
    );
  }
}

class UpperSection extends StatelessWidget {
  const UpperSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 32.0,
        ),
        Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back,
                    color: color1,
                  ),
                  Icon(
                    Icons.settings,
                    color: color1,
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              CircleAvatar(
                  backgroundImage: profileImage, radius: 70
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                '진짜 파스타',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '서울시 마포구',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Container(
            height: 4.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [color1, color2])),
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 48.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.perm_contact_calendar,
                    color: color1,
                  ),
                  Text(
                    '예약 현황',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    '60',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.star_border,
                    color: color1,
                  ),
                  Text(
                    'My Review',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    '953',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.opacity,
                    color: color1,
                  ),
                  Text(
                    '착한 온도계',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'silver',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}