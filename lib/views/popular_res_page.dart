import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/components/search_widget.dart';
import 'package:food_delivery_app_03/components/Restaurant.dart';
import 'package:food_delivery_app_03/views/main_page.dart';
class PopularResPage extends StatelessWidget{
  PopularResPage ({Key? key}): super(key: key);
  static const String routeName = '/popular_res_page';
  List <RestaurantWidget> arrRest = <RestaurantWidget>[];


  @override
  void initState(){
    //super.initState();
    //_pwdController = TextEditingController();
    arrRest.add(RestaurantWidget(logoRes: 'Res_Logo1.png', nameRes: 'Lovy Food', timeShow: '10 mins'));
    arrRest.add(RestaurantWidget(logoRes: 'Res_Logo2.png', nameRes: 'Cloudy Resto', timeShow: '14 mins'));
    arrRest.add(RestaurantWidget(logoRes: 'Res_Logo3.png', nameRes: 'Circlo Resto', timeShow: '11 mins'));
    arrRest.add(RestaurantWidget(logoRes: 'Res_Logo4.png', nameRes: 'Haty Food', timeShow: '16 mins'));
    arrRest.add(RestaurantWidget(logoRes: 'Res_Logo5.png', nameRes: 'Hearthy Resto', timeShow: '18 mins'));
    arrRest.add(RestaurantWidget(logoRes: 'Res_Logo6.png', nameRes: 'Recto Food', timeShow: '15 mins'));
  }
  @override
  Widget build(BuildContext context){
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
                  MainPage.routeName);
            },
          ),
        ),


        title: const Text('Popular Restaurant'),
        centerTitle: false,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            SearchWidget(),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantWidget(logoRes: 'Res_Logo1.png', nameRes: 'Lovy Food', timeShow: '10 mins'),
                  RestaurantWidget(logoRes: 'Res_Logo2.png', nameRes: 'Cloudy Resto', timeShow: '14 mins'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantWidget(logoRes: 'Res_Logo3.png', nameRes: 'Circlo Resto', timeShow: '11 mins'),
                  RestaurantWidget(logoRes: 'Res_Logo4.png', nameRes: 'Haty Food', timeShow: '16 mins'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantWidget(logoRes: 'Res_Logo5.png', nameRes: 'Hearthy Resto', timeShow: '18 mins'),
                  RestaurantWidget(logoRes: 'Res_Logo6.png', nameRes: 'Recto Food', timeShow: '15 mins'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantWidget(logoRes: 'Res_Logo1.png', nameRes: 'Lovy Food', timeShow: '10 mins'),
                  RestaurantWidget(logoRes: 'Res_Logo2.png', nameRes: 'Cloudy Resto', timeShow: '14 mins'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantWidget(logoRes: 'Res_Logo3.png', nameRes: 'Circlo Resto', timeShow: '11 mins'),
                  RestaurantWidget(logoRes: 'Res_Logo4.png', nameRes: 'Haty Food', timeShow: '16 mins'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantWidget(logoRes: 'Res_Logo5.png', nameRes: 'Hearthy Resto', timeShow: '18 mins'),
                  RestaurantWidget(logoRes: 'Res_Logo6.png', nameRes: 'Recto Food', timeShow: '15 mins'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantWidget(logoRes: 'Res_Logo1.png', nameRes: 'Lovy Food', timeShow: '10 mins'),
                  RestaurantWidget(logoRes: 'Res_Logo2.png', nameRes: 'Cloudy Resto', timeShow: '14 mins'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantWidget(logoRes: 'Res_Logo3.png', nameRes: 'Circlo Resto', timeShow: '11 mins'),
                  RestaurantWidget(logoRes: 'Res_Logo4.png', nameRes: 'Haty Food', timeShow: '16 mins'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RestaurantWidget(logoRes: 'Res_Logo5.png', nameRes: 'Hearthy Resto', timeShow: '18 mins'),
                  RestaurantWidget(logoRes: 'Res_Logo6.png', nameRes: 'Recto Food', timeShow: '15 mins'),
                ],
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }


}