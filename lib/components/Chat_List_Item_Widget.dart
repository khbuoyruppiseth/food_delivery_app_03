import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/chat_page_with_SomeOne.dart';
class ChatListITemWidget extends StatelessWidget {
  ChatListITemWidget({
    Key? key, required this.picChat, required this.nameChat,this.descriptionChat, required this.MsNotYetRead, required this.timeAcitve
  }) : super(key: key);
  String? picChat;
  String? nameChat;
  String? descriptionChat;
  String? MsNotYetRead;
  String? timeAcitve;

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
        final route = MaterialPageRoute(
          builder: (context) => ChatPageWithSomeOne(
            picChat: picChat,
            nameChat: nameChat,
            descriptionChat: 'Online',
          ),
        );
        Navigator.push(context, route);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 20 , top: 5, bottom: 5),
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  //'Lovy Food',
                  "$MsNotYetRead",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  //'Lovy Food',
                  "$timeAcitve",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}