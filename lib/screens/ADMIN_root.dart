import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kmrapp/screens/ADMIN_home_page.dart';
import 'package:kmrapp/screens/ADMIN_profile_page.dart';
import 'package:kmrapp/screens/logout.dart';
import 'package:kmrapp/screens/login.dart';
import 'package:kmrapp/screens/ADMIN_review_page.dart';

class ADMINRootPage extends StatefulWidget {
  const ADMINRootPage({super.key});

  @override
  State<ADMINRootPage> createState() => _RootPageState();
}

class _RootPageState extends State<ADMINRootPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = <Widget>[
      ADMINHomePage(),
      ADMINReviewPage(),
    ];
    var page = widgetOptions.elementAt(_selectedIndex);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 300,
        titleSpacing: 0,
        centerTitle: true,
        title: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
              color: Color(0xffDFCEFA),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'lib/assets/images/3.png',
                width: 120,
                height: 120,
              ),
              const Text(
                'Admin',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff966FD6)),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    FirebaseAuth.instance.signOut();
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  });
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red[600],
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: Container(
          color: const Color(0xffDFCEFA),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xffDFCEFA),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Ionicons.home_outline), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Ionicons.star), label: 'Reviews'),
            ],
            currentIndex: _selectedIndex,
            unselectedItemColor: const Color.fromARGB(255, 155, 155, 155),
            selectedItemColor: const Color.fromARGB(255, 114, 163, 187),
            onTap: _onItemTapped,
          ),
        ),
      ),
      body: page,
    );
  }
}
