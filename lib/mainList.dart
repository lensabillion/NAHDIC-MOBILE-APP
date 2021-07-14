import 'package:flutter/material.dart';
import 'package:nahdic_mobile_app/microbiology.dart';
import 'package:nahdic_mobile_app/parasitology.dart';
import 'package:nahdic_mobile_app/pathology.dart';
class MainList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // The containers in the background
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .35,
              color: Colors.green,
            ),
            new Container(
              height: MediaQuery.of(context).size.height * .65,
              color: Colors.white,
            )
          ],
        ),
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .28,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 200, height: 50),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      child: Text(
                        "MICROBIOLOGY",
                      ),
                      onPressed:() {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Microbiology()),);
    },
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 200, height: 50),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        textStyle: TextStyle(fontSize: 20),
                  
                      ),
                      child: Text(
                        "PATHOLOGY",
                        
                      ),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Pathology()),);
    },
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 200, height: 50),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      child: Text(
                        "PARASITOLOGY",
            
                      ),

                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Parasitology()),);
    },
                    ),
                  ),
                ],
              ),
              elevation: 4.0,
            ),
          ),
        )
      ],
    );
  }


}