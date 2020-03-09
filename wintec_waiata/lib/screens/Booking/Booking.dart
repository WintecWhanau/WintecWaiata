import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';

class Booking extends StatefulWidget {


  const Booking({Key key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {

  //url for wintec form
  final String formUrl = "https://forms.office.com/Pages/ResponsePage.aspx?id=EGD7TUvCYESjHZ-rH1sSwsnqE-7D5LNDh5FiYN-6GHxUQzFFUFZPTE5TR1VDQ042UEVRWDVWUEpLSy4u&fbclid=IwAR25ULqLtx_-BapEnWr8mWKdyoc45nCBqsSyhvtmSfdbx_iN3ioravklJyw";

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(//flutter_webview_plugin implementation
      appBar: ApplicationBar(
        context: context,
        title: Text("Booking"),
      ),
      url: formUrl,
      withJavascript: true,//wintec form requires javascript
    );
  }
}