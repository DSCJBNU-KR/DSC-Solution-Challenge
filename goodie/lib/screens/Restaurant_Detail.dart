import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodie/screens/Restaurant_Detail_Header.dart';
import 'package:goodie/screens/Navigation_Bar.dart';
import 'package:goodie/screens/Chat_Edit.dart';


class Restaurant_Detail extends StatefulWidget {
  @override
  _Restaurant_Detail_State createState() => _Restaurant_Detail_State();
}

class _Restaurant_Detail_State extends State<Restaurant_Detail> {
  @override
  Widget build(BuildContext context) {
    Widget topIconSection = SliverToBoxAdapter(
      child: Container(
        height: 110,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 90,
              child: Column(
                children: <Widget>[
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.date_range,
                      size: 40,
                    ),
                  ),
                  Text(
                    'Reservation',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '603',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              child: Column(
                children: <Widget>[
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.star_border,
                      size: 40,
                    ),
                  ),
                  Text(
                    'Review',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '953',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              child: Column(
                children: <Widget>[
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.phone,
                      size: 40,
                    ),
                  ),
                  Text(
                    'Phone',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '(212) 749-1264',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              child: Column(
                children: <Widget>[
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.bookmark_border,
                      size: 40,
                    ),
                  ),
                  Text(
                    'Bookmark',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '1478',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

    Widget infoSection = SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'East 46th Street, New York',
                  style: TextStyle(fontSize: 22, color: Colors.grey),
                ),
                Padding(padding: EdgeInsets.all(5),),
                Text(
                  'Pizza, Italian',
                  style: TextStyle(fontSize: 22, color: Colors.grey),
                ),
                Padding(padding: EdgeInsets.all(5),),
                Text(
                  '10:00 AM to 11PM',
                  style: TextStyle(fontSize: 22, color: Colors.grey),
                ),
                Padding(padding: EdgeInsets.all(5),),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(20, 20, 70, 20)),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.location_on, size: 40,),
            ),
          ],
        ),
      ),
    );

    Widget reserveButSec = SliverToBoxAdapter(
      child: Container(
        height: 130,
        child: FlatButton(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.purpleAccent,
          onPressed: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Chat_Edit())
            )
          },
          child: Text(
            'Reservation',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        padding: EdgeInsets.all(20.0),
      ),
    );

    Widget photoSection = SliverToBoxAdapter(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment(-0.9, 0.0),
              child: Text(
                'Photos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildImageButton(
                    'https://media-cdn.tripadvisor.com/media/photo-s/10/cf/98/6c/nico-s-pizzeria.jpg'),
                _buildImageButton(
                    'https://media-cdn.tripadvisor.com/media/photo-s/0f/c5/6f/f1/menu-2.jpg'),
                _buildImageButton(
                    'https://i.pinimg.com/originals/16/8e/91/168e918ec34bcf357051b427362a9d3a.jpg'),
                _buildImageButton(
                    'https://bluebiz-media.azureedge.net/49ed59/contentassets/a53f269d13fb478988f866e5edcd0386/jamie_624.jpg'),
                Container(
                  child: FlatButton(
                    onPressed: () => {},
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                          ),
                        ]),
                  ),
                  height: 90,
                  width: 90,
                  color: Colors.black54,
                )
              ],
            ),
          ],
        ),
        padding: EdgeInsets.only(bottom: 80),
      ),
    );

    Widget detailSection = SliverToBoxAdapter(
      child: Column(
        children: [
          Align(
            alignment: Alignment(-0.9, 0),
            child: Text(
              'Details',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10),),
          Column(
            children: [
              _buildInfoRow('Call', '(212) 749-1264'),
              _buildInfoRow('Cuisines', 'Pizza Italian'),
              _buildInfoRow('Average Cost', '2000 - 5000'),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          )
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: Restaurant_Detail_Header(
                minExtent: 100.0,
                maxExtent: 250.0,
              ),
            ),
            topIconSection,
            infoSection,
            reserveButSec,
            photoSection,
            detailSection,
          ],
        ),
        bottomNavigationBar: Navigation_Bar()
      ),
    );
  }

  InkWell _buildImageButton(String url) {
    return InkWell(
      onTap: () => {},
      child: Image.network(
        url,
        height: 90,
        width: 90,
        fit: BoxFit.cover,
      ),
    );
  }

  Container _buildInfoRow(String Quest, String Ans) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            Quest,
            style: TextStyle(fontSize: 22, color: Colors.grey),
          ),
          Text(
            Ans,
            style: TextStyle(fontSize: 22, color: Colors.blue),
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    );
  }
}