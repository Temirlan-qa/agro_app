import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: replace with svg
    return Image.asset(
      'assets/images/logo.jpeg',
      width: 150,
      height: 150,
    );
  }
}
