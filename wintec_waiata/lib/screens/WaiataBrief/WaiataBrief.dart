import 'package:flutter/material.dart';
import 'package:wintec_waiata/shared/ApplicationBar.dart';

class WaiataBrief extends StatelessWidget {

  WaiataBrief();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        
      ),

    );
  }

  goWaiata(int index){
    print(index);
  }
}