import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String message;

  const DetailScreen(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(message),
    );
  }
}
