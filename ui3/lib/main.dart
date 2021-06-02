import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'animated_hidden_drawer.dart';

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
  Widget selectedWidget = Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      height: 665,
      width: 1000,
      child: Center(
        child: Text("hello, this is my first plugin"),
      ));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: HiddenDrawer(
        duration: Duration(milliseconds: 500),
        items: [
          SingleChildScrollView(
                      child: Column(
              children: [
                /// step 2. Create gesture detectors of items
                // GestureDetector(
                //   child: Row(
                //     children: [
                //       Icon(
                //         Icons.home,
                //         color: Color(0xff6b705c),
                //         size: 35,
                //       ),
                //       Text(
                //         " Home",
                //         style: TextStyle(
                //             color: Color(0xff6b705c),
                //             fontWeight: FontWeight.bold,
                //             fontSize: 25),
                //       ),
                //     ],
                //   ),
                //   onTap: () {
                //     /// step 3. on pressed the item , update the widget.
                //     setState(() {
                //       selectedWidget = Container(
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(80),
                //               color: Color(0xffffe8d6)),
                //           height: 979,
                //           width: 1000,
                //           child: Center(
                //             child: Column(
                //               children: [
                //                 Image.asset("assets/home.png"),
                //                 SizedBox(
                //                   height: 20,
                //                 ),
                //                 Text(
                //                   "W E L C O M E",
                //                   style: TextStyle(
                //                       color: Color(0xff6b705c),
                //                       fontSize: 30,
                //                       fontWeight: FontWeight.bold),
                //                 )
                //               ],
                //             ),
                //           ));
                //     });
                //   },
                // ),
                // GestureDetector(
                //   child: Row(
                //     children: [
                //       Icon(
                //         Icons.info,
                //         color: Color(0xff6b705c),
                //         size: 35,
                //       ),
                //       Text(
                //         " About",
                //         style: TextStyle(
                //             color: Color(0xff6b705c),
                //             fontWeight: FontWeight.bold,
                //             fontSize: 25),
                //       ),
                //     ],
                //   ),
                //   onTap: () {
                //     setState(() {
                //       selectedWidget = Container(
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(80),
                //               color: Color(0xffffe8d6)),
                //           height: 979,
                //           width: 1000,
                //           child: Center(
                //             child: Column(
                //               children: [
                //                 Image.asset("assets/about us.png"),
                //                 SizedBox(
                //                   height: 20,
                //                 ),
                //                 Text(
                //                   "Github : krish-dev-7\n"
                //                   "Instagram: krish_krush",
                //                   style: TextStyle(
                //                       color: Color(0xff6b705c),
                //                       fontSize: 30,
                //                       fontWeight: FontWeight.bold),
                //                 )
                //               ],
                //             ),
                //           ));
                //     });
                //   },
                // ),

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                            child: Column(
                    children: [
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),    
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                    title: Text('Social Media',
                        style: TextStyle(fontSize: 20),
                      ),

                      leading: Icon(Icons.people_sharp),

                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Message+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/message.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Message+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Connect+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/connect.jpg')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Connect+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Date+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Date+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Discover+')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Discover+",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                  ),
                  ExpansionTile(
                      leading: Icon(Icons.code_outlined),
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 41),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('C compiler')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/portfolio.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("C",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 52),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('C++ compiler')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/date.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("C++",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 62),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Python Compiler')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/ask.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Python",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(left: 57),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty
                                    .resolveWith<Color>((Set<MaterialState> states)
                                {
                                  return null; // Use the component's default.
                                },
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return Scaffold(
                                    appBar: AppBar(
                                        title: Text('Java compiler')
                                    ),
                                    body: Container(
                                        child: Image.asset('assets/discover.png')
                                    ),
                                  );
                                }));
                              },
                              child: Text("Java",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),

                        ),
                      ],
                      
                      title: Text('Compiler',
                        style: TextStyle(fontSize: 20),),

                      // selected: _selectedDestination == 1,
                      // onTap: () => selectDestination(1),
                    ),

                    ],

                  ),
                ),

                
              
                
              ],
            ),
          ),
        ],
        child: selectedWidget,
        backgroundColor: Color(0xffffe8d6),
        drawerBackgroundColor: Color(0xffb7b7a4),
        borderRadius: 80,
        header: Container(
          /// This highly Customisable widget is used
          /// as a header for our attractive drawer
          height: 250,
          width: 1000,
          color: Color(0xff6b705c),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffffe8d6),
                  radius: 40,
                  child: Icon(
                    Icons.account_circle,
                    color: Color(0xff6b705c),
                    size: 80,
                  ),
                ),
                Text(
                  "krishna",
                  style: TextStyle(
                      color: Color(0xffffe8d6),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        x: 250,
        y: 200,
        scale: 0.7,
      )),
    );
  }
}
