import 'package:firebase/firestore.dart' as fs;
import '../model/globals.dart';

import 'package:firebase/firebase.dart';

fetchTruecallerData() {
  var url, token;
  fs.Firestore store = firestore();
  fs.CollectionReference ref = store.collection('truecaller');
  ref.doc(trueStr).get().then((doc) {
    if (doc.exists) {
      url = doc.get("endpoint");
      token = doc.get("accessToken");
    }
  });
}
