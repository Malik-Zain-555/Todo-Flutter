import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage()),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Todo List"),
        backgroundColor: Colors.yellowAccent[700],
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child:Padding(padding: EdgeInsetsGeometry.fromLTRB(15,20,15,0),
              child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "enter your task",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
            ),
            ) ,
          ),
          Container(
            child:Padding(padding: EdgeInsetsGeometry.all(15),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
            ) ,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("clear", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),),
                ElevatedButton(onPressed: (){}, child: Text("create", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                ),)
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
         // height: 100,
        color: Colors.yellowAccent[700],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 40, color: Colors.black)),
            IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border_outlined,size: 40,color: Colors.black)),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_circle,size: 40,color: Colors.black)),
            IconButton(onPressed: (){}, icon: Icon(Icons.incomplete_circle,size: 40,color: Colors.black)),
            IconButton(onPressed: (){}, icon: Icon(Icons.done,size: 40,color: Colors.black))
          ],
        ),
      ) ,
    );
  }
}
