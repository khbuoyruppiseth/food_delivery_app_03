import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/profile_signup_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const String routeName = '/profile_page';
  @override
  Widget build(BuildContext context) {
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
            //Head
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    /*
                    border: Border.all(
                      width: 5,
                      color: Colors.pink,// <--- border width here
                    ),
                     */
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Image(
                    //image: AssetImage('assets/img/Res_Logo1.png'),
                    image: AssetImage("assets/img/Foode.png"),
                    width: 180,
                    height: 180,

                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Sign in to your account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
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
                      hintText: "Email or Phone Number",
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
                      "Password",
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
                    obscureText:true,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      border: InputBorder.none,
                      //labelText: 'User name',
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey
                      ),
                      //prefixIcon: Icon(Icons.person),

                      suffixIcon: IconButton(
                        icon:Icon(Icons.visibility,
                          color: Colors.grey,
                        ),

                        onPressed: (){
                          //_SMS = _SMSController.text;
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
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /*
                    const Checkbox(
                      value: this.value,
                      onChanged: (bool value) {
                        setState(() {
                          this.value = value;
                        });
                      },
                    ),
                     */
                    Text(
                      "  Remember me",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        /*
                          Navigator.pushReplacementNamed(
                            context,
                            ChatPage.routeName,
                          );

                           */
                      },
                      child: const Text("Sign in"),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Forgot the password?",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 5),
                Text(
                  "Or Continue with",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        /*
                    border: Border.all(
                      width: 5,
                      color: Colors.pink,// <--- border width here
                    ),
                     */
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Image(
                        //image: AssetImage('assets/img/Res_Logo1.png'),
                        image: AssetImage("assets/img/Facebook.png"),
                        width: 170,
                        //height: 300,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        /*
                    border: Border.all(
                      width: 5,
                      color: Colors.pink,// <--- border width here
                    ),
                     */
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Image(
                        //image: AssetImage('assets/img/Res_Logo1.png'),
                        image: AssetImage("assets/img/Google.png"),
                        width: 170,
                        //height: 50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don\'t have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(
                      context,
                      ProfileSignUpPage.routeName);
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
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
