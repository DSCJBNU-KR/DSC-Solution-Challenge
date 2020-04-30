import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goodie/data/Join_or_Login.dart';
import 'package:goodie/helper/Login_Background.dart';
import 'package:provider/provider.dart';

import 'Forget_Password.dart';

class AuthPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CustomPaint(
            size: size,
            painter: Login_Background(
                isJoin: Provider.of<Join_or_Login>(context).isJoin),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _logoImage,
              Stack(
                children: <Widget>[
                  _inputForm(size),
                  _authButton(size),
                ],
              ),
              Container(
                height: size.height * 0.1,
              ),
              Consumer<Join_or_Login>(
                builder: (context, joinOrLogin, child) => GestureDetector(
                    onTap: () {
                      joinOrLogin.toggle();
                    },
                    child: Text(
                      joinOrLogin.isJoin
                          ? "Already Have an Account? Sign in"
                          : "Don't Have an Account? Create One",
                      style: TextStyle(
                          color: joinOrLogin.isJoin
                              ? Color.fromRGBO(91, 155, 213, 1)
                              : Color.fromRGBO(207, 159, 234, 1)),
                    )),
              ),
              Container(
                height: size.height * 0.05,
              )
            ],
          ),
        ],
      ),
    );
  }

  void _register(BuildContext context) async {
    final AuthResult result = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text);
    final FirebaseUser user = result.user;

    if (user == null) {
      final snackBar = SnackBar(
        content: Text('Please try again later'),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  void _login(BuildContext context) async {
    final AuthResult result = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text);
    final FirebaseUser user = result.user;

    if (user == null) {
      final snackBar = SnackBar(
        content: Text('Please try again later'),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  Widget get _logoImage => Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Consumer<Join_or_Login>(
          builder: (context, joinOrLogin, child) => CircleAvatar(
            backgroundImage: AssetImage(
                joinOrLogin.isJoin ? "assets/login1.png" : "assets/l.gif"),
          ),
        ),
      ),
    ),
  );

  Widget _authButton(Size size) => Positioned(
    left: size.width * 0.15,
    right: size.width * 0.15,
    bottom: 0,
    child: SizedBox(
      height: 50,
      child: Consumer<Join_or_Login>(
        builder: (context, joinOrLogin, child) => RaisedButton(
          child: Text(
            joinOrLogin.isJoin ? "Join" : "Login",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          color: joinOrLogin.isJoin
              ? Color.fromRGBO(91, 155, 213, 1)
              : Color.fromRGBO(207, 159, 234, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              joinOrLogin.isJoin ? _register(context) : _login(context);
            }
          },
        ),
      ),
    ),
  );

  Widget _inputForm(Size size) => Padding(
    padding: EdgeInsets.all(size.width * 0.05),
    child: Card(
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 12.0, right: 12.0, top: 12, bottom: 32),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  labelText: "Password",
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Please input correct password";
                  }
                  return null;
                },
              ),
              Container(
                height: 8,
              ),
              Consumer<Join_or_Login>(
                builder: (context, value, child) => Opacity(
                    opacity: value.isJoin ? 0 : 1,
                    child: GestureDetector(
                        onTap: value.isJoin
                            ? null
                            : () {
                          goToForgetPW(context);
                        },
                        child: Text("Forgot Password"))),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  goToForgetPW(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Forget_Password()));
  }
}
