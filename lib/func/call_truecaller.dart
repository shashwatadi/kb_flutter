import 'dart:html' as dom;
import 'dart:async';
import 'dart:developer';

callTruecaller() async {
  print("Called true caller");
  log('True caller');
  String req_nonce = "123456789598";
  // dom.window.location.assign("https://kohbee.com");
  dom.window.location.assign("truecallersdk://truesdk/web_verify?requestNonce=" +
      req_nonce +
      "&partnerKey=kPmx751a8241c8cdf4dd09f569c83def6325c&partnerName=Kohbee&lang=English&title=Default&skipOption=skip#Intent;scheme=truecallersdk;end");
  dom.window.onBlur.listen(blurHandler);
}

void blurHandler(dom.Event e) {
  print('blur: $e');
}
