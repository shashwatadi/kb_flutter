import 'package:firebase/firebase.dart';
import 'package:http/http.dart' as http;
import 'package:rflutter_alert/rflutter_alert.dart';

int selectedDashboardTab = 0;
int currentSelectedIndex = 0;
UserCredential user;
String trueStr;

getUserPhoneNumber(context) {
  Alert(context: context, title: "Debug", desc: user.user.toString()).show();

  return http
      .get('https://www.googleapis.com/admin/directory/v1/users/${user.user}')
      .then((onValue) {
    Alert(context: context, title: "Debug", desc: onValue.body).show();
    return onValue.toString();
  }).catchError((onError) {
    Alert(context: context, title: "Debug", desc: onError.toString()).show();
  });
}
