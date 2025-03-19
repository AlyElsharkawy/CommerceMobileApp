import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../widgets/generic_sale.dart';

class GenericScreen extends StatelessWidget {
  final Map<String, dynamic> productData;
  const GenericScreen({super.key, required this.productData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffbfbfb),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_circle_left_outlined, size: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.notifications_outline,
                size: 30,
              )),
          IconButton(
              onPressed: () {}, icon: Icon(Ionicons.heart_outline, size: 30)),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon:
                  const Icon(Icons.home_filled, size: 25, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.heart, size: 25, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.basket, size: 25, color: Colors.black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
            child: GenericSale(
          path: productData["PhotoPath"],
          name: productData["Name"],
          description: productData["Description"],
          color: "white",
          prodData: productData,
        )),
      ),
    );
  }
}
