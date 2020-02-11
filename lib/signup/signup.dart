import 'package:flutter/material.dart';

import '../Navbar/navbar.dart';
import 'choose_class.dart';
import 'create_account.dart';

class Signup extends StatelessWidget {
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
                      ? EdgeInsets.symmetric(vertical: 0)
                      : EdgeInsets.symmetric(vertical: 10)),
              Icon(
                Icons.check_circle_outline,
                color: Color.fromRGBO(29, 121, 126, 0.8),
                size: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'STEP 1 OF 3',
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(51, 51, 51, 0.8)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Text(
                  'Choose your class.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromRGBO(51, 51, 51, 0.8)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 7.0),
                    child: Text(
                      '\u{2611} Easy. Secure. Personal.',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(51, 51, 51, 0.8)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Text(
                      '\u{2611} Best Private Tutors.',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(51, 51, 51, 0.8)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Text(
                      '\u{2611} Flexible timings to choose from.',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(51, 51, 51, 0.8)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
                width: 80,
              ),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  color: Color.fromRGBO(29, 121, 126, 0.8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChooseClass()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Text(
                      'CHOOSE CLASS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              // RichText(
              //   text: TextSpan(
              //     children: [
              //       WidgetSpan(
              //         child: Icon(
              //           Icons.check,
              //           size: 14,
              //           color: Color.fromRGBO(29, 121, 126, 0.8),
              //         ),
              //       ),
              //       TextSpan(
              //         text: "Easy. Affordable. Secure.",
              //         style: TextStyle(
              //             // fontWeight: FontWeight.bold,
              //             fontSize: 14,
              //             color: Color.fromRGBO(51, 51, 51, 0.8)),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Navbar(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: LayoutBuilder(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
