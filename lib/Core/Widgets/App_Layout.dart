
import 'package:flutter/material.dart';

import 'package:planta/Features/Chat/Presentation/Views/Chat_Page.dart';
import 'package:planta/Features/Home/Presentation/Views/Home_Page.dart';
import '../../../../Core/Widgets/App_NavigationBar.dart';
import '../../../../Core/Widgets/Background_App.dart';
import '../../Features/Scan/Presentation/Views/Scan_Page.dart';


class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<AppLayout> {
  int selectedIndex = 0 ;
  List homeLayoutBodyWidgets = [
    const HomePage(),
    const ScanPage(),
    const ChatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundApp(
          bodyWidget:
          homeLayoutBodyWidgets[selectedIndex],
          navWidget:AppNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index){
              selectedIndex = index ;
              setState(() {
              });
            },
          ),
        )
    );
  }
}


