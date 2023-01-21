import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/chat_page.dart';
import 'package:food_delivery_app_03/views/popular_res_page.dart';
class PopularResRatePage extends StatefulWidget{
  PopularResRatePage ({Key? key, this.logoRes, this.nameRes, this.timeShow}): super(key: key);
  String? logoRes;
  String? nameRes;
  String? timeShow;
  static const String routeName = '/PopularResRatePage';

  @override
  State<PopularResRatePage> createState() => _PopularResRatePage();
}

class _PopularResRatePage extends State<PopularResRatePage> {
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
                  PopularResPage.routeName);
            },
          ),
        ),
        title: const Text(''),
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
            Text(''),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
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
                    image: AssetImage("assets/img/${widget.logoRes}"),
                    width: 120,
                    height: 120,

                  ),
                ),

                const SizedBox(height: 20),
                Text(
                  "Enjoy your meal",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),


              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Please rate the restaurant",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.pink,
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.star,
                        color: Colors.pink,
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.star,
                        color: Colors.pink,
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.star,
                        color: Colors.pink,
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    //margin: EdgeInsets.only(bottom: 30),
                    padding: EdgeInsets.all(10),
                    //height: 50,
                    //width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.1, // <--- border width here
                      ),
                      borderRadius: BorderRadius.circular(20),
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
                      controller: _SMSController,
                      keyboardType: TextInputType.text,
                      obscureText:false,
                      decoration: InputDecoration(
                        //border: OutlineInputBorder(),
                        border: InputBorder.none,
                        //labelText: 'User name',
                        hintText: "Leave feedback ...",
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey
                        ),
                        //prefixIcon: Icon(Icons.person),
                        suffixIcon: IconButton(
                          icon:Icon(Icons.edit,
                            color: Colors.pink,
                          ),

                          onPressed: (){
                            _SMS = _SMSController.text;


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
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context,
                              PopularResPage.routeName);
                        },
                        child: const Text("Submit"),
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