import 'package:flutter/material.dart';
import 'package:food_delivery_app_03/views/get_started_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // delay 3 seconds before navigating to home page
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        GetStartedPage.routeName,
        arguments: GetStartedPageArguments(
          title: 'Foode',
          description: 'The best food ordering and delivery app of the century',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/bg_splash_page.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // loading indicator
              Positioned(
                bottom: 100,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
