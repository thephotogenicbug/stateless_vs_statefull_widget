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
class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainAppState();
  }
}

class MainAppState extends State<MainApp> {
  String displaytext = "Hi";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Change Hi to Bye")),
        body: Column(
          children: [
            Text(displaytext),
            MaterialButton(
              onPressed: () {
                setState(() {
                  displaytext = "Bye";
                });
              },
              child: Text("Click"),
            ),
          ],
        ),
      ),
    );
  }
}
