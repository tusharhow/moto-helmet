import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moto_helmet/constants.dart';
import 'package:moto_helmet/pages/product_detail_page.dart';
import 'package:moto_helmet/widgets/categorie_items.dart';
import 'package:moto_helmet/widgets/product_items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moto Helmet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
              child: Row(
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: 'Moto ',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Helmet',
                      style: TextStyle(
                          fontSize: 35,
                          color: btnColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ]))
                ],
              )),
        ],
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Let's find the helmet",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black38,
                    ),
                    enabledBorder: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: btnColor,
                    ),
                    child: Center(
                      child: Text(
                        'All',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CategorieItems(
                    text: 'Full Face',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CategorieItems(
                    text: 'Modalur',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CategorieItems(
                    text: 'Dirt',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CategorieItems(
                    text: 'Ghost',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductItems(
                  label: 'LS1',
                  price: "\$200",
                  img: 'images/img1.png',
                ),
                ProductItems(
                  label: 'LS2',
                  price: "\$250",
                  img: 'images/img2.png',
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductItems(
                  label: 'LS3',
                  price: "\$30",
                  img: 'images/img3.png',
                ),
                ProductItems(
                  label: 'LS4',
                  price: "\$450",
                  img: 'images/img4.png',
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(),
            ),
          );
        },
        child: Icon(Icons.card_travel),
      ),
    );
  }
}
