import 'package:flutter/material.dart';

void successSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
      content: Text(message),
    backgroundColor: Colors.greenAccent,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);

}