import 'package:done/kConstants.dart';
import 'package:flutter/material.dart';

class ContainerMain extends StatefulWidget {
  @override
  _ContainerMainState createState() => _ContainerMainState();
}

class _ContainerMainState extends State<ContainerMain>
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
      begin: Offset(0.0, 0.7),
      end: Offset(0.0, 0.0),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFF5D6369)),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/googleLogo.png'),
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Text(
                    'CONTINUE WITH GOOGLE',
                  ),
                ],
              ),
            ),
            Container(
              width: 600,
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: kPrimaryOrangeShade),
              ),
              child: Center(
                child: Text(
                  'I\'LL USE MY EMAIL',
                  style: TextStyle(color: kPrimaryOrangeShade),
                ),
              ),
            ),
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an Account?'),
                InkWell(
                  onTap: () {
                    print('Clicked......');
                  },
                  child: Text(
                    ' Login',
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
