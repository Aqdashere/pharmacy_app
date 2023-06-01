import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pharmacy_app_ui/utils/routes/routes_names.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<PageViewModel> getPages(){
    return [
      PageViewModel(
        image: Center(child: Image.asset('assets/images/intro_screen/screen1.png')),
        title: 'View and buy Medicine online',
        body: 'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
      ),
      PageViewModel(
        image: Image.asset('assets/images/intro_screen/img.png'),
        title: 'Online medical & Healthcare',
        body: 'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
      ),
      PageViewModel(
        image: Image.asset('assets/images/intro_screen/img_1.png'),
        title: 'Get Delivery on time',
        body: 'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          done: Text(
            'Done',
            style: TextStyle( color: Colors.black),
          ),
          onDone: (){
            Navigator.pushNamed(context, RoutesName.signUpScreen);
          },
         // showNextButton: false,
          next: const Text("Next"),
          showBackButton: true,
          back: const Text("Back"),
          pages: getPages(),
          globalBackgroundColor: Colors.white,
        )
      ),
    );
  }
}
