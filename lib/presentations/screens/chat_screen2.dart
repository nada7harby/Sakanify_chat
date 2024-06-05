// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sakanify/widgets/navigation_bar2.dart';

class ChatScreen2 extends StatefulWidget {
  const ChatScreen2({super.key});

  @override
  State<ChatScreen2> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen2> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const NavigateBar2(
        homescreen: Color(0xff1A284E),
        chatscreen: Color(0xffDDB20C),
        profilescreen: Color(0xff1A284E),
      ),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 1, 41, 109),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      padding: EdgeInsets.all(12.0),
                      height: 77,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            40.0), // Adjust the radius as needed
                        child: Image.asset(
                          'assets/images/p1.png', // Replace 'assets/image.png' with your image path
                          width: 60, // Example width for the image
                          height: 80, // Example height for the image
                          fit: BoxFit.cover, // Example fit for the image
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "احمد محمد",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "متصل",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 100),
                    Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 30.0,
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.video_call,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 40.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 95, right: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 7, 2, 98),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomLeft: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              "السلام عليكم",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 95, left: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 167, 166, 175),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomRight: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              "وعليكم السلام ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 95, right: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 7, 2, 98),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomLeft: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              " ممكن اعرف معاد دفع الايجار؟",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 95, left: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 167, 166, 175),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomRight: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              " اول الشهر",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 95, right: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 7, 2, 98),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomLeft: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              " طب معلش في مشكلة فالسخان .. نعمل ايه؟",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 95, left: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 167, 166, 175),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomRight: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              "تمام هتواصل مع حد بتاع سخانات يجيلكم بكرة .. وابقوا سجلوا رقمه لو احتجتوه بعد كدا ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 95, right: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 7, 2, 98),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomLeft: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              "تمام شكرا ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 95, left: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 167, 166, 175),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomRight: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              "تمام هتواصل مع حد بتاع سخانات يجيلكم بكرة .. وابقوا سجلوا رقمه لو احتجتوه بعد كدا ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 95, right: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 7, 2, 98),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomLeft: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              "تمام شكرا ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                height: 61,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.0),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.face,
                                    color: Color.fromARGB(255, 7, 2, 98),
                                  ),
                                  onPressed: () {},
                                ),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.only(left: 10.0, right: 0),
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: InkWell(
                          child: const Icon(
                            Icons.send,
                            color: Color.fromARGB(255, 7, 2, 98),
                            size: 35.0,
                          ),
                          onLongPress: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
