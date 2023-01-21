import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/components/search_widget.dart';
import 'package:food_delivery_app_03/components/Menu_Widget.dart';
import 'package:food_delivery_app_03/views/find_food_page2.dart';
import 'package:food_delivery_app_03/views/home_page.dart';
import 'package:food_delivery_app_03/views/main_page.dart';
class FindFoodPage1 extends StatelessWidget {
  const FindFoodPage1({Key? key}) : super(key: key);

  static const String routeName = '/FindFoodPage1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Container(
          height: 20,
          width: 20,
          margin: EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.pink[50],
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.pink),
            //onPressed: () => Navigator.of(context).pop(),
            onPressed: (){
              Navigator.pushNamed(
                context,
                MainPage.routeName,
              );
            },
          ),
        ),
        title: const Text('Find your food'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10,right: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              //Colors.white12
              Colors.white.withOpacity(0.9),
              Colors.white.withOpacity(0.0), // transparent
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SearchWidget(),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Type',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "Restaurant",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "Menu",
                          style: TextStyle(
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "1 km",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "<5 km",
                          style: TextStyle(
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "<10 km",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "> 10 km",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Food',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "Cake",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "Salad",
                          style: TextStyle(
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "Pasta",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "Desert",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "Main Course",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "Appetizer",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      //width: 100.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      //color: Colors.deepPurple,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(1.0),
                          textStyle: TextStyle(
                            color: Colors.pink,
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          "Soup",
                          style: TextStyle(
                            color: Colors.pink,

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {

                    Navigator.pushReplacementNamed(
                      context,
                      FindFoodPage2.routeName,
                    );


                    },
                    child: const Text("Search"),
                  ),
                ),
              ),
            ),

          ],
        ),


      ),
    );
  }
}
