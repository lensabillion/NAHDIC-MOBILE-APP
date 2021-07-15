import 'package:flutter/material.dart';

import 'mainList.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: Column(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height * .35,
              ),
              Text("Welcome to",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 30
                ),
              ),
              new Container(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Image.asset("assets/logo.png"),
              new Container(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Text("NAHDIC",
                  style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.indigo,
                  fontSize: 60
              ),)
            ],
          )

      ),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => MainList()),);
      },
    );
  }
}
