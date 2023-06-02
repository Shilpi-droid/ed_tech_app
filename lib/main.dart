import 'package:flutter/material.dart';
import 'package:skido/pages/index_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    LandingPage(),
    Book(),
    Homework(),
    Webinar(),
    Settings(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   // backgroundColor: const Color(0xff4F508E),
    //   bottomNavigationBar: BottomNavigationBar(
    //     items: [
    //       BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
    //       BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Book'),
    //       BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Homework'),
    //       BottomNavigationBarItem(icon: Icon(Icons.groups_rounded), label: 'Webinar'),
    //       BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
    //     ],
    //   ),
    //   body: pages[0],
    // );

      return Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elements/backg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,

          // appBar: AppBar(
          //   title: Text('Bottom Navigation Bar Tutorial'),
          // ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar:
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(18),
              topLeft: Radius.circular(18),
            ),
            child: BottomNavigationBar(
              backgroundColor: Color(0xff151413),
              type: BottomNavigationBarType.fixed,

              unselectedItemColor: Color(0xffD9D9D9),
              selectedItemColor: Color(0xff1C9C74),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.space_dashboard_rounded,
                      color: Color(0xff1C9C74),
                    ),
                    icon: Icon(
                      Icons.space_dashboard_rounded,
                    ),
                    label: "Dashboard"

                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.book,

                    ),
                    label: "Book"
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_work,
                    ),
                    label: "Homework"
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.groups_rounded,
                    ),
                    label: "Webinar"
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                    ),
                    label: "Settings"
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTap,
              selectedFontSize: 13.0,
              unselectedFontSize: 13.0,
            ),
          ),
    ),
      );


  }
  // Container BottomBar(BuildContext context) {
  //   return Container(
  //       decoration: BoxDecoration(
  //       borderRadius: BorderRadius.only(
  //       topRight: Radius.circular(100), topLeft: Radius.circular(100))),
  //     child: ClipRRect(
  //       borderRadius: const BorderRadius.only(
  //         topRight: Radius.circular(100),
  //         topLeft: Radius.circular(100),
  //       ),
  //       child: BottomNavigationBar(
  //         backgroundColor: Color(0xff151413),
  //         type: BottomNavigationBarType.fixed,
  //
  //         unselectedItemColor: Color(0xffD9D9D9),
  //         selectedItemColor: Color(0xff1C9C74),
  //         items: const <BottomNavigationBarItem>[
  //           BottomNavigationBarItem(
  //               activeIcon: Icon(
  //                 Icons.space_dashboard_rounded,
  //                 color: Color(0xff1C9C74),
  //               ),
  //               icon: Icon(
  //                 Icons.space_dashboard_rounded,
  //               ),
  //               label: "Dashboard"
  //
  //           ),
  //           BottomNavigationBarItem(
  //               icon: Icon(
  //                 Icons.book,
  //
  //               ),
  //               label: "Book"
  //           ),
  //           BottomNavigationBarItem(
  //               icon: Icon(
  //                 Icons.home_work,
  //               ),
  //               label: "Homework"
  //           ),
  //           BottomNavigationBarItem(
  //               icon: Icon(
  //                 Icons.groups_rounded,
  //               ),
  //               label: "Webinar"
  //           ),
  //           BottomNavigationBarItem(
  //               icon: Icon(
  //                 Icons.settings,
  //               ),
  //               label: "Settings"
  //           ),
  //         ],
  //         currentIndex: _selectedIndex,
  //         onTap: _onItemTap,
  //         selectedFontSize: 13.0,
  //         unselectedFontSize: 13.0,
  //       ),
  //     ),
  //   );
  // }


}
