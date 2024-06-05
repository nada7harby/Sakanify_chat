import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sakanify/presentations/screens/chat_screen.dart';
import 'package:sakanify/presentations/screens/home_screen.dart';
import 'package:sakanify/presentations/screens/notification.dart';
import 'package:sakanify/presentations/screens/services/main_screen.dart';
import 'package:sakanify/presentations/screens/student_data.dart';

class NavigateBar1 extends StatelessWidget {
  const NavigateBar1({
    super.key,
    required this.homescreen,
    required this.chatscreen,
    required this.servicescreen,
    required this.profilescreen,
    required this.notifscreen,
  });

  final Color homescreen;
  final Color chatscreen;
  final Color servicescreen;
  final Color profilescreen;
  final Color notifscreen;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: 70,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const NotificationScreen()));
              },
              icon: Icon(
                Icons.add_alert_outlined,
                color: notifscreen,
                size: 30,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const ChatScreen()));
              },
              icon: Icon(
                Icons.chat_bubble_outline,
                color: chatscreen,
                size: 30,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const HomeScreen()));
              },
              icon: Icon(
                Icons.home_outlined,
                color: homescreen,
                size: 32,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const MainScreenService()));
              },
              icon: Icon(
                Icons.miscellaneous_services,
                color: servicescreen,
                size: 30,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const StudentData()));
              },
              icon: Icon(
                Icons.perm_identity,
                color: profilescreen,
                size: 30,
              ),
            ),
            const Spacer(),
          ],
        ));
  }
}
