import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goodie/data/Join_or_Login.dart';
import 'package:goodie/screens/Login_Page.dart';
import 'package:goodie/screens/Category_List.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  StreamBuilder<FirebaseUser>(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (context, snapshot) {

          if(snapshot.data == null) {
            return ChangeNotifierProvider<Join_or_Login>.value(
                value: Join_or_Login(),
                child: AuthPage());
          }
          else{
            return Category_list(email: snapshot.data.email);
          }
        }
    );
  }
}