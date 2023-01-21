import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/common/constants.dart';
import 'package:food_delivery_app_03/components/search_widget.dart';
import 'package:food_delivery_app_03/components/Restaurant.dart';
import 'package:food_delivery_app_03/components/Menu_Widget.dart';
import 'package:food_delivery_app_03/views/Promo_Page.dart';
import 'package:food_delivery_app_03/views/popular_list_page_ScrollView_Sliver.dart';
import 'package:food_delivery_app_03/views/popular_menu.dart';
import 'package:food_delivery_app_03/views/popular_res_page.dart';
import 'package:food_delivery_app_03/views/popular_menu_ScrollView_Sliver.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: Image(
          image: AssetImage('assets/img/app_logo_small.png'),
            width: 30,
            height: 30,
          ),
        ),
        title: const Text('Hello, Daniel!'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_active),
            color: Colors.pink,
            onPressed: (){},
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10,right: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              //Colors.white12,
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
        SearchWidget(),
        const SizedBox(height: 10),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink,
              ),
            ),
            Positioned(
              left: 10.0,
              top: 10.0,
              child: Image(
                image: AssetImage('assets/img/Burger.png'),
                width: 140,
                height: 140,
              ),
            ),
            Positioned(
              right: 10.0,
              top: 20.0,
              child: Container(width: 200.0, height: 100.0,
                alignment: Alignment.topLeft ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Special Deal for',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text('December',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 50.0,
              bottom: 10.0,
              child: Container(width: 120.0, height: 35.0,
                //color: Colors.deepPurple,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    padding: const EdgeInsets.all(1.0),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 10,

                    ),
                  ),
                  onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            PromoPage.routeName,
                          );
                  },
                  child: const Text("Buy Now"),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Popular Restaurant',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(
                  context,
                  PopularResPage.routeName,
                  //PopularListPage_ScrollView_Sliver.routeName,
                );
            },
              child: Text('See All',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,

          child: Row(
            children: <Widget>[
              RestaurantWidget(logoRes: 'Res_Logo1.png', nameRes: 'Lovy Food', timeShow: '10 mins'),
              RestaurantWidget(logoRes: 'Res_Logo2.png', nameRes: 'Cloudy Resto', timeShow: '14 mins'),
              RestaurantWidget(logoRes: 'Res_Logo3.png', nameRes: 'Circlo Resto', timeShow: '11 mins'),
              RestaurantWidget(logoRes: 'Res_Logo4.png', nameRes: 'Haty Food', timeShow: '16 mins'),
              RestaurantWidget(logoRes: 'Res_Logo5.png', nameRes: 'Hearthy Resto', timeShow: '18 mins'),
              RestaurantWidget(logoRes: 'Res_Logo6.png', nameRes: 'Recto Food', timeShow: '15 mins'),

            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Popular Menu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(
                  context,
                  PopularMenu.routeName,
                  //PopularMenuPage_ScrollView_Sliver.routeName,
                );
              },
              child: Text('See All',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

          ],
        ),
        Column(
          children: <Widget>[
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
      ],
    ),
        ),

      ),
    );
  }
}
