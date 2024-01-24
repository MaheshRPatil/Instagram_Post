import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Home"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 100,
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/task2.jpg",width: 100),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Umberla for sale",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                      Text("200 bougth this"),
                    ],
                  ),
                  const Row(
                    children: [
                      Text("4.5"),
                      Icon(Icons.star,size: 10,)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
