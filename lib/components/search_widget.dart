import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/find_food_page1.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          //padding: EdgeInsets.all(10),
          height: 50,
          width: 280,
          child:
          TextField(
            //controller: _usernameController,
            keyboardType: TextInputType.text,
            obscureText:false,
            decoration: InputDecoration(
              border: InputBorder.none,
              //labelText: 'Search',

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50.0),
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 13.0,
                color: Colors.black,
              ),
              //prefixIcon: Icon(Icons.person),
              suffixIcon: Icon(Icons.search),
              filled: true,
              //fillColor: Colors.indigo[50],
              //counterText: '0/10',
            ),
            onChanged: (value) {
              /*
                    setState(() {
                      _username = value;
                    });

                     */
            },
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(
                context,
                FindFoodPage1.routeName);
          },
          child: Container(
            padding: EdgeInsets.all(0),
            height: 50,
            width: 50,
            child: Image(
              image: AssetImage('assets/img/search_more.jpg'),
            ),
          ),
        ),

      ],
    );
  }
}