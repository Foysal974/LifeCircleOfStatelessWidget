import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  bool isDark= false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'For practice Satck',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        brightness: isDark==false? Brightness.light: Brightness.dark,
        primarySwatch: Colors.amber),

    );
  }

}


// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Container(),
//     );
//   }
//
// }














// class HomeScreen extends StatefulWidget {
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   var headerTitle='Home Page';
//
//   @override
//   Widget build(BuildContext context) {
//     print('Build Method Called');
//     return Scaffold(
//         appBar: _myAppBar(context),
//         drawer: _myDrawer(context),
//         body: _myBody(context),
//         floatingActionButton: _myFloatingActionButton(context),
//     );
//   }
//
//   _myAppBar(BuildContext context) {
//     return AppBar(
//       title: Text(headerTitle),
//       elevation: 10,
//       actions: [
//         IconButton(onPressed: () {
//
//           print('Before Changed: $headerTitle');
//
//           setState((){
//             headerTitle='Dash Broad';
//           });
//
//           print('After Changed: $headerTitle');
//
//           Fluttertoast.showToast(
//               msg: "Screen Name Changed",
//               // toastLength: Toast.LENGTH_LONG,
//               gravity: ToastGravity.BOTTOM_LEFT,
//               timeInSecForIosWeb: 1,
//               backgroundColor: Colors.red,
//               textColor: Colors.white,
//               fontSize: 16.0
//           );
//           print('Clicked');
//         },
//           icon: Icon(Icons.search_outlined),),
//         IconButton(onPressed: () {
//           Fluttertoast.showToast(
//               msg: "Clicked...",
//               gravity: ToastGravity.BOTTOM_LEFT,
//               timeInSecForIosWeb: 1,
//               backgroundColor: Colors.red,
//               textColor: Colors.white,
//               fontSize: 16.0
//           );
//           print('Clicked');
//         },
//           icon: Icon(Icons.person_outline),),
//       ],
//
//     );
//   }
//
//   _myDrawer(BuildContext context) {
//     return Drawer();
//   }
//
//   _myBody(BuildContext context) {
//     return Container(
//       color: Colors.pink,);
//   }
//
//   _myFloatingActionButton(BuildContext context) {
//     return FloatingActionButton(onPressed: () {
//       Fluttertoast.showToast(
//           msg: "Card Button Clicked...",
//           gravity: ToastGravity.BOTTOM_LEFT,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           fontSize: 16.0,);
//     },
//       child: Icon(Icons.shopping_cart_outlined,),
//     );
//   }
// }