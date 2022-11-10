import 'package:cloudvein_tech/form/formpage_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'regstraion/Regstration_screen.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

dynamic persondetails = Get.arguments;
List service = [
  'Plumber',
  'Electrician',
  'Yoga',
  'House Shifting & Relocation'
];

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          children: [details(), services()],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.list_alt_rounded),
              ),
              FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
                child: const Icon(Icons.logout),
              )
            ],
          ),
        ));
  }

  Widget details() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "NAME: " + persondetails[3],
          style: TextStyle(
              fontSize: 18.sp,
              color: const Color(0xff51568E),
              fontWeight: FontWeight.w300),
        ),
        Text(
          "Email id: " + persondetails[2],
          style: TextStyle(
              fontSize: 18.sp,
              color: const Color(0xff51568E),
              fontWeight: FontWeight.w300),
        ),
        Text(
          "Phone no. " + persondetails[0],
          style: TextStyle(
              fontSize: 18.sp,
              color: const Color(0xff51568E),
              fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 2.5.h,
        ),
      ],
    );
  }

  Widget services() {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: (() {
              Get.to(const Formpage(), arguments: service[index]);
            }),
            child: Container(
              alignment: Alignment.center,
              height: 5.h,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 113, 113, 118),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                service[index],
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  letterSpacing: .5,
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
            ),
          );
        }),
        separatorBuilder: (context, index) => SizedBox(
              height: 2.5.h,
            ),
        itemCount: service.length);
  }

  // ignore: unused_element
  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Log Out',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text("Are you sure you want to logout?"),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () async {
            logoutUser(context);
          },
          child: const Text(
            'Yes',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ],
    );
  }
}

Future<void> logoutUser(context) async {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(
      builder: (BuildContext context) => const Registrationpage(),
    ),
    (Route route) => false,
    //   BuildContext context,
    //   ModalRoute.withName("/SplashScreen"),
    //  ModalRoute.withName("/Home")
  );
}
