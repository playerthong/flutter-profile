// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterprofile/resource/app_colors.dart';
import 'package:flutterprofile/screens/profile_screen.dart';
import 'package:flutterprofile/screens/share_screen.dart';

import 'generated/l10n.dart';
import 'screens/story_screen.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> with SingleTickerProviderStateMixin  {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this,length: 3);
    _tabController.addListener(() {
      if (_tabController.index == 0) {

      } else if (_tabController.index == 1) {

      } else if (_tabController.index == 2) {

      }
      setState(() {
        _selectedIndex=_tabController.index;
      });
    });
    _onItemTapped(0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _tabController.animateTo(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: const Text('BottomNavigationBar Sample'),
//      ),
      body: Center(
//        child: _widgetOptions.elementAt(_selectedIndex),
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/back_ground.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              color: AppColors.OVERLAY_BACKGROUND_COLOR,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            TabBarView(
              controller: _tabController,
              children: <Widget>[
                StoryScreen(),
                Text(
                  'Index 1: Home',
                  style: optionStyle,
                ),
                ProfileScreen(),
              ],
            ),
          ],
        )

      ),
      bottomNavigationBar: Container(
        height: 48,
        alignment: Alignment.center,
        color: AppColors.PRIMARY_COLOR,
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: Padding(
           padding: EdgeInsets.only(top: 8,bottom: 0),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 3, // 20%
                  child:GestureDetector(
                    onTap: () {
                      _onItemTapped(0);
                    },
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit, color: Colors.white),
                          Container(
                            height: 8,
                            child: Icon(Icons.lens, color: Colors.white, size: _selectedIndex==0?4:0,),
                          )
                        ],
                      ),

                  ),
                ),
                Expanded(
                  flex: 3, // 20%
                  child:GestureDetector(
                    onTap: () {
                      _onItemTapped(1);
                    },
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.device_hub, color: Colors.white),
                        Container(
                          height: 8,
                          child: Icon(Icons.lens, color: Colors.white, size: _selectedIndex==1?4:0,),
                        )
                      ],
                    ),

                  ),
                ),
                Expanded(
                  flex: 3, // 20%
                  child:GestureDetector(
                    onTap: () {
                      _onItemTapped(2);
                    },
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_outline, color: Colors.white),
                        Container(
                          height: 8,
                          child: Icon(Icons.lens, color: Colors.white, size: _selectedIndex==2?4:0,),
                        )
                      ],
                    ),

                  ),
                )
              ],
            )
        )
      ),
    );
  }
}
