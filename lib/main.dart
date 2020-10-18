import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'mission_list.dart';
import 'planet_list.dart';

void main() {
  runApp(SpaceApp());
}

class SpaceApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SpaceHomePage(title: 'Space history'),
    );
  }
}

class SpaceHomePage extends StatefulWidget {
  SpaceHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SpaceHomePageState createState() => _SpaceHomePageState();
}

class _SpaceHomePageState extends State<SpaceHomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    MissionListWidget(),
    PlaceholderWidget(Colors.deepOrange),
    PlanetListWidget()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Image.asset('assets/images/rosetta.png', height: 25, width: 25),
            title: new Text('Mission'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Spacecraft'),
          ),
          BottomNavigationBarItem(
              icon: new Image.asset('assets/images/earth.png', height: 25, width: 25),
              title: Text('Planet')
          )
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
