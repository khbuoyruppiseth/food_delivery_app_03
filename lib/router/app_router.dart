//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/Promo_Page.dart';
import 'package:food_delivery_app_03/views/chat_page.dart';
import 'package:food_delivery_app_03/views/chat_page_with_SomeOne.dart';
import 'package:food_delivery_app_03/views/main_page.dart';
import 'package:food_delivery_app_03/views/orders_page.dart';
import 'package:food_delivery_app_03/views/popular_list_page_ScrollView_Sliver.dart';
import 'package:food_delivery_app_03/views/popular_menu.dart';
import 'package:food_delivery_app_03/views/popular_menu_ScrollView_Sliver.dart';
import 'package:food_delivery_app_03/views/popular_res_page.dart';
import 'package:food_delivery_app_03/views/profile_page.dart';
import 'package:food_delivery_app_03/views/notification_page.dart';
import 'package:food_delivery_app_03/views/find_food_page1.dart';
import 'package:food_delivery_app_03/views/find_food_page2.dart';
import 'package:food_delivery_app_03/views/Orders_Deliver_to_Page.dart';
import 'package:food_delivery_app_03/views/orders_Payment_page.dart';
import 'package:food_delivery_app_03/views/profile_signup_page.dart';
import 'package:food_delivery_app_03/views/profile_fill_bio.dart';
import 'package:food_delivery_app_03/views/profile_Payment_Method_page.dart';
import 'package:food_delivery_app_03/views/profile_upload_photo_page.dart';
import 'package:food_delivery_app_03/views/profile_upload_photo_page2.dart';
import 'package:food_delivery_app_03/views/profile_Set_Location.dart';
import 'package:food_delivery_app_03/views/profile_Set_Location2.dart';
import 'package:food_delivery_app_03/views/profile_ready.dart';



import '../views/get_started_page.dart';
import '../views/home_page.dart';
import '../views/splash_page.dart';

Route<RouteSettings> onGenerateRoute(RouteSettings settings) {
  var args = settings.arguments;

  switch (settings.name) {
    case SplashPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SplashPage(),
      );
    case GetStartedPage.routeName:
      return MaterialPageRoute(
        builder: (context) => GetStartedPage(
          arguments: args as GetStartedPageArguments,
        ),
      );
    case MainPage.routeName:
      return MaterialPageRoute(
        builder: (context) => MainPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case OrdersPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OrdersPage(),
      );
    case ProfilePage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfilePage(),
      );
    case PopularResPage.routeName:
      return MaterialPageRoute(
          builder: (context) => PopularResPage(),
      );
    case PopularListPage_ScrollView_Sliver.routeName:
      return MaterialPageRoute(
        builder: (context) => PopularListPage_ScrollView_Sliver(),
      );
      case PopularMenu.routeName:
    return MaterialPageRoute(
      builder: (context) => PopularMenu(),
    );
    case PopularMenuPage_ScrollView_Sliver.routeName:
      return MaterialPageRoute(
        builder: (context) => PopularMenuPage_ScrollView_Sliver(),
      );
    case ChatPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChatPage(),
      );
    case ChatPageWithSomeOne.routeName:
      return MaterialPageRoute(
        builder: (context) => ChatPageWithSomeOne(),
      );
    case PromoPage.routeName:
      return MaterialPageRoute(
        builder: (context) => PromoPage(),
      );
    case NotificationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => NotificationPage(),
      );
    case FindFoodPage1.routeName:
      return MaterialPageRoute(
        builder: (context) => FindFoodPage1(),
      );
    case FindFoodPage2.routeName:
      return MaterialPageRoute(
        builder: (context) => FindFoodPage2(),
      );
    case OrdersDeliverToPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OrdersDeliverToPage(),
      );
    case OrdersPaymentPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OrdersPaymentPage(),
      );
    case ProfileSignUpPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfileSignUpPage(),
      );
    case ProfileFillBioPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfileFillBioPage(),
      );
    case ProfilePaymentMethod.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfilePaymentMethod(),
      );
    case ProfileUploadPhotoPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfileUploadPhotoPage(),
      );
    case ProfileUploadPhotoPage2.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfileUploadPhotoPage2(),
      );
    case ProfileSetLocaitonPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfileSetLocaitonPage(),
      );
    case ProfileSetLocaitonPage2.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfileSetLocaitonPage2(),
      );
    case ProfileReady.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfileReady(),
      );

      /*
    case ChatPageWithSomeOne.routeName:
      return MaterialPageRoute(
        builder: (context) => ChatPageWithSomeOne(),
      );

       */
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
