import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy_app_ui/utils/routes/routes_names.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          const Row(
            children: [
              SizedBox(width: 25,),
              Text('Enter the verify code', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff090F47),
              ),)
            ],
          ),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "We just send you a verification code via phone \n+65 556 798 241",
                style: TextStyle(
                  fontSize: 16,
                   color: Colors.black,
                ),
              ),
            ],
          ),
    const SizedBox(height: 30,),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox( height: 58,
            width: 54,
            child: TextFormField(
              onChanged: (value){
                if(value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headlineSmall,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,],
            ), // TextField
          ), // SizedBox
          SizedBox( height: 58,
            width: 54,
            child: TextFormField(
              onChanged: (value){
                if(value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headlineSmall,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,],
            ), // TextField
          ), // SizedBox
          SizedBox( height: 58,
            width: 54,
            child: TextFormField(
              onChanged: (value){
                if(value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headlineSmall,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,],
            ), // TextField
          ), // SizedBox
          SizedBox( height: 58,
            width: 54,
            child: TextFormField(
              onChanged: (value){
                if(value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headlineSmall,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,],
            ), // TextField
          ),
          SizedBox( height: 58,
            width: 54,
            child: TextFormField(
              onChanged: (value){
                if(value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headlineSmall,
              decoration: const InputDecoration(
                // focusedBorder: InputBorder.none,
                // enabledBorder: InputBorder.none,

              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,],
            ), // TextField
          ), // SizedBox

          SizedBox( height: 58,
            width: 54,
            child: TextFormField(
              onChanged: (value){
                if(value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headlineSmall,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,],
            ), // TextField
          ), // SizedBox

        ],
      ),
    ),

          const SizedBox(height: 40,),
          InkWell(
            onTap:(){
              Navigator.pushNamed(context, RoutesName.homeScreen);
            },
            child: Container(
              width: 311,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff4157FF),
                borderRadius: BorderRadius.circular(56),
              ),
              child: const Center(child: Text('SUBMIT CODE', style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),)),
            ),
          ),
          const SizedBox(height: 20,),
          const Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The Verify Code will Expire in: 00:59'),
            ],
          ),
          const SizedBox(height: 10,),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.signUpScreen);
              },
              child: const Text('Resend Code',style: TextStyle( color: Color(0xff4157FF), fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
