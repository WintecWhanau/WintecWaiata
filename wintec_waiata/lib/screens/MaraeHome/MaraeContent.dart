import 'package:flutter/material.dart';

class MaraeContent extends StatelessWidget {
  final String title;
  final String image;
  final String page;

  MaraeContent(this.title, this.image, this.page);

  //TODO: figure out sizing of cards
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.yellow),
        borderRadius: BorderRadius.circular(8.0),
      ),
      //use InkWell is better practice
      child: InkWell(
        onTap: () => changeRoute(context, page),
        child: Column(
          children: < Widget > [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            Container(
              // color: Colors.black,
              child: Row(
                //used to expand song name across entire bottom of card
                children: < Widget > [
                  Expanded(
                    child: FlatButton(
                      //only used a flat button for the styling
                      onPressed: null,
                      disabledTextColor: Colors.black,
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  changeRoute(context, String page) {
    if (page.compareTo('booking') == 0) {
      authenticateBooking(context).then((onValue) {
        if (onValue) {
          Navigator.of(context).pushNamed('/$page');
        } else {
          SnackBar wrongPassword = SnackBar(
            content: Text("Incorrect password. Please try again."),
            duration: Duration(seconds: 3),
          );
          Scaffold.of(context).showSnackBar(wrongPassword);
        }
      });
    } else {
      Navigator.of(context).pushNamed('/$page');
    }
  }

  //create a dialog for user to enter provided password
  //then authenticate user with a submit button. returning a bool back to changeRoute
  Future < bool > authenticateBooking(context) {

    String password = "password";
    TextEditingController _controller = TextEditingController();

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Please provide password"),
          content: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Column(
              children: < Widget > [
                Text(
                  "Please note, only Wintec staff can make official bookings and will be provided with an authentication key.\n\nPlease contact marae staff for more information.",
                  style: TextStyle(fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        // hintText: "Password",
                      ),
                      controller: _controller,
                    ),
                ),
              ],
            ),
          ),
          actions: < Widget > [
            MaterialButton(
              elevation: 5,
              child: Text(
                "Submit",
                style: TextStyle(
                  color: Colors.black
                ),
              ),
              onPressed: () {
                if (_controller.text.toString().compareTo(password) == 0) {
                  Navigator.of(context).pop(true);
                } else {
                  Navigator.of(context).pop(false);
                }
              },
            ),
            MaterialButton(
              elevation: 5,
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.black
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );
  }
}