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
      home: MyHomePage(title: 'UI demo page'),
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
  int _selectedDestination = 0;

  List list = [
    ['assets/message.png','Message+'],
    ['assets/ask.png','Ask+'],
    ['assets/connect.jpg','Connect+'],
    ['assets/date.png','Date+'],
    ['assets/discover.png','Discover+'],
    ['assets/mail.png','Mail+'],
    ['assets/portfolio.png','Portfolio+'],
  ];
  Widget grids(BuildContext context, int index) {
    return ListTile(
      title: Column(
      children: [
      Container(child: Image.asset(list[index][0]), width: MediaQuery.of(context).size.width*0.4,),
      Center(child: Text(list[index][1]),)
      
      ]
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'UI demo page',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              ExpansionTile(
                leading: Icon(Icons.people_sharp),
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 60),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(

                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                return null; // Use the component's default.
                              },
                            ),
                          ),
                          onPressed: (){
                          },
                          child: Text("Message+",
                            style: TextStyle(fontSize: 18,color: Colors.black),

                          ),
                        ),
                      ),

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Date+",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60,top: 6),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Portfolio+",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60,top: 6,bottom: 6),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Connect+",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),

                  ),
                  ],
                title: Text('Social Media',
                  style: TextStyle(fontSize: 20),

                ),
                trailing:Icon(Icons.keyboard_arrow_down_outlined,),
                // selected: _selectedDestination == 0,
                // onTap: () => selectDestination(0),
              ),
              ExpansionTile(
                leading: Icon(Icons.code_outlined),
                children: <Widget>[Text("C"), Text("C++"),
                  Text("Python")
                  ,Text("Java")],
                trailing:Icon(Icons.keyboard_arrow_down_outlined),
                title: Row(
                  children: [
                    Text('Compiler',
                      style: TextStyle(fontSize: 20),

                    ),

                  ],
                ),
                // selected: _selectedDestination == 1,
                // onTap: () => selectDestination(1),
              ),

            ],
          ),
        ),

        body: Center(
            child: Container(
          child: GridView.builder(
          itemCount: list.length,
            itemBuilder: grids,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
        )));
  }
  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
