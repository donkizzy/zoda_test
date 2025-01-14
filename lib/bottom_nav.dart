import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:zoda_test/app_colors.dart';
import 'package:zoda_test/home.dart';
import 'package:zoda_test/payment_method.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: codGray,
        selectedIconColor: Colors.white,
        unselectedIconColor: Colors.white.withOpacity(0.6),
        items: [
          FloatingNavBarItem(iconData: Icons.home_outlined, page: const Homepage(), title: '.'),
          FloatingNavBarItem(iconData: Icons.local_hospital_outlined, page: const Homepage(), title: '.'),
          FloatingNavBarItem(iconData: Icons.alarm, page: const Homepage(), title: '.'),
          FloatingNavBarItem(iconData: Icons.pending_actions_outlined, page: const PaymentMethod(), title: '.'),
        ],
        horizontalPadding: 10.0,
        hapticFeedback: true,
        showTitle: true,
      ),
    );
  }
}
