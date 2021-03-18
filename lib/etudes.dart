import 'package:flutter/material.dart';
import 'package:presentation/moi.dart';

void main() {
  runApp(new MaterialApp(home: Etude()));
}

class Etude extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My cool application"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var navigationResult = await Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Moi()));

          if (navigationResult == 'from_back') {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Navigation from back'),
                    ));
          } else if (navigationResult == 'from_button') {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Navigation from button'),
                    ));
          }
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
                  title: new Text("Doctorat en logiciel libre"),
                  icon: new Icon(
                    Icons.school,
                    size: 40.0,
                    color: Colors.black,
                  )),
              new MyCard(
                  title: new Text("Spécialiste en big data et BI"),
                  icon: new Icon(
                    Icons.check_circle,
                    size: 40.0,
                    color: Colors.blue,
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
