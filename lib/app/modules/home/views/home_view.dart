import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:travel_hotel_booking/app/theme/style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bgColor,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                Text(
                  'Hello, Alpay',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/images/notification.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                suffixIcon: Image.asset('assets/images/filter.png'),
                hintText: 'Location',
                //border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  // Add focused border
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color:
                          Colors.transparent), // Set transparent border color
                ),
                enabledBorder: OutlineInputBorder(
                  // Add enabled border
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color:
                          Colors.transparent), // Set transparent border color
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
