import 'package:firebase/firebase.dart';
import 'package:firebase/firestore.dart' as fs;

import 'package:flutter/material.dart';

import '../Screens/dashboard.dart';

getUserFromFirestore(context, email, password) async {
  fs.Firestore store = firestore();
  fs.CollectionReference ref = store.collection('users');
  print("Get User: $email");

  ref.where('email', '==', email).get().then((doc) {
    print('Step 2');
    print('${doc.size}');
    doc.forEach((obj) {
      print("Step 3: ${obj.get('password').toString()}");
      if (password == obj.get('password').toString()) {
        print("Step 4");
        //True Workflow
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard()),
        );
      } else
        //False Workflow
        return false;
    });
  });
  return false;
}
