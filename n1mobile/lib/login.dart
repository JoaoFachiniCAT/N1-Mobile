import 'package:flutter/material.dart';
import 'package:n1mobile/home.dart';
import 'package:icons_plus/icons_plus.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();

  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        body: SafeArea(
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(250, 10, 50, 0),
                    child: Text('Login',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 35,
                        color: Colors.yellow,
                      ),
                    ),
            ),
            SizedBox(height: 150),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: TextField(
                style: TextStyle(
                  foreground: Paint()
                    ..color = Color.fromARGB(255, 189, 189, 189),
                  fontFamily: 'Roboto',
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 68, 68, 68),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  labelText: 'Username',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    foreground: Paint()..color = Color.fromARGB(255, 189, 189, 189),
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 68, 68, 68),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    labelText: "Password",
                  ),
                )),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {},
                child: const Text("Forgot Password?",
                ),
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 189, 189, 189),
                  fixedSize: const Size(350, 50),
                  textStyle: const TextStyle(
                    fontFamily: 'Roboto',
                  ),
                )
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child:  Text("Sign In",
                style: TextStyle(
                    fontFamily: 'Roboto'
                ),
              ),
              style:  ButtonStyle(
                  backgroundColor:  MaterialStateProperty.all<Color>(const Color.fromARGB(255, 255, 192, 0)),
                  foregroundColor:  MaterialStateProperty.all<Color>(const Color.fromARGB(255, 54, 54, 54)),
                  fixedSize: MaterialStateProperty.all<Size>(const Size(350, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                      )
                  )
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [

                Padding(
                  padding:EdgeInsets.fromLTRB(70, 0, 5, 0),
                  child:Container(
                    height:1.0,
                    width:130.0,
                    color: const Color.fromARGB(255, 189, 189, 189),
                  ),),
                Text(
                " OR ",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: const Color.fromARGB(255, 189, 189, 189),
                )
              ),
                Padding(
                  padding:EdgeInsets.fromLTRB(5, 0, 70, 0),
                  child:Container(
                    height:1.0,
                    width:130.0,
                    color: const Color.fromARGB(255, 189, 189, 189),
                  ),),
            ],),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              IconButton(onPressed: (){},
                  icon: const Icon(FontAwesome.google),
                  color: const Color.fromARGB(255, 189, 189, 189),
              ),
              IconButton(onPressed: (){},
                icon: const Icon(FontAwesome.facebook_f),
                color: const Color.fromARGB(255, 189, 189, 189),
              ),
              IconButton(onPressed: (){},
                icon: const Icon(FontAwesome.twitter),
                color: const Color.fromARGB(255, 189, 189, 189),
              )],),
          ]),
        ));
  }
}
