import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Chat_Edit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.network(
                  "https://image.shutterstock.com/image-photo/delicious-pizza-olives-sausages-on-600w-1100491781.jpg",
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Lomber Pizza",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 4,
              ),
              Text("5 minutes ago"),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 500,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    _buildMyTextBox('Thank you. Bye!'),
                    _buildUrTextBox("Hey Sanskar, what's up"),
                    _buildMyTextBox("Oh hey there, Anna. I'm all good btw. How are you?"),
                    _buildUrTextBox("Hey Sanskar, what's up"),
                    _buildMyTextBox("Oh hey there, Anna. I'm all good btw. How are you?"),
                    _buildUrTextBox("Hey Sanskar, what's up"),
                    _buildMyTextBox("Oh hey there, Anna. I'm all good btw. How are you?"),
                    _buildUrTextBox("Hey Sanskar, what's up"),
                    _buildMyTextBox("Oh hey there, Anna. I'm all good btw. How are you?"),
                    _buildUrTextBox("Hey Sanskar, what's up"),
                    _buildMyTextBox("Oh hey there, Anna. I'm all good btw. How are you?"),
                    _buildUrTextBox("Hey Sanskar, what's up"),
                    _buildMyTextBox("Oh hey there, Anna. I'm all good btw. How are you?"),
                    _buildUrTextBox("Hey Sanskar, what's up"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildMyTextBox(String message) {
    return Container(
      child : Container(
          margin: EdgeInsets.only(bottom: 24),
          alignment: Alignment.centerRight,
          child: Container(
            constraints: BoxConstraints(maxWidth: 300),
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(0),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Container(
              child: Text(
                message,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          )
      ),
    );
  }
  Widget _buildUrTextBox(String message) {
    return Container(
      child : Container(
          margin: EdgeInsets.only(bottom: 24),
          alignment: Alignment.centerLeft,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfffff3f1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight:  Radius.circular(30),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300),
              child: Text(
                message,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          )
      ),
    );
  }
}