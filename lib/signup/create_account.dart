import 'package:flutter/material.dart';

import '../Navbar/navbar.dart';

import 'signup_form.dart';

class CreateAccount extends StatelessWidget {
  final Map<String, bool> values;
  final String _class;

  CreateAccount(this.values, this._class);

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
                Icons.portrait,
                color: Color.fromRGBO(29, 121, 126, 1),
                size: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'STEP 2 OF 3',
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(51, 51, 51, 0.8)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Text(
                  'Create Your Account.',
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
                    padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 7.0),
                    child: Text(
                      'Kohbee understands your needs. Use your email and create a password to access Kohbee on any device at any time.',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(51, 51, 51, 0.8),
                          height: 1.5),
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
                      MaterialPageRoute(
                          builder: (context) => SignupForm(values, _class)),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Text(
                      'CONTINUE',
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
