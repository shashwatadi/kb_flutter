import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase/firebase.dart';
import 'package:firebase/firestore.dart' as fs;
import 'package:uuid/uuid.dart';

void createUserInFirestore(email, password, values, _class) async {
  fs.Firestore store = firestore();
  fs.CollectionReference ref = store.collection('users');
  // final usersRef = Firestore.instance.collection('users');
  final timeStamp = DateTime.now();
  // 1. check if user exists in users collection (as per id)
  print("Create User");
  // final GoogleSignInAccount user = googleSignIn.currentUser;
  // DocumentSnapshot doc = await usersRef.document(user.id).get();
  // print("Doc: $doc");

  // if (!doc.exists) {
  // 2. If user doesn't exist, go to First time login
  // final listAttr = await Navigator.push(
  //     context, MaterialPageRoute(builder: (context) => CreateAccount()));
  // displayName = listAttr[0] + ' ' + listAttr[1];
  // print('Attr: $listAttr');
  // 3. Get details from First time login and create a new entry
  final id = Uuid().v4();
  ref.doc(id).set({
    "id": id,
    "email": email,
    "password": password,
    "class": _class,
    "subjects": values,
    "createTime": timeStamp,
  }).then((val) {
    print("email: $email");
  }).catchError((error) {
    print(error);
  });
}
