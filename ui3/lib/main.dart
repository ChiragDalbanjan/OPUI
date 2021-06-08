import 'package:flutter/cupertino.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'animated_hidden_drawer.dart';

Color _themeColor = Colors.black;
var _pageNumber = 0;
List<Widget> sl = [];
var _isSearch = false;
TextEditingController _searchController = TextEditingController();
List<Widget> _allAppsList = [];
var _themesColors = [
  Colors.white,
  Colors.blue[100],
  Colors.red[100],
  Colors.green[100],
  Colors.deepOrange[100],
  Colors.deepPurple[100],
  Colors.grey[300],
  Colors.yellow[100],
  Colors.pink[100],
];
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Platform messages are asynchronous, so we initialize in an async method.
  /// For screen navigation using this plugin, there is an awesome way.
  /// that's --> step 1. create a widget with startup page.
  ///

  Widget selectedWidget = ScaffoldUi();
  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
          iconTheme: IconThemeData(color: _themeColor),
          textTheme: TextTheme(
              bodyText2: TextStyle(color: _themeColor),
              caption: TextStyle(color: _themeColor))),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: HiddenDrawer(
        duration: Duration(milliseconds: 500),
        items: [
          ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
                size: 40,
              ),
              title: Text("Home",
                  style: TextStyle(fontSize: 22.5, color: _themeColor),
                  textAlign: TextAlign.start)),
          ListTile(
              leading: Icon(
                Icons.info,
                color: _themeColor,
                size: 40,
              ),
              title: Text(
                "About us",
                style: TextStyle(fontSize: 22.5, color: _themeColor),
                textAlign: TextAlign.start,
              )),
          ListTile(
              leading: Icon(
                Icons.contact_page,
                color: _themeColor,
                size: 40,
              ),
              title: Text(
                "Contact us",
                style: TextStyle(fontSize: 23, color: _themeColor),
                textAlign: TextAlign.start,
              )),
        ],
        child: SelectedWidget(),
        backgroundColor: Colors.white,
        drawerBackgroundColor: Colors.white,
        borderRadius: 80,
        x: 230,
        y: 200,
        scale: 0.73,
      )),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double __fontsize = 22.5;
    double __iconsize = 60;
    return Container(
      child: GridView.count(
        mainAxisSpacing: 30,
        crossAxisSpacing: 20,
        padding: EdgeInsets.all(8),
        childAspectRatio: 3,
        crossAxisCount: 1,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                // border: Border.all(color: _themeColor, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.bookReader,
                      color: _themeColor,
                      size: __iconsize,
                    ),
                    Center(
                        child: Text("Educational",
                            style: TextStyle(fontSize: __fontsize, color: _themeColor))),
                    // Wrap(children: [
                    //   Text(
                    //     "Learn about the most trending technologies of the 21st Century and get ahead of your competitors\n\n",
                    //     style: TextStyle(fontSize: 18),
                    //     textAlign: TextAlign.center,
                    //   )
                    // ])
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                // border: Border.all(color: _themeColor, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.tools,
                      color: _themeColor,
                      size: __iconsize,
                    ),
                    Center(
                        child: Text("Utility",
                            style: TextStyle(fontSize: __fontsize, color: _themeColor))),
                    // Wrap(children: [
                    //   Text(
                    //     "Automating most of your activities, giving you a new experience of being organised and helping you manage your day-to-day tasks with ease.",
                    //     style: TextStyle(fontSize: 18),
                    //     textAlign: TextAlign.center,
                    //   )
                    // ])
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                // border: Border.all(color: _themeColor, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.users,
                      color: _themeColor,
                      size: __iconsize,
                    ),
                    Center(
                        child: Text(
                      "Social Media",
                      style: TextStyle(fontSize: __fontsize, color: _themeColor),
                      textAlign: TextAlign.center,
                    )),
                    // Wrap(children: [
                    //   Text(
                    //     "Combining Socializing with professionalism and education to bring you a new experience of presenting yourself online",
                    //     style: TextStyle(fontSize: 18),
                    //     textAlign: TextAlign.center,
                    //   )
                    // ])
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                // border: Border.all(color: _themeColor, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.blackTie,
                      color: _themeColor,
                      size: __iconsize,
                    ),
                    Center(
                        child: Text("Office",
                            style: TextStyle(fontSize: __fontsize, color: _themeColor))),
                    // Wrap(children: [
                    //   Text(
                    //     "Combining Socializing with professionalism and education to bring you a new experience of presenting yourself online",
                    //     style: TextStyle(fontSize: 18),
                    //     textAlign: TextAlign.center,
                    //   )
                    // ])
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectedWidget extends StatefulWidget {
  @override
  _SelectedWidgetState createState() => _SelectedWidgetState();
}

class _SelectedWidgetState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    getListSearch(searchQuery) {
      _allAppsList = _getAllApps();
      if (searchQuery == "") {
        sl = _allAppsList;
        setState(() {});
      } else {
        sl = [];
        for (var item in _allAppsList) {
          if (item.key
              .toString()
              .toLowerCase()
              .contains(searchQuery.toLowerCase())) {
            sl.add(item);
          }
        }
        setState(() {});
      }
    }

    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
        height: MediaQuery.of(context).size.height-76,
        width:  MediaQuery.of(context).size.width,
        child: Center(
          // child: Text("hello, this is my first plugin"),
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              body: Material(
                child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      child: _isSearch
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                onChanged: (s) {
                                  getListSearch(_searchController.text);
                                },
                                controller: _searchController,
                                decoration: InputDecoration(
                                    focusColor: _themeColor,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: _themeColor, width: 2)),
                                    icon: Icon(
                                      Icons.search,
                                      color: _themeColor,
                                    ),
                                    hintText: "Search App here.."),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: TabBar(
                                  indicatorWeight: 1.0,
                                  labelPadding: EdgeInsets.all(8),
                                  physics: AlwaysScrollableScrollPhysics(),
                                  indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          color: Colors.white54, width: 5)),
                                  onTap: (position) {
                                    print(position);
                                    _pageNumber = position;
                                    setState(() {});
                                  },
                                  tabs: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Text(
                                        "Categories",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.5),
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          "All Apps",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.5),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                    ),
                    Expanded(
                        child: _isSearch
                            ? ListView(
                                children: sl,
                              )
                            : TabBarView(children: [Categories(), AllApps()]))
                  ],
                ),
              ),
              bottomNavigationBar: FancyBottomNavigation(
                textColor: _themeColor,
                circleColor: _themeColor,
                inactiveIconColor: _themeColor,
                tabs: [
                  TabData(iconData: Icons.home, title: "Home"),
                  TabData(iconData: Icons.search, title: "Search"),
                ],
                onTabChangedListener: (position) {
                  print(position);
                  if (position == 1) {
                    setState(() {
                      _isSearch = true;
                    });
                  } else {
                    setState(() {
                      _isSearch = false;
                    });
                  }
                },
              ),
            ),
          ),
        ));
  }
}

class AllApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: ListView(
        children: _getAllApps(),
      ),
    );
  }
}

_getAllApps() {
  const double fontSizeForAllApps = 18, edgeInsetsAllForCard = 0;
  double logoSize = 25;

  _allAppsList = [
    Card(
      key: Key("C Compiler"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.cuttlefish,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "C Compiler",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("C++ Compiler"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.laptopCode,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "C++ Compiler",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Python Compiler"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.python,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Python Compiler",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("PHP Compiler"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.php,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "PHP Compiler",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Alarm"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: Icon(
            Icons.alarm,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Alarm",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Calculator"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: Icon(
            Icons.calculate,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Calculator",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Calender"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: Icon(
            Icons.calendar_today,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Calender",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Call"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: Icon(
            Icons.call,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Call",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Camera"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: Icon(
            Icons.camera,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Camera",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Gallary"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.images,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Gallary",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Message"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.facebookMessenger,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Message",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Portfolio"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.portrait,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Portfolio",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Ask"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.question,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Ask",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Connect"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.connectdevelop,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Connect",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Docs"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.file,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Docs",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Sheets"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.table,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Sheets",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Slides"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.slideshare,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Slides",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Present"),
      child: Padding(
        padding: const EdgeInsets.all(edgeInsetsAllForCard),
        child: ListTile(
          leading: FaIcon(
            Icons.present_to_all,
            size: logoSize,
            color: _themeColor,
          ),
          title: Text(
            "Present",
            style: TextStyle(fontSize: fontSizeForAllApps, color: _themeColor),
          ),
        ),
      ),
    )
  ];
  return _allAppsList;
}
