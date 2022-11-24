import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';

class Sepetim extends StatelessWidget {
  String splitted = "";
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.red[400],
            ),
          ),
        ),
        ListTile(
          title: Text("Çikolata Gofret"),
          subtitle: Text("1 adet x 2 tl"),
          trailing: Text("11 TL"),
        ),
        ListTile(
          title: Text("Salatalık"),
          subtitle: Text("1 adet x 2 tl"),
          trailing: Text("8 TL"),
        ),
        ListTile(
          title: Text("Cips"),
          subtitle: Text("1 adet x 2 tl"),
          trailing: Text("5 TL"),
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[400],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "24 TL",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.red[400],
            ),
            child: Center(
              child: Text(
                "Alışverişi Tamamla",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
