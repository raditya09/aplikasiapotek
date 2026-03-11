import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:aplikasiapotek/pelanggan/home.dart';
import 'package:aplikasiapotek/register.dart';

TextEditingController getUser = new TextEditingController();
TextEditingController getPass = new TextEditingController();

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Halaman Login'),
      // ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Text(
            'Welcome',
            style: TextStyle(
                color: Colors.red[900],
                fontSize: 32,
                letterSpacing: 4.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Login to explore Amazing Things',
            style: TextStyle(
                color: Colors.red[300], fontSize: 18, letterSpacing: 1.0),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: getUser,
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
                labelText: ('Username'),
                labelStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: getPass,
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    height: 55,
                    textColor: Colors.white,
                    color: Colors.red[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      // nanti kita arahkan kehalaman login
                      //default user
                      String user = 'belajar';
                      String pass = '1234';
                      if (getUser.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text("Username tidak boleh kosong!")),
                        );
                      } else if (getPass.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text("Password tidak boleh kosong!")),
                        );
                      } else if (getUser.text == user && getPass.text == pass) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text("Selamat datang: ${getUser.text}")),
                        ); //delay to Home page
                        Timer(Duration(seconds: 2), () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => home()));
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Cek kembali input anda!")),
                        );
                      }
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          letterSpacing: 2, color: Colors.white, fontSize: 20),
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
