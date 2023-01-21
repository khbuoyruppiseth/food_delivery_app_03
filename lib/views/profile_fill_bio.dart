import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/profile_Payment_Method_page.dart';
import 'package:food_delivery_app_03/views/profile_signup_page.dart';

class ProfileFillBioPage extends StatelessWidget {
  const ProfileFillBioPage({Key? key}) : super(key: key);

  static const String routeName = '/ProfileFillBioPage';
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
                  ProfileSignUpPage.routeName);
            },
          ),
        ),
        title: const Text('Fill in your bio'),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Head
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   Full Name",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  //margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //height: 50,
                  //width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.1, // <--- border width here
                    ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,

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
                    //controller: _SMSController,
                    keyboardType: TextInputType.text,
                    obscureText:false,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      border: InputBorder.none,
                      //labelText: 'User name',
                      hintText: "",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey[20],
                      ),
                      //prefixIcon: Icon(Icons.person),

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
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   Nick Name",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  //margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //height: 50,
                  //width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.1, // <--- border width here
                    ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,

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
                    //controller: _SMSController,
                    keyboardType: TextInputType.text,
                    obscureText:false,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      border: InputBorder.none,
                      //labelText: 'User name',
                      hintText: "",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey[20],
                      ),
                      //prefixIcon: Icon(Icons.person),

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

                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   Phone Number",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  //margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //height: 50,
                  //width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.1, // <--- border width here
                    ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,

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
                    //controller: _SMSController,
                    keyboardType: TextInputType.text,
                    obscureText:false,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      border: InputBorder.none,
                      //labelText: 'User name',
                      hintText: "",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey[20],
                      ),
                      //prefixIcon: Icon(Icons.person),

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
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   Gender",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  //margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //height: 50,
                  //width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.1, // <--- border width here
                    ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,

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
                    //controller: _SMSController,
                    keyboardType: TextInputType.text,
                    obscureText:false,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      border: InputBorder.none,
                      //labelText: 'User name',
                      hintText: "",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey[20],
                      ),
                      //prefixIcon: Icon(Icons.person),

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
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   Date of Birth",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  //margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //height: 50,
                  //width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.1, // <--- border width here
                    ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,

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
                    //controller: _SMSController,
                    keyboardType: TextInputType.text,
                    obscureText:false,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      border: InputBorder.none,
                      //labelText: 'User name',
                      hintText: "",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey[20],
                      ),
                      //prefixIcon: Icon(Icons.person),

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
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   Address",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  //margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  //height: 50,
                  //width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.1, // <--- border width here
                    ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,

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
                    //controller: _SMSController,
                    keyboardType: TextInputType.text,
                    obscureText:false,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      border: InputBorder.none,
                      //labelText: 'User name',
                      hintText: "",
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey[20],
                      ),
                      //prefixIcon: Icon(Icons.person),

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
                const SizedBox(height: 5),

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
                            ProfilePaymentMethod.routeName,
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
