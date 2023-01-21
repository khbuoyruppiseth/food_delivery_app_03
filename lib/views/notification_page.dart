import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/Promo_Page.dart';
import 'package:food_delivery_app_03/common/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:food_delivery_app_03/views/chat_page.dart';
import 'package:food_delivery_app_03/views/home_page.dart';
import 'package:food_delivery_app_03/views/main_page.dart';
import 'package:food_delivery_app_03/views/orders_page.dart';
import 'package:food_delivery_app_03/views/profile_page.dart';
class NotificationPage extends StatefulWidget{
  NotificationPage ({Key? key}): super(key: key);
  static const String routeName = '/NotificationPage';

  @override
  State<NotificationPage> createState() => _NotificationPage();
}

class _NotificationPage extends State<NotificationPage> {
  final TextEditingController _SMSController = TextEditingController();

  var _SMS;

  // list page
  final List<Widget> _pages = [
    const HomePage(),
    const OrdersPage(),
    const ChatPage(),
    const ProfilePage(),
  ];
  // current page
  int _selectedIndex = 0;

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
            //icon: Icon(Icons.arrow_back_ios_new, color: Colors.pink),
            icon: Icon(Icons.home, color: Colors.pink),
            //onPressed: () => Navigator.of(context).pop(),
            onPressed: (){
              Navigator.pushNamed(
                  context,
                  MainPage.routeName);
            },
          ),
        ),
        title: const Text('Notification'),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              //margin: EdgeInsets.only(bottom: 30),
              padding: EdgeInsets.only(left: 20, right: 10),
              //height: 50,
              //width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                /*
                border: Border.all(
                  width: 0.0, // <--- border width here
                ),

                 */
                borderRadius: BorderRadius.circular(50),
                color: neutral6Color,

                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.05),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child:TextField(
                controller: _SMSController,
                keyboardType: TextInputType.text,
                obscureText:false,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  border: InputBorder.none,
                  //labelText: 'User name',
                  hintText: "Search",
                  hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey
                  ),
                  //prefixIcon: Icon(Icons.person),
                  suffixIcon: IconButton(
                    icon:Icon(Icons.search,
                      color: Colors.grey,
                    ),

                    onPressed: (){
                      _SMS = _SMSController.text;
                      /*
                          final route = MaterialPageRoute(
                            builder: (context) => ChatPageWithSomeOne2(
                              picChat: picChat,
                              nameChat: nameChat,
                              descriptionChat: descriptionChat,
                              mySMS: _SMS,
                            ),
                          );
                          Navigator.push(context, route);

                           */

                    },
                  ),
                  //filled: true,
                  filled: false,
                  fillColor: Colors.indigo[50],
                  //counterText: '0/10',

                ),
                onChanged: (value) {
                  /*
                  setState(() {
                    //_username = value;
                  });

                   */
                },
              ),
            ),
            const SizedBox(height: 10),
        Container(
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
        child:Image(
          //image: AssetImage('assets/img/Res_Logo1.png'),
          image: AssetImage("assets/img/Notification1.png"),
          //width: 80,
          //height: 80,
        ),
        ),

            const SizedBox(height: 10),
            Container(
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
              child:Image(
                //image: AssetImage('assets/img/Res_Logo1.png'),
                image: AssetImage("assets/img/Notification2.png"),
                //width: 80,
                //height: 80,
              ),
            ),
            const SizedBox(height: 10),
            Container(
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
              child:Image(
                //image: AssetImage('assets/img/Res_Logo1.png'),
                image: AssetImage("assets/img/Notification3.png"),
                //width: 80,
                //height: 80,
              ),
            ),
            const SizedBox(height: 10),


          ],
        ),
      ),
      /*
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        itemCornerRadius: 12,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            title: Text('Orders'),
            activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
            activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.pink,
          ),
        ],
      ),

       */
    );
  }
}