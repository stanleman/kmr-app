import 'package:flutter/material.dart';
import 'package:kmrapp/screens/home_page.dart';
import 'package:kmrapp/screens/login.dart';
import 'package:kmrapp/screens/login_admin.dart';
import 'package:kmrapp/screens/register.dart';

class AdminRegisterPage extends StatelessWidget {
  const AdminRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffDFCEFA),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 0,
          bottom: 14,
        ),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
                color: Color(0xffDFCEFA),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Admin Register',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff966FD6)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please fill in your personal informations required below',
                  style: TextStyle(color: Color(0xff966FD6), fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: 'Full Name',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Email'),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: 'IC Number',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Phone Number'),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Confirm Password'),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'User?',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          );
                        },
                        child: Text('Register here'))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AdminLoginPage()),
                          );
                        },
                        child: Text('Login here'))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff966FD6),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()),
                              );
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Text(
                                  'GET STARTED',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                          ),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
