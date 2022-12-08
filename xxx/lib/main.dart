import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'signin.dart';

void main(List<String> args)async {
  WidgetsFlutterBinding.ensureInitialized();
   SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                      var e1=  prefs.getString('e1');
                      var p1=  prefs.getString('p1');
                          var n=  prefs.getString('n');
                       var e2= prefs.getString('e2');
                       var p2= prefs.getString('p2');
  runApp(Signin());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,);
  }
}
