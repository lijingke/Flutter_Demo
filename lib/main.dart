import 'package:flutter/material.dart';
import 'package:my_flutter_demo/demo/hello_demo.dart';
import 'package:my_flutter_demo/demo/listview_demo.dart';
import 'package:my_flutter_demo/demo/drawer_demo.dart';
import 'package:my_flutter_demo/demo/bottom_navigation_bar_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // 隐藏导航栏Debug
      // debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.purple,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              // leading: IconButton(
              //   icon: Icon(Icons.menu),
              //   tooltip: 'Navigration',
              //   onPressed: () => debugPrint("Navigration button is pressed."),
              // ),
              title: Text('Flutter_Demo'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'search',
                  onPressed: () => debugPrint('Search button is pressed.'),
                ),
              ],
              elevation: 30.0,
              bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: [
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ListViewDemo(),
                Icon(Icons.change_history, size: 128.0, color: Colors.black12),
                Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
              ],
            ),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
