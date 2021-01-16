import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.black87,),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Flutter App',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        color: Colors.white,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        items: [
          Icon(Icons.verified_user, size: 30.0, color: Colors.black87),
          Icon(Icons.add, size: 30.0, color: Colors.black87),
          Icon(Icons.list, size: 30.0, color: Colors.black87),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        animationDuration: Duration(milliseconds: 500),
        animationCurve: Curves.easeOutCubic,
        height: 60.0,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Page 1',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0
            ),
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Page 2',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0
            ),
          )
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Page 3',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0
            ),
          )
        ],
      ),
    );
  }
}

