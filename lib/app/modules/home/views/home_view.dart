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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
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
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Image.asset('assets/images/date.png'),

                hintText: 'July 08 - July 15',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),

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
            SizedBox(
              height: 10,
            ),
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
                      width: 1, // Width of the divider
                      height: 24, // Height of the divider
                      color: Colors.grey, // Color of the divider
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.remove)
                  ],
                ),

                hintText: '2 Guests',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
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
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(horizontal: 70, vertical: 20)),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColor.btnColor)),
                child: const Text('Search'))
          ]),
        ),
      ),
    );
  }
}
