// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/undraw_Join_re_w1lh.png",
                  fit: BoxFit.cover),
              SizedBox(height: 10.0),
              Text(
                "Welcome JODS",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your username",
                        labelText: "Username: ",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "Password: ",
                      ),
                    ),
                    SizedBox(height: 40.0),
                    ElevatedButton(
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: Text("Login"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
