import 'package:flutter/material.dart';

import '../Navbar/navbar.dart';
import '../func/call_truecaller.dart';
import '../func/create_user.dart';
import 'payment.dart';

class SignupForm extends StatefulWidget {
  final Map<String, bool> values;
  final String _class;
  SignupForm(this.values, this._class);

  _SignupFormState createState() => _SignupFormState(values, _class);
}

class _SignupFormState extends State<SignupForm> {
  final Map<String, bool> values;
  final String _class;

  _SignupFormState(this.values, this._class);
  String email, password;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  void submit(context) {
    final form = _formKey.currentState;
    print(form.validate.toString());
    if (form.validate()) {
      form.save();
      createUserInFirestore(email, password, values, _class);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Payment()),
      );
    }
  }

  List<Widget> getFormWidget() {
    List<Widget> formWidget = new List();

    formWidget.add(
      TextFormField(
        onSaved: (val) => email = val,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Email",
          labelStyle: TextStyle(fontSize: 15.0),
          hintText: "Email",
        ),
        validator: (val) {
          RegExp exp = new RegExp(
              "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$");

          if (!exp.hasMatch(val)) {
            return "Invalid Email";
          }
          return null;
        },
      ),
    );
    formWidget.add(
      SizedBox(
        height: 15.0,
      ),
    );
    formWidget.add(
      TextFormField(
        onSaved: (val) => password = val,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Password",
          labelStyle: TextStyle(fontSize: 15.0),
          hintText: "Password",
        ),
        validator: (val) {
          if (val.trim().length < 6) {
            return "Password too short";
          }
          return null;
        },
      ),
    );

    return formWidget;
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      'Sign up to start your membership.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromRGBO(51, 51, 51, 0.8)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 7.0),
                    child: Text(
                      "Just two more steps and you're done!\nWe hate paperwork, too!",
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(51, 51, 51, 0.8)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Text(
                      "Create your account.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(51, 51, 51, 0.8)),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: getFormWidget(),
                    ),
                  )
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
                    submit(context);
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
