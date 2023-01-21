import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/components/search_widget.dart';
import 'package:food_delivery_app_03/components/Menu_Order_Widget.dart';
import 'package:food_delivery_app_03/views/home_page.dart';
import 'package:food_delivery_app_03/views/main_page.dart';
import 'package:food_delivery_app_03/views/orders_Payment_page.dart';
class OrdersDeliverToPage extends StatelessWidget {
  const OrdersDeliverToPage({Key? key}) : super(key: key);

  static const String routeName = '/OrdersDeliverToPage';

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
        title: const Text('Deliver to'),
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
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 20 , top: 5, bottom: 5),
                  //height: 100,
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
                  child:Image(
                    image: AssetImage("assets/img/Location1.png"),
                    //width: 80,
                    //height: 80,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 20 , top: 5, bottom: 5),
                  //height: 100,
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
                  child:Image(
                    image: AssetImage("assets/img/Location2.png"),
                    //width: 80,
                    //height: 80,
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(bottom: 30),
              padding:  EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$32",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Deliver chage',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$5",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$10",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  Divider(
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$27",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(
                          context,
                          OrdersPaymentPage.routeName);
                    },
                    child:Container(
                      padding:  EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),


      ),
    );
  }
}
