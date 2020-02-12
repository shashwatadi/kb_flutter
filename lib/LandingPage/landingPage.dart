import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import '../Screens/dashboard.dart';
import '../signup/payment.dart';
import '../signup/signup.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(BuildContext context, bool isMobile) {
    return <Widget>[
      Container(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: isMobile
                      ? EdgeInsets.symmetric(vertical: 30)
                      : EdgeInsets.symmetric(vertical: 70)),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Take control of your education',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Learn anywhere from India's best private tutors",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                    // MaterialPageRoute(builder: (context) => Payment()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Text(
                    'Try it now',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return SingleChildScrollView(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: pageChildren(context, false)),
          );
        } else {
          return SingleChildScrollView(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: pageChildren(context, true)),
          );
        }
      },
    );
  }
}
