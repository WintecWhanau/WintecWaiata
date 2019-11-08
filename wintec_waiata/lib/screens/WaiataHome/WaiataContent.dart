import 'package:flutter/material.dart';

class WaiataContent extends StatelessWidget {
  final int index;
  final String title;
  final Color colour;

  WaiataContent(this.index, this.title, this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => goWaiata(context, index), //set null then point to method stops auto trigger
        child: Stack(
          children: <Widget>[
            Card(
              child: Image(
                image: AssetImage("assets/images/image2.jpg"),
                // height: 250.0,
                // width: 92.0,
              ),
            ),
            Center(
              child: Text(
                "Te Wananga O Aotearoa o kirikiriroa",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19.0,
                  ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  goWaiata(BuildContext context, int index){
    Navigator.of(context).pushNamed('/waiataBrief');
  }
}