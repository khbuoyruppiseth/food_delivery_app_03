import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/common/constants.dart';
import 'package:food_delivery_app_03/views/main_page.dart';
import 'package:food_delivery_app_03/views/profile_Set_Location2.dart';
class ProfileReady extends StatefulWidget{
  ProfileReady ({Key? key}): super(key: key);
  static const String routeName = '/ProfileReady';

  @override
  State<ProfileReady> createState() => _ProfileReady();
}

class _ProfileReady extends State<ProfileReady> {
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
            Text(''),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 20 , top: 5, bottom: 5),
                  //height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Image(
                    //image: AssetImage('assets/img/Res_Logo1.png'),
                    image: AssetImage("assets/img/profile_ready.png"),
                    width: 150,
                    height: 150,
                  ),

                ),
                const SizedBox(height: 10),
                Text(
                  "Congrate!",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 10),
                Text(
                  "Your profile is ready to use",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
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
                        MainPage.routeName,
                      );
                    },
                    child: const Text("Go homepage"),
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