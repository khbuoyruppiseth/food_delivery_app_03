import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/popular_res_rate_page.dart';
class RestaurantWidget extends StatelessWidget {
  RestaurantWidget({
    Key? key, required this.logoRes, required this.nameRes, required this.timeShow
  }) : super(key: key);
  String? logoRes;
  String? nameRes;
  String? timeShow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child:
    GestureDetector(
    onTap: (){
      final route = MaterialPageRoute(
        builder: (context) => PopularResRatePage(
          logoRes: logoRes,
          nameRes: nameRes,
          timeShow: timeShow,
        ),
      );
      Navigator.push(context, route);
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image(
          //image: AssetImage('assets/img/Res_Logo1.png'),
          image: AssetImage("assets/img/$logoRes"),
          width: 100,
          height: 100,
        ),
        Text(
          //'Lovy Food',
          "$nameRes",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          //'10 mins',
          "$timeShow",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    ),

    );
  }
}