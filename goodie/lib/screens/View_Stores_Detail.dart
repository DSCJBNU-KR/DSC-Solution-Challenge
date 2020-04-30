import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodie/screens/Restaurant_Detail.dart';

class View_Stores_Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _build_Store_List(
              "https://image.shutterstock.com/image-photo/delicious-pizza-olives-sausages-on-600w-1100491781.jpg",
              "11:30AM to 11PM",
              "Lombar Pizza",
              "East 46th Street, NewYork",
              "Pizza, Italian",
              context
          ),

          _build_Store_List(
              "https://media-cdn.tripadvisor.com/media/photo-s/10/cf/98/6c/nico-s-pizzeria.jpg",
              "11:30AM to 11PM",
              "Pizza Hup",
              "East 46th Street, NewYork",
              "Pizza, Italian",
              context
          ),

          _build_Store_List(
              "https://media-cdn.tripadvisor.com/media/photo-s/0f/c5/6f/f1/menu-2.jpg",
              "11:30AM to 11PM",
              "Italizza",
              "East 46th Street, NewYork",
              "Pizza, Italian",
              context
          ),

          _build_Store_List(
              "https://i.pinimg.com/originals/16/8e/91/168e918ec34bcf357051b427362a9d3a.jpg",
              "11:30AM to 11PM",
              "Egg Tomato",
              "East 46th Street, NewYork",
              "Pizza, Italian",
              context
          ),
          //_build_Store_List(),
        ],
      ),
    );
  }

  GestureDetector _build_Store_List(String Rest_Image, String Open_Time, String Rest_Name, String Loc, String Cat, BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Restaurant_Detail())
        ),
      },
      child : Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
      margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.network(
                Rest_Image,
                width: 100,
                height: 100,
                fit: BoxFit.cover),
          ),
          Padding(
              padding : EdgeInsets.only(left: 20 )
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Open_Time,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                  maxLines: 1,
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                ),

                Text(
                    Rest_Name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20, color: Colors.black)),

                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                ),

                Text(
                    Loc,
                    style: TextStyle(fontSize: 15.0, color: Colors.grey)
                ),

                Text(
                  Cat,
                  style: TextStyle(fontSize: 15.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
