import 'package:flutter/material.dart';

void main() => runApp(phoneMark());


class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 100),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
    );
  }
}

class TextDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BaseLine',
      home: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              'Baseline',
              style: Theme
                  .of(context)
                  .textTheme
                  .display3,
            ),
            Text(
              'Baseline',
              style: Theme
                  .of(context)
                  .textTheme
                  .body1,
            ),
          ],
        ),
      ),
    );
  }
}

class intrinsic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'intrinsic',
      home: Scaffold(
        appBar: AppBar(
          title: Text('width and height'),
        ),
        body: Center(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text('short'),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text('A bit longer'),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text('The Longest Text Button'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//class bindStack extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final size = MediaQuery.of(context).size;
//    Widget main = new Scaffold(
//      appBar: AppBar(title: Text('Stack')),
//    );
//
//    return Stack(
//      fit: StackFit.expand,
//      children: <Widget>[
//        main,
//        Banner(
//          message: "Top Start",
//          location: BannerLocation.topStart,
//        ),
//        Banner(
//          message: "Top End",
//          location: BannerLocation.topEnd,
//        ),
//        Banner(
//          message: "Bottom Start",
//          location: BannerLocation.bottomStart,
//        ),
//        Banner(
//          message: "Bottom End",
//          location: BannerLocation.bottomEnd,
//        ),
//      ],
//    );
//  }
//}

class phoneMark extends StatelessWidget {
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      appBar: AppBar(title: Text('Stack')),
      body: Stack(

        fit: StackFit.expand,
        children: <Widget>[
          Material(color: Colors.yellowAccent),
          Positioned(
            top: 0,
            left: 0,
            child: Icon(Icons.star),
          ),
          Positioned(
            top: 340,
            left: 250,
            child: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}