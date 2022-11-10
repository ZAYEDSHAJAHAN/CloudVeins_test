import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class Formpage extends StatefulWidget {
  const Formpage({Key? key}) : super(key: key);

  @override
  State<Formpage> createState() => _FormpageState();
}

dynamic servicename = Get.arguments;
// final sdfVal = DateFormat('dd-MM-yyyy');
// DateTime selectdate;
// String starting_date = sdfVal.format(selectdate).toString();
DateTime date = DateTime.now();
TimeOfDay selectedTime = TimeOfDay.now();

class _FormpageState extends State<Formpage> {
  confirm_Form() {
    // confirmation popup
    // final sdfVal = DateFormat('dd-MM-yyyy');

    // String starting_date = sdfVal.format(startdate).toString();

    Future.delayed(Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
          isDismissible: false,
          enableDrag: false,
          useRootNavigator: true,
          context: context,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          builder: (Builder) {
            return Container(
                padding: EdgeInsets.all(2.5.h),
                height: 35.h,
                child: Column(
                  children: [
                    Text("Form Confirmation",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Colors.black)),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                        "We appreciate you contacting us. One of our colleagues will get back in touch with you soon!Have a great day.\nAre you confirm this oder  ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp,
                            color: Colors.black)),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);

                            print("pressed cancel button");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 30.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            child: Text(
                              "Cencel",
                              style: TextStyle(
                                  fontSize: 11.sp, color: Colors.black),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 30.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                              color: const Color(0xff51568E),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              border: Border.all(
                                  width: 1, color: const Color(0xff51568E)),
                            ),
                            child: Text(
                              "Confirm order",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ));
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          Text(
            servicename,
            style: TextStyle(
                fontSize: 18.sp,
                color: const Color(0xff51568E),
                fontWeight: FontWeight.w300),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
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
          SizedBox(
            height: 5.h,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
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
          SizedBox(
            height: 5.h,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
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
                hintText: 'Alternative contact no.',
                labelText: 'Alternative contact no.*',
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
          SizedBox(
            height: 5.h,
          ),
          selectdate(),
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
          SizedBox(
            height: 5.h,
          ),
          Container(
            height: 20.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.h),
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
                hintText: 'write something here',
                counterText: '',
              ),
              autofocus: false,
              obscureText: false,
              maxLength: 1000,
              keyboardType: TextInputType.multiline,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 8.sp,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          InkWell(
            onTap: () {
              confirm_Form();
            },
            child: Container(
              alignment: Alignment.center,
              height: 8.h,
              width: 20.w,
              decoration: BoxDecoration(
                color: const Color(0xff51568E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'SUBMIT',
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

  Widget selectdate() {
    //select date & time widget
    return Container(
      height: 28.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.5.h, left: 4.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.calendar_today_rounded),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text("Select your  date & time",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Select date",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey)),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  InkWell(
                    onTap: () async {
                      DateTime? newdate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(Duration(days: 90)));

                      if (newdate == null) return;
                      setState(() {
                        date = newdate;
                      });
                    },
                    child: Container(
                      height: 9.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.3,
                            // color: AppTheme.colors.colorAccent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.calendar_today_outlined,
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Text("${date.day}/${date.month}/${date.year}",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 5.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Select Time",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey)),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  InkWell(
                    onTap: () async {
                      TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: selectedTime,
                      );
                    },
                    child: Container(
                      height: 9.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.timer_sharp,
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Text("9:00am",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
