import 'package:flutter/material.dart';

class detailProduct extends StatelessWidget {
  final String urunname;
  final String fiyat;
  final String resimyolu;
  final bool mevcut;

  const detailProduct(
      {super.key,
      required this.urunname,
      required this.fiyat,
      required this.resimyolu,
      required this.mevcut});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: resimyolu,
                child: Image.network(
                  resimyolu,
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.red[400],
                    size: 40,
                  ))
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text(
                urunname,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                fiyat,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  "Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: mevcut ? Colors.red[400] : Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    mevcut ? "sepete ekle" : "stokta yok",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
