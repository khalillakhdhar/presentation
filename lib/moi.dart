import 'package:flutter/material.dart';
import 'package:presentation/etudes.dart';

void main() {
  runApp(new MaterialApp(home: Moi()));
}

class Moi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Ma présentation"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var navigationResult = await Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Etude()));
        },
      ),
      body: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              /*new Text("hello"),
          new Text("I am"),
          new Text("Khalil"),*/
              new MyCard(
                  title: new Text("Khalil Lakhdhar"),
                  icon: new Icon(
                    Icons.account_box,
                    size: 40.0,
                    color: Colors.blueGrey,
                  )),
              new MyCard(
                  title: new Text("Gabés"),
                  icon: new Icon(
                    Icons.home,
                    size: 40.0,
                    color: Colors.blue,
                  )),
              new MyCard(
                  title: new Text("sport"),
                  icon: new Icon(
                    Icons.sports_baseball,
                    size: 40,
                    color: Colors.blueGrey,
                  )),
            ],
          )),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});
  final Widget title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
          child: new Container(
              padding: EdgeInsets.all(15.0),
              child: new Column(children: <Widget>[
                /*   new Text("I love flutter"),
        new Icon(Icons.favorite)*/
                this.title,
                this.icon
              ]))),
    );
  }
}
