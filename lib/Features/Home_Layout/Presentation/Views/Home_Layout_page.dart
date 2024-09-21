
import 'package:flutter/material.dart';
import 'package:planta/Features/Home_Layout/Presentation/Views/Camera_Page.dart';
import 'package:planta/Features/Home_Layout/Presentation/Views/Chat_Page.dart';
import 'package:planta/Features/Home_Layout/Presentation/Views/Home_Page.dart';
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
      bottomNavigationBar: AppNavigationBar(
        currentIndex: selectedIndex,
        onDestinationSelected: (index){
          selectedIndex = index ;
          setState(() {
          });
        },
      ),
      body: BackgroundApp(bodyWidget: HomeLayoutBody(body: homeLayoutBodyWidgets[selectedIndex],),)
    );
  }
}


