import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app_ui/ui/checkout_screen.dart';
import 'package:pharmacy_app_ui/ui/create_account.dart';
import 'package:pharmacy_app_ui/ui/introduction_screen.dart';
import 'package:pharmacy_app_ui/ui/item_details_screen.dart';
import 'package:pharmacy_app_ui/ui/login_screen.dart';
import 'package:pharmacy_app_ui/ui/notifaction_screen.dart';
import 'package:pharmacy_app_ui/ui/profile_screen.dart';
import 'package:pharmacy_app_ui/ui/signup_screen.dart';
import 'package:pharmacy_app_ui/ui/thankyou_screen.dart';
import 'package:pharmacy_app_ui/utils/routes/routes_names.dart';

import '../../ui/cart_screen.dart';
import '../../ui/home_page.dart';
import '../../ui/mycart_screen.dart';
import '../../ui/splash_screen.dart';
import '../../ui/verify_code.dart';

class Routes {

static Route<dynamic> generateRoute(RouteSettings settings){

  switch(settings.name){

    case RoutesName.homeScreen:
      return MaterialPageRoute(builder: (context)=> const HomePage());

    case RoutesName.splashScreen:
      return MaterialPageRoute(builder: (context)=> const SplashScreen());

    case RoutesName.introductionScreen:
      return MaterialPageRoute(builder: (context)=> const IntroScreen());

    case RoutesName.signUpScreen:
      return MaterialPageRoute(builder: (context)=> const SignupScreen());

    case RoutesName.loginScreen:
      return MaterialPageRoute(builder: (context)=> const LoginScreen());

    case RoutesName.createAccountScreen:
      return MaterialPageRoute(builder: (context)=> const CreateAccountScreen());

    case RoutesName.verifyCodeScreen:
      return MaterialPageRoute(builder: (context)=> const VerifyCodeScreen());

    case RoutesName.itemdetailScreen:
      return MaterialPageRoute(builder: (context)=> const ItemDetailScreen());

    case RoutesName.cartScreen:
      return MaterialPageRoute(builder: (context)=> const CartScreen());

    case RoutesName.thankYouScreen:
      return MaterialPageRoute(builder: (context)=> const ThankYouScreen());

    case RoutesName.checkoutScreen:
      return MaterialPageRoute(builder: (context)=> const CheckoutScreen());

      case RoutesName.profileScreen:
      return MaterialPageRoute(builder: (context)=> const ProfileScreen());

    case RoutesName.notificationScreen:
      return MaterialPageRoute(builder: (context)=> const NotificationScreen());
    case RoutesName.mycartScreen:
      return MaterialPageRoute(builder: (context)=> const MyCart());

    default:
      return MaterialPageRoute(builder: (context){
        return const Scaffold(
          body: Center(child: Text('No Route Defined'),),
        );
      });
  }

}
