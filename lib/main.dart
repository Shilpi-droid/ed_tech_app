import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skido/pages/apply_now_page.dart';
import 'package:skido/pages/community.dart';
import 'package:skido/pages/create_cv_page.dart';
import 'package:skido/pages/create_new_task.dart';
import 'package:skido/pages/detail_page.dart';
import 'package:skido/pages/index_pages.dart';
import 'package:skido/pages/notifications_page.dart';
import 'package:skido/pages/signin_page.dart';
import 'package:skido/pages/splash_screen.dart';
import 'package:skido/pages/tasks_sheet.dart';
import 'package:skido/pages/working_proffessional_page1.dart';
import 'package:skido/widgets/detail_page_widget.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:SplashScreen(),
//       //SplashScreen()
//
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({super.key, required this.token});
//   final token;
//
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//   void _onItemTap(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//       return Container(
//         height: double.maxFinite,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/elements/backg.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//
//           // appBar: AppBar(
//           //   title: Text('Bottom Navigation Bar Tutorial'),
//           // ),
//           body: Center(
//             child: [
//               LandingPage(token: widget.token),
//               Book(),
//               Homework(),
//               Webinar(),
//               Settings(),
//             ].elementAt(_selectedIndex),
//           ),
//           bottomNavigationBar:
//           ClipRRect(
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(18),
//               topLeft: Radius.circular(18),
//             ),
//             child: BottomNavigationBar(
//               backgroundColor: Color(0xff151413),
//               type: BottomNavigationBarType.fixed,
//               showSelectedLabels: true,
//               showUnselectedLabels: false,
//               unselectedItemColor: Color(0xffD9D9D9),
//               selectedItemColor: Color(0xff1C9C74),
//               items: const <BottomNavigationBarItem>[
//                 BottomNavigationBarItem(
//                     activeIcon: Icon(
//                       Icons.space_dashboard_rounded,
//                       color: Color(0xff1C9C74),
//                     ),
//                     icon: Icon(
//                       Icons.space_dashboard_rounded,
//                     ),
//                     label: "Dashboard"
//
//                 ),
//                 BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.book,
//
//                     ),
//                     label: "Book"
//                 ),
//                 BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.home_work,
//                     ),
//                     label: "Homework"
//                 ),
//                 BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.groups_rounded,
//                     ),
//                     label: "Webinar"
//                 ),
//                 BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.settings,
//                     ),
//                     label: "Settings"
//                 ),
//               ],
//               currentIndex: _selectedIndex,
//               onTap: _onItemTap,
//               selectedFontSize: 13.0,
//               unselectedFontSize: 13.0,
//             ),
//           ),
//     ),
//       );
//
//
//   }
// }


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();



  runApp(MyApp(token: prefs.getString('token')));
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String? token = prefs.getString('token');
//
//   // Check if the token is present and valid
//   bool isValidToken = token != null && JwtDecoder.isExpired(token) == false ;
//
//   String name = '';
//   if (isValidToken) {
//     Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
//     name = decodedToken['name'];
//   }
//
//   runApp(MyApp(isValidToken: isValidToken, token: token, name: name));
// }

// class MyApp extends StatelessWidget {

class MyApp extends StatelessWidget {
  final token;
  const MyApp({
    @required this.token,
    Key? key,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Montserrat"
        ),
        home: (token != null && JwtDecoder.isExpired(token) == false )?MyHomePage(token: token):SplashScreen(height: height,)
    );
  }
}
//   final bool isValidToken;
//   final String name;
//   final token;
//
//   const MyApp({required this.isValidToken, required this.name, this.token});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'My App',
//       theme: ThemeData(
//         fontFamily: "Montserrat"
//       ),
//       home:
//       //ApplyNowPage()
//       isValidToken ? MyHomePage(token: token, name : name) : SplashScreen(),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.token});
  final token;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 3;
  late String userId;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map<String,dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);
    userId = jwtDecodedToken['name'];

  }

  @override
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

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
          child: [
            LandingPage(name: userId),
            Book(),
            Homework(),
            CommunityPage(name: userId),
            Settings(token: widget.token,),
          ].elementAt(_selectedIndex),
        ),
        bottomNavigationBar:
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
          child: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(79, 80, 142, 0.95),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: Color(0xffD9D9D9),
            selectedItemColor: Color(0xffD9D9D9),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.space_dashboard_rounded,
                    //color: Color(0xff1C9C74),
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
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
          ),
        ),
      ),
    );


  }
}