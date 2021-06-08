import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import "package:foldable_sidebar/foldable_sidebar.dart";

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

/*
    Used Hidden_Drawer_Menu
*/

class _MyHomePageState extends State<MyHomePage>{
  List list = [
    ['assets/message.png','Message+'],
    ['assets/ask.png','Ask+'],
    ['assets/connect.jpg','Connect+'],
    ['assets/date.png','Date+'],
    ['assets/discover.png','Discover+'],
    ['assets/mail.png','Mail+'],
    ['assets/portfolio.png','Portfolio+'],
  ];

  List<ScreenHiddenDrawer> items = List();

   @override
  void initState() {
    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Social Media",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.teal,
        ),
        socialMedia(context)
        ));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Compilers",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        socialMedia(context)
        ));

    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Utilities",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
        ),
        socialMedia(context)));

    super.initState();
  }

  Widget socialMedia(BuildContext context){
    return Center(
            child: Container(
          child: GridView.builder(
          itemCount: list.length,
            itemBuilder: grids,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
        ));

  }

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
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.cyan,
      screens: items,
      verticalScalePercent: 80.0,
      contentCornerRadius: 40.0,
      enableShadowItensMenu: true,
      );
  }

}


