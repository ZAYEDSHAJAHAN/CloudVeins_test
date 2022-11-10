import 'package:cloudvein_tech/home.dart';
import 'package:cloudvein_tech/regstraion/Regstration_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

TextEditingController phonecontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

dynamic arg = Get.arguments;

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Login',
            style: TextStyle(
                color: const Color(0xff50558D),
                fontSize: 20.sp,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.h),
              color: const Color(0xffF1F1F1),
            ),
            child: TextFormField(
              controller: phonecontroller,
              autovalidateMode: AutovalidateMode.always,
              decoration: const InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.transparent,
                filled: true,
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    letterSpacing: .5),
                hintText: 'phone no.',
                labelText: 'Phone no*',
                counterText: '',
              ),
              autofocus: false,
              obscureText: false,
              maxLength: 10,
              keyboardType: TextInputType.phone,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 8.sp,
              ),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.h),
              color: const Color(0xffF1F1F1),
            ),
            child: TextFormField(
              controller: passwordcontroller,
              autovalidateMode: AutovalidateMode.always,
              decoration: const InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.transparent,
                filled: true,
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    letterSpacing: .5),
                hintText: 'Password',
                labelText: 'Password*',
                counterText: '',
              ),
              autofocus: false,
              obscureText: false,
              maxLength: 50,
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 8.sp,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (phonecontroller.text == arg[0] &&
                  passwordcontroller.text == arg[1]) {
                Get.off(const home(),
                    arguments: [arg[0], arg[1], arg[2], arg[3]]);
                showToast("Welcome to App ");
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("invalid phone no. & password")));
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: 5.h,
              decoration: BoxDecoration(
                color: const Color(0xff51568E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  letterSpacing: .5,
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

void showToast(message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.grey,
      textColor: Colors.black);
}
