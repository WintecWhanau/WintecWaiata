import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreInfoButton extends StatelessWidget {
  final String title;
  final String link;

  //TODO: Find a better implementation?

  const MoreInfoButton(this.title, this.link, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 2.0),
      child: RaisedButton(
        color: Colors.black,
        splashColor: Colors.yellow,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(5.0),
              bottom: Radius.circular(5.0),
            ),
            side: BorderSide(color: Colors.yellow)),
        onPressed: () {
          _launchURL(link);
        },
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  //for launching external link
  _launchURL(String link) async {
    String url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
