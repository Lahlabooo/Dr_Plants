
import 'package:flutter/material.dart';
import 'package:planta/Features/Scan/Presentation/Views/Scan_Page.dart';
import 'package:planta/Features/Chat/Presentation/Views/Chat_Page.dart';
import 'package:planta/Features/Home/Presentation/Views/Home_Page.dart';
import '../../../../Core/Widgets/App_NavigationBar.dart';
import '../../../../Core/Widgets/Background_App.dart';
import 'Widgets/HomeLayout_Body.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
 int selectedIndex = 0 ;
 List homeLayoutBodyWidgets = [
   const HomePage(),
   const CameraPage(),
   const ChatPage(),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundApp(
        bodyWidget: HomeLayoutBody(
          widgetBody: homeLayoutBodyWidgets[selectedIndex],

        ),
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


