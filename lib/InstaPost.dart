import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Post"),
        ),
        body:
        Center(
          child: Container(
            width: 300,
            height: 380,
            color: Colors.amberAccent,
            child: Column(
              children: [
                Image.asset("assets/images/task2.jpg"),
                SizedBox(height: 11,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Umbrela for Sale",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                            Text("200 bougth this",style: TextStyle(fontSize: 15),),
                          ],
                        ) ,
                        Row(
                          children: [
                            Text("4.5",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                            Icon(Icons.star)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed:(){}, child: Text("Add to Cart",),style: ButtonStyle(elevation: MaterialStatePropertyAll(20)),),
                      ElevatedButton(onPressed: (){}, child: Text("Buy Now",),style: ButtonStyle(elevation:MaterialStatePropertyAll(20)),)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
