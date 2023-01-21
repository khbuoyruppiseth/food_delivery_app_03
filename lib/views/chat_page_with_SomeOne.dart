import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/components/Chat_Call_Item_Widget.dart';
import 'package:food_delivery_app_03/views/chat_page.dart';
import 'package:food_delivery_app_03/views/chat_page_with_SomeOne2.dart';
class ChatPageWithSomeOne extends StatelessWidget{
  ChatPageWithSomeOne ({Key? key, this.picChat, this.nameChat, this.descriptionChat}): super(key: key);
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
                  ChatPage.routeName);
            },
          ),
        ),


        title: const Text('Chat'),
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
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //ChatCallItemWidget(picChat: 'chat_pic1.png', nameChat: 'Guy Hawkiss', descriptionChat: "Online"),
                  ChatCallItemWidget(picChat: picChat, nameChat: nameChat, descriptionChat: descriptionChat),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        //height: 50,
                        //width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F6F9),
                        ),
                        child: Text('Just to order'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        //height: 50,
                        //width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink,
                        ),
                        child: Text("Ok, what\'s ths spicy level?"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        //height: 50,
                        //width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F6F9),
                        ),
                        child: Text('Okay, wait a minute 👍'),
                      ),
                    ],
                  ),

                ],
              ),


            ),

            Container(
              margin: EdgeInsets.only(bottom: 30),
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
              child: TextField(
                controller: _SMSController,
                keyboardType: TextInputType.text,
                obscureText:false,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  border: InputBorder.none,
                  //labelText: 'User name',
                  hintText: "Type message ...",
                  hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey
                  ),
                  //prefixIcon: Icon(Icons.person),
                  suffixIcon: IconButton(
                    icon:Icon(Icons.send,
                      color: Colors.pink,
                    ),

                    onPressed: (){
                      _SMS = _SMSController.text;
                        final route = MaterialPageRoute(
                          builder: (context) => ChatPageWithSomeOne2(
                            picChat: picChat,
                            nameChat: nameChat,
                            descriptionChat: descriptionChat,
                            mySMS: _SMS,
                          ),
                        );
                        Navigator.push(context, route);
                      /*
                      setState(() {
                        _SMS = _SMSController.text;

                      });
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
          ],
        ),
      ),
    );
  }



}