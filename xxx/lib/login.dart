import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xxx/main.dart';
import 'package:xxx/signin.dart';

var passwordcontroller2 = TextEditingController();
var emailcontroller2 = TextEditingController();
var namecontroller = TextEditingController();

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('login'),
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'name',
                ),
                controller: namecontroller,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'email',
                ),
                controller: emailcontroller2,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'password',
                ),
                controller: passwordcontroller2,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'already have an account',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              Builder(
                  builder: (ctx) => ElevatedButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('n', namecontroller.text);
                        prefs.setString('e2', emailcontroller2.text);
                        prefs.setString('p2', passwordcontroller2.text);
                        Navigator.of(ctx)
                            .pushReplacement(MaterialPageRoute(builder: (_) {
                          return MyApp();
                        }));
                      },
                      child: Text('login')))
            ],
          ),
        ),
      ),
    );
  }
}
