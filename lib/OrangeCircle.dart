import 'package:flutter/material.dart';

class OrangeCircle extends StatefulWidget {
  @override
  _OrangeCircleState createState() => _OrangeCircleState();
}

class _OrangeCircleState extends State<OrangeCircle>
    with SingleTickerProviderStateMixin {
  Animation<Offset> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = Tween<Offset>(
      begin: Offset(1.5, 1.0),
      end: Offset(1.0, 1.0),
    ).animate(
        CurvedAnimation(parent: animationController, curve: Curves.linear));

    Future<void>.delayed(Duration(seconds: 1), () {
      animationController.forward();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: Container(
        alignment: Alignment.centerRight,
        height: MediaQuery.of(context).size.width / 1.5,
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xfffef4ef),
        ),
      ),
    );
  }
}
