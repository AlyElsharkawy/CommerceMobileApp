import 'package:commerce_mobile_app/widgets/column1.dart';
import 'package:commerce_mobile_app/widgets/product.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffbfbfb),
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.ac_unit_rounded, size: 35)),
        title: Text(
          "Wizo",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.notifications_outline,
                size: 35,
              )),
          IconButton(
              onPressed: () {}, icon: Icon(Ionicons.heart_outline, size: 35)),
        ],
      ),
      //backgroundColor: Color(0xfff5f5f5),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(35), topLeft: Radius.circular(35)),
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                    size: 30,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Ionicons.heart,
                    size: 30,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Ionicons.basket,
                    size: 30,
                  ),
                  label: ""),
            ]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 35,
                    color: Colors.deepPurple,
                  ),
                  labelText: "Search",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    //borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    //borderSide: BorderSide(color: Colors.white),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 30,
                children: [
                  Column1(
                    color: Color(0xfff5eefd),
                    path: "assets/icons/vector.png",
                    text: "foods",
                    onTap: () {},
                  ),
                  Column1(
                    color: Color(0xffc7deff),
                    path: "assets/icons/Vector (1).png",
                    text: "Gift",
                    onTap: () {},
                  ),
                  Column1(
                    color: Color(0xffffdecd),
                    path: "assets/icons/Vector (2).png",
                    text: "Fashion",
                    onTap: () {},
                  ),
                  Column1(
                    color: Color(0xffdce1e6),
                    path: "assets/icons/Vector (3).png",
                    text: "Gadget",
                    onTap: () {},
                  ),
                  Column1(
                    color: Color(0xfffff1e3),
                    path: "assets/icons/Vector (4).png",
                    text: "Accessory",
                    onTap: () {},
                  ),
                  Column1(
                    color: Color(0xfff5eefd),
                    path: "assets/icons/vector.png",
                    text: "foods",
                    onTap: () {},
                  ),
                  Column1(
                    color: Color(0xffc7deff),
                    path: "assets/icons/Vector (1).png",
                    text: "Gift",
                    onTap: () {},
                  ),
                  Column1(
                    color: Color(0xffffdecd),
                    path: "assets/icons/Vector (2).png",
                    text: "Fashion",
                    onTap: () {},
                  ),
                  Column1(
                    color: Color(0xffdce1e6),
                    path: "assets/icons/Vector (3).png",
                    text: "Gadget",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .95,
                    child: Image(
                      image: AssetImage("assets/icons/box.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: Column(
                    children: [
                      Text(
                        "Don't Miss Out!",
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        "Save Up to 75% Off",
                        style: TextStyle(fontSize: 15),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child:
                              Text("Shop now", style: TextStyle(fontSize: 15)))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured products",
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Product(
                  path: "assets/products/1.png",
                  name: "Sneaker",
                  price: "\$100",
                  onTap: () {},
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Product(
                  path: "assets/products/2.png",
                  name: "Fitbit Smartwatch",
                  price: "\$100",
                  onTap: () {},
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Product(
                  path: "assets/products/3.png",
                  name: "Sneaker",
                  price: "\$100",
                  onTap: () {},
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Product(
                  path: "assets/products/4.png",
                  name: "Fitbit Smartwatch",
                  price: "\$100",
                  onTap: () {},
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Product(
                  path: "assets/products/1.png",
                  name: "Sneaker",
                  price: "\$100",
                  onTap: () {},
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Product(
                  path: "assets/products/2.png",
                  name: "Fitbit Smartwatch",
                  price: "\$100",
                  onTap: () {},
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Product(
                  path: "assets/products/3.png",
                  name: "Sneaker",
                  price: "\$100",
                  onTap: () {},
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Product(
                  path: "assets/products/4.png",
                  name: "Fitbit Smartwatch",
                  price: "\$100",
                  onTap: () {},
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
