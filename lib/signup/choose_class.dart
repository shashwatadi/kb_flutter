import 'package:flutter/material.dart';

import '../Navbar/navbar.dart';
import 'create_account.dart';

class ChooseClass extends StatefulWidget {
  _ChooseClassState createState() => _ChooseClassState();
}

class _ChooseClassState extends State<ChooseClass> {
  Map<String, bool> values = {
    'Maths': true,
    'Science': false,
  };

  String _class = 'single';

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        width: 120,
                        child: RadioListTile<String>(
                          title: const Text('8th'),
                          value: '8',
                          groupValue: _class,
                          onChanged: (value) {
                            setState(() {
                              _class = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        width: 120,
                        child: RadioListTile<String>(
                          title: const Text('9th'),
                          value: '9',
                          groupValue: _class,
                          onChanged: (value) {
                            setState(() {
                              _class = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        width: 120,
                        child: RadioListTile<String>(
                          title: const Text('10th'),
                          value: '10',
                          groupValue: _class,
                          onChanged: (value) {
                            setState(() {
                              _class = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      'Choose your subjects.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromRGBO(51, 51, 51, 0.8)),
                    ),
                  ),
                  Container(
                    width: 360,
                    child: CheckboxListTile(
                      title: new Text('Maths'),
                      value: values['Maths'],
                      onChanged: (bool value) {
                        setState(() {
                          values['Maths'] = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 360,
                    child: CheckboxListTile(
                      title: new Text('Science'),
                      value: values['Science'],
                      onChanged: (bool value) {
                        setState(() {
                          values['Science'] = value;
                        });
                      },
                    ),
                  ),
                ],
              ),

              //Class and Subjects
              // ListView(
              //   children: values.keys.map((String key) {
              //     return new CheckboxListTile(
              //       title: new Text(key),
              //       value: values[key],
              //       onChanged: (bool value) {
              //         setState(() {
              //           values[key] = value;
              //         });
              //       },
              //     );
              //   }).toList(),
              // ),

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
                          builder: (context) => CreateAccount(values, _class)),
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

// class ChooseClass extends StatelessWidget {
//   List<Widget> pageChildren(BuildContext context, bool isMobile) {
//     return <Widget>[
//       Container(
//         child: Expanded(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                   padding: isMobile
//                       ? EdgeInsets.symmetric(vertical: 0)
//                       : EdgeInsets.symmetric(vertical: 10)),
//               Icon(
//                 Icons.check_circle_outline,
//                 color: Color.fromRGBO(29, 121, 126, 0.8),
//                 size: 40.0,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   'STEP 1 OF 3',
//                   style: TextStyle(
//                       // fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                       color: Color.fromRGBO(51, 51, 51, 0.8)),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 3.0),
//                 child: Text(
//                   'Choose your class.',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 24,
//                       color: Color.fromRGBO(51, 51, 51, 0.8)),
//                 ),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   //Class and Subjects
//                   MultiSelect(
//                       autovalidate: false,
//                       titleText: 'Subjects',
//                       validator: (value) {
//                         if (value == null) {
//                           return 'Please select one or more option(s)';
//                         }
//                       },
//                       errorText: 'Please select one or more option(s)',
//                       dataSource: [
//                         {
//                           "display": "Mathematics",
//                           "value": 1,
//                         },
//                         {
//                           "display": "Science",
//                           "value": 2,
//                         },
//                       ],
//                       textField: 'display',
//                       valueField: 'value',
//                       filterable: true,
//                       required: true,
//                       value: null,
//                       onSaved: (value) {
//                         print('The value is $value');
//                       }),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//                 width: 80,
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: MaterialButton(
//                   color: Color.fromRGBO(29, 121, 126, 0.8),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(4.0))),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => CreateAccount()),
//                     );
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 10.0, horizontal: 10.0),
//                     child: Text(
//                       'CONTINUE',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),

//               // RichText(
//               //   text: TextSpan(
//               //     children: [
//               //       WidgetSpan(
//               //         child: Icon(
//               //           Icons.check,
//               //           size: 14,
//               //           color: Color.fromRGBO(29, 121, 126, 0.8),
//               //         ),
//               //       ),
//               //       TextSpan(
//               //         text: "Easy. Affordable. Secure.",
//               //         style: TextStyle(
//               //             // fontWeight: FontWeight.bold,
//               //             fontSize: 14,
//               //             color: Color.fromRGBO(51, 51, 51, 0.8)),
//               //       ),
//               //     ],
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       )
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//         ),
//         child: Column(
//           children: <Widget>[
//             Navbar(),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
//               child: LayoutBuilder(
//                 builder: (context, constraints) {
//                   if (constraints.maxWidth > 800) {
//                     return SingleChildScrollView(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: pageChildren(context, false)),
//                     );
//                   } else {
//                     return SingleChildScrollView(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: pageChildren(context, true)),
//                     );
//                   }
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
