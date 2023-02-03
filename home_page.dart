// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:travelapp/util/emojis.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 221, 22),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.golf_course), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.car_rental), label: ''),
      ]),
      // Bottom Navigation Bar
      body: SafeArea(
        child: Column(children: [
          // greetings row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Hi there!
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey Dylan",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5), // Spacing beteween texts
                        Text(
                          "2nd Feb 2023",
                          style: TextStyle(
                            color: Color.fromARGB(255, 251, 109, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    //Kepp Pushing
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 252, 255, 169),
                          borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20),

                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255), // Search bar
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      // Search Icon
                      SizedBox(width: 5),
                      Text(
                        "Search",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 236, 200, 166),
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //Travelinging to how do you feel?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Where do you want to go?",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.map_outlined,
                      color: Color.fromARGB(255, 251, 109, 1),
                    ),
                  ],
                ),

                SizedBox(height: 20), // Different Emjois for different places
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 1st Row earth
                    Column(
                      children: [
                        Emojis(
                          emojis: '🚕',
                        ),
                        SizedBox(height: 7),
                        Text('Pickup',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),

                    // 2nd car Car rental
                    Column(
                      children: [
                        Emojis(
                          emojis: '🌏',
                        ),
                        SizedBox(height: 7),
                        Text('Where?',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    // 3rd Row palm tree
                    Column(
                      children: [
                        Emojis(
                          emojis: '🎪',
                        ),
                        SizedBox(height: 7),
                        Text('Events',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    // 4th Row Plane
                    Column(
                      children: [
                        Emojis(
                          emojis: '🏄‍♂️',
                        ),
                        SizedBox(height: 7),
                        Text('Active',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(child: Container(color: Colors.white)),
        ]),
      ),
    );
  }
}
