import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:aplikasiapotek/pelanggan/home.dart';
import 'package:aplikasiapotek/register.dart';

class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Text(
            'Create Account',
            style: TextStyle(
                color: Color.fromARGB(105, 209, 204, 204),
                fontSize: 32,
                letterSpacing: 4.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Enter your Name, Email, Password and Confirm Password for sign up.',
            style: TextStyle(
                color: Color.fromARGB(105, 209, 204, 204),
                fontSize: 18,
                letterSpacing: 1.0),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                contentPadding:
                    EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                labelText: ('Fullname'),
                labelStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                contentPadding:
                    EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.red,
                ),
                labelText: ('Username'),
                labelStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                contentPadding:
                    EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.red,
                ),
                labelText: ('Password'),
                labelStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                contentPadding:
                    EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.red,
                ),
                labelText: ('Confirm Password'),
                labelStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      // nanti kita arahkan ke halaman daftar
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => register()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          letterSpacing: 2.0,
                          color: Colors.red[900],
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
