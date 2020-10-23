import 'package:done/kConstants.dart';
import 'package:flutter/material.dart';

class ContainerRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage('images/logoM.png'),
          height: 118,
          width: 100,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(30, 50, 0, 10),
          alignment: Alignment.bottomLeft,
          child: Text(
            'SIGNUP',
            style: TextStyle(
                fontSize: 32,
                color: kPrimaryGrayShade,
                fontWeight: FontWeight.w800),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 30, 10, 10),
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "FIRST NAME",
                    hintStyle: TextStyle(),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 30, 30, 10),
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "LAST NAME",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              hintText: "E-MAIL",
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: "PASSWORD",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.fromLTRB(30, 10, 30, 40),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: "CONFIRM PASSWORD",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
          decoration: BoxDecoration(
            color: kPrimaryOrangeShade,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            'PROCEED',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 40),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Already have an account?'),
          Text(
            ' Login',
            style: TextStyle(color: Colors.blue[900]),
          ),
        ]),
      ],
    );
  }
}
