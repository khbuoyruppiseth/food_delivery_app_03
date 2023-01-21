import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/chat_page_with_SomeOne.dart';
import 'package:food_delivery_app_03/views/Chat_page_call_speaking.dart';
class ChatPageCalling extends StatelessWidget{
  ChatPageCalling ({Key? key, this.picChat, this.nameChat, this.descriptionChat}): super(key: key);
  String? picChat;
  String? nameChat;
  String? descriptionChat;
  static const String routeName = '/ChatPageWithSomeOne';
  final TextEditingController _SMSController = TextEditingController();
  var _SMS;

  @override
  void initState(){
    //super.initState();
    //_pwdController = TextEditingController();

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
            //Head
            Text(''),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.pink,// <--- border width here
                    ),
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                  ),
                  child: Image(
                    //image: AssetImage('assets/img/Res_Logo1.png'),
                    image: AssetImage("assets/img/$picChat"),
                    width: 180,
                    height: 180,

                  ),
                ),

                const SizedBox(height: 10),
                Text(
                  //'Lovy Food',
                  "$nameChat",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Riging...",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),

              ],
            ),
        Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  final route = MaterialPageRoute(
                    builder: (context) => ChatPageWithSomeOne(
                      picChat: picChat,
                      nameChat: nameChat,
                      descriptionChat: descriptionChat,
                    ),
                  );
                  Navigator.push(context, route);
                },
                child:Image(
                  //image: AssetImage('assets/img/Res_Logo1.png'),
                  image: AssetImage("assets/img/Call_Close.png"),
                  width: 80,
                  height: 80,
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: (){
                  final route = MaterialPageRoute(
                    builder: (context) => ChatPageCallSpeaking(
                      picChat: picChat,
                      nameChat: nameChat,
                      descriptionChat: descriptionChat,
                    ),
                  );
                  Navigator.push(context, route);
                },
                child:Image(
                  //image: AssetImage('assets/img/Res_Logo1.png'),
                  image: AssetImage("assets/img/Call_Green.png"),
                  width: 80,
                  height: 80,
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