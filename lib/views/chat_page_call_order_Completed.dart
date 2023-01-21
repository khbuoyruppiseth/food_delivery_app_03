import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/chat_page.dart';
import 'package:food_delivery_app_03/views/chat_page_rate_driver.dart';
class ChatPageCallOrderCompleted extends StatefulWidget{
  ChatPageCallOrderCompleted ({Key? key, this.picChat, this.nameChat, this.descriptionChat}): super(key: key);
  String? picChat;
  String? nameChat;
  String? descriptionChat;
  static const String routeName = '/ChatPageWithSomeOne';

  @override
  State<ChatPageCallOrderCompleted> createState() => _ChatPageCallOrderCompletedState();
}

class _ChatPageCallOrderCompletedState extends State<ChatPageCallOrderCompleted> {
  final TextEditingController _SMSController = TextEditingController();

  var _SMS;

  @override
  void initState(){
    super.initState();
    // delay 3 seconds before navigating to home page
    Future.delayed(const Duration(seconds: 3), () {
      final route = MaterialPageRoute(
        builder: (context) => ChatPageRate(
          picChat: widget.picChat,
          nameChat: widget.nameChat,
          descriptionChat: widget.descriptionChat,
        ),
      );
      Navigator.push(context, route);
    });

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
                    image: AssetImage("assets/img/${widget.picChat}"),
                    width: 180,
                    height: 180,

                  ),
                ),

                const SizedBox(height: 10),
                Text(
                  "Thank you!",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Order Completed",
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
                    "Please rate the driver",
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            ChatPage.routeName,
                          );
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