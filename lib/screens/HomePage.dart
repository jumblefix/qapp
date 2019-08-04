import 'package:flutter/material.dart';
import 'package:qapp/constants/constants.dart';
import 'package:qapp/utils/UIHelper.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, @required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, RoutePaths.Second),
              child: Text('Go To Second Page'),
            ),
            UIHelper.verticalSpaceMedium,
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, RoutePaths.Third),
              child: Text('Go To Third Page'),
            ),
          ],
        ),
      ),
    );
  }
}
