// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
//Stateless widget
class MyApp extends StatelessWidget {
   MyApp({super.key});



  //Everything in Flutter is a widget
//Widget #1 is a Scaffold. Which is skeleton widget that holds a different parts of your app

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        body:
        Center(

            child: GestureDetector(
              onTap: (){
                // Do something when user taps container.
              },
              child: Container(
              height: 200,
                width: 200,
                color: Colors.deepPurple[200],
                child: Center(child: Text("Tap me!")),
                        ),
            ),//Container
        ),//Center
      ),//Scaffold
    ); //MaterialApp
  }
}


/* What I have learned

Text("Mateus Natanael",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight:FontWeight.bold,
              ),//TextSyle
            ),//Text

Icon(Icons.home,
              color: Colors.white,
              size: 64,
            ),//Icon



Center(
          child: Container(
            height: 300,
            width: 300,
            decoration:
            BoxDecoration(
              color: Colors.deepPurple,
              //curve the corners a bit
              borderRadius: BorderRadius.circular(20)
            ), //BoxDecoration

            padding: EdgeInsets.all(25),
            child:Icon(Icons.home,
              color: Colors.white,
              size: 64,
            ),//Icon
          ),//Container
        ),//Center

// appBar: AppBar(
        //   title: Text("My App Bar",
        //   style: TextStyle(color: Colors.white
        //     ),//Text style
        //   ),//Text
        //   backgroundColor: Colors.deepPurple,
        //   elevation: 0,
        //   leading: Icon(Icons.menu),
        //   actions: [
        //     IconButton(onPressed: () {}, icon: Icon(Icons.logout))
        //   ],//Actions
        // ),//AppBar

        mainAxisAlignment: MainAxisAlignment.center --> Can align a number of containers
          We can also use .end .spaceEvenly .spaceBetween and alot more
        crossAxisAlignment: CrossAxisAlignment.start --> For same effect with different size containers


Instead of Defining a Height and a width yo can you use the "Expanded" in addition one can use "Flex" to define
the ratios

// 1st box
            Expanded(
              child: Container(
                color: Colors.deepPurple,
              ),
            ),//Container


we can use "Columns" and rows but it has one problem.----> The problem is that it gives out an overflow
problem

Once you use a "listView" it fix the overflow problem and makes the list scrollable
You can choose how you want to scroll, it is by default vertical but you can make it horizontal

Vertical Example:
  body: ListView(

          children: [

          // 1st box
           Container(
                height: 350,
                color: Colors.deepPurple,
             ),//Container
          //2nd box
          Container(
                height: 350,
                color: Colors.deepPurple[400],
            ), //Container
          //3red box
          Container(
                height: 350,
                color: Colors.deepPurple[200],
            ),//Container
        ],),//ListView

Horizontal Example:
body: ListView( scrollDirection:  Axis.horizontal,

          children: [

          // 1st box
            Container(
                width: 350,
                color: Colors.deepPurple,
              ),//Container

          //2nd box
          Container(
            width: 350,
            color: Colors.deepPurple[400],
            ), //Container

          //3red box
          Container(
            width: 350,
            color: Colors.deepPurple[200],
            ),//Container
        ],),//ListView


Columns-vertical and Rows-horizontal UI layouts
ListViews are for when you want them to scroll


--We can also build ListViews--
Stateless widget
class MyApp extends StatelessWidget {
   MyApp({super.key});

  List names = ["King","Mateu","Nata"];
  
 body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(names[index]),
            ), //ListTile
        ),//ListView


--How to use a GridView--
     body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder:(context,index)=> Container(color: Colors.deepPurple,
                  margin: EdgeInsets.all(2),
              ),// Container
            ),//GridView.builder


--How To use the Stack Element--

     Stack( children: [
          //Big Box
          Container(
            height: 300,
            width: 300,
            color: Colors.deepPurple[300],
          ),//Container
          //Medium Box
          Container(
            height: 200,
            width: 200,
            color: Colors.deepPurple[200],
          ),//Container
          //Small Box
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple[100],
          ),//Container
          ],
        ),//Stack

* */

