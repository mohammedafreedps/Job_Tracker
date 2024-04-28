import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/screens/ScheduledScreen/scheduledScreenUI.dart';
import 'package:jobtracker/precentation/screens/createScreen/createScreenUI.dart';
import 'package:jobtracker/precentation/screens/homeScreen/homeScreenUI.dart';
import 'package:jobtracker/precentation/screens/staredScreen/staredScreenUI.dart';
import 'package:jobtracker/utils/styleManager.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          HomeScreenUI(),
          StaredScreenUI(),
          ScheduledScreenUI(),
          CreateScreenUI()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Applied'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Stared'),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Scheduled'),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: 'Create'),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: AppColors.primaryColor,
      ),
    );
  }
}
