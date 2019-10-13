//=====================================================================================================================================================//
//========================================================== using_textedit ===========================================================================//
//=====================================================================================================================================================//
//================================================================//
//    |====== Date cerated : 08 October 2019           ======|
//    |====== Programmer   : dhikihandika              ======|
//    |====== Github       : dhikihandika              ======|
//    |====== Email        : dhikihandika36@gmail.com  ======|
//================================================================//
// => Statful Widget its widgets has a mutable state

/// Innitialize the programe
import 'package:flutter/material.dart';

void main () {
  runApp(MaterialApp(
    home: MyEditText(),
  ));
}

/// Create the subclass state() to return
class MyEditText extends StatefulWidget{
  @override
  MyEditTextState createState() => MyEditTextState();
}

class MyEditTextState extends State<MyEditText> {
  String results = "";
  final TextEditingController controller = TextEditingController();


  /// build methode
  @override
  Widget build(BuildContext context) {
    /// // Scaffold its a implement of basic material design visual layout structure
    return Scaffold(
      /// Appbar widget program
      appBar: AppBar(
        title: Text("Using EditText"),
        backgroundColor: Colors.red[400],
      ),

      /// Boddy of app program
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              /// Use TextField to make form input text
              TextField(
                decoration: InputDecoration(hintText: "Enter desire text here..."),
                onSubmitted: (String str) {
                  setState(() {
                    results = results + '\n' + str;
                    controller.text = "";
                  });
                 },
                controller: controller,
              ),
              Text(results)
            ],
          ),
        ),
      ),
    );
  }
}

