import 'package:flutter/material.dart';
import 'package:myflutter_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!
        .validate()) //if this is true then only switch to next page
    {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(milliseconds: 950));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        //to get back the login button shape
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/hey.png",
                  height: 300,
                  width: 300,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "welcome $name",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "UserName", labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username Can't be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(
                              () {}); //calls the whole widget build method again
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password Can't be empty ";
                          } else if (value!.length < 6) {
                            return "password cant be less than 6 digit ";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Material(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(changebutton ? 60 : 8),
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changebutton ? 45 : 150,
                      height: 45,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            ) //using icon
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
