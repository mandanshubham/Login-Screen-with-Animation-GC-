import 'package:done/kConstants.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'VERIFICATION',
          style: TextStyle(
              color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 25),
        Container(
          margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Text(
            'Please type the verification code sent to your entered email address',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 25),
        Row(
          children: [
            SizedBox(width: 40),
            BoxInputs(),
            BoxInputs(),
            BoxInputs(),
            BoxInputs(),
            SizedBox(width: 40),
          ],
        ),
      ],
    );
  }
}

class BoxInputs extends StatelessWidget {
  const BoxInputs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 75,
        margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffecedee),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}

class ArrowInCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimaryOrangeShade,
      ),
      child: Icon(
        Icons.arrow_forward,
        size: 70,
        color: Colors.white,
      ),
    );
  }
}
