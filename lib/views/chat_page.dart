import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/components/search_widget.dart';
import 'package:food_delivery_app_03/components/Chat_List_Item_Widget.dart';
import 'package:food_delivery_app_03/views/main_page.dart';
class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  static const String routeName = '/chat_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushNamed(
                context,
                MainPage.routeName);
          },
          child:
              Container(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('assets/img/app_logo_small.png'),
                ),
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
              Colors.grey.withOpacity(0.9),
              Colors.grey.withOpacity(0.0), // transparent
            ],
          ),
        ),
        child:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              SearchWidget(),
              const SizedBox(height: 10),
              Column(
                children: <Widget>[
                  ChatListITemWidget(picChat: 'chat_pic1.png', nameChat: 'Guy Hawkiss', descriptionChat: "I\' will be there in 2 mins", MsNotYetRead: "3" , timeAcitve: '20.00'),
                  const SizedBox(height: 5),
                  ChatListITemWidget(picChat: 'chat_pic2.png', nameChat: 'Dianne Russell', descriptionChat: "woohoooo", MsNotYetRead: "" , timeAcitve: '16.40'),
                  const SizedBox(height: 5),
                  ChatListITemWidget(picChat: 'chat_pic3.png', nameChat: 'Theresa Webb', descriptionChat: "The Good Work", MsNotYetRead: "" , timeAcitve: '13.10'),
                  const SizedBox(height: 5),
                  ChatListITemWidget(picChat: 'chat_pic4.png', nameChat: 'Jenny Wilson', descriptionChat: "I\' will be there in 2 mins", MsNotYetRead: "" , timeAcitve: '09.20'),
                  const SizedBox(height: 5),
                  ChatListITemWidget(picChat: 'chat_pic5.png', nameChat: 'Courtney', descriptionChat: "aww", MsNotYetRead: "" , timeAcitve: '08.00'),
                  const SizedBox(height: 5),
                  ChatListITemWidget(picChat: 'chat_pic1.png', nameChat: 'Guy Hawkiss', descriptionChat: "I\' will be there in 2 mins", MsNotYetRead: "3" , timeAcitve: '20.00'),
                  const SizedBox(height: 5),
                  ChatListITemWidget(picChat: 'chat_pic2.png', nameChat: 'Dianne Russell', descriptionChat: "woohoooo", MsNotYetRead: "" , timeAcitve: '16.40'),
                  const SizedBox(height: 5),
                  ChatListITemWidget(picChat: 'chat_pic3.png', nameChat: 'Theresa Webb', descriptionChat: "The Good Work", MsNotYetRead: "" , timeAcitve: '13.10'),
                  const SizedBox(height: 5),
                  ChatListITemWidget(picChat: 'chat_pic4.png', nameChat: 'Jenny Wilson', descriptionChat: "I\' will be there in 2 mins", MsNotYetRead: "" , timeAcitve: '09.20'),
                  const SizedBox(height: 5),
                  ChatListITemWidget(picChat: 'chat_pic5.png', nameChat: 'Courtney', descriptionChat: "aww", MsNotYetRead: "" , timeAcitve: '08.00'),
                  const SizedBox(height: 5),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
