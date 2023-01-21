import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/popular_menu_rate_page.dart';
class MenuWidget extends StatelessWidget {
  MenuWidget({
    Key? key, required this.picMenu, required this.nameMenu, required this.resName, required this.price
  }) : super(key: key);
  String? picMenu;
  String? nameMenu;
  String? resName;
  String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 20 , top: 5, bottom: 5),
      height: 100,
      width: MediaQuery.of(context).size.width,
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
      child: GestureDetector(
    onTap: (){
    final route = MaterialPageRoute(
    builder: (context) => PopularMenuRatePage(
      picMenu: picMenu,
      nameMenu: nameMenu,
      resName: resName,
      price: price,
    ),
    );
    Navigator.push(context, route);
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          //image: AssetImage('assets/img/Res_Logo1.png'),
          image: AssetImage("assets/img/$picMenu"),
          width: 80,
          height: 80,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              //'Lovy Food',
              "$nameMenu",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              //'10 mins',
              "$resName",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          //'Lovy Food',
          "\$ $price",
          style: TextStyle(
            color: Colors.pink,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),

      ],
    ),
      ),


    );
  }
}