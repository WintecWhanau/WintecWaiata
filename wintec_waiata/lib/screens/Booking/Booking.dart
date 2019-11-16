import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';

class Booking extends StatefulWidget {


  const Booking({Key key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {

  final String formUrl = "https://forms.office.com/Pages/ResponsePage.aspx?id=EGD7TUvCYESjHZ-rH1sSwsnqE-7D5LNDh5FiYN-6GHxUQzFFUFZPTE5TR1VDQ042UEVRWDVWUEpLSy4u&fbclid=IwAR25ULqLtx_-BapEnWr8mWKdyoc45nCBqsSyhvtmSfdbx_iN3ioravklJyw";
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        title: Text("Booking"),
      ),
      body: WebView(
        initialUrl: formUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController){
          _controller.complete(webViewController);
        },
      ),
    );
  }
}