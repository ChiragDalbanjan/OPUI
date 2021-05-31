import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        body: Center(
            child: Container(
          child: GridView.builder(
          itemCount: list.length,
            itemBuilder: grids,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
        )));
  }
}
