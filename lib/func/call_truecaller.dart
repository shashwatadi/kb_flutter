import 'dart:html' as dom;
import 'dart:async';
import 'dart:developer';
import '../model/globals.dart';


callTruecaller() async {
  print("Called true caller");
  log('True caller');
  trueStr = "123456789598";
  // dom.window.location.assign("https://kohbee.com");
  dom.window.location.assign("truecallersdk://truesdk/web_verify?requestNonce=" +
      trueStr +
      "&partnerKey=kPmx751a8241c8cdf4dd09f569c83def6325c&partnerName=Kohbee&lang=English&title=Default&skipOption=skip#Intent;scheme=truecallersdk;end");
  dom.window.onBlur.listen(blurHandler);
}

void blurHandler(dom.Event e) {
  print('blur: $e');
}
