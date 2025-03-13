import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product(
      {super.key, required this.path, required this.name, required this.price, required this.onTap});

  final String path;
  final String name;
  final String price;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: MediaQuery.of(context).size.height*.25,
        decoration: BoxDecoration(
            color: Color(0xfff0f0f0), borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              color: Color(0xffffffff),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage(path),
                  height: 100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Text(
                name,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(fontSize: 20, color: Color(0xffb062fc)),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
