import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Sale extends StatefulWidget {
  const Sale({super.key, required this.path, required this.name, required this.description, required this.color});
  final String path;
  final String name;
  final String description;
  final String color;

  @override
  State<Sale> createState() => _SaleState();
}

class _SaleState extends State<Sale> {
int count=0;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height:MediaQuery.of(context).size.height*.3,
            width: double.maxFinite,
            child:
            Image(image: AssetImage(widget.path
            ),)
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(widget.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                RichText(
                  text: TextSpan(
                    text: '\$155 / ',
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    children: const <TextSpan>[
                      TextSpan(text: '\$300', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,        decoration: TextDecoration.lineThrough,
                      ),),
                    ],
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfff3e6ff)
              ),
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("On sale",style: TextStyle(fontSize: 12,color: Color(0xff8204FF)),),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfffff2eb)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Color(0xffff8037),size: 20,),
                      Text(" 4.2",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                )
            ),
            SizedBox(width: MediaQuery.of(context).size.width*.05,),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffe9f2ff)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.thumb_up,color: Color(0xff1e7cfd),size: 20,),
                      Text(" 4.2",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                )
            ),
            SizedBox(width: MediaQuery.of(context).size.width*.05,),
            Text("132 Reviews",style: TextStyle(fontSize: 12,color: Color(0xff424242)),)
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Text("Color",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 6,
        ),
        Row(
          spacing: MediaQuery.of(context).size.width*.04,
          children: [
            CircleAvatar(
              maxRadius: 11,
              backgroundColor: Color(0xffffe6d7),
            ),
            CircleAvatar(
              maxRadius: 11,
              backgroundColor: Color(0xff8b8b8b),
            ),
            CircleAvatar(
              maxRadius: 11,
              backgroundColor: Color(0xffe6cdff),
            ),
            CircleAvatar(
              maxRadius: 11,
              backgroundColor: Color(0xffd0d7e1),
            )

          ],
        ),
        SizedBox(
          height: 12,
        ),
        Text("Description",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        Text("Our compact and foldable Bluetooth earbuds are renowned for their lightweight build, offering a convenient and portable solution for audiophiles on the go.",
          style: TextStyle(fontSize: 12,color: Color(0xff424242),),),
        SizedBox(
          height: 10,
        ),
        Text("Specifications",style:  TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Model Name",style: TextStyle(fontSize: 12,color: Color(0xff424242),),),
            Text("$widget.description",style: TextStyle(fontSize: 12,color: Color(0xff424242),),),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Color",style: TextStyle(fontSize: 12,color: Color(0xff424242),),),
            Text(widget.color,style: TextStyle(fontSize: 12,color: Color(0xff424242),),),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffffffff),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xff9326ff)),
                    color: Color(0xffffffff),
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){setState(() {
                        count++;
                      });}, icon: Icon(Icons.add,size: 15,color: Color(0xff9326ff),),),
                      Text("$count",style:  TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color(0xff9326ff),),),
                      IconButton(onPressed: (){
                        setState(() {
                          if(count>0)
                          {
                            count--;
                          }
                        });
                      }, icon: Icon(Icons.remove,size: 15,color: Color(0xff9326ff),),),
                    ],
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*.04,),
              MaterialButton(
                onPressed: (){},
                color: Color(0xff8204ff),
                height: 42,
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:  Color(0xff8204ff))),
                child: Text("Buy now",style: TextStyle(fontSize: 14,color:  Color(0xffffffff)),),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*.04,),
              IconButton(
                onPressed: (){},

                icon: CircleAvatar(
                  backgroundColor: Color(0xfff3e6ff),
                  child: Icon(Ionicons.heart,color: Color(0xff8204ff),),),)
            ],
          ),
        )
      ],
    );
  }
}
