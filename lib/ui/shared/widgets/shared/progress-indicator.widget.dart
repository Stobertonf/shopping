import 'dart:io' show Platform; //Verifica a plataforma IOS ou Android
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenericProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoActivityIndicator()
        : CircularProgressIndicator();
  }
}
