import 'package:flutter/material.dart';
import 'package:moto_helmet/main.dart';
import 'package:moto_helmet/widgets/color_choices.dart';
import 'package:moto_helmet/widgets/size_choices.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'LS2 Storm Racer',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image(
              image: AssetImage('images/img2.png'),
              height: 250,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Choose the color',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorChoices(
                  clr: Colors.green,
                ),
                ColorChoices(
                  clr: Colors.orange,
                ),
                ColorChoices(
                  clr: Colors.teal,
                ),
                ColorChoices(
                  clr: Colors.pink,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Choose the size',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizeChoices(
                  size: 'S',
                ),
                SizeChoices(
                  size: 'L',
                ),
                SizeChoices(
                  size: 'M',
                ),
                SizeChoices(
                  size: 'XL',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
