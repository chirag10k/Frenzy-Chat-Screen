import 'package:flutter/material.dart';

const String _name="Chirag";

class ChatMessage extends StatelessWidget{
  final String text;
  ChatMessage({this.text});

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(
              child: new Text(_name[0]),
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name, style: Theme.of(context).textTheme.subhead,),
              new Container(
                margin: EdgeInsets.only(top: 5.0),
                child: new Text(text,style: new TextStyle(fontSize: 20.0),),

              )
            ],
          )
        ],
      ),
    );
  }
}
