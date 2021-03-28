import 'package:flutter/material.dart';
import 'package:myapp/Dashboard.dart';
import 'package:myapp/NavBar.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [NavBar(), DashBoard()],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageStatew createState() => _MyHomePageStatew();
// }

// class _MyHomePageStatew extends State<MyHomePage> {
//   int _counter = 40;

//   void _incrementCounter() {
//     _counter--;
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// class NewWidget extends StatefulWidget {
//   final String name;
//   NewWidget({Key key, this.name}) : super(key: key);

//   @override
//   _NewWidget createState() => _NewWidget();
// }

// class _NewWidget extends State<NewWidget> {
//   @override
//   Widget build(BuildContext build) {
//     return (Scaffold(
//         body: Container(
//             child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: 70,
//           color: Color(0xffffcf2c),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Icon(Icons.apartment_sharp),
//               Text("Rocking AppartMent", style: TextStyle(fontSize: 30)),
//               IconButton(
//                   icon: Icon(Icons.supervised_user_circle_rounded),
//                   onPressed: null)
//             ],
//           ),
//         ),
//         Container(
//           width: 75,
//           height: MediaQuery.of(context).size.height - 70,
//           color: Color(0xff93c73e),
//           // decoration: BoxDecoration(
//           //     borderRadius: BorderRadius.only(
//           //         topRight: Radius.circular(30),
//           //         bottomRight: Radius.circular(30))),
//           child: Column(
//             children: [
//               Container(
//                   padding: EdgeInsets.only(top: 25, bottom: 25),
//                   child: IconButton(
//                       icon: Icon(Icons.analytics_sharp, size: 50),
//                       onPressed: null)),
//               Container(
//                   padding: EdgeInsets.only(top: 25, bottom: 25),
//                   child: IconButton(
//                       icon: Icon(Icons.business_center, size: 50),
//                       onPressed: null)),
//               Container(
//                   padding: EdgeInsets.only(top: 25, bottom: 25),
//                   child: IconButton(
//                       icon: Icon(Icons.library_books, size: 50),
//                       onPressed: null)),
//             ],
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//           ),
//         ),
//         Container(color: Color(49))
//       ],
//     ))));
//   }
// }
