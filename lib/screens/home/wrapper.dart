import 'package:brew/screens/authenticate/authenticate.dart';
import 'package:brew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:brew/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user =  Provider.of<User>(context);
   
    //return home or authenticate widget
    if (user == null) {
      return Authenticate();   
    }else{
      return Home();
    }
  }
}