import 'package:flutter/foundation.dart';

class Join_or_Login extends ChangeNotifier{
  bool _isJoin = false;

  bool get isJoin => _isJoin;

  void toggle(){
    _isJoin = !_isJoin;
    notifyListeners();
  }
}