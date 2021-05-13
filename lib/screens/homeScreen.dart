import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static String id = 'home_page';
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _key = GlobalKey();

  Widget _icon(IconData icon, {Color color = Colors.blue}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Theme.of(context).backgroundColor,
        //boxShadow: AppTheme.shadow
      ),
      child: InkWell(
        onTap: () {
          _key.currentState.openDrawer();
        },
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }

  bool isHomePageSelected = true;
  Widget _appBar() {
    return Container(
      //padding: AppTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 4,
            child: _icon(Icons.menu, color: Colors.black54),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color(0xfff8f8f8),
                      blurRadius: 10,
                      spreadRadius: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: _appBar(),
        title: Text("Home"),
        centerTitle: true,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('User Details'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('News Feed'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
