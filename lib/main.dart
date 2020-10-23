import 'package:done/ContainerLogin.dart';
import 'package:done/ContainerMain.dart';
import 'package:done/GreyCircle.dart';
import 'package:done/OrangeCircle.dart';
import 'package:done/Providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: FirstScreen(),
        ),
      ),
    ),
  );
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GreyCircle(),
        OrangeCircle(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('images/logoM.png'),
              height: 118 * 1.5,
              width: 100 * 1.5,
            ),
            SizedBox(height: 90),
            AnimatedCrossFade(
              firstChild: ContainerMain(),
              secondChild: ContainerLogin(),
              duration: Duration(milliseconds: 1000),
            ),
          ],
        )
      ],
    );
  }
}
