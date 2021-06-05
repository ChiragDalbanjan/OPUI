import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color _themeColor = Colors.black;
var _pageNumber = 0;
List<Widget> sl = [];
var _isSearch = false;
TextEditingController _searchController = TextEditingController();
List<Widget> _allAppsList = [];
bool isDrawerOpen = false;
final AdvancedDrawerController dc = AdvancedDrawerController();
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//           iconTheme: IconThemeData(color: _themeColor),
//           textTheme: TextTheme(
//               bodyText2: TextStyle(color: _themeColor),
//               caption: TextStyle(color: _themeColor))),
//       debugShowCheckedModeBanner: false,
//       home: ScaffoldUi(),
//     );
//   }
// }

class ScaffoldUi extends StatefulWidget {
  @override
  _ScaffoldUiState createState() => _ScaffoldUiState();
}

class _ScaffoldUiState extends State<ScaffoldUi> with TickerProviderStateMixin {
  @override
  void initState() {
    getListSearch(_searchController.text);
    print(sl);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AdvancedDrawer(
        backdropColor: Colors.grey,
        controller: dc,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        drawer: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Column(
              children: [
                Text(
                  "",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.home,
                            color: _themeColor,
                            size: 50,
                          ),
                          title: Text("Home",
                              style: TextStyle(
                                  fontSize: 22.5, color: _themeColor),
                              textAlign: TextAlign.start)),
                      ListTile(
                          leading: Icon(
                            Icons.info,
                            color: _themeColor,
                            size: 50,
                          ),
                          title: Text(
                            "About us",
                            style: TextStyle(
                                fontSize: 22.5, color: _themeColor),
                            textAlign: TextAlign.start,
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.contact_page,
                            color: _themeColor,
                            size: 50,
                          ),
                          title: Text(
                            "Contact us",
                            style: TextStyle(
                                fontSize: 22.5, color: _themeColor),
                            textAlign: TextAlign.start,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
            onPressed: (){dc.showDrawer();},
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: dc,
              builder: (context, value, child) {
                return Icon(
                  value.visible ? Icons.clear : Icons.menu,
                );
              },
            ),
          ),
            brightness: Brightness.dark,
            title: Text(
              "One Percent",
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: _themeColor,
          ),
          body: Material(
            child: Column(
              children: [
                _isSearch
                    ? Card(
                      elevation: 10,
                      child: Padding(
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
                        ),
                    )
                    : Container(
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
                      child: TabBar(
                        indicatorWeight: 1.0,
                        labelPadding: EdgeInsets.all(8),
                          physics: AlwaysScrollableScrollPhysics(),
                          indicator: UnderlineTabIndicator(
                              borderSide:
                                  BorderSide(color: Colors.white54, width: 5)),
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
                                      color: Colors.white, fontSize: 22.5),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "All Apps",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22.5),
                                  ),
                                ),
                              )
                            ]),
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
            textColor: Colors.white,
            circleColor: Colors.white54,
            inactiveIconColor: Colors.white,
            barBackgroundColor: _themeColor,
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
          // drawer: Drawer(child: Container(
          //   margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          //   child: Column(
          //     children: [
          //       Text(
          //         "Menu",
          //         style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //       ),
          //       Expanded(
          //         child: ListView(
          //           children: [
          //             Card(
          //                 child: ListTile(
          //                     leading: Icon(
          //                       Icons.home,
          //                       color: _themeColor,
          //                       size: 50,
          //                     ),
          //                     title: Text("Home",
          //                         style: TextStyle(fontSize: 22.5,color: _themeColor),
          //                         textAlign: TextAlign.start))),
          //             Card(
          //                 child: ListTile(
          //                     leading: Icon(
          //                       Icons.info,
          //                       color: _themeColor,
          //                       size: 50,
          //                     ),
          //                     title: Text(
          //                       "About us",
          //                       style: TextStyle(fontSize: 22.5,color: _themeColor),
          //                       textAlign: TextAlign.start,
          //                     ))),
          //             Card(
          //                 child: ListTile(
          //                     leading: Icon(
          //                       Icons.contact_page,
          //                       color: _themeColor,
          //                       size: 50,
          //                     ),
          //                     title: Text(
          //                       "Contact us",
          //                       style: TextStyle(fontSize: 22.5,color: _themeColor),
          //                       textAlign: TextAlign.start,
          //                     ))),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),),
        ),
      ),
    );
  }

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
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
        padding: EdgeInsets.all(20),
        childAspectRatio: 1.2,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.bookReader,
                      color: _themeColor,
                      size: 150,
                    ),
                    Center(
                        child: Text("Educational",
                            style: TextStyle(fontSize: 25, color: _themeColor))),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.tools,
                      color: _themeColor,
                      size: 150,
                    ),
                    Center(
                        child: Text("Utility",
                            style: TextStyle(fontSize: 25, color: _themeColor))),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.users,
                      color: _themeColor,
                      size: 150,
                    ),
                    Center(
                        child: Text(
                      "Social Media",
                      style: TextStyle(fontSize: 25, color: _themeColor),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.blackTie,
                      color: _themeColor,
                      size: 150,
                    ),
                    Center(
                        child: Text("Office",
                            style: TextStyle(fontSize: 25, color: _themeColor))),
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

class AllApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
      child: ListView(
        children: _getAllApps(),
      ),
    );
  }
}

_getAllApps() {
  _allAppsList = [
    Card(
      key: Key("C Compiler"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.cuttlefish,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "C Compiler",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("C++ Compiler"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.laptopCode,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "C++ Compiler",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Python Compiler"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.python,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Python Compiler",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("PHP Compiler"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.php,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "PHP Compiler",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Alarm"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            Icons.alarm,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Alarm",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Calculator"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            Icons.calculate,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Calculator",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Calender"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            Icons.calendar_today,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Calender",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Call"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            Icons.call,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Call",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Camera"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            Icons.camera,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Camera",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Gallary"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.images,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Gallary",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Message"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.facebookMessenger,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Message",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Portfolio"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.portrait,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Portfolio",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Ask"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.question,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Ask",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Connect"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.connectdevelop,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Connect",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Docs"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.file,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Docs",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Sheets"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.table,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Sheets",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Slides"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            FontAwesomeIcons.slideshare,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Slides",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    ),
    Card(
      key: Key("Present"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: FaIcon(
            Icons.present_to_all,
            size: 40,
            color: _themeColor,
          ),
          title: Text(
            "Present",
            style: TextStyle(fontSize: 22.5, color: _themeColor),
          ),
        ),
      ),
    )
  ];
  return _allAppsList;
}
