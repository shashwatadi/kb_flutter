import 'package:flutter/material.dart';

import '../Navbar/navbar.dart';
import '../Screens/dashboard.dart';

class Payment extends StatefulWidget {
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int selected = 0;
  Color unselectedColor = Color(0xFFFFFFFF);
  Color textColor = Color.fromRGBO(51, 51, 51, 0.8);

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      // border: Border.all(width: 0.5),
      boxShadow: [
        BoxShadow(
          offset: Offset(1.0, 0.5),
          color: Color.fromRGBO(240, 240, 240, 0.8),
        )
      ],
    );
  }

  List<Widget> pageChildren(BuildContext context, bool isMobile) {
    var maxWidth = MediaQuery.of(context).size.width;
    print("width: $maxWidth");
    return <Widget>[
      Container(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: isMobile
                      ? EdgeInsets.symmetric(vertical: 0)
                      : EdgeInsets.symmetric(vertical: 10)),
              Icon(
                Icons.check_circle_outline,
                color: Color.fromRGBO(29, 121, 126, 1),
                size: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'STEP 3 OF 3',
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(51, 51, 51, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Select your plan.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromRGBO(51, 51, 51, 0.8)),
                ),
              ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: <Widget>[
              Container(
                width: maxWidth * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: maxWidth * 0.24,
                      child: Card(
                        color: Color.fromRGBO(240, 240, 240, 1.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.bottomCenter,
                                // height: 50,
                                child: Text(
                                  '₹300',
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 20,
                                child: Text(
                                  'per class',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: textColor,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  '1 week',
                                  style:
                                      TextStyle(fontSize: 16, color: textColor),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  '2 classes',
                                  style:
                                      TextStyle(fontSize: 16, color: textColor),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  'Batch of 4',
                                  style:
                                      TextStyle(fontSize: 16, color: textColor),
                                ),
                              ),
                              Container(
                                height: 80,
                                alignment: Alignment.center,
                                child: MaterialButton(
                                  color: Color.fromRGBO(29, 121, 126, 0.8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.0))),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()),
                                    );
                                  },
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: maxWidth * 0.24,
                      child: Card(
                        color: Color.fromRGBO(240, 240, 240, 1.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.bottomCenter,
                                // height: 50,
                                child: Text(
                                  '₹280',
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 20,
                                child: Text(
                                  'per class',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: textColor,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  '1 month',
                                  style:
                                      TextStyle(fontSize: 16, color: textColor),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  '8 classes',
                                  style:
                                      TextStyle(fontSize: 16, color: textColor),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  'Batch of 4',
                                  style:
                                      TextStyle(fontSize: 16, color: textColor),
                                ),
                              ),
                              Container(
                                height: 80,
                                alignment: Alignment.center,
                                child: MaterialButton(
                                  color: Color.fromRGBO(29, 121, 126, 0.8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.0))),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()),
                                    );
                                  },
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: maxWidth * 0.24,
                      child: Card(
                        color: Color.fromRGBO(240, 240, 240, 1.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.bottomCenter,
                                // height: 50,
                                child: Text(
                                  '₹240',
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 20,
                                child: Text(
                                  'per class',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: textColor,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  '3 months',
                                  style:
                                      TextStyle(fontSize: 16, color: textColor),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  '24 classes',
                                  style:
                                      TextStyle(fontSize: 16, color: textColor),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  'Batch of 4',
                                  style:
                                      TextStyle(fontSize: 16, color: textColor),
                                ),
                              ),
                              Container(
                                height: 80,
                                alignment: Alignment.center,
                                child: MaterialButton(
                                  color: Color.fromRGBO(29, 121, 126, 0.8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.0))),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()),
                                    );
                                  },
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   // decoration: myBoxDecoration(),
                    //   // padding: const EdgeInsets.all(10.0),
                    //   width: maxWidth * 0.25,
                    //   child: Card(
                    //     color: Color.fromRGBO(240, 240, 240, 1.0),
                    //     child: Column(
                    //       children: <Widget>[
                    //         Container(
                    //           alignment: Alignment.bottomCenter,
                    //           height: 50,
                    //           child: Text(
                    //             '₹280',
                    //             style: TextStyle(
                    //                 fontSize: 30,
                    //                 color: textColor,
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //         ),
                    //         Container(
                    //           alignment: Alignment.topCenter,
                    //           height: 20,
                    //           child: Text(
                    //             'per class',
                    //             style: TextStyle(
                    //               fontSize: 14,
                    //               color: textColor,
                    //             ),
                    //           ),
                    //         ),
                    //         Container(
                    //           alignment: Alignment.center,
                    //           height: 50,
                    //           child: Text(
                    //             '1 month',
                    //             style:
                    //                 TextStyle(fontSize: 18, color: textColor),
                    //           ),
                    //         ),
                    //         Container(
                    //           alignment: Alignment.center,
                    //           height: 50,
                    //           child: Text(
                    //             '8 classes',
                    //             style:
                    //                 TextStyle(fontSize: 18, color: textColor),
                    //           ),
                    //         ),
                    //         Container(
                    //           alignment: Alignment.center,
                    //           height: 50,
                    //           child: Text(
                    //             'Batch of 4',
                    //             style:
                    //                 TextStyle(fontSize: 18, color: textColor),
                    //           ),
                    //         ),
                    //         Container(
                    //           height: 100,
                    //           width: 50,
                    //           alignment: Alignment.center,
                    //           child: MaterialButton(
                    //             color: Color.fromRGBO(29, 121, 126, 0.8),
                    //             shape: RoundedRectangleBorder(
                    //                 borderRadius:
                    //                     BorderRadius.all(Radius.circular(4.0))),
                    //             onPressed: () {},
                    //             child: Icon(
                    //               Icons.check,
                    //               color: Colors.white,
                    //               size: 20,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   // decoration: myBoxDecoration(),
                    //   // padding: const EdgeInsets.all(10.0),
                    //   width: maxWidth * 0.25,
                    //   child: Card(
                    //     color: Color.fromRGBO(240, 240, 240, 1.0),
                    //     child: Column(
                    //       children: <Widget>[
                    //         Container(
                    //           alignment: Alignment.bottomCenter,
                    //           height: 50,
                    //           child: Text(
                    //             '₹240',
                    //             style: TextStyle(
                    //                 fontSize: 30,
                    //                 color: textColor,
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //         ),
                    //         Container(
                    //           alignment: Alignment.topCenter,
                    //           height: 20,
                    //           child: Text(
                    //             'per class',
                    //             style: TextStyle(
                    //               fontSize: 14,
                    //               color: textColor,
                    //             ),
                    //           ),
                    //         ),
                    //         Container(
                    //           alignment: Alignment.center,
                    //           height: 50,
                    //           child: Text(
                    //             '3 months',
                    //             style:
                    //                 TextStyle(fontSize: 18, color: textColor),
                    //           ),
                    //         ),
                    //         Container(
                    //           alignment: Alignment.center,
                    //           height: 50,
                    //           child: Text(
                    //             '24 classes',
                    //             style:
                    //                 TextStyle(fontSize: 18, color: textColor),
                    //           ),
                    //         ),
                    //         Container(
                    //           alignment: Alignment.center,
                    //           height: 50,
                    //           child: Text(
                    //             'Batch of 4',
                    //             style:
                    //                 TextStyle(fontSize: 18, color: textColor),
                    //           ),
                    //         ),
                    //         Container(
                    //           height: 80,
                    //           width: 50,
                    //           alignment: Alignment.center,
                    //           child: MaterialButton(
                    //             color: Color.fromRGBO(29, 121, 126, 0.8),
                    //             shape: RoundedRectangleBorder(
                    //                 borderRadius:
                    //                     BorderRadius.all(Radius.circular(4.0))),
                    //             onPressed: () {},
                    //             child: Icon(
                    //               Icons.check,
                    //               color: Colors.white,
                    //               size: 20,
                    //             ),
                    //           ),
                    //         ),
                  ],
                ),
              ),
              //       ),
              //     ],
              //   ),
              // ),
              // Align(
              //   alignment: Alignment.center,
              //   child: MaterialButton(
              //     color: Color.fromRGBO(29, 121, 126, 0.8),
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.all(Radius.circular(4.0))),
              //     onPressed: () {},
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(
              //           vertical: 10.0, horizontal: 10.0),
              //       child: Text(
              //         'START',
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ),
              //   ),
              // ),

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
