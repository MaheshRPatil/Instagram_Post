import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white30),
        useMaterial3: true,

      ),
      home: const MyHomePage(title: 'Home',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body:Center(
          child: Container(
            width: 350,
            height: 350,
            color: Colors.amberAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          ClipOval(child: Image.asset("assets/images/task2.jpg",scale: 30,width: 50,height: 50,fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Mahesh Patil",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                              Text("5 mins ago")
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.menu_rounded),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Image.asset("assets/images/task2.jpg"),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.thumb_up),
                        Text("Like"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.comment),
                        Text("Comment"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.share),
                        Text("Share"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
