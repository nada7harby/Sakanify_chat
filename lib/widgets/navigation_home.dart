import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sakanify/presentations/screens/all_chats.dart';

class NavigateHome extends StatelessWidget {
  const NavigateHome({super.key,});
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
                        type: PageTransitionType.fade, child: const All_chats(title: "hhhh")));
              },
              icon: const Icon(
                Icons.home_outlined,
                color:Color(0xffDDB20C),
                size: 40,
              ),
            ),
            const Spacer(),
          ],
        ));
  }
}
