import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Forget_Password extends StatefulWidget {
  @override
  _Forget_Password_State createState() => _Forget_Password_State();
}

class _Forget_Password_State extends State<Forget_Password> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: "Email",
              ),
              validator: (String value) {
                if (value.isEmpty) {
                  return "Please input correct Email";
                }
                return null;
              },
            ),
            FlatButton(
                onPressed: () async {
                  await FirebaseAuth.instance
                      .sendPasswordResetEmail(email: _emailController.text);
                  final snackBar = SnackBar(
                    content: Text('Check your email for pw reset'),
                  );
                  Scaffold.of(_formKey.currentContext).showSnackBar(snackBar);
                },
                child: Text('Reset Paseeword'))
          ],
        ),
      ),
    );
  }
}