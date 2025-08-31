import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

// stateless widget

// class MainApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold(  body: Text("Hello world")));
//   }
// }

// statefull widget
// class MainApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MainAppState();
//   }
// }

// class MainAppState extends State<MainApp> {
//   String displaytext = "Hi";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Change Hi to Bye")),
//         body: Column(
//           children: [
//             Text(displaytext),
//             MaterialButton(
//               onPressed: () {
//                 setState(() {
//                   displaytext = "Bye";
//                 });
//               },
//               child: Text("Click"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// List view builder
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MainAppState();
  }
}

class MainAppState extends State<MainApp> {
  List<String> fruits = ["Apple", "Mango", "Orange"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List view builder")),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Text(fruits[index]);
          },
        ),
      ),
    );
  }
}
