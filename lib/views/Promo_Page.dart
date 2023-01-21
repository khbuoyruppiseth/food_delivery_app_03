import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/main_page.dart';
import 'package:food_delivery_app_03/common/constants.dart';
import 'package:food_delivery_app_03/views/notification_page.dart';
class PromoPage extends StatefulWidget{
  PromoPage ({Key? key}): super(key: key);
  static const String routeName = '/PromoPage';

  @override
  State<PromoPage> createState() => _PromoPage();
}

class _PromoPage extends State<PromoPage> {
  final TextEditingController _SMSController = TextEditingController();

  var _SMS;

  @override
  void initState(){
    super.initState();
    // delay 3 seconds before navigating to home page

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
        title: const Text('Promo'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Head
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
                          NotificationPage.routeName,
                        );
                      },
                      child: const Text("Buy Now"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: secondaryColor,
                  ),
                ),
                Positioned(
                  left: 10.0,
                  top: 10.0,
                  child: Image(
                    image: AssetImage('assets/img/Pizza1.png'),
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
                        backgroundColor: primaryColor,
                        padding: const EdgeInsets.all(1.0),
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 10,

                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          NotificationPage.routeName,
                        );
                      },
                      child: const Text("Buy Now"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  left: 10.0,
                  top: 10.0,
                  child: Image(
                    image: AssetImage('assets/img/Pizza2.png'),
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
                          NotificationPage.routeName,
                        );
                      },
                      child: const Text("Buy Now"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {

                          Navigator.pushNamed(
                              context,
                              NotificationPage.routeName);
                        },
                        child: const Text("Checkout"),
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