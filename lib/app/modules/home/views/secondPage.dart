import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:travel_hotel_booking/app/modules/home/controllers/home_controller.dart';

class SecondPage extends GetView<HomeController> {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          Positioned.fill(
            child: Stack(
              children: [
                // Image
                Container(
                  height: 450,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/2home.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Back icon
                Positioned(
                  top: 60,
                  left: 20,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    iconSize: 35,
                    onPressed: () {},
                  ),
                ),
                // Share and favorite icons
                Positioned(
                  top: 60,
                  right: 20,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.share),
                        color: Colors.white,
                        iconSize: 35,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_outline),
                        color: Colors.white,
                        iconSize: 35,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                // Text and rating container
                Positioned(
                  top: 145,
                  left: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'BALI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Indonesia',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.white,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '4.9',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Container below the image
          Positioned(
            top: 325, // Adjust the position as needed
            left: 0,
            right: 0,
            child: Container(
              height: 450, // Adjust the height as needed
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 247, 240, 240),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 255, 255, 255),
                            ),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(105, 20)),
                          ),
                          child: Text('Hotels'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
