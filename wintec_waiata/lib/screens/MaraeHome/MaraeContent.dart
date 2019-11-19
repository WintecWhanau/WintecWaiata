import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        onTap: () => checkButton(context),
        child: Column(
          children: < Widget > [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: SizedBox( // fill entire card width
                  width: (MediaQuery.of(context).size.width - 20) / 2, //half screen minus padding
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
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

  //check if booking button was pressed. Take value from authenticateBooking() and either show incorrect or allow access to page
  checkButton(BuildContext context) {
    if (page.compareTo('booking') == 0) { //booking has been selected
      getAccess().then((onValue){ //conditional statements based on saved preference return
        if(onValue == null || !onValue){
          initAuth(context);
        }
        else if(onValue){
          changeRoute(context);
        }
      });
    } else {//booking not selected continue normally
      changeRoute(context);
    }
  }

  initAuth(BuildContext context){
    authenticateBooking(context).then((onValue) {
      if(onValue == null){ //cancel button returns null
        return;
      }
      if (onValue) { //returned true allow access
        changeRoute(context);
      } 
      else { //returned false deny access and show SnackBar
        SnackBar wrongPassword = SnackBar(
          content: Text("Incorrect password. Please try again."),
          // duration: Duration(seconds: 2),
        );
        Scaffold.of(context).showSnackBar(wrongPassword);
      }
    });
  }

  //check if user has already filled out authentication form correctly
  Future<bool> getAccess() async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    bool allowed = preference.getBool('allowed');
    return allowed;
  }

  //set a shared preference. Used to determine if authentication window should show
  setAccess() async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    preference.setBool('allowed', true);
  }

  //switch to desired page
  changeRoute(BuildContext context){
    Navigator.of(context).pushNamed('/$page');
  }

  //create a dialog for user to enter provided password
  //then authenticate user with a submit button. returning a bool back to checkButton
  Future < bool > authenticateBooking(context) {

    String password = "tmok1";
    TextEditingController _controller = TextEditingController();

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter password"),
          elevation: 20,
          content: Container(
            // height: MediaQuery.of(context).size.height * 0.25,
            child: SingleChildScrollView(
              child: Column(
                children: < Widget > [
                  TextField(
                    obscureText: true, //hide text
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      // hintText: "Password",
                    ),
                    controller: _controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Only Wintec staff can make official bookings and will be provided with an authentication key.",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Please contact marae staff for more information.",
                        style: TextStyle(fontSize: 9),
                      ),
                    ),
                  )
                ],
              ),
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
                  setAccess();
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