import 'package:flutter/material.dart';

class MaraeContent extends StatelessWidget {
  final String title;
  final String image;
  final String page;

  MaraeContent(this.title, this.image, this.page);

  //TODO: figure out sizing of cards
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      //child: GestureDetector(
      // provides a way for the whole card to be clickable
      //onTap: () => changeRoute(context),
      //set null then point to method stops auto trigger
      child: Card(
        elevation: 2.0,
        //use InkWell is better practice
        child: InkWell(
          onTap: () => changeRoute(context),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image(
                  image: AssetImage(image),
                ),
              ),
              Container(
                // color: Colors.black,
                child: Row(
                  //used to expand song name across entire bottom of card
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        //only used a flat button for the styling
                        onPressed: null,
                        disabledTextColor: Colors.black,
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  changeRoute(context) {
    Navigator.of(context).pushNamed('/waiataInfo');
  }
}
