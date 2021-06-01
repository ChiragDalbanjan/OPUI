import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'One Percent+'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Welcome to One Percent',
            style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlue),

          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(

          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              color: Colors.lightBlue,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 60, 40, 40),
                child: Text(
                  'One Percent',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
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

              // selected: _selectedDestination == 0,
              // onTap: () => selectDestination(0),
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


    );
  }
}
