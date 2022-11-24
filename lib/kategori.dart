import 'package:flutter/material.dart';
import 'package:marketapp/ProductoFdetail.dart';

class Categori extends StatefulWidget {
  final String kategori;
  const Categori({super.key, required this.kategori});

  @override
  State<Categori> createState() => _CategoriState();
}

class _CategoriState extends State<Categori> {
  List<Widget> showlist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.kategori == "Temel gıda") {
      showlist = [
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/06/03/14/32/olive-oil-1433506_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg",
            mevcut: true),
      ];
    } else if (widget.kategori == "Tatlı") {
      showlist = [
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/06/03/14/32/olive-oil-1433506_960_720.jpg"),
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/06/03/14/32/olive-oil-1433506_960_720.jpg"),
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/06/03/14/32/olive-oil-1433506_960_720.jpg"),
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/06/03/14/32/olive-oil-1433506_960_720.jpg"),
      ];
    } else if (widget.kategori == "İçicekler") {
      showlist = [
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
      ];
    } else if (widget.kategori == "Temizlik") {
      showlist = [
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/06/03/14/32/olive-oil-1433506_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/06/03/14/32/olive-oil-1433506_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/06/03/14/32/olive-oil-1433506_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
        productscart("Zeytin Yağı", "10 TL",
            "https://cdn.pixabay.com/photo/2016/06/03/14/32/olive-oil-1433506_960_720.jpg"),
        productscart("Süt", "20 TL",
            "https://cdn.pixabay.com/photo/2016/12/06/18/27/cereal-1887237_960_720.jpg"),
      ];
    }
  }

  Widget productscart(String productname, String fiyat, String picturepath,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => detailProduct(
                fiyat: fiyat,
                resimyolu: picturepath,
                urunname: productname,
                mevcut: mevcut,
              ),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 120.0,
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(picturepath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(productname,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600])),
            SizedBox(
              height: 10.0,
            ),
            Text(fiyat,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400])),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1.0,
      children: showlist,
    );
  }
}
