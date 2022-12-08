import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xxx/login.dart';
import 'package:xxx/main.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  var passwordcontroller1 = TextEditingController();
  var emailcontroller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('sign'),
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'email',
                ),
                controller: emailcontroller1,
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'password',
                ),
                controller: passwordcontroller1,
              ),
                            SizedBox(height: 15,),
                            Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                              InkWell(onTap: () {
                                 Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return Login();
                        }));
                                
                              },child: Text('create new account',style: TextStyle(color: Colors.blue),))
                            ],),

              Builder(
                  builder: (ctx) => ElevatedButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('e1', emailcontroller1.text);
                        prefs.setString('p1', passwordcontroller1.text);
                        Navigator.of(ctx)
                            .pushReplacement(MaterialPageRoute(builder: (_) {
                          return MyApp();
                        }));
                      },
                      child: Text('sign up')))
            ],
          ),
        ),
      ),
    );
  }
}
