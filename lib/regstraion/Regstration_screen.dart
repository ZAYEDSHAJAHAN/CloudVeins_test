import 'package:cloudvein_tech/login.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

class Registrationpage extends StatefulWidget {
  const Registrationpage({Key? key}) : super(key: key);

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

TextEditingController namecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
TextEditingController phonenocontroller = TextEditingController();

TextEditingController passwordcontroller = TextEditingController();
TextEditingController confirmpasswordcontroller = TextEditingController();

class _RegistrationpageState extends State<Registrationpage> {
  final widgetsList = [
    Text(
      'Registration',
      style: TextStyle(
          color: const Color(0xff50558D),
          fontSize: 20.sp,
          fontWeight: FontWeight.w600),
    ),
    Text(
      'Please enter your details \nbelow to Registration now!',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15.sp,
      ),
    ),
    SizedBox(
      height: 2.5.h,
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.h),
        color: const Color(0xffF1F1F1),
      ),
      child: TextFormField(
        controller: namecontroller,
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
          hintText: 'Full Name',
          labelText: 'Name*',
          counterText: '',
        ),
        validator: ((value) {
          return value!.contains('@') ? 'Do not use the @ char.' : null;
        }),
        autofocus: false,
        obscureText: false,
        maxLength: 30,
        keyboardType: TextInputType.text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 8.sp,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.h),
        color: const Color(0xffF1F1F1),
      ),
      child: TextFormField(
        controller: emailcontroller,
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
          hintText: 'Email id',
          labelText: 'Email id*',
          counterText: '',
        ),
        autofocus: false,
        obscureText: false,
        maxLength: 50,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 8.sp,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.h),
        color: const Color(0xffF1F1F1),
      ),
      child: TextFormField(
        controller: phonenocontroller,
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
          hintText: 'contact no.',
          labelText: 'contact no.*',
          counterText: '',
        ),
        autofocus: false,
        obscureText: false,
        maxLength: 10,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 8.sp,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.h),
        color: const Color(0xffF1F1F1),
      ),
      child: TextFormField(
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
          hintText: 'address',
          labelText: 'Address.*',
          counterText: '',
        ),
        autofocus: false,
        obscureText: false,
        maxLength: 32,
        keyboardType: TextInputType.text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 8.sp,
        ),
      ),
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
          hintText: 'password',
          labelText: 'password*',
          counterText: '',
        ),
        autofocus: false,
        obscureText: true,
        maxLength: 30,
        keyboardType: TextInputType.visiblePassword,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 8.sp,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.h),
        color: const Color(0xffF1F1F1),
      ),
      child: TextFormField(
        controller: confirmpasswordcontroller,
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
          hintText: 'Confirm password',
          labelText: 'Confirm password*',
          counterText: '',
        ),
        validator: ((value) {
          if (value != passwordcontroller.text) {
            return "pls check your password";
          }
        }),
        autofocus: false,
        obscureText: true,
        maxLength: 30,
        keyboardType: TextInputType.visiblePassword,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 8.sp,
        ),
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Text('Forgot Password?',
            style: TextStyle(
                color: Colors.black45,
                letterSpacing: .5,
                fontWeight: FontWeight.w500))
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
              child: ListView(
        children: [
          SizedBox(
            height: 10.h,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return widgetsList[index];
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 5.h,
            ),
            itemCount: widgetsList.length,
          ),
          SizedBox(
            height: 7.h,
          ),
          InkWell(
            onTap: () {
              if (passwordcontroller.text == confirmpasswordcontroller.text) {
                Get.to(const Loginpage(), arguments: [
                  phonenocontroller.text,
                  passwordcontroller.text,
                  emailcontroller.text,
                  namecontroller.text
                ]);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("check your password")));
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
                'Register',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  letterSpacing: .5,
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ))),
    );
  }
}
