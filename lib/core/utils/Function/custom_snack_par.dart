import 'package:flutter/material.dart';

void SnackPar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('cannot launch $text '),
    ),
  );
}
