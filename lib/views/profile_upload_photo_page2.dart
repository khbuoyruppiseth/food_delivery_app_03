import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/profile_Set_Location.dart';
import 'package:food_delivery_app_03/views/profile_upload_photo_page.dart';
class ProfileUploadPhotoPage2 extends StatefulWidget{
  ProfileUploadPhotoPage2 ({Key? key}): super(key: key);
  static const String routeName = '/ProfileUploadPhotoPage2';

  @override
  State<ProfileUploadPhotoPage2> createState() => _ProfileUploadPhotoPage2();
}

class _ProfileUploadPhotoPage2 extends State<ProfileUploadPhotoPage2> {
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
                  ProfileUploadPhotoPage.routeName);
            },
          ),
        ),
        title: const Text('Upload your photo 2'),
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
                    /*
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.05),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],

                     */

                  ),
                  child: Image(
                    //image: AssetImage('assets/img/Res_Logo1.png'),
                    image: AssetImage("assets/img/myPhoto.png"),
                    width: 200,
                    height: 200,
                  ),

                ),

                const SizedBox(height: 10),


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
                        ProfileSetLocaitonPage.routeName,
                      );
                    },
                    child: const Text("Next"),
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