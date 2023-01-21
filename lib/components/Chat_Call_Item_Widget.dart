import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/chat_page_with_SomeOne.dart';
import 'package:food_delivery_app_03/views/chat_page_calling.dart';
class ChatCallItemWidget extends StatelessWidget {
  ChatCallItemWidget({
    Key? key, required this.picChat, required this.nameChat,this.descriptionChat
  }) : super(key: key);
  String? picChat;
  String? nameChat;
  String? descriptionChat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        /*
        Navigator.pushNamed(
          context,
          ChatPageWithSomeOne.routeName,
          //PopularMenuPage_ScrollView_Sliver.routeName,
        );

         */
      },
      child: Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              //image: AssetImage('assets/img/Res_Logo1.png'),
              image: AssetImage("assets/img/$picChat"),
              width: 80,
              height: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  //'Lovy Food',
                  "$nameChat",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  //'10 mins',
                  "$descriptionChat",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                final route = MaterialPageRoute(
                  builder: (context) => ChatPageCalling(
                    picChat: picChat,
                    nameChat: nameChat,
                    descriptionChat: descriptionChat,
                  ),
                );
                Navigator.push(context, route);
              },
              child:Image(
                //image: AssetImage('assets/img/Res_Logo1.png'),
                image: AssetImage("assets/img/Call_Logo.png"),
                width: 50,
                height: 50,
              ),
            ),



          ],
        ),
      ),
    );
  }
}