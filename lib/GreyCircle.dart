import 'package:flutter/material.dart';

class GreyCircle extends StatefulWidget {
  @override
  _GreyCircleState createState() => _GreyCircleState();
}

class _GreyCircleState extends State<GreyCircle>
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
      begin: Offset(-1.0, -0.2),
      end: Offset(-0.5, -0.2),
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
        height: MediaQuery.of(context).size.width / 1.5,
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffecedee),
        ),
      ),
    );
  }
}
