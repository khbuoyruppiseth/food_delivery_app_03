import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/components/search_widget.dart';
import 'package:food_delivery_app_03/components/Menu_Widget.dart';
import 'package:food_delivery_app_03/views/home_page.dart';
import 'package:food_delivery_app_03/views/find_food_page1.dart';
class FindFoodPage2 extends StatelessWidget {
  const FindFoodPage2({Key? key}) : super(key: key);

  static const String routeName = '/FindFoodPage2';

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
                FindFoodPage1.routeName,
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
        child:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        SearchWidget(),
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
                  "< 5 km",
                  style: TextStyle(
                    color: Colors.white,

                  ),
                ),
              ),
            ),

          ],
        ),
        const SizedBox(width: 10),

        MenuWidget(picMenu: 'Menu1.png', nameMenu: 'Original Salad', resName: 'Lovy Food', price: "8"),
        const SizedBox(height: 5),
        MenuWidget(picMenu: 'Menu2.png', nameMenu: 'Fresh Salad', resName: 'Cloudy Resto', price: "10"),
        const SizedBox(height: 5),
        MenuWidget(picMenu: 'Menu3.png', nameMenu: 'Yummie Ice Cream', resName: 'Circlo Resto', price: "6"),
        const SizedBox(height: 5),
        MenuWidget(picMenu: 'Menu4.png', nameMenu: 'Vegan Special', resName: 'Halty Food', price: "11"),
        const SizedBox(height: 5),
        MenuWidget(picMenu: 'Menu5.png', nameMenu: 'Mixed', resName: 'Recto Food', price: "13"),
        const SizedBox(height: 5),
        MenuWidget(picMenu: 'Menu1.png', nameMenu: 'Original Salad', resName: 'Lovy Food', price: "8"),
        const SizedBox(height: 5),
        MenuWidget(picMenu: 'Menu2.png', nameMenu: 'Fresh Salad', resName: 'Cloudy Resto', price: "10"),
        const SizedBox(height: 5),
        MenuWidget(picMenu: 'Menu3.png', nameMenu: 'Yummie Ice Cream', resName: 'Circlo Resto', price: "6"),
        const SizedBox(height: 5),
        MenuWidget(picMenu: 'Menu4.png', nameMenu: 'Vegan Special', resName: 'Halty Food', price: "11"),
        const SizedBox(height: 5),
        MenuWidget(picMenu: 'Menu5.png', nameMenu: 'Mixed', resName: 'Recto Food', price: "13"),
        const SizedBox(height: 5),


      ],
    ),
        ),
        
      ),
    );
  }
}
