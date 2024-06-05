import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sakanify/presentations/screens/all_chats.dart';
import 'package:sakanify/presentations/screens/chat_screen.dart';
import 'package:sakanify/presentations/screens/chat_screen2.dart';
import 'package:sakanify/presentations/screens/home_screen.dart';
import 'package:sakanify/presentations/screens/notification.dart';
import 'package:sakanify/presentations/screens/owner_data.dart';
import 'package:sakanify/presentations/screens/student_data.dart';

class NavigateBar2 extends StatelessWidget {
  const NavigateBar2({
    super.key,
    required this.homescreen,
    required this.chatscreen,
    required this.profilescreen,
  });

  final Color homescreen;
  final Color chatscreen;
  final Color profilescreen;

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
                        child: const ChatScreen2()));
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
                        type: PageTransitionType.fade, child: const All_chats(title: "hhhh")));
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
                        type: PageTransitionType.fade, child: const OwnerData()));
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
