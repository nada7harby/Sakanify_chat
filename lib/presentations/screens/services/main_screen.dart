import 'package:flutter/material.dart';
import 'package:sakanify/presentations/screens/services/hospital_screen.dart';
import 'package:sakanify/presentations/screens/services/libraries_screen.dart';
import 'package:sakanify/presentations/screens/services/markets_screen.dart';
import 'package:sakanify/presentations/screens/services/pharmacy_screen.dart';
import 'package:sakanify/presentations/screens/services/restaurant_screen.dart';
import 'package:sakanify/presentations/screens/services/vegetableandfruit_screen.dart';
import 'package:sakanify/widgets/main_screen_service.dart';
import 'package:sakanify/widgets/navigation_bar.dart';

class MainScreenService extends StatelessWidget {
  const MainScreenService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigateBar1(
        homescreen: Color(0xff1A284E),
        chatscreen: Color(0xff1A284E),
        servicescreen: Color(0xffDDB20C),
        profilescreen: Color(0xff1A284E),
        notifscreen: Color(0xff1A284E),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                color: Color(0xff1A284E),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text(
                        "في هذه الصفحة",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text(
                        "نقدم لكم مجموعة من الخدمات المفيدة التي\n تلبي احتياجات الطلاب بشكل شامل.",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/serviceimage.png",
                    width: 220,
                    height: 140,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24),
              height: 400,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Service_Func(
                        title: "مكتبات",
                        icon: Icons.book,
                        bgcolor: 0xffBFC2FF,
                        nextpg: LibrariesScreen(),
                      ),
                      Service_Func(
                        title: "مطاعم",
                        icon: Icons.restaurant,
                        bgcolor: 0xffE7BDCC,
                        nextpg: RestaurantScreen(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Service_Func(
                        title: "صيدليات",
                        icon: Icons.local_pharmacy_sharp,
                        bgcolor: 0xff16368C,
                        nextpg: PharmacyScreen(),
                      ),
                      Service_Func(
                        title: "مستشفيات",
                        icon: Icons.local_hospital,
                        bgcolor: 0xff599BF2,
                        nextpg: HospitalScreen(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Service_Func(
                        title: "الاسواق",
                        icon: Icons.book,
                        bgcolor: 0xffF695A0,
                        nextpg: VegFruScreen(),
                      ),
                      Service_Func(
                        title: "هايبرات",
                        icon: Icons.shopping_cart,
                        bgcolor: 0xff3C4394,
                        nextpg: MarketScreen(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
