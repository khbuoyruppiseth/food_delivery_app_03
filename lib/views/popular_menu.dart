import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/components/search_widget.dart';
import 'package:food_delivery_app_03/components/Menu_Widget.dart';
import 'package:food_delivery_app_03/views/main_page.dart';
class PopularMenu extends StatelessWidget{
  PopularMenu ({Key? key}): super(key: key);
  static const String routeName = '/popular_menu';


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
                  MainPage.routeName);
            },
          ),
        ),


        title: const Text('Popular Menu'),
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
                  MenuWidget(picMenu: 'Menu1.png', nameMenu: 'Original Salad', resName: 'Lovy Food', price: "8"),
                  const SizedBox(height: 5),
                  MenuWidget(picMenu: 'Menu2.png', nameMenu: 'Fresh Salad', resName: 'Cloudy Resto', price: "10"),
                  const SizedBox(height: 5),
                  MenuWidget(picMenu: 'Menu3.png', nameMenu: 'Yummie Ice Cream', resName: 'Circlo Resto', price: "6"),
                  const SizedBox(height: 5),
                  MenuWidget(picMenu: 'Menu4.png', nameMenu: 'Vegan Special', resName: 'Halty Food', price: "11"),
                  const SizedBox(height: 5),
                  MenuWidget(picMenu: 'Menu5.png', nameMenu: 'Mixed', resName: 'Recto Food', price: "13"),
                  const SizedBox(height: 5),
                  MenuWidget(picMenu: 'Menu1.png', nameMenu: 'Original Salad', resName: 'Lovy Food', price: "8"),
                  const SizedBox(height: 5),
                  MenuWidget(picMenu: 'Menu2.png', nameMenu: 'Fresh Salad', resName: 'Cloudy Resto', price: "10"),
                  const SizedBox(height: 5),
                  MenuWidget(picMenu: 'Menu3.png', nameMenu: 'Yummie Ice Cream', resName: 'Circlo Resto', price: "6"),
                  const SizedBox(height: 5),
                  MenuWidget(picMenu: 'Menu4.png', nameMenu: 'Vegan Special', resName: 'Halty Food', price: "11"),
                  const SizedBox(height: 5),
                  MenuWidget(picMenu: 'Menu5.png', nameMenu: 'Mixed', resName: 'Recto Food', price: "13"),
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