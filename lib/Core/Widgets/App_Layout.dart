
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planta/Core/Utils/App_Routers.dart';
import 'package:planta/Features/Home/Presentation/Views/Home_Page.dart';
import '../../../../Core/Widgets/App_NavigationBar.dart';
import '../../../../Core/Widgets/Background_App.dart';



class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<AppLayout> {
  int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundApp(
          bodyWidget:
          const HomePage(),
          navWidget:AppNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index){
              selectedIndex = index ;
              appNavigation(context);
              selectedIndex = 0 ;
              setState(() {
              });
            },
          ),
        )
    );
  }

  void appNavigation(BuildContext context) {
     if (selectedIndex == 2){
      GoRouter.of(context).push(AppRouters.kChatPage);
    }
    else if(selectedIndex == 1){
      GoRouter.of(context).push(AppRouters.kScanPage);
    }
  }
}


