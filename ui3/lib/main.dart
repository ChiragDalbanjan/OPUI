import 'package:flutter/cupertino.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui3/TabScreen.dart';
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
                              style: TextStyle(
                                  fontSize: 22.5, color: _themeColor),
                              textAlign: TextAlign.start)),
                      ListTile(
                          leading: Icon(
                            Icons.info,
                            color: _themeColor,
                            size: 40,
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
                            size: 40,
                          ),
                          title: Text(
                            "Contact us",
                            style: TextStyle(
                                fontSize: 23, color: _themeColor),
                            textAlign: TextAlign.start,
                          )),
                    
          // SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       /// step 2. Create gesture detectors of items
          //       // GestureDetector(
          //       //   child: Row(
          //       //     children: [
          //       //       Icon(
          //       //         Icons.home,
          //       //         color: Color(0xff6b705c),
          //       //         size: 35,
          //       //       ),
          //       //       Text(
          //       //         " Home",
          //       //         style: TextStyle(
          //       //             color: Color(0xff6b705c),
          //       //             fontWeight: FontWeight.bold,
          //       //             fontSize: 25),
          //       //       ),
          //       //     ],
          //       //   ),
          //       //   onTap: () {
          //       //     /// step 3. on pressed the item , update the widget.
          //       //     setState(() {
          //       //       selectedWidget = Container(
          //       //           decoration: BoxDecoration(
          //       //               borderRadius: BorderRadius.circular(80),
          //       //               color: Color(0xffffe8d6)),
          //       //           height: 979,
          //       //           width: 1000,
          //       //           child: Center(
          //       //             child: Column(
          //       //               children: [
          //       //                 Image.asset("assets/home.png"),
          //       //                 SizedBox(
          //       //                   height: 20,
          //       //                 ),
          //       //                 Text(
          //       //                   "W E L C O M E",
          //       //                   style: TextStyle(
          //       //                       color: Color(0xff6b705c),
          //       //                       fontSize: 30,
          //       //                       fontWeight: FontWeight.bold),
          //       //                 )
          //       //               ],
          //       //             ),
          //       //           ));
          //       //     });
          //       //   },
          //       // ),
          //       // GestureDetector(
          //       //   child: Row(
          //       //     children: [
          //       //       Icon(
          //       //         Icons.info,
          //       //         color: Color(0xff6b705c),
          //       //         size: 35,
          //       //       ),
          //       //       Text(
          //       //         " About",
          //       //         style: TextStyle(
          //       //             color: Color(0xff6b705c),
          //       //             fontWeight: FontWeight.bold,
          //       //             fontSize: 25),
          //       //       ),
          //       //     ],
          //       //   ),
          //       //   onTap: () {
          //       //     setState(() {
          //       //       selectedWidget = Container(
          //       //           decoration: BoxDecoration(
          //       //               borderRadius: BorderRadius.circular(80),
          //       //               color: Color(0xffffe8d6)),
          //       //           height: 979,
          //       //           width: 1000,
          //       //           child: Center(
          //       //             child: Column(
          //       //               children: [
          //       //                 Image.asset("assets/about us.png"),
          //       //                 SizedBox(
          //       //                   height: 20,
          //       //                 ),
          //       //                 Text(
          //       //                   "Github : krish-dev-7\n"
          //       //                   "Instagram: krish_krush",
          //       //                   style: TextStyle(
          //       //                       color: Color(0xff6b705c),
          //       //                       fontSize: 30,
          //       //                       fontWeight: FontWeight.bold),
          //       //                 )
          //       //               ],
          //       //             ),
          //       //           ));
          //       //     });
          //       //   },
          //       // ),

          //       SingleChildScrollView(
          //         scrollDirection: Axis.vertical,
          //         child: Column(
          //           children: [
                      
          //             ExpansionTile(
          //               title: Text(
          //                 'Social Media',
          //                 style: TextStyle(fontSize: 20, color: Colors.black),
          //               ),
          //               leading: Icon(Icons.people_sharp, color: Colors.black),
          //               children: <Widget>[
          //                 Container(
          //                   margin: EdgeInsets.only(left: 60),
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: TextButton(
          //                       style: ButtonStyle(
          //                         backgroundColor:
          //                             MaterialStateProperty.resolveWith<Color>(
          //                           (Set<MaterialState> states) {
          //                             return null; // Use the component's default.
          //                           },
          //                         ),
          //                       ),
          //                       onPressed: () {
          //                         Navigator.push(context,
          //                             MaterialPageRoute(builder: (_) {
          //                           return Scaffold(
          //                             appBar: AppBar(
          //                                 title: Text('Message+',
          //                                     style: TextStyle(
          //                                         color: Colors.black26))),
          //                             body: Container(
          //                                 child: Image.asset(
          //                                     'assets/message.png')),
          //                           );
          //                         }));
          //                       },
          //                       child: Text(
          //                         "Message+",
          //                         style: TextStyle(
          //                             fontSize: 18, color: Colors.black54),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.only(left: 60),
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: TextButton(
          //                       style: ButtonStyle(
          //                         backgroundColor:
          //                             MaterialStateProperty.resolveWith<Color>(
          //                           (Set<MaterialState> states) {
          //                             return null; // Use the component's default.
          //                           },
          //                         ),
          //                       ),
          //                       onPressed: () {
          //                         Navigator.push(context,
          //                             MaterialPageRoute(builder: (_) {
          //                           return Scaffold(
          //                             appBar: AppBar(title: Text('Connect+')),
          //                             body: Container(
          //                                 child: Image.asset(
          //                                     'assets/connect.jpg')),
          //                           );
          //                         }));
          //                       },
          //                       child: Text(
          //                         "Connect+",
          //                         style: TextStyle(
          //                             fontSize: 18, color: Colors.black),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.only(left: 60),
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: TextButton(
          //                       style: ButtonStyle(
          //                         backgroundColor:
          //                             MaterialStateProperty.resolveWith<Color>(
          //                           (Set<MaterialState> states) {
          //                             return null; // Use the component's default.
          //                           },
          //                         ),
          //                       ),
          //                       onPressed: () {
          //                         Navigator.push(context,
          //                             MaterialPageRoute(builder: (_) {
          //                           return Scaffold(
          //                             appBar: AppBar(title: Text('Date+')),
          //                             body: Container(
          //                                 child:
          //                                     Image.asset('assets/date.png')),
          //                           );
          //                         }));
          //                       },
          //                       child: Text(
          //                         "Date+",
          //                         style: TextStyle(
          //                             fontSize: 18, color: Colors.black),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.only(left: 60),
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: TextButton(
          //                       style: ButtonStyle(
          //                         backgroundColor:
          //                             MaterialStateProperty.resolveWith<Color>(
          //                           (Set<MaterialState> states) {
          //                             return null; // Use the component's default.
          //                           },
          //                         ),
          //                       ),
          //                       onPressed: () {
          //                         Navigator.push(context,
          //                             MaterialPageRoute(builder: (_) {
          //                           return Scaffold(
          //                             appBar: AppBar(title: Text('Discover+')),
          //                             body: Container(
          //                                 child: Image.asset(
          //                                     'assets/discover.png')),
          //                           );
          //                         }));
          //                       },
          //                       child: Text(
          //                         "Discover+",
          //                         style: TextStyle(
          //                             fontSize: 18, color: Colors.black),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             ExpansionTile(
          //               leading: Icon(Icons.code_outlined),
          //               children: <Widget>[
          //                 Container(
          //                   margin: EdgeInsets.only(left: 41),
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: TextButton(
          //                       style: ButtonStyle(
          //                         backgroundColor:
          //                             MaterialStateProperty.resolveWith<Color>(
          //                           (Set<MaterialState> states) {
          //                             return null; // Use the component's default.
          //                           },
          //                         ),
          //                       ),
          //                       onPressed: () {
          //                         Navigator.push(context,
          //                             MaterialPageRoute(builder: (_) {
          //                           return Scaffold(
          //                             appBar: AppBar(title: Text('C compiler')),
          //                             body: Container(
          //                                 child: Image.asset(
          //                                     'assets/portfolio.png')),
          //                           );
          //                         }));
          //                       },
          //                       child: Text(
          //                         "C",
          //                         style: TextStyle(
          //                             fontSize: 18, color: Colors.black),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.only(left: 52),
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: TextButton(
          //                       style: ButtonStyle(
          //                         backgroundColor:
          //                             MaterialStateProperty.resolveWith<Color>(
          //                           (Set<MaterialState> states) {
          //                             return null; // Use the component's default.
          //                           },
          //                         ),
          //                       ),
          //                       onPressed: () {
          //                         Navigator.push(context,
          //                             MaterialPageRoute(builder: (_) {
          //                           return Scaffold(
          //                             appBar:
          //                                 AppBar(title: Text('C++ compiler')),
          //                             body: Container(
          //                                 child:
          //                                     Image.asset('assets/date.png')),
          //                           );
          //                         }));
          //                       },
          //                       child: Text(
          //                         "C++",
          //                         style: TextStyle(
          //                             fontSize: 18, color: Colors.black),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.only(left: 62),
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: TextButton(
          //                       style: ButtonStyle(
          //                         backgroundColor:
          //                             MaterialStateProperty.resolveWith<Color>(
          //                           (Set<MaterialState> states) {
          //                             return null; // Use the component's default.
          //                           },
          //                         ),
          //                       ),
          //                       onPressed: () {
          //                         Navigator.push(context,
          //                             MaterialPageRoute(builder: (_) {
          //                           return Scaffold(
          //                             appBar: AppBar(
          //                                 title: Text('Python Compiler')),
          //                             body: Container(
          //                                 child: Image.asset('assets/ask.png')),
          //                           );
          //                         }));
          //                       },
          //                       child: Text(
          //                         "Python",
          //                         style: TextStyle(
          //                             fontSize: 18, color: Colors.black),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.only(left: 57),
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: TextButton(
          //                       style: ButtonStyle(
          //                         backgroundColor:
          //                             MaterialStateProperty.resolveWith<Color>(
          //                           (Set<MaterialState> states) {
          //                             return null; // Use the component's default.
          //                           },
          //                         ),
          //                       ),
          //                       onPressed: () {
          //                         Navigator.push(context,
          //                             MaterialPageRoute(builder: (_) {
          //                           return Scaffold(
          //                             appBar:
          //                                 AppBar(title: Text('Java compiler')),
          //                             body: Container(
          //                                 child: Image.asset(
          //                                     'assets/discover.png')),
          //                           );
          //                         }));
          //                       },
          //                       child: Text(
          //                         "Java",
          //                         style: TextStyle(
          //                             fontSize: 18, color: Colors.black),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ],

          //               title: Text(
          //                 'Compiler',
          //                 style: TextStyle(fontSize: 20),
          //               ),

          //               // selected: _selectedDestination == 1,
          //               // onTap: () => selectDestination(1),
          //             ),
                      
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          
        ],
        child: SelectedWidget(),
        backgroundColor: Colors.white,
        drawerBackgroundColor: Colors.white,
        borderRadius: 80,
        // header: Container(
        //   /// This highly Customisable widget is used
        //   /// as a header for our attractive drawer
        //   height: screenHeight*0.3,
        //   width: 1000,
        //   color: Color(0xff6b705c),
        //   child: Padding(
        //     padding: const EdgeInsets.all(15.0),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         CircleAvatar(
        //           backgroundColor: Color(0xffffe8d6),
        //           radius: 40,
        //           child: Icon(
        //             Icons.account_circle,
        //             color: Color(0xff6b705c),
        //             size: 80,
        //           ),
        //         ),
        //         Text(
        //           "krishna",
        //           style: TextStyle(
        //               color: Color(0xffffe8d6),
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        x: 230,
        y: 200,
        scale: 0.73,
      )),
    );
  }
}

class Categories extends StatelessWidget {
  double childAspectRatioOfCard = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
        padding: EdgeInsets.only(left:30, right: 30, top: 30),
        childAspectRatio: childAspectRatioOfCard,
        crossAxisCount: 1,
        children: [
          Card(
            semanticContainer: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
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
                      size: 100,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.tools,
                      color: _themeColor,
                      size: 100,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.users,
                      color: _themeColor,
                      size: 100,
                    ),
                    Center(
                        child: Text(
                      "Social \nMedia",
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
        height: 645,
        width: 1000,
        child: Center(
          // child: Text("hello, this is my first plugin"),
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              // appBar: AppBar(
              //   brightness: Brightness.dark,

              //   backgroundColor: _themeColor,
              // ),
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

                        // TabBar(
                        //     physics: AlwaysScrollableScrollPhysics(),
                        //     indicator: UnderlineTabIndicator(
                        //         borderSide:
                        //             BorderSide(color: _themeColor, width: 3)),
                        //     onTap: (position) {
                        //       print(position);
                        //       _pageNumber = position;
                        //       setState(() {});
                        //     },
                        //     tabs: [
                        //         Padding(
                        //           padding: const EdgeInsets.all(8.0),
                        //           child: Center(
                        //               child: Text(
                        //             "Categories",
                        //             style: TextStyle(
                        //                 color: _themeColor, fontSize: 22.5),
                        //           )),
                        //         ),
                        //         Padding(
                        //           padding: const EdgeInsets.all(8.0),
                        //           child: Center(
                        //             child: Text(
                        //               "All Apps",
                        //               style: TextStyle(
                        //                   color: _themeColor, fontSize: 22.5),
                        //             ),
                        //           ),
                        //         )
                        //       ]),
                        ),
                    Expanded(
                        child: _isSearch
                            ? ListView(
                                children: sl,
                              )
                            :// AllApps()
                        TabBarView(children: [
                            Categories(),
                            AllApps()
                          ]
                        )
                        )
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
              // drawer: Drawer(
              //   child: Container(
              //     margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              //     child: Column(
              //       children: [
              //         Text(
              //           "Menu",
              //           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              //         ),
              //         Expanded(
              //           child: ListView(
              //             children: [
              //               Card(
              //                   child: ListTile(
              //                       leading: Icon(
              //                         Icons.home,
              //                         color: _themeColor,
              //                         size: 50,
              //                       ),
              //                       title: Text("Home",
              //                           style: TextStyle(fontSize: 22.5,color: _themeColor),
              //                           textAlign: TextAlign.start))),
              //               Card(
              //                   child: ListTile(
              //                       leading: Icon(
              //                         Icons.info,
              //                         color: _themeColor,
              //                         size: 50,
              //                       ),
              //                       title: Text(
              //                         "About us",
              //                         style: TextStyle(fontSize: 22.5,color: _themeColor),
              //                         textAlign: TextAlign.start,
              //                       ))),
              //               Card(
              //                   child: ListTile(
              //                       leading: Icon(
              //                         Icons.contact_page,
              //                         color: _themeColor,
              //                         size: 50,
              //                       ),
              //                       title: Text(
              //                         "Contact us",
              //                         style: TextStyle(fontSize: 22.5,color: _themeColor),
              //                         textAlign: TextAlign.start,
              //                       ))),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
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
