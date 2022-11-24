import 'package:flutter/material.dart';

import 'package:marketapp/products.dart';
import 'package:marketapp/sepetim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketing App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _icerikler = [];
  int _setstateno = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _icerikler = [Products(), Sepetim()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Uçarak gelsin",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      body: _icerikler[_setstateno],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Account Name"),
              accountEmail: Text("accountEmail"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004_960_720.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red[400]),
            ),
            ListTile(
              title: Text("Şiparislerim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Sepetim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Profilim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Çıkış"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _setstateno,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Buy",
          ),
        ],
        onTap: (int buttonno) {
          setState(() {
            _setstateno = buttonno;
          });
        },
      ),
    );
  }
}
