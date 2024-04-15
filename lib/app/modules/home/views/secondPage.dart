import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:travel_hotel_booking/app/modules/home/controllers/home_controller.dart';

class SecondPage extends GetView<HomeController> {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 450,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/2home.png',
                    ),
                    fit: BoxFit.cover)),
          ),

          // Back icon
          Positioned(
            top: 60,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              iconSize: 35,
              onPressed: () {},
            ),
          ),
          // Share and favourite icons
          Positioned(
            top: 60,
            right: 10,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.share),
                  color: Colors.white,
                  iconSize: 35,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_outline),
                  color: Colors.white,
                  iconSize: 35,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Positioned(
              top: 145,
              left: 160,
              child: Column(
                children: [
                  Text(
                    'BALI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Indonesia',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4.9',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
