import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'intrinsic',
        home: Scaffold(
            body: Material(
              color: Colors.blue,
              child: SafeArea(
                child: SizedBox.expand(
                  child: Card(color: Colors.yellowAccent),
                ),
              ),
            )
        )
    );
  }
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'intrinsic',
        home: Scaffold(
          appBar: AppBar(title: Text('Stack')),
          body: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
//                borderRadius: BorderRadius.all(Radius.circular(18)),
                shape: BoxShape.circle,
                color: Colors.yellow,
                boxShadow: [const BoxShadow(blurRadius: 10.0)],
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                    'https://flutter.io/images/catalog-widget-placeholder.png',
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'intrinsic',
        home: Scaffold(
          appBar: AppBar(title: Text('Stack')),
          body: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.red),
                ),
                flex: 6,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.green),
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
                flex: 1,
              ),
            ],
          ),
        )
    );
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'intrinsic',
        home: Scaffold(
          appBar: AppBar(title: Text('Stack')),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Material(color: Colors.yellowAccent),
              Positioned(
                top: 0,
                left: 0,
                child: Icon(Icons.star, size: 50),
              ),
              Positioned(
                top: 340,
                left: 250,
                child: Icon(Icons.call, size: 50),
              ),
            ],
          ),
        )
    );
  }
}


