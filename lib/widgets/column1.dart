import 'package:flutter/material.dart';

class Column1 extends StatelessWidget {
  const Column1({super.key,required this.color,required this.path,required this.text ,required this.onTap });
  final Color color;
   final String path;
   final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: color ,
                borderRadius: BorderRadius.circular(10)
            ),

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(

                  height: MediaQuery.of(context).size.height*.035,
                  child:
                  Image(image: AssetImage(path), fit:BoxFit.fitWidth),
                  )
              ),
          ),
          Text(text,style: TextStyle(fontSize: 15),)
        ],
      ),
    );
  }
}
