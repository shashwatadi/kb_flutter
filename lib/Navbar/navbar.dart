import 'dart:ui';

import 'package:flutter/material.dart';

import '../Screens/signin.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/images/kb_logo_new.png'),
            ),
            // Text(
            //   "Test Kohbee",
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white,
            //       fontSize: 30),
            // ),
            Row(
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                MaterialButton(
                  color: Color.fromRGBO(29, 121, 126, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
            // Text(
            //   "Test Kohbee",
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white,
            //       fontSize: 30),
            // ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset('assets/images/kb_logo_new.png'),
                    ),
                  ),
                  MaterialButton(
                    color: Color.fromRGBO(29, 121, 126, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // Text(
                  //   "Home",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  // SizedBox(width: 10),
                  // Text(
                  //   "About Us",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  // SizedBox(width: 10),
                  // Text(
                  //   "Contact",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  // SizedBox(width: 10),
                  // MaterialButton(
                  //   color: Colors.teal,
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  //   onPressed: () {},
                  //   child: Text(
                  //     'Sign In',
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
