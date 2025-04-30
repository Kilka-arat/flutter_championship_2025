import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class RootScreen extends StatefulWidget {
  RootScreen({super.key, required this.statefulNavigationShell});
  StatefulNavigationShell statefulNavigationShell;

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.statefulNavigationShell,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) => widget.statefulNavigationShell.goBranch(index),
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: '',
          ),
        ],
      ),
    );
  }
}
