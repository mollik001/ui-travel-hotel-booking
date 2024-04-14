import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:travel_hotel_booking/app/theme/style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bgColor,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
          ],
          backgroundColor: Color.fromARGB(0, 187, 7, 91),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            AssetImage('assets/images/profile.png'),
                      ),
                      Text(
                        'Hello, Alpay',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            AssetImage('assets/images/notification.png'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Image.asset('assets/images/filter.png'),
                      hintText: 'Location',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Image.asset('assets/images/date.png'),
                      hintText: 'July 08 - July 15',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Image.asset('assets/images/people.png'),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add),
                          SizedBox(width: 20),
                          Container(
                            width: 1,
                            height: 24,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 20),
                          Icon(Icons.remove),
                        ],
                      ),
                      hintText: '2 Guests',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 20),
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColor.btnColor),
                    ),
                    child: const Text('Search'),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColor.bgColor2,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    // First image
                    Positioned(
                      left: 20,
                      right: 20,
                      top: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            20), // Assuming 20 is the border radius of the first image
                        child: Image.asset(
                          'assets/images/home.png',
                          fit: BoxFit.cover,
                          width: 300, // Adjust width as needed
                          height: 200, // Adjust height as needed
                        ),
                      ),
                    ),
                    // Second image
                    Positioned(
                      bottom: 12,
                      right: 20,
                      child: Image.asset(
                        'assets/images/tag.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
