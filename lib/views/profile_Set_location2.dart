import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/common/constants.dart';
import 'package:food_delivery_app_03/views/profile_ready.dart';
import 'package:food_delivery_app_03/views/profile_Set_Location.dart';
class ProfileSetLocaitonPage2 extends StatefulWidget{
  ProfileSetLocaitonPage2 ({Key? key}): super(key: key);
  static const String routeName = '/ProfileSetLocaitonPage2';

  @override
  State<ProfileSetLocaitonPage2> createState() => _ProfileSetLocaitonPage2();
}

class _ProfileSetLocaitonPage2 extends State<ProfileSetLocaitonPage2> {
  final TextEditingController _SMSController = TextEditingController();

  var _SMS;


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
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.pink),
            //onPressed: () => Navigator.of(context).pop(),
            onPressed: (){
              Navigator.pushNamed(
                  context,
                  ProfileSetLocaitonPage.routeName);
            },
          ),
        ),
        title: const Text('Set your location'),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  "This data will be displayed in your account profile for security",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
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
                  child: Image(
                    //image: AssetImage('assets/img/Res_Logo1.png'),
                    image: AssetImage("assets/img/location_map.png"),
                    //width: 100,
                    //height: 100,
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
                  child: Image(
                    //image: AssetImage('assets/img/Res_Logo1.png'),
                    image: AssetImage("assets/img/location_address.png"),
                    //width: 100,
                    //height: 100,
                  ),

                ),

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
                        ProfileReady.routeName,
                      );
                    },
                    child: const Text("Set location"),
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