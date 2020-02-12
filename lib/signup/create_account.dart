import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../Navbar/navbar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase/firebase.dart';
import 'package:meta/meta.dart';
import '../func/call_truecaller.dart';
import '../model/globals.dart';
import 'signup_form.dart';
import 'package:http/http.dart' as http;

// final FirebaseAuth _auth = FirebaseAuth.instance;
final Auth _firebaseAuth = auth();
final GoogleSignIn _googleSignIn = GoogleSignIn();
final GoogleAuthProvider _gSignIn = GoogleAuthProvider();

class CreateAccount extends StatelessWidget {
  final Map<String, bool> values;
  final String _class;

  CreateAccount(this.values, this._class);

  Future<UserCredential> _handleSignIn(context) async {
    _gSignIn.addScope('https://www.googleapis.com/auth/user.phonenumbers.read');
    // Alert(context: context, title: "Debug", desc: "user").show();

    try {
      return await _firebaseAuth.signInWithPopup(_gSignIn).then((result) {
        // The signed-in user info.
        user = result;
        // Alert(
        //         context: context,
        //         title: "Debug",
        //         desc: http
        //             .get(
        //                 'https://www.googleapis.com/admin/directory/v1/users/${user}')
        //             .toString())
        //     .show();

        return result;
      });
    } catch (e) {
      print('Error in sign in with google: $e');
      throw '$e';
    }
    // final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    // final GoogleSignInAuthentication googleAuth =
    //     await googleUser.authentication;

    // final AuthCredential credential = GoogleAuthProvider.getCredential(
    //   accessToken: googleAuth.accessToken,
    //   idToken: googleAuth.idToken,
    // );

    // final FirebaseUser user =
    //     (await _auth.signInWithCredential(credential)).user;
    // print("signed in " + user.displayName);
    // return user;
  }

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
                  onPressed: () async {
                    // callTruecaller();
                    UserCredential user = await _handleSignIn(context);
                    Alert(
                            context: context,
                            title: "Debug",
                            desc: getUserPhoneNumber(context))
                        .show();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => SignupForm(values, _class)),
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Text(
                      'SignUp with Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  color: Color.fromRGBO(29, 121, 126, 0.8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  onPressed: () async {
                    Alert(context: context, title: "Debug", desc: "user")
                        .show();

                    // callTruecaller();
                    // UserCredential user = await _handleSignIn();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Text(
                      'SignUp with Truecaller',
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
