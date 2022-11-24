import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:marketapp/kategori.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  late TabController tab_controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(randomname());
    tab_controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: tab_controller,
          indicatorColor: Colors.red[400],
          labelColor: Colors.red[400],
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          tabs: [
            Tab(
                child: Text(
              "Temel gıda",
            )),
            Tab(
              child: Text("Tatlı"),
            ),
            Tab(
              child: Text("İçicekler"),
            ),
            Tab(
              child: Text("Temizlik"),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tab_controller,
            children: [
              Categori(kategori: "Temel gıda"),
              Categori(kategori: "Tatlı"),
              Categori(kategori: "İçicekler"),
              Categori(kategori: "Temizlik"),
            ],
          ),
        ),
      ],
    );
  }

  String randomname() {
    String string = 'Hello world!';
    final splitted = string.split(' ');
    print(splitted); // [Hello, world!];
    return "";
  }
}
